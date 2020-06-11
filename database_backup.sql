--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: apple
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO apple;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apple
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apple;

--
-- Name: users; Type: TABLE; Schema: public; Owner: apple
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO apple;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: apple
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO apple;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apple
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: apple
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: apple
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-09 18:45:46.596778	2020-06-09 18:45:46.596778
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apple
--

COPY public.schema_migrations (version) FROM stdin;
20200609184447
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: apple
--

COPY public.users (id, email, password_hash, password_salt, created_at, updated_at) FROM stdin;
1	chvballgurl@aol.com	$2a$12$aEjfzCs69WtGGPajXQPsaeUFd4q./SlKU7SrPJOzEzqHdJZmKVOfK	$2a$12$aEjfzCs69WtGGPajXQPsae	2020-06-09 21:10:23.46788	2020-06-09 21:10:23.46788
2	dan@dan.com	$2a$12$9fSDWXEkBu6y/tP7V2/iZeMn4UteEghNEj6xm7suAO6k79n2AC2dy	$2a$12$9fSDWXEkBu6y/tP7V2/iZe	2020-06-09 21:12:01.746412	2020-06-09 21:12:01.746412
3	t@t.com	$2a$12$rnQx50pcHmXCxi8ruYutnekdDXxJ0HErsy2W/EhBiwiw6ha7xzX5e	$2a$12$rnQx50pcHmXCxi8ruYutne	2020-06-09 21:12:23.677678	2020-06-09 21:12:23.677678
4	v@fake.com	$2a$12$cX0HqzMiqIHzPAqNFC6XnO2xYESjMPfLkI81ok5Z8DAyfCJgFc/3C	$2a$12$cX0HqzMiqIHzPAqNFC6XnO	2020-06-09 22:35:18.766842	2020-06-09 22:35:18.766842
5	dan2@dan.com	$2a$12$n3Gq2YgUCV/Ib3NAe8zuiuBBzibvcTnwAtnwKtKN3EUyWcIIOyeIa	$2a$12$n3Gq2YgUCV/Ib3NAe8zuiu	2020-06-09 22:35:54.89489	2020-06-09 22:35:54.89489
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apple
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: apple
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: apple
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: apple
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

