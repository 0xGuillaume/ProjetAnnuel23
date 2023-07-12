--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2


CREATE DATABASE infrastructure;

\connect infrastructure

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

-- Creation de la table "servers"
CREATE TABLE public.servers (
    hostname character varying(25),
    ip character varying(15),
    region character varying(20),
    uptodate date,
    os character varying(50)
);

-- Creation de la table "Containers"
CREATE TABLE public.containers (
    Name character varying(30),
    ip character varying(15),
    up boolean,
    engine character varying(50),
    image character varying(255)
);

-- Creation de la table "Databases"
CREATE TABLE public.databases (
    name character varying(30),
    engine character varying(50),
    size integer,
    uptodate date
);

--
-- PostgreSQL database dump complete
--