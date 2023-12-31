USE cars;
CREATE TABLE cars
 ( car_id BIGINT AUTO_INCREMENT PRIMARY KEY
 ,brand VARCHAR(100) NOT NULL
 ,model VARCHAR(100) NOT NULL
 ,category VARCHAR(100) NOT NULL
 ,body_type VARCHAR(100) NOT NULL
 ,body_number VARCHAR(100) NOT NULL
 ,engine_number VARCHAR(100) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 
 CREATE TABLE car_showroom
 ( car_showroom_id BIGINT AUTO_INCREMENT PRIMARY KEY
 ,address VARCHAR(100) NOT NULL
 ,phone_number VARCHAR(100) NOT NULL
,working_hours VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE coworkers
 ( coworker_id BIGINT AUTO_INCREMENT PRIMARY KEY
 ,first_name VARCHAR(100) NOT NULL
 ,surname VARCHAR(100) NOT NULL
 ,last_name VARCHAR(100) NOT NULL
 , birth_date DATE NOT NULL
 ,car_showroom BIGINT
 ,FOREIGN KEY (`car_showroom`) REFERENCES `car_showroom`(`car_showroom_id`)
ON DELETE RESTRICT ON UPDATE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
CREATE TABLE operation
(operation_id BIGINT AUTO_INCREMENT PRIMARY KEY
,operation_date DATE NOT NULL
,o_type VARCHAR(100) NOT NULL
,note VARCHAR(100) NOT NULL
,car_showroom BIGINT
,coworker BIGINT
,FOREIGN KEY (`car_showroom`) REFERENCES `car_showroom`(`car_showroom_id`)
ON DELETE RESTRICT ON UPDATE CASCADE
,FOREIGN KEY (`coworker`) REFERENCES `coworkers`(`coworker_id`)
ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;