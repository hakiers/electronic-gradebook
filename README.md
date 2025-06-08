
# 📘 Electronic Gradebook

**Electronic Gradebook** to aplikacja typu *e-dziennik*, umożliwiająca zarządzanie ocenami, planem lekcji, obecnościami oraz kontami użytkowników (uczniowie, nauczyciele, administratorzy).

## ▶️ Jak uruchomić projekt?

Aby uruchomić aplikację lokalnie, potrzebne są:

- Java 17+ i Maven
- PostgreSQL
- Python (jeśli chcesz dodać dane przykładowe)

### Krok po kroku:

1. **Zainstaluj PostgreSQL** i uruchom serwer.
2. **Utwórz bazę danych** i wczytaj schemat:
   ```bash
   psql -U <użytkownik> -d <nazwa_bazy> -f db/create.sql
   ```
3. **Dodaj przykładowe dane (opcjonalnie):**
   ```bash
   python db/generator.py
   ```
4. **Uruchom backend Spring Boot:**
   ```bash
   cd backend
   mvn spring-boot:run
   ```
5. **Uruchom frontend JavaFX:**
   ```bash
   cd frontend
   mvn javafx:run
   ```

## 🧩 Architektura

System oparty na architekturze klient-serwer:

- **Frontend**: JavaFX (FXML + kontrolery Java)
- **Backend**: Spring Boot (REST API, Spring Data JPA)
- **Baza danych**: PostgreSQL  
  Tabele: uczniowie, nauczyciele, przedmioty, plan lekcji, oceny, obecności

## 🧑‍🏫 Funkcjonalności

### Panel nauczyciela
- Przegląd planu lekcji (siatka)
- Wystawianie ocen
- Przegląd ocen uczniów
- Oznaczanie obecności
- Przycisk `WRÓĆ` do głównego widoku

### Panel ucznia
- Plan lekcji w formie kolorowej siatki
- Oceny z podziałem na przedmioty
- Lista obecności
- Przycisk `WRÓĆ` do głównego widoku

### Panel administratora
- Zarządzanie kontami użytkowników
- Edycja planu lekcji
- Przypisywanie nauczycieli do przedmiotów
- Przycisk `ZAPISZ PLAN`

## 🧠 Opis przycisków

| Przycisk             | Opis                                                                 |
|----------------------|----------------------------------------------------------------------|
| `WRÓĆ`               | Powrót do poprzedniego widoku                                        |
| `Dodaj ocenę`        | Formularz dodawania nowej oceny (POST)                              |
| `Usuń ocenę`         | Usunięcie oceny (DELETE)                                            |
| `Edytuj ocenę`       | Edycja istniejącej oceny (PUT)                                      |
| `Zapisz plan`        | Zatwierdzenie planu lekcji (POST)                                   |
| `Pokaż obecność`     | Wyświetlenie listy obecności ucznia                                 |
| `Zapisz obecność`    | Zapisanie obecności przez nauczyciela                               |

## 🔄 Komunikacja klient-serwer

1. Użytkownik wybiera akcję w UI (JavaFX)
2. Kontroler UI wysyła żądanie HTTP do backendu
3. Backend przetwarza dane i zwraca JSON
4. Widok użytkownika jest aktualizowany

## 📂 Dokumentacja techniczna

- 📄 [dokumentacja.pdf](dokumentacja.pdf) – dokumentacja  
- 📑 [schema.pdf](schema.pdf) – schemat bazy danych  
- 🗃️ `db/create.sql` – schemat tworzenia bazy  
- 🧪 `db/generator.py` – przykładowe dane

## ✍ Autorzy

Mateusz Wojaczek  
Witoria Klejdysz  
Aleksander Wieczorek
