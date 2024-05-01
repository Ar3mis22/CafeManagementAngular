create table user(
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    phone varchar(20),
    email varchar(50),
    password varchar(250),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);

insert into
    user(name, phone, email, password, status, role)
values
    (
        'Admin',
        '0722613777',
        'admin@admin.com',
        'admin',
        'true',
        'admin'
    );

create table category(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE,
    primary key(id)
);

create table product(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE,
    categoryID int NOT NULL,
    description varchar(255),
    price int,
    status varchar(20),
    primary key(id)
);
