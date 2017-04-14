--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: animalshelter; Type: DATABASE; Schema: -; Owner: Cwolf
--

CREATE DATABASE animalshelter WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE animalshelter OWNER TO "Cwolf";

\connect animalshelter

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: animal; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE animal (
    animal_id integer NOT NULL,
    name character varying(20) NOT NULL,
    species character varying(20) NOT NULL,
    breed character varying(20),
    description character varying(50) NOT NULL
);


ALTER TABLE animal OWNER TO "Cwolf";

--
-- Name: animal_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE animal_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE animal_animal_id_seq OWNER TO "Cwolf";

--
-- Name: animal_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE animal_animal_id_seq OWNED BY animal.animal_id;


--
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY animal ALTER COLUMN animal_id SET DEFAULT nextval('animal_animal_id_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY animal (animal_id, name, species, breed, description) FROM stdin;
1	Jordan	Dog	Husky	Dichromatic dog model
2	Loki	Dog	Labrador Retriever	Golden locks
3	Ritz	Cat	Persian	Big white fur ball
4	Patsy	Cat	Scottish Fold	Mean-muggin' gray
5	Oreo	Cat	Mutt	Small, black and white
6	Cozy	Dog	Corgi	All-smiles shorty
\.


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('animal_animal_id_seq', 6, true);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);


--
-- Name: animal_name_unique; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX animal_name_unique ON animal USING btree (animal_id);


--
-- PostgreSQL database dump complete
--

