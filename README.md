# README
i dont have russian lang on my linux laptop so i have to write whole file in eng, good luck reading allat 

i created 3 models: student, group, lesson. 
Student and Lesson has Group foreign key.

about API:
every model has 4 ways to interact (im not sure if im using correct verb) with an api: GET, POST, PATCH, DELETE

1. to see all objects (idk if im naming them right rn actually) example: localhost:3000/api/students
2. to see exact object example: localhost:3000/api/students/1
3. to create a new object using curl: curl -X POST localhost:3000/api/students --json '{"name":"Michael", "group_id":1}'
4. to update already existing object: curl -X PATCH localhost:3000/api/students/5 --json '{"name":"Nikita"}'
5. to destroy exact object example: curl -X DELETE localhost:3000/api/students/11
