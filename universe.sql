--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dummy_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy_table (
    dummy_table_id integer NOT NULL,
    name character varying(50),
    is_true boolean NOT NULL,
    is_false boolean NOT NULL,
    height integer,
    weight integer,
    description text
);


ALTER TABLE public.dummy_table OWNER TO freecodecamp;

--
-- Name: dummy_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_table_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_table_id_seq OWNED BY public.dummy_table.dummy_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    planet_type integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dummy_table dummy_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table ALTER COLUMN dummy_table_id SET DEFAULT nextval('public.dummy_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dummy_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy_table VALUES (1, 'j', false, true, NULL, NULL, NULL);
INSERT INTO public.dummy_table VALUES (2, 'k', false, true, NULL, NULL, NULL);
INSERT INTO public.dummy_table VALUES (3, 'g', true, false, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'j', NULL, false, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'k', NULL, false, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'g', NULL, true, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'v', NULL, true, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'd', NULL, false, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'o', NULL, true, false, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'j', NULL, false, true, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'k', NULL, false, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'g', NULL, true, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'v', NULL, true, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'd', NULL, false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'o', NULL, true, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'q', NULL, true, true, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'e', NULL, true, true, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'y', NULL, true, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'dd', NULL, false, true, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'cc', NULL, true, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'mm', NULL, true, true, NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'io', NULL, true, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'hf', NULL, false, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'vs', NULL, true, true, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'mn', NULL, false, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'jj', NULL, true, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'ppp', NULL, true, false, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'aaa', NULL, true, true, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'iio', NULL, false, true, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'j', NULL, false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'k', NULL, false, true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'g', NULL, true, false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'v', NULL, true, false, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'd', NULL, false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'o', NULL, true, false, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'q', NULL, true, true, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'e', NULL, true, true, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'y', NULL, true, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'dd', NULL, false, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'cc', NULL, true, false, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'mm', NULL, true, true, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'j', NULL, false, true, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'k', NULL, false, true, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'g', NULL, true, false, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'v', NULL, true, false, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'd', NULL, false, true, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'o', NULL, true, false, NULL, NULL, 6);


--
-- Name: dummy_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dummy_table dummy_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_name_key UNIQUE (name);


--
-- Name: dummy_table dummy_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_pkey PRIMARY KEY (dummy_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name3 UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon un_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT un_name UNIQUE (name);


--
-- Name: planet un_name2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT un_name2 UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

