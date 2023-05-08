--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-04-12 16:08:28

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

DROP DATABASE "PharmaGest";
--
-- TOC entry 3343 (class 1262 OID 24763)
-- Name: PharmaGest; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "PharmaGest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


\connect "PharmaGest"

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 24927)
-- Name: facture; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.facture (
    idfac integer NOT NULL,
    factid character varying(200),
    datefactue character varying(200),
    totalfacture bigint,
    generer character varying(200)
);


--
-- TOC entry 213 (class 1259 OID 24926)
-- Name: facture_idfac_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.facture_idfac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 213
-- Name: facture_idfac_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.facture_idfac_seq OWNED BY public.facture.idfac;


--
-- TOC entry 216 (class 1259 OID 24936)
-- Name: fournisseurs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fournisseurs (
    idfour integer NOT NULL,
    nom character varying(20),
    adresse character varying(20),
    email character varying(20),
    telephone integer
);


--
-- TOC entry 215 (class 1259 OID 24935)
-- Name: fournisseurs_idfour_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fournisseurs_idfour_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 215
-- Name: fournisseurs_idfour_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fournisseurs_idfour_seq OWNED BY public.fournisseurs.idfour;


--
-- TOC entry 212 (class 1259 OID 24910)
-- Name: medicaments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.medicaments (
    idmed integer NOT NULL,
    nom character varying(20),
    quantite integer,
    prix double precision,
    fournisseurs character varying(20),
    fabircation character varying(20),
    expiration character varying(20)
);


--
-- TOC entry 211 (class 1259 OID 24909)
-- Name: medicaments_idmed_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.medicaments_idmed_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 211
-- Name: medicaments_idmed_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.medicaments_idmed_seq OWNED BY public.medicaments.idmed;


--
-- TOC entry 210 (class 1259 OID 24895)
-- Name: utilisateurs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.utilisateurs (
    idutil integer NOT NULL,
    nom character varying(10),
    prenom character varying(10),
    telephone character varying(20),
    email character varying(20),
    fonction character varying(20),
    adresse character varying(20),
    pass character varying(20)
);


--
-- TOC entry 209 (class 1259 OID 24894)
-- Name: utilisateurs_idutil_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.utilisateurs_idutil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 209
-- Name: utilisateurs_idutil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.utilisateurs_idutil_seq OWNED BY public.utilisateurs.idutil;


--
-- TOC entry 3181 (class 2604 OID 24930)
-- Name: facture idfac; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.facture ALTER COLUMN idfac SET DEFAULT nextval('public.facture_idfac_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 24939)
-- Name: fournisseurs idfour; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fournisseurs ALTER COLUMN idfour SET DEFAULT nextval('public.fournisseurs_idfour_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 24913)
-- Name: medicaments idmed; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.medicaments ALTER COLUMN idmed SET DEFAULT nextval('public.medicaments_idmed_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 24898)
-- Name: utilisateurs idutil; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.utilisateurs ALTER COLUMN idutil SET DEFAULT nextval('public.utilisateurs_idutil_seq'::regclass);


--
-- TOC entry 3335 (class 0 OID 24927)
-- Dependencies: 214
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3337 (class 0 OID 24936)
-- Dependencies: 216
-- Data for Name: fournisseurs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.fournisseurs VALUES (1, 'Moderna', 'Comores', 'mod@gmail.com', 123456987);
INSERT INTO public.fournisseurs VALUES (2, 'Pfizer', 'Maurice', 'pfiz@gmail.com', 123456987);
INSERT INTO public.fournisseurs VALUES (3, 'Astrazeneka', 'Mayotte', 'astra@gmail.com', 123456987);


--
-- TOC entry 3333 (class 0 OID 24910)
-- Dependencies: 212
-- Data for Name: medicaments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.medicaments VALUES (1, 'Doliprane', 4587, 100, 'Moderna', '12/05/2019', '02/04/2024');
INSERT INTO public.medicaments VALUES (2, 'Dafalgan', 457, 540, 'Pfizer', '2023-04-13', '2023-04-22');
INSERT INTO public.medicaments VALUES (5, 'mop', 124, 478, 'fer', '2023-04-22', '2023-04-15');


--
-- TOC entry 3331 (class 0 OID 24895)
-- Dependencies: 210
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.utilisateurs VALUES (2, 'Ishaka', 'El-Anziz', '05/02/1999', 'ishaka@gmail.com', 'pharmacien', 'Quatres Bornes', '123');
INSERT INTO public.utilisateurs VALUES (5, 'Daniel', 'Dayan', '3698521478', 'dayandaniel30@gmail.com', 'pharmacien', '123', 'Mora');
INSERT INTO public.utilisateurs VALUES (1, 'Ahamadi', 'Toyifane', '1234569878', 'toyifane94@gmail.com', 'admin', 'Rose ', '123');


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 213
-- Name: facture_idfac_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.facture_idfac_seq', 1, false);


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 215
-- Name: fournisseurs_idfour_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fournisseurs_idfour_seq', 3, true);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 211
-- Name: medicaments_idmed_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.medicaments_idmed_seq', 5, true);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 209
-- Name: utilisateurs_idutil_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.utilisateurs_idutil_seq', 5, true);


--
-- TOC entry 3188 (class 2606 OID 24934)
-- Name: facture facture_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_pkey PRIMARY KEY (idfac);


--
-- TOC entry 3190 (class 2606 OID 24941)
-- Name: fournisseurs fournisseurs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fournisseurs
    ADD CONSTRAINT fournisseurs_pkey PRIMARY KEY (idfour);


--
-- TOC entry 3186 (class 2606 OID 24915)
-- Name: medicaments medicaments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.medicaments
    ADD CONSTRAINT medicaments_pkey PRIMARY KEY (idmed);


--
-- TOC entry 3184 (class 2606 OID 24900)
-- Name: utilisateurs utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (idutil);


-- Completed on 2023-04-12 16:08:28

--
-- PostgreSQL database dump complete
--

