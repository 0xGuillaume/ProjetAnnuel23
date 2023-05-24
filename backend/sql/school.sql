--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: CLASSE; Type: TABLE; Schema: public; Owner: webadmin
--

CREATE TABLE public."CLASSE" (
    classe_name character(20) NOT NULL,
    year integer,
    section_name character(20)
);


ALTER TABLE public."CLASSE" OWNER TO webadmin;

--
-- Name: ETUDIANT; Type: TABLE; Schema: public; Owner: webadmin
--

CREATE TABLE public."ETUDIANT" (
    first_name character(25) NOT NULL,
    last_name character(25) NOT NULL,
    classe character(30)
);


ALTER TABLE public."ETUDIANT" OWNER TO webadmin;

--
-- Name: SECTION; Type: TABLE; Schema: public; Owner: webadmin
--

CREATE TABLE public."SECTION" (
    section_name character(20) NOT NULL
);


ALTER TABLE public."SECTION" OWNER TO webadmin;

--
-- Data for Name: CLASSE; Type: TABLE DATA; Schema: public; Owner: webadmin
--

INSERT INTO public."CLASSE" VALUES ('Classe 1            ', 2018, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 3            ', 2019, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 2            ', 2018, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 4            ', 2019, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 5            ', 2020, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 6            ', 2020, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 7            ', 2021, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 8            ', 2021, 'Informatique        ');
INSERT INTO public."CLASSE" VALUES ('Classe 9            ', 2018, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 10           ', 2018, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 11           ', 2019, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 12           ', 2019, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 13           ', 2020, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 14           ', 2020, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 15           ', 2021, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 16           ', 2021, 'Vente               ');
INSERT INTO public."CLASSE" VALUES ('Classe 17           ', 2018, 'Communication       ');
INSERT INTO public."CLASSE" VALUES ('Classe 18           ', 2019, 'Communication       ');
INSERT INTO public."CLASSE" VALUES ('Classe 19           ', 2020, 'Communication       ');
INSERT INTO public."CLASSE" VALUES ('Classe 20           ', 2021, 'Communication       ');


--
-- Data for Name: ETUDIANT; Type: TABLE DATA; Schema: public; Owner: webadmin
--

INSERT INTO public."ETUDIANT" VALUES ('Manuel                   ', 'Young                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Molly                    ', 'Clark                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brenda                   ', 'Smith                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Chelsea                  ', 'Chang                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Bridget                  ', 'Mullen                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Kimberly                 ', 'Beard                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Scott                    ', 'Thomas                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Leonard                  ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Ronald                   ', 'Campos                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Karen                    ', 'Johnston                 ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Stephanie                ', 'Hammond                  ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jennifer                 ', 'Turner                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brittany                 ', 'Clark                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Christine                ', 'Perez                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Walter                   ', 'Smith                    ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Karen                    ', 'Fitzpatrick              ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jonathan                 ', 'Christensen              ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Andrew                   ', 'Curtis                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jacob                    ', 'Miller                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amy                      ', 'Turner                   ', 'Classe 1                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jacob                    ', 'Smith                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Heather                  ', 'Washington               ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Lacey                    ', 'Hicks                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Rachel                   ', 'Eaton                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Thomas                   ', 'Moreno                   ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Maria                    ', 'Brown                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Lawrence                 ', 'Murphy                   ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Katherine                ', 'Bauer                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Ricky                    ', 'Ponce                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Christine                ', 'Mcclure                  ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Harry                    ', 'Holmes                   ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amy                      ', 'Peck                     ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Steve                    ', 'Bradshaw                 ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brian                    ', 'Kelly                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Erin                     ', 'Bush                     ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mr.                      ', 'Gabriel                  ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Lisa                     ', 'Shepherd                 ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Gwendolyn                ', 'Stevens                  ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Justin                   ', 'Nunez                    ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Kathryn                  ', 'Mata                     ', 'Classe 2                      ');
INSERT INTO public."ETUDIANT" VALUES ('Cynthia                  ', 'Middleton                ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Renee                    ', 'Tucker                   ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Shawn                    ', 'Taylor                   ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Bobby                    ', 'Brown                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Anthony                  ', 'Adams                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Teresa                   ', 'Hines                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Joshua                   ', 'Welch                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Dale                     ', 'Pena                     ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Kayla                    ', 'Goodman                  ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Diane                    ', 'Young                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Daniel                   ', 'Berger                   ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Sandra                   ', 'Peterson                 ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Seth                     ', 'Cochran                  ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Angie                    ', 'Carlson                  ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Rebecca                  ', 'Rodriguez                ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Gary                     ', 'Martin                   ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Peggy                    ', 'Hall                     ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Tracy                    ', 'Lyons                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('Bianca                   ', 'Johnson                  ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('David                    ', 'Clark                    ', 'Classe 3                      ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Stuart                   ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Suzanne                  ', 'Summers                  ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Andrew                   ', 'Clark                    ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Andrea                   ', 'Berry                    ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Christensen              ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Holly                    ', 'Gutierrez                ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Martin                   ', 'Lewis                    ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jessica                  ', 'Thompson                 ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Courtney                 ', 'Shah                     ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Shelby                   ', 'Schmitt                  ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Charles                  ', 'Morris                   ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Nicholas                 ', 'Morgan                   ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Stephanie                ', 'Brown                    ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Richard                  ', 'Hughes                   ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Sheppard                 ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Sharon                   ', 'Turner                   ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Andrew                   ', 'Rodriguez                ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Connor                   ', 'Martinez                 ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Sarah                    ', 'Hood                     ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Clements                 ', 'Classe 4                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amanda                   ', 'Roberts                  ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Gregory                  ', 'Gonzalez                 ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Charlotte                ', 'Rios                     ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mark                     ', 'Nguyen                   ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Darlene                  ', 'Kent                     ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Daniel                   ', 'Hill                     ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Isaac                    ', 'Clark                    ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Cody                     ', 'Sullivan                 ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Devin                    ', 'Davis                    ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Phillip                  ', 'Vasquez                  ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Savannah                 ', 'Hughes                   ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Carrie                   ', 'Anderson                 ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Valerie                  ', 'Bush                     ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Edward                   ', 'Mayo                     ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('David                    ', 'Smith                    ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Laura                    ', 'Newman                   ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mariah                   ', 'Patterson                ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Linda                    ', 'Holland                  ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Erin                     ', 'Gonzales                 ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brittany                 ', 'Snyder                   ', 'Classe 5                      ');
INSERT INTO public."ETUDIANT" VALUES ('Omar                     ', 'Jimenez                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Page                     ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Adam                     ', 'Hernandez                ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jasmin                   ', 'Mccormick                ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michelle                 ', 'Johnson                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Savannah                 ', 'Hall                     ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Miss                     ', 'Teresa                   ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('William                  ', 'Oconnor                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Casey                    ', 'Pratt                    ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Bianca                   ', 'Harris                   ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Eric                     ', 'Brown                    ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Joe                      ', 'Sweeney                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jack                     ', 'Wood                     ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Willie                   ', 'Davis                    ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Christine                ', 'Johnson                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Matthew                  ', 'Collins                  ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Shelby                   ', 'Henry                    ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Chelsea                  ', 'Bass                     ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Chris                    ', 'Mckenzie                 ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jennifer                 ', 'Morse                    ', 'Classe 6                      ');
INSERT INTO public."ETUDIANT" VALUES ('Willie                   ', 'Tate                     ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Stacy                    ', 'Matthews                 ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amber                    ', 'Henry                    ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Bush                     ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Alyssa                   ', 'Phillips                 ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Angelica                 ', 'Barber                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Leslie                   ', 'Walker                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Melissa                  ', 'Munoz                    ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Debra                    ', 'Abbott                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michelle                 ', 'Gardner                  ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Gloria                   ', 'Miller                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mrs.                     ', 'Brittany                 ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'Miller                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mary                     ', 'Serrano                  ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Elizabeth                ', 'Williams                 ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Madison                  ', 'Mitchell                 ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Alexandria               ', 'Weaver                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'Rios                     ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brian                    ', 'Vaughn                   ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('David                    ', 'Smith                    ', 'Classe 7                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jeanne                   ', 'Anderson                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jessica                  ', 'Ward                     ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Rhonda                   ', 'Williams                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'Bradford                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amy                      ', 'Harrell                  ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('William                  ', 'Hicks                    ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Juan                     ', 'Davidson                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Yvonne                   ', 'Savage                   ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Kayla                    ', 'Burton                   ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Nichols                  ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Eddie                    ', 'Alvarez                  ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Rachel                   ', 'Whitaker                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brian                    ', 'Martin                   ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Hall                     ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Rhonda                   ', 'Johnson                  ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Carlos                   ', 'Sanders                  ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jeff                     ', 'Bass                     ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Phillip                  ', 'Gonzalez                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Stephen                  ', 'Gonzales                 ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mario                    ', 'Willis                   ', 'Classe 8                      ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Houston                  ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Brittany                 ', 'Lee                      ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jared                    ', 'Kennedy                  ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jasmine                  ', 'Allen                    ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Mr.                      ', 'Christopher              ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('William                  ', 'Golden                   ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Austin                   ', 'Mills                    ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Jasmine                  ', 'Pearson                  ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Melissa                  ', 'Brown                    ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Hunter                   ', 'Thomas                   ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Amanda                   ', 'Oliver                   ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Carmen                   ', 'Williams                 ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Andrew                   ', 'Reynolds                 ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Claudia                  ', 'Sullivan                 ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('David                    ', 'Edwards                  ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Isabella                 ', 'Rodriguez                ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Stephen                  ', 'Hernandez                ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Megan                    ', 'York                     ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Nicole                   ', 'White                    ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Kristen                  ', 'Baker                    ', 'Classe 9                      ');
INSERT INTO public."ETUDIANT" VALUES ('Gregory                  ', 'Hahn                     ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alvin                    ', 'Daniel                   ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kathryn                  ', 'Bauer                    ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Miss                     ', 'Jennifer                 ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Diane                    ', 'Lynch                    ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jeffrey                  ', 'Day                      ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Summer                   ', 'Hall                     ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Donna                    ', 'Johnson                  ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Amanda                   ', 'Burnett                  ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Donna                    ', 'Richmond                 ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Amanda                   ', 'Davis                    ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Heather                  ', 'Schneider                ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Tracy                    ', 'May                      ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Gregory                  ', 'Sullivan                 ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christopher              ', 'Marshall                 ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alec                     ', 'Soto                     ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kimberly                 ', 'Reed                     ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alexandra                ', 'Lewis                    ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Matthew                  ', 'Walker                   ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Bradley                  ', 'Carr                     ', 'Classe 10                     ');
INSERT INTO public."ETUDIANT" VALUES ('Edward                   ', 'Brown                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Wendy                    ', 'Goodwin                  ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lisa                     ', 'Curry                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Stephen                  ', 'Fowler                   ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Matthew                  ', 'Lee                      ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Mcmillan                 ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Haley                    ', 'Williams                 ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Melinda                  ', 'Washington               ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Dustin                   ', 'Mitchell                 ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kelsey                   ', 'Downs                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Tracey                   ', 'Johnson                  ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Brian                    ', 'Paul                     ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Scott                    ', 'Hardy                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Brian                    ', 'Shaffer                  ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Curtis                   ', 'Clark                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Amanda                   ', 'Chavez                   ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Rodgers                  ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Stefanie                 ', 'Stone                    ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Isaac                    ', 'Miller                   ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Miranda                  ', 'Murillo                  ', 'Classe 11                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kimberly                 ', 'Dominguez                ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Luke                     ', 'Gray                     ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Dr.                      ', 'Brent                    ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('George                   ', 'Cunningham               ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Paul                     ', 'Chambers                 ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Heather                  ', 'Clark                    ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jonathan                 ', 'Scott                    ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Crystal                  ', 'Schultz                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Betty                    ', 'Morse                    ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Diane                    ', 'Wells                    ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cynthia                  ', 'Foster                   ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kathy                    ', 'Leonard                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Sabrina                  ', 'Johnson                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mallory                  ', 'Gray                     ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Charles                  ', 'Jackson                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Timothy                  ', 'Garner                   ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Adam                     ', 'Walker                   ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Angela                   ', 'Williams                 ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Michael                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Joshua                   ', 'Randall                  ', 'Classe 12                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mary                     ', 'Hall                     ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Omar                     ', 'Gomez                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jesse                    ', 'Lewis                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Diana                    ', 'Reid                     ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Deanna                   ', 'Francis                  ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kathryn                  ', 'Adams                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Lopez                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Ronnie                   ', 'Bradley                  ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Small                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cristina                 ', 'Hodges                   ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alicia                   ', 'Olsen                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Linda                    ', 'Cervantes                ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Amy                      ', 'Schneider                ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Haley                    ', 'Davis                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Brandon                  ', 'Smith                    ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alexandra                ', 'Raymond                  ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Daniel                   ', 'Edwards                  ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Carl                     ', 'Fuller                   ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Stacy                    ', 'Morrison                 ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jennifer                 ', 'Orozco                   ', 'Classe 13                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jeffrey                  ', 'Daniel                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Marilyn                  ', 'Williams                 ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alyssa                   ', 'Hendricks                ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jason                    ', 'Rangel                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Taylor                   ', 'Gutierrez                ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Sarah                    ', 'Duncan                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Anna                     ', 'Franklin                 ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christine                ', 'Edwards                  ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jessica                  ', 'Guerra                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Angela                   ', 'Mosley                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christina                ', 'Reyes                    ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Palmer                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Chad                     ', 'Jones                    ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Glenn                    ', 'Gutierrez                ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Melissa                  ', 'Webb                     ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Roger                    ', 'Herman                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Bobby                    ', 'Shepherd                 ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Gina                     ', 'Davis                    ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Ashley                   ', 'Gill                     ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Watson                   ', 'Classe 14                     ');
INSERT INTO public."ETUDIANT" VALUES ('Charles                  ', 'Walsh                    ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Laura                    ', 'Gonzalez                 ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Elizabeth                ', 'Hudson                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Leslie                   ', 'Sanchez                  ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Terry                    ', 'Marshall                 ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lisa                     ', 'Rangel                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Benjamin                 ', 'Mcdaniel                 ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Tabitha                  ', 'Raymond                  ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cynthia                  ', 'Reyes                    ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'Mendez                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Miller                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Matthew                  ', 'Brennan                  ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Elizabeth                ', 'Webb                     ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mrs.                     ', 'Lauren                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Samuel                   ', 'Moreno                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lindsay                  ', 'Martinez                 ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lisa                     ', 'Wilkerson                ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Barbara                  ', 'James                    ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Daniel                   ', 'Bailey                   ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mark                     ', 'Ortiz                    ', 'Classe 15                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Mendoza                  ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christopher              ', 'Douglas                  ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Taylor                   ', 'Sullivan                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Katelyn                  ', 'Cook                     ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Wayne                    ', 'Perez                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Douglas                  ', 'Lopez                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Martinez                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lindsey                  ', 'Crawford                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Melissa                  ', 'Ramos                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Eric                     ', 'Lewis                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Samantha                 ', 'Smith                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Cooke                    ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Nicholas                 ', 'Dickson                  ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Spencer                  ', 'Holt                     ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Joshua                   ', 'Caldwell                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kevin                    ', 'Mitchell                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cynthia                  ', 'Watson                   ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Joshua                   ', 'Johnson                  ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Julie                    ', 'Carter                   ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Darren                   ', 'Robinson                 ', 'Classe 16                     ');
INSERT INTO public."ETUDIANT" VALUES ('Anthony                  ', 'Rogers                   ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Craig                    ', 'Norton                   ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Dana                     ', 'Sullivan                 ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christopher              ', 'Fleming                  ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Patricia                 ', 'Wheeler                  ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Steven                   ', 'Marshall                 ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Stanley                  ', 'Stout                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lauren                   ', 'Serrano                  ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Carrie                   ', 'Moore                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Short                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kathryn                  ', 'Conner                   ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jennifer                 ', 'Welch                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'James                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Craig                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Sheila                   ', 'Villa                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Samantha                 ', 'Jackson                  ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christopher              ', 'Combs                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Timothy                  ', 'Young                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Conner                   ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Autumn                   ', 'Jones                    ', 'Classe 17                     ');
INSERT INTO public."ETUDIANT" VALUES ('Gregory                  ', 'Quinn                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Alexandra                ', 'Allen                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Gene                     ', 'Mata                     ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Megan                    ', 'Dillon                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Renee                    ', 'Newman                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mark                     ', 'Middleton                ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Tiffany                  ', 'Golden                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Anna                     ', 'Lambert                  ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jesse                    ', 'Olson                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Brittany                 ', 'Sanders                  ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michelle                 ', 'Allen                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Eddie                    ', 'Cooley                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Anthony                  ', 'Reid                     ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jacob                    ', 'Hampton                  ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Bryce                    ', 'Phelps                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Allen                    ', 'Cooper                   ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kathleen                 ', 'Mckenzie                 ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Matthew                  ', 'Mack                     ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Andrew                   ', 'Young                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Paula                    ', 'Rocha                    ', 'Classe 18                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cody                     ', 'Carpenter                ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Nancy                    ', 'Mcknight                 ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Katrina                  ', 'Stewart                  ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kristopher               ', 'Brooks                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michael                  ', 'Kramer                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Lisa                     ', 'Peters                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Michelle                 ', 'Cooper                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Dominic                  ', 'Johnson                  ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('William                  ', 'Montgomery               ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('John                     ', 'Nichols                  ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Tyler                    ', 'Walker                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Derek                    ', 'Elliott                  ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Parker                   ', 'White                    ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Sandra                   ', 'Thompson                 ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Timothy                  ', 'Hall                     ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Bryan                    ', 'Vasquez                  ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Robert                   ', 'Koch                     ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Cynthia                  ', 'Reilly                   ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Joshua                   ', 'Burch                    ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jordan                   ', 'Williamson               ', 'Classe 19                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kenneth                  ', 'Fuller                   ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Kara                     ', 'Brock                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Samantha                 ', 'Figueroa                 ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Rhonda                   ', 'Cohen                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Ronald                   ', 'Smith                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('James                    ', 'Mendez                   ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Bethany                  ', 'Anderson                 ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Samantha                 ', 'Zimmerman                ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Christopher              ', 'Cooper                   ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Diana                    ', 'Murray                   ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jacqueline               ', 'Rodriguez                ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Sheila                   ', 'Barnes                   ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Stephen                  ', 'Simpson                  ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Timothy                  ', 'Jackson                  ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Mr.                      ', 'James                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Emily                    ', 'Richard                  ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jade                     ', 'Davis                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Travis                   ', 'Smith                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Jeffrey                  ', 'Burns                    ', 'Classe 20                     ');
INSERT INTO public."ETUDIANT" VALUES ('Brenda                   ', 'Ortiz                    ', 'Classe 20                     ');


--
-- Data for Name: SECTION; Type: TABLE DATA; Schema: public; Owner: webadmin
--

INSERT INTO public."SECTION" VALUES ('Informatique        ');
INSERT INTO public."SECTION" VALUES ('Vente               ');
INSERT INTO public."SECTION" VALUES ('Communication       ');


--
-- Name: CLASSE CLASSE_pkey; Type: CONSTRAINT; Schema: public; Owner: webadmin
--

ALTER TABLE ONLY public."CLASSE"
    ADD CONSTRAINT "CLASSE_pkey" PRIMARY KEY (classe_name);


--
-- Name: SECTION SECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: webadmin
--

ALTER TABLE ONLY public."SECTION"
    ADD CONSTRAINT "SECTION_pkey" PRIMARY KEY (section_name);


--
-- Name: ETUDIANT classe_etudiant; Type: FK CONSTRAINT; Schema: public; Owner: webadmin
--

ALTER TABLE ONLY public."ETUDIANT"
    ADD CONSTRAINT classe_etudiant FOREIGN KEY (classe) REFERENCES public."CLASSE"(classe_name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CLASSE sec_classe; Type: FK CONSTRAINT; Schema: public; Owner: webadmin
--

ALTER TABLE ONLY public."CLASSE"
    ADD CONSTRAINT sec_classe FOREIGN KEY (section_name) REFERENCES public."SECTION"(section_name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

