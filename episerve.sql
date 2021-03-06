--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
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
-- Name: skills; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE skills (
    id integer NOT NULL,
    skill character varying
);


ALTER TABLE skills OWNER TO "Guest";

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_id_seq OWNER TO "Guest";

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE skills_id_seq OWNED BY skills.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE students (
    id integer NOT NULL,
    student_first_name character varying,
    student_last_name character varying,
    bio text,
    email character varying,
    password character varying
);


ALTER TABLE students OWNER TO "Guest";

--
-- Name: students_exps; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE students_exps (
    id integer NOT NULL,
    student_id integer,
    exp_id integer
);


ALTER TABLE students_exps OWNER TO "Guest";

--
-- Name: students_exps_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE students_exps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE students_exps_id_seq OWNER TO "Guest";

--
-- Name: students_exps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE students_exps_id_seq OWNED BY students_exps.id;


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE students_id_seq OWNER TO "Guest";

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE students_id_seq OWNED BY students.id;


--
-- Name: students_skills; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE students_skills (
    id integer NOT NULL,
    student_id integer,
    skill_id integer
);


ALTER TABLE students_skills OWNER TO "Guest";

--
-- Name: students_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE students_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE students_skills_id_seq OWNER TO "Guest";

--
-- Name: students_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE students_skills_id_seq OWNED BY students_skills.id;


--
-- Name: work_exp; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE work_exp (
    id integer NOT NULL,
    exp character varying
);


ALTER TABLE work_exp OWNER TO "Guest";

--
-- Name: work_exp_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE work_exp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE work_exp_id_seq OWNER TO "Guest";

--
-- Name: work_exp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE work_exp_id_seq OWNED BY work_exp.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY skills ALTER COLUMN id SET DEFAULT nextval('skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students ALTER COLUMN id SET DEFAULT nextval('students_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students_exps ALTER COLUMN id SET DEFAULT nextval('students_exps_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students_skills ALTER COLUMN id SET DEFAULT nextval('students_skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY work_exp ALTER COLUMN id SET DEFAULT nextval('work_exp_id_seq'::regclass);


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY skills (id, skill) FROM stdin;
\.


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('skills_id_seq', 1, false);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY students (id, student_first_name, student_last_name, bio, email, password) FROM stdin;
2	Garrett	Biernat	\N	garrett@gdbmedia.net	E4r5t6y7u1
3	Arlen	Burton	\N	burton.arlen.1990@gmail.com	Radpass11
4	Liam	Ellis	\N	liamhellis@gmail.com	4253Dandelion
\.


--
-- Data for Name: students_exps; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY students_exps (id, student_id, exp_id) FROM stdin;
\.


--
-- Name: students_exps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('students_exps_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('students_id_seq', 4, true);


--
-- Data for Name: students_skills; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY students_skills (id, student_id, skill_id) FROM stdin;
\.


--
-- Name: students_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('students_skills_id_seq', 1, false);


--
-- Data for Name: work_exp; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY work_exp (id, exp) FROM stdin;
\.


--
-- Name: work_exp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('work_exp_id_seq', 1, false);


--
-- Name: skills_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: students_exps_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students_exps
    ADD CONSTRAINT students_exps_pkey PRIMARY KEY (id);


--
-- Name: students_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: students_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY students_skills
    ADD CONSTRAINT students_skills_pkey PRIMARY KEY (id);


--
-- Name: work_exp_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY work_exp
    ADD CONSTRAINT work_exp_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: epicodus
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM epicodus;
GRANT ALL ON SCHEMA public TO epicodus;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

