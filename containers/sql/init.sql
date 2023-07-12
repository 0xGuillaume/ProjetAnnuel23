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
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_442', '192.168.10.177', 'eu-west-2', '2023-05-29', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK46', '192.168.20.130', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB502', 'MySQL', 500, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_544', '192.168.10.98', 'eu-south-1', '2023-05-23', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK642', '192.168.20.71', 'Yes', 'Docker', 'jenkins:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB552', 'PostgreSQL', 200, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_185', '192.168.10.155', 'eu-south-1', '2023-05-21', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK146', '192.168.20.118', 'No', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB510', 'PostgreSQL', 200, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_752', '192.168.10.199', 'eu-west-1', '2023-05-31', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK85', '192.168.20.120', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB996', 'PostgreSQL', 500, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_647', '192.168.10.186', 'eu-west-2', '2023-05-22', 'CentOS7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK206', '192.168.20.134', 'No', 'Docker', 'rabbitmq:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB798', 'PostgreSQL', 300, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_891', '192.168.10.129', 'eu-west-1', '2023-05-24', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK229', '192.168.20.89', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB178', 'MySQL', 300, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_181', '192.168.10.95', 'eu-central-1', '2023-05-27', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK755', '192.168.20.1', 'Yes', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB797', 'PostgreSQL', 200, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_721', '192.168.10.77', 'eu-west-3', '2023-05-28', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK758', '192.168.20.20', 'Yes', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB202', 'MySQL', 200, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_304', '192.168.10.159', 'eu-west-2', '2023-05-27', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK401', '192.168.20.34', 'Yes', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB852', 'MySQL', 100, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_685', '192.168.10.109', 'eu-west-2', '2023-05-28', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK746', '192.168.20.80', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB161', 'PostgreSQL', 500, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_675', '192.168.10.92', 'eu-west-1', '2023-05-29', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK594', '192.168.20.132', 'Yes', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB918', 'MySQL', 500, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_904', '192.168.10.7', 'eu-central-1', '2023-05-21', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK21', '192.168.20.24', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB70', 'MySQL', 200, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_223', '192.168.10.11', 'eu-west-2', '2023-05-29', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK206', '192.168.20.182', 'Yes', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB413', 'PostgreSQL', 100, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_266', '192.168.10.32', 'eu-central-1', '2023-05-26', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK182', '192.168.20.14', 'Yes', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB706', 'MySQL', 300, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_175', '192.168.10.17', 'eu-west-3', '2023-05-27', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK337', '192.168.20.157', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB915', 'MySQL', 300, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_248', '192.168.10.51', 'eu-west-3', '2023-05-30', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK362', '192.168.20.95', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB208', 'MySQL', 300, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_331', '192.168.10.53', 'eu-central-1', '2023-05-22', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK208', '192.168.20.63', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB104', 'MySQL', 100, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_808', '192.168.10.100', 'eu-south-1', '2023-05-20', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK462', '192.168.20.182', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB477', 'PostgreSQL', 200, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_65', '192.168.10.103', 'eu-south-1', '2023-05-20', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK873', '192.168.20.160', 'No', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB591', 'PostgreSQL', 500, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_96', '192.168.10.108', 'eu-west-1', '2023-05-29', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK988', '192.168.20.194', 'Yes', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB312', 'MySQL', 300, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_870', '192.168.10.195', 'eu-south-1', '2023-05-31', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK332', '192.168.20.177', 'Yes', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB516', 'MySQL', 400, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_407', '192.168.10.173', 'eu-central-1', '2023-05-30', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK994', '192.168.20.4', 'No', 'Docker', 'wordpress:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB995', 'MySQL', 400, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_894', '192.168.10.104', 'eu-south-1', '2023-05-25', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK148', '192.168.20.13', 'Yes', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB413', 'MySQL', 300, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_287', '192.168.10.46', 'eu-west-2', '2023-05-21', 'CentOS7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK48', '192.168.20.96', 'Yes', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB508', 'PostgreSQL', 200, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_954', '192.168.10.158', 'eu-south-1', '2023-05-24', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK335', '192.168.20.176', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB888', 'MySQL', 500, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_667', '192.168.10.125', 'eu-west-2', '2023-05-26', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK327', '192.168.20.185', 'No', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB527', 'MySQL', 500, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_801', '192.168.10.143', 'eu-west-2', '2023-05-27', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK979', '192.168.20.49', 'No', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB47', 'MySQL', 200, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_436', '192.168.10.111', 'eu-south-1', '2023-05-22', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK343', '192.168.20.52', 'No', 'Docker', 'wordpress:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB406', 'PostgreSQL', 100, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_692', '192.168.10.126', 'eu-central-1', '2023-05-31', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK697', '192.168.20.143', 'No', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB317', 'PostgreSQL', 300, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_659', '192.168.10.182', 'eu-west-2', '2023-05-31', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK712', '192.168.20.22', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB698', 'PostgreSQL', 100, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_692', '192.168.10.175', 'eu-south-1', '2023-05-29', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK493', '192.168.20.23', 'Yes', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB780', 'MySQL', 200, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_88', '192.168.10.106', 'eu-west-1', '2023-05-26', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK93', '192.168.20.171', 'Yes', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB310', 'PostgreSQL', 500, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_766', '192.168.10.134', 'eu-west-1', '2023-05-29', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK375', '192.168.20.109', 'No', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB954', 'PostgreSQL', 100, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_858', '192.168.10.138', 'eu-west-1', '2023-05-21', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK203', '192.168.20.136', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB818', 'PostgreSQL', 400, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_455', '192.168.10.171', 'eu-west-3', '2023-05-21', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK789', '192.168.20.22', 'No', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB136', 'PostgreSQL', 200, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_471', '192.168.10.182', 'eu-south-1', '2023-05-27', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK753', '192.168.20.109', 'Yes', 'Docker', 'alpine:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB936', 'PostgreSQL', 400, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_871', '192.168.10.26', 'eu-west-1', '2023-05-23', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK627', '192.168.20.200', 'Yes', 'Docker', 'wordpress:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB830', 'MySQL', 200, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_744', '192.168.10.98', 'eu-west-2', '2023-05-31', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK586', '192.168.20.135', 'Yes', 'Docker', 'nginx:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB476', 'PostgreSQL', 500, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_483', '192.168.10.151', 'eu-central-1', '2023-05-25', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK790', '192.168.20.195', 'No', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB341', 'PostgreSQL', 400, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_451', '192.168.10.57', 'eu-west-1', '2023-05-30', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK832', '192.168.20.199', 'No', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB790', 'MySQL', 100, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_828', '192.168.10.179', 'eu-west-1', '2023-05-29', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK792', '192.168.20.130', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB44', 'MySQL', 500, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_867', '192.168.10.105', 'eu-west-1', '2023-05-20', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK561', '192.168.20.35', 'Yes', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB945', 'PostgreSQL', 400, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_187', '192.168.10.90', 'eu-central-1', '2023-05-25', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK320', '192.168.20.171', 'No', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB685', 'PostgreSQL', 300, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_200', '192.168.10.127', 'eu-south-1', '2023-05-25', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK594', '192.168.20.24', 'No', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB655', 'MySQL', 200, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_956', '192.168.10.104', 'eu-south-1', '2023-05-28', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK611', '192.168.20.180', 'No', 'Docker', 'jenkins:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB356', 'MySQL', 300, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_745', '192.168.10.66', 'eu-south-1', '2023-05-28', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK466', '192.168.20.164', 'Yes', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB971', 'MySQL', 200, '2023-05-20');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_266', '192.168.10.86', 'eu-west-3', '2023-05-31', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK118', '192.168.20.112', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB556', 'PostgreSQL', 200, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_735', '192.168.10.156', 'eu-west-2', '2023-05-23', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK771', '192.168.20.59', 'Yes', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB195', 'PostgreSQL', 500, '2023-05-20');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_417', '192.168.10.71', 'eu-west-1', '2023-05-31', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK990', '192.168.20.15', 'No', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB551', 'MySQL', 100, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_527', '192.168.10.95', 'eu-west-1', '2023-05-26', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK717', '192.168.20.95', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB704', 'PostgreSQL', 100, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_361', '192.168.10.19', 'eu-west-1', '2023-05-21', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK19', '192.168.20.3', 'Yes', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB135', 'MySQL', 500, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_89', '192.168.10.36', 'eu-west-1', '2023-05-25', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK159', '192.168.20.52', 'Yes', 'Docker', 'jenkins:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB627', 'PostgreSQL', 200, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_862', '192.168.10.90', 'eu-west-1', '2023-05-28', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK879', '192.168.20.162', 'No', 'Docker', 'wordpress:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB335', 'PostgreSQL', 500, '2023-05-20');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_721', '192.168.10.52', 'eu-south-1', '2023-05-22', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK830', '192.168.20.58', 'Yes', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB310', 'MySQL', 500, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_987', '192.168.10.41', 'eu-central-1', '2023-05-21', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK416', '192.168.20.94', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB734', 'PostgreSQL', 500, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_429', '192.168.10.29', 'eu-west-3', '2023-05-21', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK111', '192.168.20.67', 'No', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB826', 'MySQL', 200, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_294', '192.168.10.100', 'eu-central-1', '2023-05-20', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK285', '192.168.20.80', 'No', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB685', 'PostgreSQL', 200, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_107', '192.168.10.31', 'eu-west-3', '2023-05-23', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK155', '192.168.20.126', 'No', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB500', 'PostgreSQL', 500, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_412', '192.168.10.153', 'eu-west-2', '2023-05-28', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK265', '192.168.20.51', 'Yes', 'Docker', 'nginx:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB200', 'MySQL', 500, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_241', '192.168.10.148', 'eu-west-1', '2023-05-22', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK805', '192.168.20.188', 'Yes', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB45', 'PostgreSQL', 400, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_258', '192.168.10.136', 'eu-west-1', '2023-05-25', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK740', '192.168.20.182', 'Yes', 'Docker', 'rabbitmq:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB920', 'PostgreSQL', 300, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_536', '192.168.10.127', 'eu-central-1', '2023-05-22', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK806', '192.168.20.186', 'Yes', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB500', 'MySQL', 100, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_923', '192.168.10.58', 'eu-west-1', '2023-05-28', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK738', '192.168.20.58', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB787', 'MySQL', 100, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_226', '192.168.10.176', 'eu-west-1', '2023-05-25', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK11', '192.168.20.144', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB730', 'MySQL', 500, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_417', '192.168.10.181', 'eu-west-1', '2023-05-26', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK465', '192.168.20.46', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB927', 'MySQL', 400, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_397', '192.168.10.127', 'eu-west-2', '2023-05-23', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK473', '192.168.20.117', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB672', 'MySQL', 500, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_162', '192.168.10.86', 'eu-west-2', '2023-05-26', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK343', '192.168.20.178', 'Yes', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB572', 'MySQL', 100, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_843', '192.168.10.181', 'eu-south-1', '2023-05-26', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK816', '192.168.20.22', 'Yes', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB47', 'PostgreSQL', 400, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_970', '192.168.10.168', 'eu-west-1', '2023-05-29', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK425', '192.168.20.51', 'No', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB915', 'MySQL', 200, '2023-05-23');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_604', '192.168.10.116', 'eu-central-1', '2023-05-24', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK939', '192.168.20.93', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB244', 'PostgreSQL', 500, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_946', '192.168.10.133', 'eu-west-2', '2023-05-20', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK582', '192.168.20.104', 'Yes', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB579', 'MySQL', 200, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_112', '192.168.10.139', 'eu-central-1', '2023-05-25', 'SUSE12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK101', '192.168.20.54', 'No', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB849', 'PostgreSQL', 400, '2023-05-21');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_850', '192.168.10.135', 'eu-west-3', '2023-05-25', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK617', '192.168.20.102', 'Yes', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB48', 'PostgreSQL', 500, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_442', '192.168.10.140', 'eu-west-3', '2023-05-29', 'FreeBSD12');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK772', '192.168.20.43', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB324', 'MySQL', 500, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_664', '192.168.10.23', 'eu-central-1', '2023-05-31', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK193', '192.168.20.88', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB289', 'MySQL', 200, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_943', '192.168.10.48', 'eu-west-3', '2023-05-25', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK98', '192.168.20.173', 'Yes', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB502', 'PostgreSQL', 100, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_184', '192.168.10.147', 'eu-west-3', '2023-05-29', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK367', '192.168.20.49', 'Yes', 'Docker', 'gitlab:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB434', 'PostgreSQL', 100, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_493', '192.168.10.67', 'eu-west-1', '2023-05-28', 'CentOS8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK624', '192.168.20.65', 'Yes', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB775', 'PostgreSQL', 300, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_783', '192.168.10.98', 'eu-central-1', '2023-05-21', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK876', '192.168.20.89', 'No', 'Docker', 'jenkins:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB646', 'MySQL', 300, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_292', '192.168.10.92', 'eu-central-1', '2023-05-31', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK353', '192.168.20.46', 'No', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB202', 'MySQL', 400, '2023-05-26');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_137', '192.168.10.146', 'eu-west-1', '2023-05-27', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK979', '192.168.20.24', 'Yes', 'Docker', 'rabbitmq:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB303', 'MySQL', 400, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_764', '192.168.10.112', 'eu-west-3', '2023-05-29', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK10', '192.168.20.140', 'No', 'Docker', 'nginx:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB827', 'MySQL', 500, '2023-05-29');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_893', '192.168.10.161', 'eu-south-1', '2023-05-23', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK60', '192.168.20.145', 'No', 'Docker', 'rabbitmq:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB869', 'PostgreSQL', 100, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_373', '192.168.10.45', 'eu-west-3', '2023-05-28', 'RHEL7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK243', '192.168.20.17', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB702', 'PostgreSQL', 100, '2023-05-24');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_253', '192.168.10.129', 'eu-west-3', '2023-05-30', 'FreeBSD13');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK298', '192.168.20.184', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB03', 'MySQL', 200, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_91', '192.168.10.102', 'eu-central-1', '2023-05-22', 'UbuntuServer_20.04');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK710', '192.168.20.181', 'No', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB643', 'MySQL', 200, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_794', '192.168.10.127', 'eu-west-1', '2023-05-24', 'Windows_server_2012');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK990', '192.168.20.197', 'Yes', 'Docker', 'redis:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB926', 'MySQL', 100, '2023-05-25');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_990', '192.168.10.161', 'eu-south-1', '2023-05-23', 'Debian10');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK400', '192.168.20.189', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB378', 'MySQL', 300, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_641', '192.168.10.28', 'eu-central-1', '2023-05-23', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK114', '192.168.20.89', 'Yes', 'Docker', 'php:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB376', 'PostgreSQL', 300, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_980', '192.168.10.12', 'eu-south-1', '2023-05-29', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK80', '192.168.20.65', 'No', 'Docker', 'mysql:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB164', 'MySQL', 100, '2023-05-27');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_848', '192.168.10.56', 'eu-central-1', '2023-05-20', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK560', '192.168.20.41', 'No', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB266', 'PostgreSQL', 300, '2023-05-20');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_994', '192.168.10.161', 'eu-south-1', '2023-05-25', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK855', '192.168.20.181', 'Yes', 'Docker', 'node:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB701', 'PostgreSQL', 500, '2023-05-28');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_60', '192.168.10.114', 'eu-west-2', '2023-05-31', 'CentOS7');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK685', '192.168.20.121', 'No', 'Docker', 'postgres:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB980', 'PostgreSQL', 100, '2023-05-30');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_864', '192.168.10.74', 'eu-west-1', '2023-05-26', 'RHEL8');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK880', '192.168.20.189', 'Yes', 'Docker', 'jenkins:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB864', 'MySQL', 400, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_461', '192.168.10.181', 'eu-west-3', '2023-05-31', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK977', '192.168.20.103', 'Yes', 'Docker', 'elasticsearch:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB767', 'PostgreSQL', 500, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_737', '192.168.10.10', 'eu-central-1', '2023-05-24', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK612', '192.168.20.18', 'No', 'Docker', 'python:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB453', 'MySQL', 400, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_857', '192.168.10.145', 'eu-south-1', '2023-05-23', 'OpenSUSE15');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK528', '192.168.20.81', 'No', 'Docker', 'mongodb:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB219', 'MySQL', 400, '2023-05-22');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_108', '192.168.10.34', 'eu-west-1', '2023-05-25', 'SUSE11');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK787', '192.168.20.61', 'No', 'Docker', 'traefik:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB525', 'PostgreSQL', 500, '2023-05-20');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_696', '192.168.10.156', 'eu-west-3', '2023-05-27', 'Fedora34');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK305', '192.168.20.121', 'Yes', 'Docker', 'rabbitmq:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB871', 'PostgreSQL', 200, '2023-05-31');
INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES ('vm_aws_312', '192.168.10.154', 'eu-south-1', '2023-05-21', 'Fedora33');
INSERT INTO public.containers (name, ip, up, engine, image) VALUES ('DCK854', '192.168.20.182', 'No', 'Docker', 'nginx:latest');
INSERT INTO public.databases (name, engine, size, uptodate) VALUES ('DB816', 'MySQL', 300, '2023-05-29');