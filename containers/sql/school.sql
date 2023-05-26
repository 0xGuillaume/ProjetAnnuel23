--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2
CREATE DATABASE school;

\connect school

CREATE SCHEMA IF NOT EXISTS public;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: classe; Type: TABLE; Schema: public. Owner: webadmin
--

CREATE TABLE public.classe (
    classe_name character(20) NOT NULL,
    year integer,
    section_name character(20)
);

--
-- Name: etudiant; Type: TABLE; Schema: public. Owner: webadmin
--

CREATE TABLE public.etudiant (
    first_name character(25) NOT NULL,
    last_name character(25) NOT NULL,
    classe character(30)
);


--
-- Name: section; Type: TABLE; Schema: public. Owner: webadmin
--

CREATE TABLE public.section (
    section_name character(20) NOT NULL
);

--
-- Data for Name: classe; Type: TABLE DATA; Schema: public. Owner: webadmin
--

INSERT INTO public.classe VALUES ('Classe 1            ', 2018, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 3            ', 2019, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 2            ', 2018, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 4            ', 2019, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 5            ', 2020, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 6            ', 2020, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 7            ', 2021, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 8            ', 2021, 'Informatique        ');
INSERT INTO public.classe VALUES ('Classe 9            ', 2018, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 10           ', 2018, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 11           ', 2019, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 12           ', 2019, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 13           ', 2020, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 14           ', 2020, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 15           ', 2021, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 16           ', 2021, 'Vente               ');
INSERT INTO public.classe VALUES ('Classe 17           ', 2018, 'Communication       ');
INSERT INTO public.classe VALUES ('Classe 18           ', 2019, 'Communication       ');
INSERT INTO public.classe VALUES ('Classe 19           ', 2020, 'Communication       ');
INSERT INTO public.classe VALUES ('Classe 20           ', 2021, 'Communication       ');


--
-- Data for Name: etudiant; Type: TABLE DATA; Schema: public. Owner: webadmin
--

INSERT INTO public.etudiant VALUES ('Manuel                   ', 'Young                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Molly                    ', 'Clark                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Brenda                   ', 'Smith                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Chelsea                  ', 'Chang                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Bridget                  ', 'Mullen                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Kimberly                 ', 'Beard                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Scott                    ', 'Thomas                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Leonard                  ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Ronald                   ', 'Campos                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Karen                    ', 'Johnston                 ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Stephanie                ', 'Hammond                  ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Jennifer                 ', 'Turner                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Brittany                 ', 'Clark                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Christine                ', 'Perez                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Walter                   ', 'Smith                    ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Karen                    ', 'Fitzpatrick              ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Jonathan                 ', 'Christensen              ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Andrew                   ', 'Curtis                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Jacob                    ', 'Miller                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Amy                      ', 'Turner                   ', 'Classe 1                      ');
INSERT INTO public.etudiant VALUES ('Jacob                    ', 'Smith                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Heather                  ', 'Washington               ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Lacey                    ', 'Hicks                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Rachel                   ', 'Eaton                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Thomas                   ', 'Moreno                   ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Maria                    ', 'Brown                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Lawrence                 ', 'Murphy                   ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Katherine                ', 'Bauer                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Ricky                    ', 'Ponce                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Christine                ', 'Mcclure                  ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Harry                    ', 'Holmes                   ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Amy                      ', 'Peck                     ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Steve                    ', 'Bradshaw                 ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Brian                    ', 'Kelly                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Erin                     ', 'Bush                     ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Mr.                      ', 'Gabriel                  ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Lisa                     ', 'Shepherd                 ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Gwendolyn                ', 'Stevens                  ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Justin                   ', 'Nunez                    ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Kathryn                  ', 'Mata                     ', 'Classe 2                      ');
INSERT INTO public.etudiant VALUES ('Cynthia                  ', 'Middleton                ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Renee                    ', 'Tucker                   ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Shawn                    ', 'Taylor                   ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Bobby                    ', 'Brown                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Anthony                  ', 'Adams                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Teresa                   ', 'Hines                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Joshua                   ', 'Welch                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Dale                     ', 'Pena                     ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Kayla                    ', 'Goodman                  ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Diane                    ', 'Young                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Daniel                   ', 'Berger                   ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Sandra                   ', 'Peterson                 ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Seth                     ', 'Cochran                  ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Angie                    ', 'Carlson                  ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Rebecca                  ', 'Rodriguez                ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Gary                     ', 'Martin                   ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Peggy                    ', 'Hall                     ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Tracy                    ', 'Lyons                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('Bianca                   ', 'Johnson                  ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('David                    ', 'Clark                    ', 'Classe 3                      ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Stuart                   ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Suzanne                  ', 'Summers                  ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Andrew                   ', 'Clark                    ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Andrea                   ', 'Berry                    ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Christensen              ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Holly                    ', 'Gutierrez                ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Martin                   ', 'Lewis                    ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Jessica                  ', 'Thompson                 ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Courtney                 ', 'Shah                     ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Shelby                   ', 'Schmitt                  ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Charles                  ', 'Morris                   ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Nicholas                 ', 'Morgan                   ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Stephanie                ', 'Brown                    ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Richard                  ', 'Hughes                   ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Sheppard                 ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Sharon                   ', 'Turner                   ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Andrew                   ', 'Rodriguez                ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Connor                   ', 'Martinez                 ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Sarah                    ', 'Hood                     ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Clements                 ', 'Classe 4                      ');
INSERT INTO public.etudiant VALUES ('Amanda                   ', 'Roberts                  ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Gregory                  ', 'Gonzalez                 ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Charlotte                ', 'Rios                     ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Mark                     ', 'Nguyen                   ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Darlene                  ', 'Kent                     ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Daniel                   ', 'Hill                     ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Isaac                    ', 'Clark                    ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Cody                     ', 'Sullivan                 ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Devin                    ', 'Davis                    ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Phillip                  ', 'Vasquez                  ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Savannah                 ', 'Hughes                   ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Carrie                   ', 'Anderson                 ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Valerie                  ', 'Bush                     ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Edward                   ', 'Mayo                     ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('David                    ', 'Smith                    ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Laura                    ', 'Newman                   ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Mariah                   ', 'Patterson                ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Linda                    ', 'Holland                  ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Erin                     ', 'Gonzales                 ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Brittany                 ', 'Snyder                   ', 'Classe 5                      ');
INSERT INTO public.etudiant VALUES ('Omar                     ', 'Jimenez                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Page                     ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Adam                     ', 'Hernandez                ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Jasmin                   ', 'Mccormick                ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Michelle                 ', 'Johnson                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Savannah                 ', 'Hall                     ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Miss                     ', 'Teresa                   ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('William                  ', 'Oconnor                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Casey                    ', 'Pratt                    ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Bianca                   ', 'Harris                   ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Eric                     ', 'Brown                    ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Joe                      ', 'Sweeney                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Jack                     ', 'Wood                     ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Willie                   ', 'Davis                    ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Christine                ', 'Johnson                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Matthew                  ', 'Collins                  ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Shelby                   ', 'Henry                    ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Chelsea                  ', 'Bass                     ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Chris                    ', 'Mckenzie                 ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Jennifer                 ', 'Morse                    ', 'Classe 6                      ');
INSERT INTO public.etudiant VALUES ('Willie                   ', 'Tate                     ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Stacy                    ', 'Matthews                 ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Amber                    ', 'Henry                    ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Bush                     ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Alyssa                   ', 'Phillips                 ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Angelica                 ', 'Barber                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Leslie                   ', 'Walker                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Melissa                  ', 'Munoz                    ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Debra                    ', 'Abbott                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Michelle                 ', 'Gardner                  ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Gloria                   ', 'Miller                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Mrs.                     ', 'Brittany                 ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'Miller                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Mary                     ', 'Serrano                  ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Elizabeth                ', 'Williams                 ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Madison                  ', 'Mitchell                 ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Alexandria               ', 'Weaver                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'Rios                     ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Brian                    ', 'Vaughn                   ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('David                    ', 'Smith                    ', 'Classe 7                      ');
INSERT INTO public.etudiant VALUES ('Jeanne                   ', 'Anderson                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Jessica                  ', 'Ward                     ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Rhonda                   ', 'Williams                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'Bradford                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Amy                      ', 'Harrell                  ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('William                  ', 'Hicks                    ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Juan                     ', 'Davidson                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Yvonne                   ', 'Savage                   ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Kayla                    ', 'Burton                   ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Nichols                  ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Eddie                    ', 'Alvarez                  ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Rachel                   ', 'Whitaker                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Brian                    ', 'Martin                   ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Hall                     ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Rhonda                   ', 'Johnson                  ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Carlos                   ', 'Sanders                  ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Jeff                     ', 'Bass                     ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Phillip                  ', 'Gonzalez                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Stephen                  ', 'Gonzales                 ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Mario                    ', 'Willis                   ', 'Classe 8                      ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Houston                  ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Brittany                 ', 'Lee                      ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Jared                    ', 'Kennedy                  ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Jasmine                  ', 'Allen                    ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Mr.                      ', 'Christopher              ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('William                  ', 'Golden                   ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Austin                   ', 'Mills                    ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Jasmine                  ', 'Pearson                  ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Melissa                  ', 'Brown                    ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Hunter                   ', 'Thomas                   ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Amanda                   ', 'Oliver                   ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Carmen                   ', 'Williams                 ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Andrew                   ', 'Reynolds                 ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Claudia                  ', 'Sullivan                 ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('David                    ', 'Edwards                  ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Isabella                 ', 'Rodriguez                ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Stephen                  ', 'Hernandez                ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Megan                    ', 'York                     ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Nicole                   ', 'White                    ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Kristen                  ', 'Baker                    ', 'Classe 9                      ');
INSERT INTO public.etudiant VALUES ('Gregory                  ', 'Hahn                     ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Alvin                    ', 'Daniel                   ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Kathryn                  ', 'Bauer                    ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Miss                     ', 'Jennifer                 ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Diane                    ', 'Lynch                    ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Jeffrey                  ', 'Day                      ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Summer                   ', 'Hall                     ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Donna                    ', 'Johnson                  ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Amanda                   ', 'Burnett                  ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Donna                    ', 'Richmond                 ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Amanda                   ', 'Davis                    ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Heather                  ', 'Schneider                ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Tracy                    ', 'May                      ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Gregory                  ', 'Sullivan                 ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Christopher              ', 'Marshall                 ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Alec                     ', 'Soto                     ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Kimberly                 ', 'Reed                     ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Alexandra                ', 'Lewis                    ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Matthew                  ', 'Walker                   ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Bradley                  ', 'Carr                     ', 'Classe 10                     ');
INSERT INTO public.etudiant VALUES ('Edward                   ', 'Brown                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Wendy                    ', 'Goodwin                  ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Lisa                     ', 'Curry                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Stephen                  ', 'Fowler                   ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Matthew                  ', 'Lee                      ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Mcmillan                 ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Haley                    ', 'Williams                 ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Melinda                  ', 'Washington               ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Dustin                   ', 'Mitchell                 ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Kelsey                   ', 'Downs                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Tracey                   ', 'Johnson                  ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Brian                    ', 'Paul                     ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Scott                    ', 'Hardy                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Brian                    ', 'Shaffer                  ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Curtis                   ', 'Clark                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Amanda                   ', 'Chavez                   ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Rodgers                  ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Stefanie                 ', 'Stone                    ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Isaac                    ', 'Miller                   ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Miranda                  ', 'Murillo                  ', 'Classe 11                     ');
INSERT INTO public.etudiant VALUES ('Kimberly                 ', 'Dominguez                ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Luke                     ', 'Gray                     ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Dr.                      ', 'Brent                    ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('George                   ', 'Cunningham               ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Paul                     ', 'Chambers                 ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Heather                  ', 'Clark                    ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Jonathan                 ', 'Scott                    ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Crystal                  ', 'Schultz                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Betty                    ', 'Morse                    ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Diane                    ', 'Wells                    ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Cynthia                  ', 'Foster                   ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Kathy                    ', 'Leonard                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Sabrina                  ', 'Johnson                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Mallory                  ', 'Gray                     ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Charles                  ', 'Jackson                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Timothy                  ', 'Garner                   ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Adam                     ', 'Walker                   ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Angela                   ', 'Williams                 ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Michael                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Joshua                   ', 'Randall                  ', 'Classe 12                     ');
INSERT INTO public.etudiant VALUES ('Mary                     ', 'Hall                     ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Omar                     ', 'Gomez                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Jesse                    ', 'Lewis                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Diana                    ', 'Reid                     ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Deanna                   ', 'Francis                  ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Kathryn                  ', 'Adams                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Lopez                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Ronnie                   ', 'Bradley                  ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Small                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Cristina                 ', 'Hodges                   ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Alicia                   ', 'Olsen                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Linda                    ', 'Cervantes                ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Amy                      ', 'Schneider                ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Haley                    ', 'Davis                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Brandon                  ', 'Smith                    ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Alexandra                ', 'Raymond                  ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Daniel                   ', 'Edwards                  ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Carl                     ', 'Fuller                   ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Stacy                    ', 'Morrison                 ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Jennifer                 ', 'Orozco                   ', 'Classe 13                     ');
INSERT INTO public.etudiant VALUES ('Jeffrey                  ', 'Daniel                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Marilyn                  ', 'Williams                 ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Alyssa                   ', 'Hendricks                ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Jason                    ', 'Rangel                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Taylor                   ', 'Gutierrez                ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Sarah                    ', 'Duncan                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Anna                     ', 'Franklin                 ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Christine                ', 'Edwards                  ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Jessica                  ', 'Guerra                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Angela                   ', 'Mosley                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Christina                ', 'Reyes                    ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Palmer                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Chad                     ', 'Jones                    ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Glenn                    ', 'Gutierrez                ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Melissa                  ', 'Webb                     ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Roger                    ', 'Herman                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Bobby                    ', 'Shepherd                 ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Gina                     ', 'Davis                    ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Ashley                   ', 'Gill                     ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Watson                   ', 'Classe 14                     ');
INSERT INTO public.etudiant VALUES ('Charles                  ', 'Walsh                    ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Laura                    ', 'Gonzalez                 ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Elizabeth                ', 'Hudson                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Leslie                   ', 'Sanchez                  ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Terry                    ', 'Marshall                 ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Lisa                     ', 'Rangel                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Benjamin                 ', 'Mcdaniel                 ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Tabitha                  ', 'Raymond                  ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Cynthia                  ', 'Reyes                    ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'Mendez                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Miller                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Matthew                  ', 'Brennan                  ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Elizabeth                ', 'Webb                     ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Mrs.                     ', 'Lauren                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Samuel                   ', 'Moreno                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Lindsay                  ', 'Martinez                 ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Lisa                     ', 'Wilkerson                ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Barbara                  ', 'James                    ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Daniel                   ', 'Bailey                   ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Mark                     ', 'Ortiz                    ', 'Classe 15                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Mendoza                  ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Christopher              ', 'Douglas                  ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Taylor                   ', 'Sullivan                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Katelyn                  ', 'Cook                     ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Wayne                    ', 'Perez                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Douglas                  ', 'Lopez                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Martinez                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Lindsey                  ', 'Crawford                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Melissa                  ', 'Ramos                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Eric                     ', 'Lewis                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Samantha                 ', 'Smith                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Cooke                    ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Nicholas                 ', 'Dickson                  ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Spencer                  ', 'Holt                     ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Joshua                   ', 'Caldwell                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Kevin                    ', 'Mitchell                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Cynthia                  ', 'Watson                   ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Joshua                   ', 'Johnson                  ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Julie                    ', 'Carter                   ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Darren                   ', 'Robinson                 ', 'Classe 16                     ');
INSERT INTO public.etudiant VALUES ('Anthony                  ', 'Rogers                   ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Craig                    ', 'Norton                   ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Dana                     ', 'Sullivan                 ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Christopher              ', 'Fleming                  ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Patricia                 ', 'Wheeler                  ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Steven                   ', 'Marshall                 ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Stanley                  ', 'Stout                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Lauren                   ', 'Serrano                  ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Carrie                   ', 'Moore                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Short                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Kathryn                  ', 'Conner                   ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Jennifer                 ', 'Welch                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'James                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Craig                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Sheila                   ', 'Villa                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Samantha                 ', 'Jackson                  ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Christopher              ', 'Combs                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Timothy                  ', 'Young                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Conner                   ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Autumn                   ', 'Jones                    ', 'Classe 17                     ');
INSERT INTO public.etudiant VALUES ('Gregory                  ', 'Quinn                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Alexandra                ', 'Allen                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Gene                     ', 'Mata                     ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Megan                    ', 'Dillon                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Renee                    ', 'Newman                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Mark                     ', 'Middleton                ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Tiffany                  ', 'Golden                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Anna                     ', 'Lambert                  ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Jesse                    ', 'Olson                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Brittany                 ', 'Sanders                  ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Michelle                 ', 'Allen                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Eddie                    ', 'Cooley                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Anthony                  ', 'Reid                     ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Jacob                    ', 'Hampton                  ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Bryce                    ', 'Phelps                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Allen                    ', 'Cooper                   ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Kathleen                 ', 'Mckenzie                 ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Matthew                  ', 'Mack                     ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Andrew                   ', 'Young                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Paula                    ', 'Rocha                    ', 'Classe 18                     ');
INSERT INTO public.etudiant VALUES ('Cody                     ', 'Carpenter                ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Nancy                    ', 'Mcknight                 ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Katrina                  ', 'Stewart                  ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Kristopher               ', 'Brooks                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Michael                  ', 'Kramer                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Lisa                     ', 'Peters                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Michelle                 ', 'Cooper                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Dominic                  ', 'Johnson                  ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('William                  ', 'Montgomery               ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('John                     ', 'Nichols                  ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Tyler                    ', 'Walker                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Derek                    ', 'Elliott                  ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Parker                   ', 'White                    ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Sandra                   ', 'Thompson                 ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Timothy                  ', 'Hall                     ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Bryan                    ', 'Vasquez                  ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Robert                   ', 'Koch                     ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Cynthia                  ', 'Reilly                   ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Joshua                   ', 'Burch                    ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Jordan                   ', 'Williamson               ', 'Classe 19                     ');
INSERT INTO public.etudiant VALUES ('Kenneth                  ', 'Fuller                   ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Kara                     ', 'Brock                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Samantha                 ', 'Figueroa                 ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Rhonda                   ', 'Cohen                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Ronald                   ', 'Smith                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('James                    ', 'Mendez                   ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Bethany                  ', 'Anderson                 ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Samantha                 ', 'Zimmerman                ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Christopher              ', 'Cooper                   ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Diana                    ', 'Murray                   ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Jacqueline               ', 'Rodriguez                ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Sheila                   ', 'Barnes                   ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Stephen                  ', 'Simpson                  ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Timothy                  ', 'Jackson                  ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Mr.                      ', 'James                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Emily                    ', 'Richard                  ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Jade                     ', 'Davis                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Travis                   ', 'Smith                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Jeffrey                  ', 'Burns                    ', 'Classe 20                     ');
INSERT INTO public.etudiant VALUES ('Brenda                   ', 'Ortiz                    ', 'Classe 20                     ');


--
-- Data for Name: section; Type: TABLE DATA; Schema: public. Owner: webadmin
--

INSERT INTO public.section VALUES ('Informatique        ');
INSERT INTO public.section VALUES ('Vente               ');
INSERT INTO public.section VALUES ('Communication       ');


--
-- Name: classe classe_pkey; Type: CONSTRAINT; Schema: public. Owner: webadmin
--

ALTER TABLE ONLY public.classe
    ADD CONSTRAINT "classe_pkey" PRIMARY KEY (classe_name);


--
-- Name: section section_pkey; Type: CONSTRAINT; Schema: public. Owner: webadmin
--

ALTER TABLE ONLY public.section
    ADD CONSTRAINT "section_pkey" PRIMARY KEY (section_name);


--
-- Name: etudiant classe_etudiant; Type: FK CONSTRAINT; Schema: public. Owner: webadmin
--

ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT classe_etudiant FOREIGN KEY (classe) REFERENCES public.classe(classe_name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: classe sec_classe; Type: FK CONSTRAINT; Schema: public. Owner: webadmin
--

ALTER TABLE ONLY public.classe
    ADD CONSTRAINT sec_classe FOREIGN KEY (section_name) REFERENCES public.section(section_name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
