Katalog controller:
Zawiera klasy odpowiedzialne za obsługę żądań HTTP (REST API). Przekazuje dane do warstwy serwisowej.

Katalog dto:
(Data Transfer Objects) – klasy pomocnicze służące do wymiany danych pomiędzy frontendem a backendem.
(np. UserRegistrationRequest).

Katalog model:
Klasy odzwierciedlające strukturę danych (np. użytkownik, ocena, przedmiot). Służą do pracy z bazą danych.

Katalog repository:
Interfejsy i klasy odpowiedzialne za komunikację z bazą danych (np. zapytania SELECT, INSERT).

Katalog service:
Warstwa serwisowa przetwarza dane(np. haszowanie haseł, walidację danych) i wywołuje operacje na repozytoriach.
