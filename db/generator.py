import psycopg2
import random
from datetime import datetime, date, timedelta
from faker import Faker
import bcrypt

# Konfiguracja połączenia z bazą danych
DB_CONFIG = {
    'host': 'localhost',
    'port': 5432,
    'database': 'egradebook',
    'user': 'postgres',
    'password': 'postgres'
}

fake = Faker('pl_PL')

def hash_password(password):
    """Hashuje hasło używając bcrypt"""
    return bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

def generate_pesel(birth_date):
    """Generuje poprawny PESEL na podstawie daty urodzenia"""
    year = birth_date.year
    month = birth_date.month
    day = birth_date.day
    
    # Określenie kodowania roku w PESEL
    if 1900 <= year <= 1999:
        yy = year - 1900
        mm = month
    elif 2000 <= year <= 2099:
        yy = year - 2000
        mm = month + 20
    else:
        yy = year - 2000
        mm = month + 20
    
    # Pierwsze 6 cyfr PESEL
    pesel_start = f"{yy:02d}{mm:02d}{day:02d}"
    
    # Cyfry 7-10 (kolejny numer i płeć)
    serial = random.randint(100, 999)
    sex_digit = random.choice([0, 2, 4, 6, 8]) if random.choice([True, False]) else random.choice([1, 3, 5, 7, 9])
    
    pesel_without_check = pesel_start + f"{serial}{sex_digit}"
    
    # Obliczenie cyfry kontrolnej
    weights = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
    control_sum = sum(int(pesel_without_check[i]) * weights[i] for i in range(10))
    check_digit = (10 - (control_sum % 10)) % 10
    
    return pesel_without_check + str(check_digit)

def get_school_year():
    """Zwraca aktualny rok szkolny"""
    current_date = datetime.now()
    if current_date.month >= 9:
        return str(current_date.year)
    else:
        return str(current_date.year - 1)

class DataGenerator:
    def __init__(self):
        self.conn = psycopg2.connect(**DB_CONFIG)
        self.cur = self.conn.cursor()
        
    def __del__(self):
        if hasattr(self, 'conn'):
            self.conn.close()
    
    def clear_existing_data(self):
        """Czyści istniejące dane (opcjonalne)"""
        tables = [
            'grades', 'attendance', 'tests', 'events', 'final_grades',
            'class_changes_history', 'group_changes_history',
            'slot_exceptions', 'teacher_class_subject', 'student_subject_group',
            'teacher_subject', 'parent_student', 'class_schedule',
            'contact_info', 'personal_data', 'students', 'parents', 'teachers',
            'classes', 'subject_groups', 'subjects', 'class_profile', 'users'
        ]
        
        for table in tables:
            self.cur.execute(f"TRUNCATE TABLE {table} RESTART IDENTITY CASCADE")
        
        self.conn.commit()
        print("Wyczyszczono istniejące dane")
    
    def generate_class_profiles(self):
        """Generuje profile klas"""
        profiles = [
            ('1A', 'Klasa 1A'),
            ('1B', 'Klasa 1B - mat-przyr'),
            ('2A', 'Klasa 2A - humanist'),
            ('2B', 'Klasa 2B - mat-przyr'),
            ('3A', 'Klasa 3A - humanist')
        ]
        
        for short_name, name in profiles:
            self.cur.execute(
                "INSERT INTO class_profile (short_name, name) VALUES (%s, %s)",
                (short_name, name)
            )
        
        self.conn.commit()
        print("Wygenerowano profile klas")
    
    def generate_subjects(self):
        """Generuje przedmioty"""
        subjects = [
            'Matematyka', 'Język polski', 'Język angielski', 'Historia',
            'Geografia', 'Biologia', 'Chemia', 'Fizyka', 'Informatyka',
            'Wychowanie fizyczne', 'WOS', 'Język niemiecki',
            'Plastyka', 'Muzyka', 'Etyka'
        ]
        
        for subject in subjects:
            self.cur.execute(
                "INSERT INTO subjects (name) VALUES (%s)",
                (subject,)
            )
        
        self.conn.commit()
        print("Wygenerowano przedmioty")
    
    def generate_users_and_teachers(self):
        """Generuje nauczycieli"""
        teachers_data = []
        
        # Administrator
        admin_password = hash_password('admin123')
        self.cur.execute(
            "INSERT INTO users (username, password, role) VALUES (%s, %s, %s) RETURNING user_id",
            ('admin', admin_password, 'admin')
        )
        admin_id = self.cur.fetchone()[0]
        
        # Dane osobowe administratora
        admin_birth = fake.date_of_birth(minimum_age=30, maximum_age=50)
        self.cur.execute(
            "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (%s, %s, %s, %s)",
            (admin_id, 'Administrator', 'Systemu', generate_pesel(admin_birth))
        )
        
        self.cur.execute(
            "INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (%s, %s, %s, %s)",
            (admin_id, fake.phone_number()[:9], 'admin@szkola.edu.pl', fake.address())
        )
        
        # Generowanie nauczycieli
        for i in range(15):
            first_name = fake.first_name()
            last_name = fake.last_name()
            username = f"{last_name.lower()}.{first_name.lower()}"[:30]  # Ograniczenie długości
            password = hash_password('teacher123')
            birth_date = fake.date_of_birth(minimum_age=25, maximum_age=65)
            # Dodanie użytkownika
            self.cur.execute(
                "INSERT INTO users (username, password, role) VALUES (%s, %s, %s) RETURNING user_id",
                (username, password, 'teacher')
            )
            user_id = self.cur.fetchone()[0]
            
            # Dodanie nauczyciela
            self.cur.execute(
                "INSERT INTO teachers (user_id) VALUES (%s) RETURNING teacher_id",
                (user_id,)
            )
            teacher_id = self.cur.fetchone()[0]
            
            # Dane osobowe
            self.cur.execute(
                "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (%s, %s, %s, %s)",
                (user_id, first_name, last_name, generate_pesel(birth_date))
            )
            
            # Dane kontaktowe
            phone = fake.phone_number().replace(' ', '').replace('-', '')[:9]
            email = f"{username}@szkola.edu.pl"[:64]
            address = fake.address()[:100]
            
            self.cur.execute(
                "INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (%s, %s, %s, %s)",
                (user_id, phone, email, address)
            )
            
            teachers_data.append((teacher_id, user_id, first_name, last_name))
        
        self.conn.commit()
        print("Wygenerowano nauczycieli")
        return teachers_data
    
    def generate_classes(self, teachers_data):
        """Generuje klasy"""
        current_year = get_school_year()
        classes_data = []
        
        for i in range(1, 6):  # 5 klas
            # Przypisanie wychowawcy
            teacher_id = teachers_data[i-1][0]
            
            self.cur.execute(
                "INSERT INTO classes (class_profile, class_teacher, class_year) VALUES (%s, %s, %s) RETURNING class_id",
                (i, teacher_id, current_year)
            )
            class_id = self.cur.fetchone()[0]
            classes_data.append(class_id)
        
        self.conn.commit()
        print("Wygenerowano klasy")
        return classes_data
    
    def generate_subject_groups(self, classes_data):
        """Generuje grupy przedmiotowe"""
        # Pobierz ID wszystkich przedmiotów
        self.cur.execute("SELECT subject_id FROM subjects")
        subject_ids = [row[0] for row in self.cur.fetchall()]
        
        for class_id in classes_data:
            for subject_id in subject_ids:
                # Niektóre przedmioty mogą mieć kilka grup
                groups_count = 2 if subject_id in [3, 9, 10] else 1  # Angielski, Informatyka, WF
                
                for group_num in range(1, groups_count + 1):
                    self.cur.execute(
                        "INSERT INTO subject_groups (class_id, subject_id, group_number) VALUES (%s, %s, %s)",
                        (class_id, subject_id, group_num)
                    )
        
        self.conn.commit()
        print("Wygenerowano grupy przedmiotowe")
    
    def generate_students_and_parents(self, classes_data):
        """Generuje uczniów i rodziców"""
        students_data = []
        parents_data = []
        
        students_per_class = [20, 20, 20, 20, 20]  # 100 uczniów łącznie
        
        for i, class_id in enumerate(classes_data):
            for j in range(students_per_class[i]):
                # Generowanie ucznia
                first_name = fake.first_name()
                last_name = fake.last_name()
                username = f"{last_name.lower()}.{first_name.lower()}.{j}"[:30]
                password = hash_password('student123')
                student_age = 15 + i  # Wiek odpowiedni dla klasy (15-19 lat)
                birth_date = fake.date_of_birth(minimum_age=student_age, maximum_age=student_age+1)
                
                # Dodanie użytkownika ucznia
                self.cur.execute(
                    "INSERT INTO users (username, password, role) VALUES (%s, %s, %s) RETURNING user_id",
                    (username, password, 'student')
                )
                student_user_id = self.cur.fetchone()[0]
                
                # Dodanie ucznia
                self.cur.execute(
                    "INSERT INTO students (user_id, class_id) VALUES (%s, %s) RETURNING student_id",
                    (student_user_id, class_id)
                )
                student_id = self.cur.fetchone()[0]
                
                # Dane osobowe ucznia
                self.cur.execute(
                    "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (%s, %s, %s, %s)",
                    (student_user_id, first_name, last_name, generate_pesel(birth_date))
                )
                
                # Dane kontaktowe ucznia
                phone = fake.phone_number().replace(' ', '').replace('-', '')[:9]
                email = f"{username}@gmail.com"[:64]
                address = fake.address()[:100]
                
                self.cur.execute(
                    "INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (%s, %s, %s, %s)",
                    (student_user_id, phone, email, address)
                )
                
                students_data.append((student_id, student_user_id, class_id))
                
                # Generowanie rodziców (1-2 na ucznia)
                parents_count = random.randint(1, 2)
                student_parents = []
                
                for p in range(parents_count):
                    parent_first_name = fake.first_name()
                    parent_last_name = last_name  # Ten sam nazwisko co dziecko
                    parent_username = f"{parent_last_name.lower()}.{parent_first_name.lower()}.r{p}"[:30]
                    parent_password = hash_password('parent123')
                    parent_birth_date = fake.date_of_birth(minimum_age=35, maximum_age=55)
                    
                    # Dodanie użytkownika rodzica
                    self.cur.execute(
                        "INSERT INTO users (username, password, role) VALUES (%s, %s, %s) RETURNING user_id",
                        (parent_username, parent_password, 'parent')
                    )
                    parent_user_id = self.cur.fetchone()[0]
                    
                    # Dodanie rodzica
                    self.cur.execute(
                        "INSERT INTO parents (user_id) VALUES (%s) RETURNING parent_id",
                        (parent_user_id,)
                    )
                    parent_id = self.cur.fetchone()[0]
                    
                    # Dane osobowe rodzica
                    self.cur.execute(
                        "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (%s, %s, %s, %s)",
                        (parent_user_id, parent_first_name, parent_last_name, generate_pesel(parent_birth_date))
                    )
                    
                    # Dane kontaktowe rodzica
                    phone = fake.phone_number().replace(' ', '').replace('-', '')[:9]
                    email = f"{parent_username}@gmail.com"[:64]
                    address = fake.address()[:100]
                    
                    self.cur.execute(
                        "INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (%s, %s, %s, %s)",
                        (parent_user_id, phone, email, address)
                    )
                    
                    # Powiązanie rodzic-dziecko
                    self.cur.execute(
                        "INSERT INTO parent_student (parent_id, student_id, show_info) VALUES (%s, %s, %s)",
                        (parent_id, student_id, True)
                    )
                    
                    student_parents.append(parent_id)
                
                parents_data.extend(student_parents)
        
        self.conn.commit()
        print(f"Wygenerowano {len(students_data)} uczniów i {len(parents_data)} rodziców")
        return students_data
    
    def assign_teachers_to_subjects(self, teachers_data):
        """Przypisuje nauczycieli do przedmiotów"""
        # Pobierz ID wszystkich przedmiotów
        self.cur.execute("SELECT subject_id FROM subjects")
        subject_ids = [row[0] for row in self.cur.fetchall()]
        
        # Każdy nauczyciel uczy 1-3 przedmiotów
        for teacher_id, _, _, _ in teachers_data:
            subjects_to_teach = random.sample(subject_ids, random.randint(1, 3))
            
            for subject_id in subjects_to_teach:
                try:
                    self.cur.execute(
                        "INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (%s, %s)",
                        (teacher_id, subject_id)
                    )
                except psycopg2.IntegrityError:
                    self.conn.rollback()
                    continue
        
        self.conn.commit()
        print("Przypisano nauczycieli do przedmiotów")
    
    def assign_students_to_groups(self, students_data):
        """Przypisuje uczniów do grup przedmiotowych"""
        for student_id, _, class_id in students_data:
            # Pobierz wszystkie grupy dla klasy ucznia
            self.cur.execute(
                "SELECT sg.group_id, sg.subject_id FROM subject_groups sg WHERE sg.class_id = %s",
                (class_id,)
            )
            groups = self.cur.fetchall()
            
            # Grupuj według przedmiotów
            subjects_groups = {}
            for group_id, subject_id in groups:
                if subject_id not in subjects_groups:
                    subjects_groups[subject_id] = []
                subjects_groups[subject_id].append(group_id)
            
            # Przypisz ucznia do jednej grupy z każdego przedmiotu
            for subject_id, group_ids in subjects_groups.items():
                chosen_group = random.choice(group_ids)
                try:
                    self.cur.execute(
                        "INSERT INTO student_subject_group (student_id, group_id) VALUES (%s, %s)",
                        (student_id, chosen_group)
                    )
                except psycopg2.IntegrityError:
                    self.conn.rollback()
                    continue
        
        self.conn.commit()
        print("Przypisano uczniów do grup przedmiotowych")
    
    def generate_teacher_class_subject(self, teachers_data, classes_data):
        """Generuje powiązania nauczyciel-klasa-przedmiot"""
        for teacher_id, _, _, _ in teachers_data:
            # Pobierz przedmioty które uczy nauczyciel
            self.cur.execute(
                "SELECT subject_id FROM teacher_subject WHERE teacher_id = %s",
                (teacher_id,)
            )
            teacher_subjects = [row[0] for row in self.cur.fetchall()]
            
            # Przypisz nauczyciela do niektórych klas w jego przedmiotach
            for class_id in random.sample(classes_data, random.randint(1, 3)):
                for subject_id in teacher_subjects:
                    # Znajdź grupy dla tego przedmiotu w tej klasie
                    self.cur.execute(
                        "SELECT group_id FROM subject_groups WHERE class_id = %s AND subject_id = %s",
                        (class_id, subject_id)
                    )
                    groups = self.cur.fetchall()
                    
                    for group_id, in groups:
                        try:
                            self.cur.execute(
                                "INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id, group_id) VALUES (%s, %s, %s, %s)",
                                (teacher_id, class_id, subject_id, group_id)
                            )
                        except psycopg2.IntegrityError:
                            self.conn.rollback()
                            continue
        
        self.conn.commit()
        print("Wygenerowano powiązania nauczyciel-klasa-przedmiot")
    
    def generate_schedule(self, classes_data, teachers_data):
        """Generuje plan lekcji"""
        # Pobierz dane o grupach i przedmiotach
        self.cur.execute("""
            SELECT sg.group_id, sg.class_id, sg.subject_id, s.name
            FROM subject_groups sg
            JOIN subjects s ON s.subject_id = sg.subject_id
        """)
        groups_data = self.cur.fetchall()

        # Słownik do śledzenia zajętych slotów dla nauczycieli i klas
        teacher_slots = {}  # { (teacher_id, day, lesson_num): True }
        class_slots = {}    # { (class_id, day, lesson_num): True }
        room_slots = {}     # { (room_num, day, lesson_num): True }

        # Słownik do śledzenia liczby lekcji z przedmiotu w tygodniu
        subject_lessons = {}  # { (class_id, subject_id): count }

        # Dla każdej grupy wygeneruj lekcje w tygodniu
        for group_id, class_id, subject_id, subject_name in groups_data:
            # Znajdź nauczyciela który uczy tego przedmiotu w tej klasie i grupie
            self.cur.execute("""
                SELECT tcs.teacher_id FROM teacher_class_subject tcs
                WHERE tcs.class_id = %s AND tcs.subject_id = %s AND tcs.group_id = %s
                LIMIT 1
            """, (class_id, subject_id, group_id))

            teacher_result = self.cur.fetchone()
            if not teacher_result:
                continue

            teacher_id = teacher_result[0]
            # Ile lekcji w tygodniu (2-5 w zależności od przedmiotu)
            lessons_per_week = {
                'Matematyka': 4, 'Język polski': 4, 'Język angielski': 3,
                'Historia': 2, 'Geografia': 2, 'Biologia': 2, 'Chemia': 2,
                'Fizyka': 2, 'Informatyka': 2, 'Wychowanie fizyczne': 3
            }.get(subject_name, 2)
            # Inicjalizacja licznika lekcji dla tego przedmiotu w klasie
            if (class_id, subject_id) not in subject_lessons:
                subject_lessons[(class_id, subject_id)] = 0

            # Generuj lekcje
            attempts = 0
            generated = 0

            while generated < lessons_per_week and attempts < 100:
                day = random.randint(1, 5)  # Poniedziałek-Piątek
                lesson_num = random.randint(1, 8)  # Lekcje 1-8
                room_num = random.choice([
                    101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                    201, 202, 203, 204, 205, 206, 207, 208, 209, 210,
                    301, 302, 303, 304, 305, 306, 307, 308, 309, 310
                ])

                # Sprawdź konflikty:
                # 1. Czy nauczyciel nie ma już w tym czasie lekcji
                teacher_key = (teacher_id, day, lesson_num)
                # 2. Czy klasa nie ma już w tym czasie lekcji
                class_key = (class_id, day, lesson_num)
                # 3. Czy sala nie jest już zajęta
                room_key = (room_num, day, lesson_num)
                # 4. Czy nie przekraczamy maksymalnej liczby lekcji dziennie dla klasy (8)

                if (teacher_key in teacher_slots or
                    class_key in class_slots or
                    room_key in room_slots):
                    attempts += 1
                    continue

                # Jeśli wszystko OK, dodaj lekcję
                try:
                    self.cur.execute("""
                        INSERT INTO class_schedule
                        (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """, (class_id, teacher_id, subject_id, group_id, day, lesson_num, room_num))

                    # Zarezerwuj sloty
                    teacher_slots[teacher_key] = True
                    class_slots[class_key] = True
                    room_slots[room_key] = True

                    # Zwiększ licznik lekcji z tego przedmiotu
                    subject_lessons[(class_id, subject_id)] += 1

                    generated += 1
                except psycopg2.IntegrityError:
                    self.conn.rollback()

                attempts += 1
        self.conn.commit()
        print("Wygenerowano plan lekcji")
    
    def generate_grades(self, students_data):
            """Generuje oceny dla uczniów zgodnie z relacjami w bazie danych"""
            print("🎯 Generuje oceny dla uczniów...")

            for student_id, student_user_id, class_id in students_data:
                # Pobierz wszystkie kombinacje nauczyciel-przedmiot dla danego ucznia
                # które są zgodne z triggerem check_teacher_permission()
                self.cur.execute("""
                    SELECT DISTINCT
                        tcs.teacher_id,
                        tcs.subject_id,
                        s.class_id
                    FROM teacher_class_subject tcs
                    JOIN students s ON s.class_id = tcs.class_id
                    WHERE s.student_id = %s
                      AND s.class_id = %s
                      AND tcs.class_id = %s
                """, (student_id, class_id, class_id))

                valid_combinations = self.cur.fetchall()

                if not valid_combinations:
                    continue


                for teacher_id, subject_id, student_class_id in valid_combinations:
                    # Generuj 3-8 ocen dla każdej kombinacji
                    grades_count = random.randint(3, 8)

                    for _ in range(grades_count):
                        # Realistyczne wartości ocen z wagami
                        grade_value = random.choices(
                            [1, 2, 3, 4, 5, 6],
                            weights=[2, 5, 15, 25, 35, 18]
                        )[0]

                        # Data oceny (unikaj wakacji - lipiec/sierpień)
                        grade_date = fake.date_between(start_date='-90d', end_date='today')
                        while grade_date.month in [7, 8]:
                            grade_date = fake.date_between(start_date='-90d', end_date='today')

                        # Typ oceny
                        grade_types = [
                            'Praca klasowa', 'Kartkówka', 'Odpowiedź ustna',
                            'Praca domowa', 'Projekt', 'Test', 'Aktywność',
                            'Sprawdzian', 'Quiz', 'Prezentacja'
                        ]
                        description = random.choice(grade_types)

                        try:
                            self.cur.execute("""
                                INSERT INTO grades (
                                    student_id, subject_id, teacher_id,
                                    grade_value, date, description
                                ) VALUES (%s, %s, %s, %s, %s, %s)
                            """, (
                                student_id, subject_id, teacher_id,
                                grade_value, grade_date, description
                            ))

                        except Exception as e:
                            self.conn.rollback()
                            print(f"❌ Błąd przy dodawaniu oceny: {e}")
                            # Kontynuuj z następną oceną
                            continue
            try:
                self.conn.commit()
                print("✅ Pomyślnie wygenerowano oceny")
            except Exception as e:
                self.conn.rollback()
                print(f"❌ Błąd podczas commitowania ocen: {e}")

    def generate_attendance(self, students_data):
        """Generuje obecności"""
        # Pobierz plan lekcji
        self.cur.execute("SELECT schedule_id, class_id FROM class_schedule")
        schedules = self.cur.fetchall()
        
        # Generuj obecności dla ostatnich 30 dni
        for i in range(30):
            attendance_date = date.today() - timedelta(days=i)
            
            # Pomiń weekendy i wakacje
            if attendance_date.weekday() >= 5 or attendance_date.month in [7, 8]:
                continue
            
            for student_id, _, class_id in students_data:
                # Znajdź lekcje dla klasy ucznia
                class_schedules = [s for s in schedules if s[1] == class_id]
                
                for schedule_id, _ in class_schedules[:5]:  # Ograniczenie do 5 lekcji dziennie
                    # 85% szans na obecność
                    if random.random() < 0.85:
                        status = 'presence'
                    else:
                        status = random.choice(['absence', 'late', 'excused absence'])
                    
                    try:
                        self.cur.execute("""
                            INSERT INTO attendance (student_id, schedule_id, date, status)
                            VALUES (%s, %s, %s, %s)
                        """, (student_id, schedule_id, attendance_date, status))
                    except psycopg2.IntegrityError:
                        self.conn.rollback()
                        continue
        
        self.conn.commit()
        print("Wygenerowano obecności")
    
    def generate_tests_and_events(self, classes_data):
        """Generuje sprawdziany i wydarzenia"""
        # Pobierz grupy przedmiotowe
        self.cur.execute("""
            SELECT sg.group_id, sg.class_id, sg.subject_id, s.name
            FROM subject_groups sg
            JOIN subjects s ON s.subject_id = sg.subject_id
        """)
        groups = self.cur.fetchall()
        
        # Generuj sprawdziany
        for group_id, class_id, subject_id, subject_name in groups:
            # 1-3 sprawdziany na grupę
            tests_count = random.randint(1, 3)
            
            for _ in range(tests_count):
                test_date = fake.date_between(start_date='+1d', end_date='+30d')
                if test_date.month in [7, 8]:
                    continue
                
                test_titles = [
                    f"Sprawdzian - {subject_name}"[:100],
                    f"Test - {subject_name}"[:100],
                    f"Kartkówka - {subject_name}"[:100],
                    f"Praca klasowa - {subject_name}"[:100]
                ]
                
                try:
                    self.cur.execute("""
                        INSERT INTO tests (title, subject_id, group_id, date, class_id)
                        VALUES (%s, %s, %s, %s, %s)
                    """, (random.choice(test_titles), subject_id, group_id, test_date, class_id))
                except psycopg2.IntegrityError:
                    self.conn.rollback()
                    continue
        
        # Generuj wydarzenia
        for class_id in classes_data:
            events_count = random.randint(2, 5)
            
            for _ in range(events_count):
                event_date = fake.date_between(start_date='-30d', end_date='+60d')
                
                event_titles = [
                    "Wycieczka klasowa", "Zebranie z rodzicami", "Dzień otwarty",
                    "Konkurs szkolny", "Akademia", "Spektakl teatralny",
                    "Zawody sportowe", "Kiermasz"
                ]
                
                event_descriptions = [
                    "Szczegóły zostaną podane później",
                    "Zapraszamy wszystkich uczniów",
                    "Obowiązkowe dla całej klasy",
                    "Udział dobrowolny",
                    "Więcej informacji u wychowawcy"
                ]
                
                try:
                    self.cur.execute("""
                        INSERT INTO events (title, description, date, class_id)
                        VALUES (%s, %s, %s, %s)
                    """, (random.choice(event_titles)[:64], random.choice(event_descriptions)[:100], event_date, class_id))
                except psycopg2.IntegrityError:
                    self.conn.rollback()
                    continue
        
        self.conn.commit()
        print("Wygenerowano sprawdziany i wydarzenia")
    
    def generate_slot_exceptions(self):
        """Generuje wyjątki w planie lekcji (np. zastępstwa)"""
        # Pobierz losowe lekcje z planu
        self.cur.execute("""
            SELECT schedule_id, class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number
            FROM class_schedule
            ORDER BY RANDOM()
            LIMIT 10
        """)
        lessons = self.cur.fetchall()

        for lesson in lessons:
            schedule_id, class_id, teacher_id, subject_id, group_id, day, lesson_num = lesson

            # Znajdź innego nauczyciela tego samego przedmiotu
            self.cur.execute("""
                SELECT t.teacher_id
                FROM teacher_subject ts
                JOIN teachers t ON t.teacher_id = ts.teacher_id
                WHERE ts.subject_id = %s AND t.teacher_id != %s
                LIMIT 1
            """, (subject_id, teacher_id))

            substitute = self.cur.fetchone()
            if substitute:
                substitute_id = substitute[0]
                exception_date = date.today() + timedelta(days=random.randint(1, 30))

                # Wybierz typ wyjątku
                exception_type = random.choice(['cancelled', 'substitution'])

                # Dodaj wyjątek z poprawną strukturą tabeli
                if exception_type == 'substitution':
                    self.cur.execute("""
                        INSERT INTO slot_exceptions
                        (schedule_id, exception_date, type, sub_teacher_id, note)
                        VALUES (%s, %s, %s, %s, %s)
                    """, (schedule_id, exception_date, exception_type, substitute_id,
                         f"Zastępstwo - nauczyciel ID {substitute_id}"))
                else:
                    self.cur.execute("""
                        INSERT INTO slot_exceptions
                        (schedule_id, exception_date, type, note)
                        VALUES (%s, %s, %s, %s)
                    """, (schedule_id, exception_date, exception_type, "Lekcja odwołana"))

        self.conn.commit()
        print("Wygenerowano wyjątki w planie lekcji")

    def generate_class_changes_history(self, classes_data, students_data):
        """Generuje historię zmian klas uczniów"""
        # Wybierz losowych uczniów (około 10%)
        sample_size = max(1, len(students_data) // 10)
        students_to_move = random.sample(students_data, sample_size)

        for student_id, _, current_class_id in students_to_move:
            # Wybierz nową klasę (inną niż obecna)
            new_class_id = random.choice([c for c in classes_data if c != current_class_id])
            change_date = fake.date_between(start_date='-1y', end_date='today')

            # Użyj poprawnych nazw kolumn zgodnych ze strukturą tabeli
            self.cur.execute("""
                INSERT INTO class_changes_history
                (student_id, from_class, to_class, "date")
                VALUES (%s, %s, %s, %s)
            """, (student_id, current_class_id, new_class_id, change_date))

            # Aktualizuj obecną klasę ucznia
            self.cur.execute("""
                UPDATE students SET class_id = %s WHERE student_id = %s
            """, (new_class_id, student_id))

        self.conn.commit()
        print("Wygenerowano historię zmian klas")

    def generate_group_changes_history(self, students_data):
        """Generuje historię zmian grup przedmiotowych"""
        # Pobierz wszystkie przypisania uczniów do grup
        self.cur.execute("""
            SELECT ssg.student_id, ssg.group_id, sg.subject_id
            FROM student_subject_group ssg
            JOIN subject_groups sg ON sg.group_id = ssg.group_id
        """)
        assignments = self.cur.fetchall()

        # Wybierz losowe przypisania do zmiany (około 10%)
        sample_size = max(1, len(assignments) // 10)
        assignments_to_change = random.sample(assignments, sample_size)

        for student_id, old_group_id, subject_id in assignments_to_change:
            # Znajdź inną grupę tego samego przedmiotu
            self.cur.execute("""
                SELECT sg.group_id
                FROM subject_groups sg
                JOIN classes c ON c.class_id = sg.class_id
                JOIN students s ON s.class_id = c.class_id
                WHERE sg.subject_id = %s AND s.student_id = %s AND sg.group_id != %s
                LIMIT 1
            """, (subject_id, student_id, old_group_id))

            new_group = self.cur.fetchone()
            if new_group:
                new_group_id = new_group[0]
                change_date = fake.date_between(start_date='-1y', end_date='today')

                # Użyj poprawnych nazw kolumn zgodnych ze strukturą tabeli
                self.cur.execute("""
                    INSERT INTO group_changes_history
                    (student_id, from_group, to_group, "date")
                    VALUES (%s, %s, %s, %s)
                """, (student_id, old_group_id, new_group_id, change_date))

                # Aktualizuj obecną grupę ucznia
                self.cur.execute("""
                    UPDATE student_subject_group
                    SET group_id = %s
                    WHERE student_id = %s AND group_id = %s
                """, (new_group_id, student_id, old_group_id))

        self.conn.commit()
        print("Wygenerowano historię zmian grup")

    def generate_final_grades(self, students_data):
        """Generuje oceny końcowe z uwzględnieniem roku szkolnego"""
        # Oblicz aktualny rok szkolny
        current_date = date.today()
        if current_date.month >= 9:  # Rok szkolny zaczyna się we wrześniu
            current_year = str(current_date.year)
        else:
            current_year = str(current_date.year - 1)

        for student_id, _, _ in students_data:
            # Pobierz wszystkie przedmioty ucznia przez teacher_class_subject
            self.cur.execute("""
                SELECT DISTINCT tcs.subject_id, tcs.teacher_id
                FROM student_subject_group ssg
                JOIN subject_groups sg ON sg.group_id = ssg.group_id
                JOIN teacher_class_subject tcs ON tcs.class_id = sg.class_id
                    AND tcs.subject_id = sg.subject_id
                    AND tcs.group_id = sg.group_id
                WHERE ssg.student_id = %s
            """, (student_id,))

            subjects_and_teachers = self.cur.fetchall()

            for subject_id, teacher_id in subjects_and_teachers:
                # Oblicz średnią z ocen bieżących dla całego roku szkolnego
                start_date = date(int(current_year), 9, 1)
                end_date = date(int(current_year) + 1, 6, 30)

                self.cur.execute("""
                    SELECT AVG(grade_value)
                    FROM grades
                    WHERE student_id = %s
                      AND subject_id = %s
                      AND "date" BETWEEN %s AND %s
                """, (student_id, subject_id, start_date, end_date))

                avg_grade = self.cur.fetchone()[0]

                if avg_grade is not None:
                    # Zaokrąglij średnią i ustaw ocenę końcową
                    final_grade = round(avg_grade)
                    final_grade = min(max(final_grade, 1), 6)  # Ogranicz do 1-6

                    try:
                        # Użyj poprawnej struktury tabeli final_grades
                        self.cur.execute("""
                            INSERT INTO final_grades
                            (student_id, subject_id, teacher_id, grade_value, school_year)
                            VALUES (%s, %s, %s, %s, %s)
                        """, (student_id, subject_id, teacher_id, final_grade, current_year))
                    except psycopg2.IntegrityError:
                        self.conn.rollback()
                        continue

        self.conn.commit()
        print("Wygenerowano oceny końcowe")

def main():
    print("Rozpoczynanie generowania danych testowych...")

    generator = DataGenerator()

    # Opcjonalnie wyczyść istniejące dane
    generator.clear_existing_data()

    # Generuj dane krok po kroku
    generator.generate_class_profiles()
    generator.generate_subjects()
    teachers_data = generator.generate_users_and_teachers()
    classes_data = generator.generate_classes(teachers_data)
    generator.generate_subject_groups(classes_data)
    students_data = generator.generate_students_and_parents(classes_data)
    generator.assign_teachers_to_subjects(teachers_data)
    generator.generate_teacher_class_subject(teachers_data, classes_data)
    generator.assign_students_to_groups(students_data)
    generator.generate_schedule(classes_data, teachers_data)

    # Nowe metody
    generator.generate_slot_exceptions()
    generator.generate_class_changes_history(classes_data, students_data)
    generator.generate_group_changes_history(students_data)

    generator.generate_grades(students_data)
    generator.generate_attendance(students_data)
    generator.generate_tests_and_events(classes_data)
    generator.generate_final_grades(students_data)

    print("\n=== PODSUMOWANIE ===")
    print(f"Wygenerowano:")
    print(f"- 5 klas")
    print(f"- 15 nauczycieli + 1 administrator")
    print(f"- 100 uczniów")
    print(f"- ~150-200 rodziców")
    print(f"- 15 przedmiotów")
    print(f"- Plan lekcji, oceny, obecności, sprawdziany i wydarzenia")
    print(f"- Wyjątki w planie lekcji")
    print(f"- Historię zmian klas")
    print(f"- Historię zmian grup")
    print(f"- Oceny końcowe")
    print(f"\nDane logowania:")
    print(f"Administrator: admin / admin123")
    print(f"Nauczyciele: [nazwisko].[imie] / teacher123")
    print(f"Uczniowie: [nazwisko].[imie].[numer] / student123")
    print(f"Rodzice: [nazwisko].[imie].r[numer] / parent123")

    print("\nGenerowanie zakończone pomyślnie!")

if __name__ == "__main__":
    main()