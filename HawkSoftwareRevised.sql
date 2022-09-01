-- Yanira Manzano
-- Midterm Part 1-B

CREATE DATABASE HawkSoftware;
use HawkSoftware;

CREATE TABLE LAPTOP(
	Laptop_ID		Int				NOT NULL auto_increment,
    Laptop_Make		Date			NOT NULL,
    Laptop_Model	VarChar(25)		NOT NULL,
	CONSTRAINT		LAPTOP_PK	PRIMARY KEY(Laptop_ID)
	);
    
CREATE TABLE SOFTWARE(
	Software_ID		Int				NOT NULL auto_increment,
    Package_Type	VarChar(30)		NOT NULL,
    Package_Ver 	Char(30)		NOT NULL,
    CONSTRAINT		SOFTWARE_PK		PRIMARY KEY(Software_ID),
    CONSTRAINT	SOFTWARE_Package_Type
					CHECK (Package_Type IN ('Windows',
							'Mac', 'Linux')),
	CONSTRAINT 			SOFTWARE_LAPTOP_FK FOREIGN KEY(Laptop_ID)
							REFERENCES LAPTOP(Laptop_ID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
	);
    
CREATE TABLE FACULTY(
	Hawk_ID			Int			   NOT NULL auto_increment,
    First_Name		Char(25)	   NOT NULL,
    Last_Name		Char(25)	   NOT NULL,
    CONSTRAINT FACULTY_PK	PRIMARY KEY(Hawk_ID),
    CONSTRAINT 			FACULTY_LAPTOP_FK FOREIGN KEY(Laptop_ID)
							REFERENCES LAPTOP(Laptop_ID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	CONSTRAINT 			FACULTY_SOFTWARE_FK FOREIGN KEY(Software_ID)
							REFERENCES SOFTWARE(Software_ID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
    );
    
CREATE TABLE CERTIFY(
	Hawk_ID			INT		NOT NULL auto_increment,
    Software_ID		INT		NOT NULL auto_increment
    
    );
    
CREATE TABLE DATA_BASE(
	Installation_Date	Date	NOT NULL,
    Num_of_Installation INT		NOT NULL auto_increment,
	CONSTRAINT		DB_PK		PRIMARY KEY(Num_of_Installation)
    );