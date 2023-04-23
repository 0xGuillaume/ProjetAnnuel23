create database "SCHOOL";

create table "CLASSE" (
    classe_name character(30) NOT NULL,
    year integer,
    section_name character(30),
    PRIMARY KEY (classe_name)
);

create table "ETUDIANT" (
    first_name character(25) NOT NULL,
    last_name character(25) NOT NULL,
    classe character(30)
);

create table "SECTION" (
    section_name character(30) NOT NULL,
    PRIMARY KEY (section_name)
);

insert into "ETUDIANT" (first_name, last_name, classe) VALUES ('Manuel', 'Young', 'Classe 1');
insert into "SECTION" (section_name) VALUES ('Informatique');
insert into "CLASSE" (classe_name, year, section_name) VALUES ('Classe 1', '2019', 'Informatique');


ALTER TABLE ONLY public."CLASSE"
    ADD CONSTRAINT "CLASSE_section_name_fkey" FOREIGN KEY (section_name) REFERENCES public."SECTION"(section_name) ON UPDATE CASCADE ON DELETE CASCADE;



