USE cars;
INSERT INTO cars(car_id, brand, model, category,  body_type, body_number, engine_number) 
VALUES 
(1,"Мазда", "Х1", "М", "седан", 123, 123), 
(2,"Ланос", "Х2", "K", "універсал", 456, 456), 
(3,"БМВ", "Х3", "L", "хетчбек", 789, 789), 
(4,"Мерседес", "Х4", "S", "седан", 101, 101);

INSERT INTO car_showroom(car_showroom_id, address, phone_number, working_hours) 
VALUES 
(1,"Yunosti1", "+380680999991", "9:00-17:00"), 
(2,"Yunosti2", "+380680999992", "9:00-18:00"), 
(3,"Yunosti3", "+380680999993", "9:00-19:00"), 
(4,"Yunosti4", "+380680999994", "9:00-20:00");

INSERT INTO coworkers(coworker_id, first_name, surname, last_name,  birth_date, car_showroom) 
VALUES 
(1,"Олег", "Іванович", "Антипов", "2023-01-01", 1), 
(2,"Світлана", "Русланівна", "Білозерська", "2023-02-02", 2), 
(3,"Анастасія", "Ігорівна", "Калиняк", "2023-03-03", 3), 
(4,"Валерій", "Сергійович", "Лужний", "2023-04-04", 4);

INSERT INTO operation(operation_id, operation_date, o_type, car_showroom, coworker, note) 
VALUES 
(1,"2023-01-01", "type", 1, 1, "note1"), 
(2,"2023-02-02", "type", 2, 2, "note2"), 
(3,"2023-03-03", "type", 3, 3, "note3"), 
(4,"2023-04-04", "type", 4, 4, "note4");
