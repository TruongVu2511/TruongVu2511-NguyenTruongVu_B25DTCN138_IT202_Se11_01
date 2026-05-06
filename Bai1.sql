create table patients (
    patient_id int primary key,
    full_name varchar(100),
    age int,
    room_number int,
    hiv_status varchar(50),
    mental_health_history varchar(255)
);

insert into patients (patient_id, full_name, age, room_number, hiv_status, mental_health_history)
values
(1, 'minh thu', 30, 101, 'negative', 'none'),
(2, 'hồng vân', 40, 102, 'positive', 'anxiety'),
(3, 'cao cường', 25, 103, 'negative', 'none');

create view reception_patient_view as
select 
    patient_id,
    full_name,
    age,
    room_number
from patients
where age >= 0
with check option;

select * from reception_patient_view;

update reception_patient_view
set age = 35
where patient_id = 1;

update reception_patient_view
set age = -10
where patient_id = 1;