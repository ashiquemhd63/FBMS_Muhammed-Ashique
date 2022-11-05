use flight_management_system;


create table Flight(
	flight_no int primary key auto_increment,
    flight_name varchar(50) not null ,
    flight_description varchar(100),
	total_copacity int not null
    
    
);

create table Flight_Shedule(
	id int primary key auto_increment,
    flight_from varchar(50) not null ,
     flight_to varchar(50) not null ,
    flight_date date,
	flight_time time,
    cost int,
	flight_no int,
    constraint FK_shedule_flight_no foreign key(flight_no)
    references Flight(flight_no)
    
    
    
);

create table Passenger(
	p_id int primary key auto_increment,
    name varchar(50) not null ,
	user_name varchar(50) not null ,
    email varchar(50),
	flight_time time,
    password 	(50),
	mobile_no int,
    address varchar(100),
    dob date
   
    
    
    
);

create table Booked_ticket(
	ticket_no int primary key,
    date_of_booking date,
	date_of_travel date  ,
    flight_no int,
	flight_from varchar(50),
    flight_to varchar(50),
    flight_time time,
    boarding_time time,
    flight_seat varchar(10),
    passenger_id int,
    
    constraint FK_booked_passenger_id foreign key(passenger_id)
   references Passenger(p_id),
    constraint FK_booked_flight_no foreign key(flight_no)
   references Flight(flight_no)
   
);