-- create database BOOTCAMP_EXERCISE1;
use BOOTCAMP_EXERCISE1;

-- DROP DATABASE BOOTCAMP_EXERCISE1;
-- DROP TABLE REGIONS;

create table REGIONS(
REGION_ID integer primary key not null,
REGION_NAME varchar(25) not null
);

INSERT INTO REGIONS VALUES (1, 'Euro');
INSERT INTO REGIONS VALUES (2, 'US');
INSERT INTO REGIONS VALUES (3, 'Asia');

select*from REGIONS;

-- DROP TABLE COUNTRIES;

create table COUNTRIES(
COUNTRY_ID char(2) primary key not null,
COUNTRY_NAME varchar(25) not null,
REGION_ID INTEGER,
foreign key (REGION_ID) references REGIONS(REGION_ID)
);

INSERT INTO COUNTRIES VALUES ('DE', 'Germany', 1);
INSERT INTO COUNTRIES VALUES ('IT', 'Italy', 1);
INSERT INTO COUNTRIES VALUES ('JP', 'Japan', 3);
INSERT INTO COUNTRIES VALUES ('US', 'United State', 2);

select * from COUNTRIES;

-- DROP TABLE LOCATIONS;

create table LOCATIONS(
LOCATION_ID int primary key not null,
STREET_ADDRESS varchar(25) not null,
POSTAL_CODE varchar(12) not null,
CITY varchar(30) not null,
STATE_PROVINCE varchar(12),
COUNTRY_ID char(2),
foreign key (COUNTRY_ID) references COUNTRIES (COUNTRY_ID)
);

INSERT INTO LOCATIONS VALUES (1000, '1297 abc', 989, 'Roma', null, 'IT');
INSERT INTO LOCATIONS VALUES (1100, '93091 abc', 10934, 'Venice', null, 'IT');
INSERT INTO LOCATIONS VALUES (1200, '2017 abc', 1689, 'Tokyo', 'Tokyo JP', null);
INSERT INTO LOCATIONS VALUES (1400, '2014 abc', 26192, 'Southlake', 'Texas', 'IT');

select * from LOCATIONS;

-- DROP TABLE DEPARTMENTS;

create table DEPARTMENTS(
DEPARTMENT_ID int primary key not null,
DEPARTMENT_NAME varchar(30) not null,
MANAGER_ID int unique not null,
LOCATION_ID int,
foreign key (LOCATION_ID) references LOCATIONS (LOCATION_ID)
);

INSERT INTO DEPARTMENTS VALUES (10, 'Admin', 200, 1100);
INSERT INTO DEPARTMENTS VALUES (20, 'Marketing', 201, 1200);
INSERT INTO DEPARTMENTS VALUES (30, 'Purchasing', 202, 1400);

select * from DEPARTMENTS;

-- DROP TABLE JOBS;

create table JOBS(
JOB_ID varchar(10) primary key not null,
JOB_TITLE varchar(35) not null,
MIN_SALARY int not null,
MAX_SALARY int not null
);

INSERT INTO JOBS VALUES ('IT_PROG', 'IT Programmer', 17000, 80000);
INSERT INTO JOBS VALUES ('MK_REP', 'Marketing', 9000, 60000);
INSERT INTO JOBS VALUES ('ST_CLERK', 'Clerk', 9000, 24000);

select * from JOBS;

-- DROP TABLE JOB_HISTORY;

create table JOB_HISTORY(
EMPLOYEE_ID int not null,
START_DATE date not null,
primary key (EMPLOYEE_ID, START_DATE), 
END_DATE date,
JOB_ID varchar(10) not null,
foreign key (JOB_ID) references JOBS (JOB_ID),
DEPARTMENT_ID int,
foreign key (DEPARTMENT_ID) references DEPARTMENTS (DEPARTMENT_ID)
);

INSERT INTO JOB_HISTORY VALUES (102, '1993-01-13', '1998-07-24', 'IT_PROG', 20);
INSERT INTO JOB_HISTORY VALUES (101, '1989-09-21', '1993-10-27', 'MK_REP', 10);
INSERT INTO JOB_HISTORY VALUES (101, '1993-10-28', '1997-03-15', 'MK_REP', 30);
INSERT INTO JOB_HISTORY VALUES (100, '1996-02-17', '1999-12-19', 'ST_CLERK', 30);
INSERT INTO JOB_HISTORY VALUES (103, '1998-03-24', '1999-12-31', 'MK_REP', 20);

select * from JOB_HISTORY;

-- DROP TABLE EMPLOYEES;

create table EMPLOYEES(
EMPLOYEE_ID int primary key not null,
FIRST_NAME varchar(20) not null,
LAST_NAME varchar(25) not null,
EMAIL varchar(25) unique not null,
PHONE_NUMBER varchar(20) unique not null,
HIRE_DATE date not null,
JOB_ID varchar(10) not null,
foreign key (JOB_ID) references JOBS (JOB_ID),
SALARY int not null,
COMMISSION_PCT int not null,
MANAGER_ID int not null,
DEPARTMENT_ID int,
foreign key (DEPARTMENT_ID) references DEPARTMENTS (DEPARTMENT_ID)
);

INSERT INTO EMPLOYEES VALUES (100, 'Steven', 'King', 'SKING', '515-1234567', '1987-06-17', 'ST_CLERK', 24000, 0.00, 109, 10);
INSERT INTO EMPLOYEES VALUES (101, 'Neena', 'Kochar', 'NKOCHHAR', '515-1234568', '1987-06-18', 'MK_REP', 17000, 0.00, 103, 20);
INSERT INTO EMPLOYEES VALUES (102, 'Lex', 'De Haan', 'LDHAAN', '515-1234569', '1987-06-19', 'IT_PROG', 17000, 0.00, 108, 30);
INSERT INTO EMPLOYEES VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590-4234567', '1987-06-20', 'MK_REP', 9000, 0.00, 105, 20);

select * from EMPLOYEES;

-- select LOCATION_ID, STREET_ADDRESS, CITY, STATE_PROVINCE, COUNTRY_ID from LOCATIONS;
-- select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from EMPLOYEES;
-- select FIRST_NAME, LAST_NAME, JOB_ID, DEPARTMENT_ID from EMPLOYEES where country = 'JP';
-- select EMPLOYEE_ID, LAST_NAME, MANAGER_ID, LAST_NAME from EMPLOYEES;


