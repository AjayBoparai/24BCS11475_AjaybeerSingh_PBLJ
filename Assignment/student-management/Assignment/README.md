# Student Management REST API

Spring Boot 3 + Spring Data JPA + MySQL.

## Prerequisites
- Java 17+, Maven 3.8+
- MySQL 8 running on `localhost:3306`

## Setup
1. Edit `src/main/resources/application.properties` and set your MySQL username/password
   (the database `student_db` is created automatically).
2. Run: `mvn spring-boot:run`
3. Base URL: `http://localhost:8080/api/students`

## Endpoints
| Method | URL | Success | Errors |
|--------|-----|---------|--------|
| POST   | /api/students | 201 | 400 (validation), 409 (duplicate email) |
| GET    | /api/students | 200 | |
| GET    | /api/students/{id} | 200 | 404 |
| PUT    | /api/students/{id} | 200 | 400, 404, 409 |
| DELETE | /api/students/{id} | 204 | 404 |
| GET    | /api/students/course/{course} | 200 | |

## Sample request body (POST / PUT)
```json
{
  "name": "Rahul Sharma",
  "email": "rahul@example.com",
  "course": "Computer Science",
  "age": 21
}
```

## Sample error (404)
```json
{
  "timestamp": "2026-11-14T10:15:30",
  "status": 404,
  "error": "Not Found",
  "message": "Student not found with id: 99",
  "path": "/api/students/99"
}
```

## Postman screenshots to capture
1. POST create -> 201
2. POST invalid body -> 400
3. POST duplicate email -> 409
4. GET all -> 200
5. GET by id (exists) -> 200
6. GET by id (missing) -> 404
7. PUT update -> 200
8. GET by course -> 200
9. DELETE -> 204
10. DELETE again -> 404
