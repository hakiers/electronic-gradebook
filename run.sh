#!/bin/bash
lsof -ti :8080 | xargs kill -9

cd backend || exit
mvn spring-boot:run &
BACKEND_PID=$!

cd ..

while ! nc -z localhost 8080; do
  sleep 1
done

cd frontend || exit
mvn javafx:run

FRONTEND_PID=$!

kill $BACKEND_PID
kill $FRONTEND_PID
