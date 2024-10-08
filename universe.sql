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
    name character varying(255) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric,
    year_discovered integer,
    has_life boolean,
    galaxy_cluster_id integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_cluster (
    galaxy_cluster_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_cluster OWNER TO freecodecamp;

--
-- Name: galaxy_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_cluster_id_seq OWNED BY public.galaxy_cluster.galaxy_cluster_id;


--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric,
    year_discovered integer,
    has_life boolean,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric,
    year_discovered integer,
    has_life boolean,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric,
    year_discovered integer,
    has_life boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_cluster galaxy_cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster ALTER COLUMN galaxy_cluster_id SET DEFAULT nextval('public.galaxy_cluster_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (21, 'Milky Way', 14, 0, NULL, true, 1, 'A barred spiral galaxy containing our solar system.');
INSERT INTO public.galaxy VALUES (22, 'Andromeda', 10, 2.5, 964, false, 1, 'A spiral galaxy similar in size to the Milky Way.');
INSERT INTO public.galaxy VALUES (23, 'Large Magellanic Cloud', 13, 160000, NULL, false, 1, 'A dwarf irregular galaxy orbiting the Milky Way.');
INSERT INTO public.galaxy VALUES (24, 'Small Magellanic Cloud', 14, 200000, NULL, false, 1, 'A dwarf irregular galaxy orbiting the Milky Way.');
INSERT INTO public.galaxy VALUES (25, 'Whirlpool Galaxy', 100, 23000000, 1781, false, 2, 'A spiral galaxy with prominent spiral arms.');
INSERT INTO public.galaxy VALUES (26, 'Sombrero Galaxy', 13, 29300000, 1781, false, 2, 'A lenticular galaxy with a prominent dust lane.');


--
-- Data for Name: galaxy_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_cluster VALUES (1, 'Local Group', 'A small galaxy cluster containing the Milky Way, Andromeda Galaxy, and other smaller galaxies.');
INSERT INTO public.galaxy_cluster VALUES (2, 'Virgo Cluster', 'A large galaxy cluster containing over 2,000 galaxies, including the Milky Way Galaxy.');
INSERT INTO public.galaxy_cluster VALUES (3, 'Coma Cluster', 'A massive galaxy cluster containing over 1,000 galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4540, 384400.0, NULL, false, 30, 'Earth only natural satellite.');
INSERT INTO public.moon VALUES (2, 'Phobos', 3200, 9377.0, 1877, false, 30, 'One of Mars two moons, the larger of the two.');
INSERT INTO public.moon VALUES (3, 'Deimos', 2600, 23460.0, 1877, false, 30, 'One of Mars two moons, the smaller of the two.');
INSERT INTO public.moon VALUES (4, 'Io', 4500, 421700.0, 1610, false, 30, 'One of Jupiter four largest moons, known for its volcanic activity.');
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 670900.0, 1610, false, 30, 'One of Jupiter four largest moons, believed to have a subsurface ocean.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 1070000.0, 1610, false, 30, 'The largest moon in the solar system, larger than Mercury.');
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 1883000.0, 1610, false, 30, 'One of Jupiter four largest moons, heavily cratered.');
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 1220000000.0, 1655, false, 30, 'Saturn largest moon and the second-largest moon in the solar system.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 238000.0, 1789, false, 30, 'One of Saturn moons, known for its icy geysers.');
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 185500.0, 1789, false, 30, 'One of Saturn moons, with a large crater known as Herschel Crater.');
INSERT INTO public.moon VALUES (11, 'Tethys', 4500, 295000.0, 1684, false, 30, 'One of Saturn moons, with a large equatorial ridge.');
INSERT INTO public.moon VALUES (12, 'Dione', 4500, 377400.0, 1684, false, 30, 'One of Saturn moons, with icy plains and craters.');
INSERT INTO public.moon VALUES (13, 'Moon', 4540, 384400.0, NULL, false, 30, 'Earths only natural satellite.');
INSERT INTO public.moon VALUES (14, 'Phobos', 3200, 9377.0, 1877, false, 30, 'One of Mars two moons, the larger of the two.');
INSERT INTO public.moon VALUES (15, 'Deimos', 2600, 23460.0, 1877, false, 30, 'One of Mars two moons, the smaller of the two.');
INSERT INTO public.moon VALUES (16, 'Io', 4500, 421700.0, 1610, false, 30, 'One of Jupiter four largest moons, known for its volcanic activity.');
INSERT INTO public.moon VALUES (17, 'Europa', 4500, 670900.0, 1610, false, 30, 'One of Jupiter four largest moons, believed to have a subsurface ocean.');
INSERT INTO public.moon VALUES (18, 'Ganymede', 4500, 1070000.0, 1610, false, 30, 'The largest moon in the solar system, larger than Mercury.');
INSERT INTO public.moon VALUES (19, 'Callisto', 4500, 1883000.0, 1610, false, 30, 'One of Jupiter four largest moons, heavily cratered.');
INSERT INTO public.moon VALUES (20, 'Titan', 4500, 1220000000.0, 1655, false, 30, 'Saturn largest moon and the second-largest moon in the solar system.');
INSERT INTO public.moon VALUES (21, 'Enceladus', 4500, 238000.0, 1789, false, 30, 'One of Saturn moons, known for its icy geysers.');
INSERT INTO public.moon VALUES (22, 'Mimas', 4500, 185500.0, 1789, false, 30, 'One of Saturn moons, with a large crater known as Herschel Crater.');
INSERT INTO public.moon VALUES (23, 'Tethys', 4500, 295000.0, 1684, false, 30, 'One of Saturn moons, with a large equatorial ridge.');
INSERT INTO public.moon VALUES (24, 'Dione', 4500, 377400.0, 1684, false, 30, 'One of Saturn moons, with icy plains and craters.');
INSERT INTO public.moon VALUES (25, 'Rhea', 4500, 526800.0, 1672, false, 30, 'One of Saturn moons, with a heavily cratered surface.');
INSERT INTO public.moon VALUES (26, 'Hyperion', 4500, 1481000.0, 1848, false, 30, 'One of Saturn moons, with an irregular shape.');
INSERT INTO public.moon VALUES (27, 'Iapetus', 4500, 1476400.0, 1671, false, 30, 'One of Saturn moons, with a dark hemisphere and a bright hemisphere.');
INSERT INTO public.moon VALUES (28, 'Phoebe', 4500, 12950000.0, 1898, false, 30, 'One of Saturn moons, with an irregular shape and a dark surface.');
INSERT INTO public.moon VALUES (29, 'Pandora', 4500, 133600.0, 1980, false, 30, 'One of Saturn moons, with a bright surface and many craters.');
INSERT INTO public.moon VALUES (30, 'Epimetheus', 4500, 151400.0, 1980, false, 30, 'One of Saturn moons, with an irregular shape and a dark surface.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Earth', 4540, 0.0, NULL, true, 7, 'The third planet from the Sun and the only known planet to support life.');
INSERT INTO public.planet VALUES (26, 'Mars', 4600, 0.0576, NULL, false, 7, 'The fourth planet from the Sun, often referred to as the Red Planet.');
INSERT INTO public.planet VALUES (27, 'Venus', 4500, 0.0414, NULL, false, 7, 'The second planet from the Sun, often called twin of Earth.');
INSERT INTO public.planet VALUES (28, 'Mercury', 4500, 0.0579, NULL, false, 7, 'The closest planet to the Sun.');
INSERT INTO public.planet VALUES (29, 'Jupiter', 4500, 0.7786, NULL, false, 7, 'The largest planet in our solar system.');
INSERT INTO public.planet VALUES (30, 'Saturn', 4500, 1.43, NULL, false, 7, 'The second-largest planet in our solar system, known for its rings.');
INSERT INTO public.planet VALUES (31, 'Uranus', 4500, 2.87, 1781, false, 7, 'The seventh planet from the Sun, an ice giant.');
INSERT INTO public.planet VALUES (32, 'Neptune', 4500, 4.5, 1846, false, 7, 'The eighth and farthest planet from the Sun, an ice giant.');
INSERT INTO public.planet VALUES (33, 'Proxima Centauri b', 2000, 4.24, 2016, NULL, 7, 'A potentially rocky planet orbiting Proxima Centauri.');
INSERT INTO public.planet VALUES (34, 'Wolf 1061c', 3000, 14.0, 2016, NULL, 7, 'A potentially habitable planet orbiting Wolf 1061.');
INSERT INTO public.planet VALUES (35, 'TRAPPIST-1d', 5000, 40.0, 2017, NULL, 7, 'A potentially habitable planet orbiting TRAPPIST-1.');
INSERT INTO public.planet VALUES (36, 'Ross 128 b', 5000, 11.0, 2017, NULL, 7, 'A potentially habitable planet orbiting Ross 128.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', 4600, 0, NULL, true, 21, 'A yellow dwarf star at the center of our solar system.');
INSERT INTO public.star VALUES (8, 'Alpha Centauri A', 6000, 4.24, 1687, false, 21, 'A main-sequence star similar to the Sun.');
INSERT INTO public.star VALUES (9, 'Alpha Centauri B', 5200, 4.24, 1687, false, 21, 'A main-sequence star slightly smaller than the Sun.');
INSERT INTO public.star VALUES (10, 'Proxima Centauri', 4800, 4.24, 1915, false, 21, 'A red dwarf star orbiting Alpha Centauri AB.');
INSERT INTO public.star VALUES (11, 'Sirius A', 250, 8.6, NULL, false, 21, 'A main-sequence star slightly larger than the Sun.');
INSERT INTO public.star VALUES (12, 'Sirius B', 3000, 8.6, 1862, false, 21, 'A white dwarf star orbiting Sirius A.');


--
-- Name: galaxy_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_cluster_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 26, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 36, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: galaxy_cluster galaxy_cluster_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_id UNIQUE (galaxy_cluster_id);


--
-- Name: galaxy_cluster galaxy_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_pkey PRIMARY KEY (galaxy_cluster_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_cluster_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cluster_id FOREIGN KEY (galaxy_cluster_id) REFERENCES public.galaxy_cluster(galaxy_cluster_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

