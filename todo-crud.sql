-- comando para crear la tabla
CREATE TABLE "todos" (
  "id" uuid PRIMARY KEY,
  "description" varchar NOT NULL,
  "course" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "is_type" varchar,
  "date_init" date,
  "date_end" date,
  "is_submit" bool DEFAULT false
);
-- comando para insertar 3 todo's
insert into todos 
(
	id,
	description,
    course,
    teacher, 
    is_submit
		) 
	values
(
	'00acdaa6-8014-4ef9-8572-b70379ce6151',
	'hacer el entregable 28',
	'git', 
	'norma',
	true
	),	
	(
	'7bd11fe9-341c-467d-a004-af5992953e81',
	'hacer el entregable 21',
	'react',
	'dilan',
	true
	),	
	(
	'399d8696-abf0-466c-b409-813718a4ad2b',
	'hacer el entregable 11',
	'c++',
	'alma',
	false
);

-- consulta para obtener los TODO's

select *from todos

-- consulta para todos finalizados:

select id, description, course, is_submit from todos where is_submit = true;




