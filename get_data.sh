#!/bin/bash

# Skrypt do eksportu danych z bazy egradebook w formacie COPY FROM STDIN
# Użycie: ./export_egradebook_data.sh [nazwa_bazy] [plik_wyjściowy]

DB_NAME=${1:-egradebook}
OUTPUT_FILE=${2:-./egradebook_data.sql}
TEMP_SCRIPT="temp_export_script.sql"

echo "=== Eksport danych z bazy $DB_NAME ==="
echo "Plik wyjściowy: $OUTPUT_FILE"

# Sprawdź czy baza istnieje
if ! psql -lqt | cut -d \| -f 1 | grep -qw $DB_NAME; then
    echo "Błąd: Baza danych '$DB_NAME' nie istnieje!"
    exit 1
fi

# Stwórz tymczasowy skrypt SQL
cat > $TEMP_SCRIPT << 'EOF'
-- Nagłówek pliku
\echo '-- Dane dla bazy egradebook'
\echo '-- Data eksportu:' `date`
\echo ''
\echo 'SET session_replication_role = replica;'
\echo ''

-- Funkcja pomocnicza do eksportu tabeli
\set export_table 'SELECT CASE WHEN COUNT(*) > 0 THEN format(''COPY %s FROM stdin;'', :table_name) ELSE '''' END FROM ' :table_name

-- Eksport w odpowiedniej kolejności (respektując foreign keys)

-- 1. Tabele bazowe bez zależności
\set table_name '''class_profile'''
\gset
\if :{?export_result}
    \echo 'COPY class_profile FROM stdin;'
    \copy class_profile TO stdout
    \echo '\.'
    \echo ''
\endif

\set table_name '''users'''
\echo 'COPY users FROM stdin;'
\copy users TO stdout
\echo '\.'
\echo ''

\set table_name '''subjects'''
\echo 'COPY subjects FROM stdin;'
\copy subjects TO stdout
\echo '\.'
\echo ''

-- 2. Tabele zależne od users
\echo 'COPY teachers FROM stdin;'
\copy teachers TO stdout
\echo '\.'
\echo ''

\echo 'COPY parents FROM stdin;'
\copy parents TO stdout
\echo '\.'
\echo ''

\echo 'COPY contact_info FROM stdin;'
\copy contact_info TO stdout
\echo '\.'
\echo ''

\echo 'COPY personal_data FROM stdin;'
\copy personal_data TO stdout
\echo '\.'
\echo ''

-- 3. Tabele zależne od class_profile
\echo 'COPY classes FROM stdin;'
\copy classes TO stdout
\echo '\.'
\echo ''

-- 4. Tabele zależne od classes i subjects
\echo 'COPY subject_groups FROM stdin;'
\copy subject_groups TO stdout
\echo '\.'
\echo ''

-- 5. Studenci (zależni od users i classes)
\echo 'COPY students FROM stdin;'
\copy students TO stdout
\echo '\.'
\echo ''

-- 6. Plan lekcji
\echo 'COPY class_schedule FROM stdin;'
\copy class_schedule TO stdout
\echo '\.'
\echo ''

-- 7. Pozostałe tabele
\echo 'COPY attendance FROM stdin;'
\copy attendance TO stdout
\echo '\.'
\echo ''

\echo 'COPY tests FROM stdin;'
\copy tests TO stdout
\echo '\.'
\echo ''

\echo 'COPY events FROM stdin;'
\copy events TO stdout
\echo '\.'
\echo ''

\echo 'COPY grades FROM stdin;'
\copy grades TO stdout
\echo '\.'
\echo ''

-- 8. Tabele łączące (many-to-many)
\echo 'COPY student_subject_group FROM stdin;'
\copy student_subject_group TO stdout
\echo '\.'
\echo ''

\echo 'COPY teacher_subject FROM stdin;'
\copy teacher_subject TO stdout
\echo '\.'
\echo ''

\echo 'COPY parent_student FROM stdin;'
\copy parent_student TO stdout
\echo '\.'
\echo ''

\echo 'COPY teacher_class_subject FROM stdin;'
\copy teacher_class_subject TO stdout
\echo '\.'
\echo ''

-- 9. Wyjątki i historia
\echo 'COPY slot_exceptions FROM stdin;'
\copy slot_exceptions TO stdout
\echo '\.'
\echo ''

\echo 'COPY class_changes_history FROM stdin;'
\copy class_changes_history TO stdout
\echo '\.'
\echo ''

\echo 'COPY group_changes_history FROM stdin;'
\copy group_changes_history TO stdout
\echo '\.'
\echo ''

\echo 'COPY final_grades FROM stdin;'
\copy final_grades TO stdout
\echo '\.'
\echo ''

-- Sekwencje
\echo ''
\echo '-- Aktualizacja sekwencji'
\echo "SELECT setval('class_profile_id_seq', COALESCE((SELECT MAX(id) FROM class_profile), 1));"
\echo "SELECT setval('users_user_id_seq', COALESCE((SELECT MAX(user_id) FROM users), 1));"
\echo "SELECT setval('teachers_teacher_id_seq', COALESCE((SELECT MAX(teacher_id) FROM teachers), 1));"
\echo "SELECT setval('classes_class_id_seq', COALESCE((SELECT MAX(class_id) FROM classes), 1));"
\echo "SELECT setval('subjects_subject_id_seq', COALESCE((SELECT MAX(subject_id) FROM subjects), 1));"
\echo "SELECT setval('subject_groups_group_id_seq', COALESCE((SELECT MAX(group_id) FROM subject_groups), 1));"
\echo "SELECT setval('parents_parent_id_seq', COALESCE((SELECT MAX(parent_id) FROM parents), 1));"
\echo "SELECT setval('students_student_id_seq', COALESCE((SELECT MAX(student_id) FROM students), 1));"
\echo "SELECT setval('class_schedule_schedule_id_seq', COALESCE((SELECT MAX(schedule_id) FROM class_schedule), 1));"
\echo "SELECT setval('contact_info_contact_id_seq', COALESCE((SELECT MAX(contact_id) FROM contact_info), 1));"
\echo "SELECT setval('personal_data_personal_id_seq', COALESCE((SELECT MAX(personal_id) FROM personal_data), 1));"
\echo "SELECT setval('attendance_attendance_id_seq', COALESCE((SELECT MAX(attendance_id) FROM attendance), 1));"
\echo "SELECT setval('tests_test_id_seq', COALESCE((SELECT MAX(test_id) FROM tests), 1));"
\echo "SELECT setval('events_event_id_seq', COALESCE((SELECT MAX(event_id) FROM events), 1));"
\echo "SELECT setval('grades_grade_id_seq', COALESCE((SELECT MAX(grade_id) FROM grades), 1));"
\echo "SELECT setval('slot_exceptions_exception_id_seq', COALESCE((SELECT MAX(exception_id) FROM slot_exceptions), 1));"
\echo "SELECT setval('class_changes_history_id_seq', COALESCE((SELECT MAX(id) FROM class_changes_history), 1));"
\echo "SELECT setval('group_changes_history_id_seq', COALESCE((SELECT MAX(id) FROM group_changes_history), 1));"
\echo "SELECT setval('final_grades_id_seq', COALESCE((SELECT MAX(id) FROM final_grades), 1));"

\echo ''
\echo 'SET session_replication_role = DEFAULT;'
\echo ''
\echo '-- Import zakończony pomyślnie'
EOF

echo "Wykonywanie eksportu..."

# Wykonaj eksport
if psql -d $DB_NAME -f $TEMP_SCRIPT > $OUTPUT_FILE 2>&1; then
    echo "✓ Eksport zakończony pomyślnie!"
    echo "✓ Plik zapisany jako: $OUTPUT_FILE"
    
    # Pokaż statystyki
    LINES=$(wc -l < $OUTPUT_FILE)
    SIZE=$(du -h $OUTPUT_FILE | cut -f1)
    echo "✓ Rozmiar pliku: $SIZE ($LINES linii)"
    
    # Sprawdź czy plik zawiera dane
    DATA_LINES=$(grep -c "^[0-9]" $OUTPUT_FILE || echo "0")
    echo "✓ Wiersze z danymi: $DATA_LINES"
    
else
    echo "✗ Błąd podczas eksportu!"
    echo "Sprawdź plik $OUTPUT_FILE aby zobaczyć szczegóły błędu."
    exit 1
fi

# Wyczyść tymczasowy plik
rm -f $TEMP_SCRIPT

echo ""
echo "=== Jak używać pliku eksportu ==="
echo "1. Stwórz nową bazę danych:"
echo "   createdb nowa_baza"
echo ""
echo "2. Stwórz schemat (tabele, funkcje, triggery):"
echo "   psql -d nowa_baza -f schemat.sql"
echo ""
echo "3. Importuj dane:"
echo "   psql -d nowa_baza -f $OUTPUT_FILE"
echo ""
echo "Gotowe!"
