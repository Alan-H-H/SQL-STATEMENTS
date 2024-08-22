CREATE TABLE persons(
    id int,
    name varchar(100),
    age int,
    email varchar(50),
    createid date
)

CREATE TABLE persons2(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    createid date
)

CREATE TABLE persons3(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    createid datetime
    UNIQUE(ID)
)

CREATE TABLE persons4(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    createid datetime,
    PRIMARY KEY(id),
    UNIQUE(id)
)

CREATE TABLE persons5(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    createid datetime,
    PRIMARY KEY(id),
    UNIQUE(id),
    CHECK (age > 16)
)

CREATE TABLE persons6(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    createid datetime,
    PRIMARY KEY(id),
    UNIQUE(id),
    CHECK (age > 16)
)
