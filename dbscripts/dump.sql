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
-- Name: greetings; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.greetings (
    id integer NOT NULL,
    ts timestamp without time zone DEFAULT now(),
    tx text
);


ALTER TABLE public.greetings OWNER TO pguser;

--
-- Name: greetings_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.greetings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.greetings_id_seq OWNER TO pguser;

--
-- Name: greetings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.greetings_id_seq OWNED BY public.greetings.id;


--
-- Name: greetings id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.greetings ALTER COLUMN id SET DEFAULT nextval('public.greetings_id_seq'::regclass);


--
-- Data for Name: greetings; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.greetings (id, ts, tx) FROM stdin;
1	2023-03-08 10:53:14.870612	Greetings from 438f827cd15f.
\.


--
-- Name: greetings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.greetings_id_seq', 1, true);


--
-- Name: greetings greetings_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.greetings
    ADD CONSTRAINT greetings_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

