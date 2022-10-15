--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3

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

--
-- Name: my_schema_1_1; Type: SCHEMA; Schema: -; Owner: my_role_1
--

CREATE SCHEMA my_schema_1_1;


ALTER SCHEMA my_schema_1_1 OWNER TO my_role_1;

--
-- Name: my_schema_2; Type: SCHEMA; Schema: -; Owner: my_role_2
--

CREATE SCHEMA my_schema_2;


ALTER SCHEMA my_schema_2 OWNER TO my_role_2;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: vide_2; Type: TABLE; Schema: my_schema_2; Owner: my_role_2
--

CREATE TABLE my_schema_2.vide_2 (
);


ALTER TABLE my_schema_2.vide_2 OWNER TO my_role_2;

--
-- Name: vide_1; Type: TABLE; Schema: public; Owner: my_role_2
--

CREATE TABLE public.vide_1 (
);


ALTER TABLE public.vide_1 OWNER TO my_role_2;

--
-- Data for Name: vide_2; Type: TABLE DATA; Schema: my_schema_2; Owner: my_role_2
--

COPY my_schema_2.vide_2  FROM stdin;
\.


--
-- Data for Name: vide_1; Type: TABLE DATA; Schema: public; Owner: my_role_2
--

COPY public.vide_1  FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

