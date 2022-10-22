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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    number integer NOT NULL,
    size integer NOT NULL,
    position_id integer,
    distance numeric,
    movement boolean,
    reachable boolean,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_number_seq OWNER TO freecodecamp;

--
-- Name: galaxy_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_number_seq OWNED BY public.galaxy.number;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    number integer NOT NULL,
    position_id integer,
    size integer NOT NULL,
    distance numeric,
    movement boolean,
    reachable boolean,
    description text,
    moon_id integer NOT NULL
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
-- Name: moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_number_seq OWNED BY public.moon.number;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    number integer NOT NULL,
    size integer NOT NULL,
    position_id integer,
    distance numeric,
    movement boolean,
    reachable boolean,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_number_seq OWNED BY public.planet.number;


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
    name character varying NOT NULL,
    number integer NOT NULL,
    position_id integer,
    size integer NOT NULL,
    distance numeric,
    movement boolean,
    reachable boolean,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_number_seq OWNER TO freecodecamp;

--
-- Name: star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_number_seq OWNED BY public.star.number;


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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    number integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    description text,
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_number_seq OWNER TO freecodecamp;

--
-- Name: sun_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_number_seq OWNED BY public.sun.number;


--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN number SET DEFAULT nextval('public.galaxy_number_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN number SET DEFAULT nextval('public.moon_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN number SET DEFAULT nextval('public.planet_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN number SET DEFAULT nextval('public.star_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN number SET DEFAULT nextval('public.sun_number_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('gold', 1, 100, NULL, 6000, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Silver', 2, 50, NULL, 5000, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('Diamond', 3, 200, NULL, 55000, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('gold', 4, 100, NULL, 6000, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('Silver', 5, 50, NULL, 5000, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('Diamond', 6, 200, NULL, 55000, NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES ('gold', 7, 100, NULL, 6000, NULL, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES ('Silver', 8, 50, NULL, 5000, NULL, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES ('Diamond', 9, 200, NULL, 55000, NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES ('gold', 10, 100, NULL, 6000, NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES ('Silver', 11, 50, NULL, 5000, NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES ('Diamond', 12, 200, NULL, 55000, NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES ('gold', 13, 100, NULL, 6000, NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES ('Silver', 14, 50, NULL, 5000, NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES ('Diamond', 15, 200, NULL, 55000, NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES ('gold', 16, 100, NULL, 6000, NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES ('Silver', 17, 50, NULL, 5000, NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES ('Diamond', 18, 200, NULL, 55000, NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES ('gold', 19, 100, NULL, 6000, NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES ('Silver', 20, 50, NULL, 5000, NULL, NULL, NULL, 20);
INSERT INTO public.galaxy VALUES ('Diamond', 21, 200, NULL, 55000, NULL, NULL, NULL, 21);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Manoj', 1, NULL, 1000, 15000, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Megha', 2, NULL, 2000, 16000, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Rathna', 3, NULL, 3000, 17000, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Manoj', 4, NULL, 1000, 15000, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Megha', 5, NULL, 2000, 16000, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Rathna', 6, NULL, 3000, 17000, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Manoj', 7, NULL, 1000, 15000, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Megha', 8, NULL, 2000, 16000, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('Rathna', 9, NULL, 3000, 17000, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Manoj', 10, NULL, 1000, 15000, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('Megha', 11, NULL, 2000, 16000, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('Rathna', 12, NULL, 3000, 17000, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('Manoj', 13, NULL, 1000, 15000, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES ('Megha', 14, NULL, 2000, 16000, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES ('Rathna', 15, NULL, 3000, 17000, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES ('Manoj', 16, NULL, 1000, 15000, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES ('Megha', 17, NULL, 2000, 16000, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES ('Rathna', 18, NULL, 3000, 17000, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES ('Manoj', 19, NULL, 1000, 15000, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES ('Megha', 20, NULL, 2000, 16000, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES ('Rathna', 21, NULL, 3000, 17000, NULL, NULL, NULL, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 1000, NULL, 15000, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 2000, NULL, 16000, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Earth', 3, 3000, NULL, 17000, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Mercury', 4, 1000, NULL, 15000, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Venus', 5, 2000, NULL, 16000, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Earth', 6, 3000, NULL, 17000, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('Mercury', 7, 1000, NULL, 15000, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Venus', 8, 2000, NULL, 16000, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('Earth', 9, 3000, NULL, 17000, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('Mercury', 10, 1000, NULL, 15000, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('Venus', 11, 2000, NULL, 16000, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('Earth', 12, 3000, NULL, 17000, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES ('Mercury', 13, 1000, NULL, 15000, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES ('Venus', 14, 2000, NULL, 16000, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES ('Earth', 15, 3000, NULL, 17000, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES ('Mercury', 16, 1000, NULL, 15000, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES ('Venus', 17, 2000, NULL, 16000, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES ('Earth', 18, 3000, NULL, 17000, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES ('Mercury', 19, 1000, NULL, 15000, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES ('Venus', 20, 2000, NULL, 16000, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES ('Earth', 21, 3000, NULL, 17000, NULL, NULL, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Dad', 1, NULL, 10, 600, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('mom', 2, NULL, 5, 500, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Me', 3, NULL, 20, 550, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Dad', 4, NULL, 10, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('mom', 5, NULL, 5, 500, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('Me', 6, NULL, 20, 550, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('Dad', 7, NULL, 10, 600, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('mom', 8, NULL, 5, 500, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES ('Me', 9, NULL, 20, 550, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES ('Dad', 10, NULL, 10, 600, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES ('mom', 11, NULL, 5, 5001, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES ('Me', 12, NULL, 20, 550, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES ('Dad', 13, NULL, 10, 600, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES ('mom', 14, NULL, 5, 5001, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES ('Me', 15, NULL, 20, 550, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES ('Dad', 16, NULL, 10, 600, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES ('mom', 17, NULL, 5, 5001, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES ('Me', 18, NULL, 20, 550, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES ('Dad', 19, NULL, 10, 600, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES ('mom', 20, NULL, 5, 5001, NULL, NULL, NULL, 20);
INSERT INTO public.star VALUES ('Me', 21, NULL, 20, 550, NULL, NULL, NULL, 21);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Super', 10, NULL, 1);
INSERT INTO public.sun VALUES (2, 'Duper', 5, NULL, 2);
INSERT INTO public.sun VALUES (3, 'hit', 20, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: galaxy_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_number_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_number_seq', 1, true);


--
-- Name: planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_number_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_number_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: sun_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_number_seq', 3, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_number_key UNIQUE (number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_number_key UNIQUE (number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_key UNIQUE (number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_key UNIQUE (number);


--
-- Name: star star_number_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_key1 UNIQUE (number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_number_key UNIQUE (number);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: planet planet_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_fkey FOREIGN KEY (number) REFERENCES public.star(number);


--
-- PostgreSQL database dump complete
--

