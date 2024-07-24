--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age_in_billions_of_years numeric(4,1),
    number_of_stars integer
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
    name character varying(40) NOT NULL,
    description text,
    discovered_by text,
    year_discovered integer,
    planet_id integer
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
    name character varying(40) NOT NULL,
    description text,
    visible_to_naked_eye boolean,
    can_support_life boolean,
    star_id integer
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
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    weight_in_solar_masses numeric(7,3),
    galaxy_id integer
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
-- Name: telescopes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.telescopes (
    name character varying(40) NOT NULL,
    year_built integer,
    telescopes_id integer NOT NULL
);


ALTER TABLE public.telescopes OWNER TO freecodecamp;

--
-- Name: telescopes_telescopes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.telescopes_telescopes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telescopes_telescopes_id_seq OWNER TO freecodecamp;

--
-- Name: telescopes_telescopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.telescopes_telescopes_id_seq OWNED BY public.telescopes.telescopes_id;


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
-- Name: telescopes telescopes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescopes ALTER COLUMN telescopes_id SET DEFAULT nextval('public.telescopes_telescopes_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 13.6, 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 10.0, 1000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, 10.0, 40);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', NULL, 12.0, 1000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, 10.0, 800);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', NULL, 10.0, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 'unknown', 0, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 'Asaph Hall', 1877, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 'Asaph Hall', 1877, 5);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 'Galileo Galilei', 1610, 6);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 'Galileo Galilei', 1610, 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 'Galileo Galilei', 1610, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 'Galileo Galilei', 1610, 6);
INSERT INTO public.moon VALUES (8, 'Adrastea', NULL, 'Stephen P. Synnott', 1979, 6);
INSERT INTO public.moon VALUES (9, 'Metis', NULL, 'Stephen P. Synnott', 1979, 7);
INSERT INTO public.moon VALUES (10, 'Thebe', NULL, 'Stephen P. Synnott', 1979, 7);
INSERT INTO public.moon VALUES (11, 'Amalthea', NULL, 'Edward E. Barnard', 1892, 7);
INSERT INTO public.moon VALUES (12, 'Himalia', NULL, 'C. V. Jackson', 1904, 7);
INSERT INTO public.moon VALUES (13, 'Elara', NULL, 'C. V. Jackson', 1905, 7);
INSERT INTO public.moon VALUES (14, 'Titan', NULL, 'Christiaan Huygens', 1655, 8);
INSERT INTO public.moon VALUES (15, 'Rhea', NULL, 'Giovanni Domenico Cassini', 1672, 8);
INSERT INTO public.moon VALUES (16, 'Iapetus', NULL, 'Giovanni Domenico Cassini', 1671, 8);
INSERT INTO public.moon VALUES (17, 'Dione', NULL, 'Giovanni Domenico Cassini', 1684, 8);
INSERT INTO public.moon VALUES (18, 'Tethys', NULL, 'Giovanni Domenico Cassini', 1684, 8);
INSERT INTO public.moon VALUES (19, 'Enceladus', NULL, 'William Herschel', 1789, 8);
INSERT INTO public.moon VALUES (20, 'Mimas', NULL, 'William Herschel', 1789, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', NULL, true, false, 8);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, true, false, 8);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, true, true, 8);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, true, false, 8);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, true, false, 8);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, true, false, 8);
INSERT INTO public.planet VALUES (8, 'HD 10180 b', NULL, false, false, 11);
INSERT INTO public.planet VALUES (9, 'HC 10180 c', NULL, false, false, 11);
INSERT INTO public.planet VALUES (10, 'M33 X-7 b', NULL, false, false, 12);
INSERT INTO public.planet VALUES (11, 'VCC 1274 b', NULL, false, false, 12);
INSERT INTO public.planet VALUES (12, 'LMC-N 041 b', NULL, false, false, 13);
INSERT INTO public.planet VALUES (13, 'LMC-N 059 b', NULL, false, false, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8, 'Sun', NULL, 4600, 1.000, 1);
INSERT INTO public.star VALUES (9, 'Kepler', NULL, 6000, 0.560, 1);
INSERT INTO public.star VALUES (10, 'Proxima', NULL, 4000, 0.120, 1);
INSERT INTO public.star VALUES (11, 'HD 141399', NULL, 2700, 1.300, 2);
INSERT INTO public.star VALUES (12, 'Fornax', NULL, 10000, 0.700, 3);
INSERT INTO public.star VALUES (13, 'LMC Star 1', NULL, 1000, 0.800, 6);


--
-- Data for Name: telescopes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.telescopes VALUES ('Hubble', 1990, 1);
INSERT INTO public.telescopes VALUES ('Arecibo', 1963, 2);
INSERT INTO public.telescopes VALUES ('Keck', 1996, 3);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: telescopes_telescopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.telescopes_telescopes_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: telescopes telescopes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescopes
    ADD CONSTRAINT telescopes_name_key UNIQUE (name);


--
-- Name: telescopes telescopes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescopes
    ADD CONSTRAINT telescopes_pkey PRIMARY KEY (telescopes_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

