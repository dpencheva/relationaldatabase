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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    constellation character varying(255),
    origin_of_name text,
    age_in_millions_of_years integer,
    galaxy_types character varying(100),
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(255),
    size integer,
    distance_from_earth integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(100) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    description character varying(255),
    size numeric(5,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    is_spherical boolean,
    planet_types character varying(50),
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    size numeric(5,2),
    description character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 100, 'spiral', 2537000);
INSERT INTO public.galaxy VALUES ('Milky way', 2, 'Sagittarius', 'The appearance from Earth of the galaxy—a band of light ', 200, 'spiral', 15300000);
INSERT INTO public.galaxy VALUES ('Bode', 3, 'Ursa Major', 'Named for Johann Elert Bode who discovered this galaxy in 1774.', 300, 'spiral', 21530000);
INSERT INTO public.galaxy VALUES ('Butterfly', 4, 'Virgo', 'Looks are similar to a butterfly.', 300, 'spiral', 2000000);
INSERT INTO public.galaxy VALUES ('Condor', 5, 'Pavo', 'Named after a condor, a type of vulture that is one of the largest flying birds. ', 300, 'spiral', 2100000);
INSERT INTO public.galaxy VALUES ('Magelanic Cloud', 6, 'Tucana', 'Named after Ferdinand Magellan', 350, 'spiral', 2105000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'spiral', 'spiral', 1, 100);
INSERT INTO public.galaxy_types VALUES (2, 'elliptical', 'elliptical', 2, 200);
INSERT INTO public.galaxy_types VALUES (3, 'peculiar', 'peculiar', 3, 300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 3, 'Moon', 1.00);
INSERT INTO public.moon VALUES ('Phobos', 2, 4, 'Mars moon', 1.00);
INSERT INTO public.moon VALUES ('Deimos', 3, 4, 'Mars moon', 1.00);
INSERT INTO public.moon VALUES ('Io', 4, 6, 'Jupiter moon', 1.00);
INSERT INTO public.moon VALUES ('Europa', 5, 6, 'Jupiter moon', 1.00);
INSERT INTO public.moon VALUES ('Ganymede', 6, 6, 'Jupiter moon', 1.00);
INSERT INTO public.moon VALUES ('Calisto', 7, 6, 'Jupiter moon', 1.00);
INSERT INTO public.moon VALUES ('Mimas', 8, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Enceladus', 9, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Thetis', 10, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Dione', 11, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Rhea', 12, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('titan', 13, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Hyperion', 14, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Iapetus', 15, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Phoebe', 16, 7, 'Saturn moon', 1.00);
INSERT INTO public.moon VALUES ('Proteus', 17, 9, 'Neptune moon', 1.00);
INSERT INTO public.moon VALUES ('Tritone', 18, 9, 'Neptune moon', 1.00);
INSERT INTO public.moon VALUES ('Nereid', 19, 9, 'Neptune moon', 1.00);
INSERT INTO public.moon VALUES ('Charon', 20, 10, 'Pluto moon', 1.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Alfa 1', 1, 1, true, 'gas giant', false);
INSERT INTO public.planet VALUES ('Alfa 2', 2, 1, true, 'gas giant', false);
INSERT INTO public.planet VALUES ('Earth', 3, 2, true, 'earth', true);
INSERT INTO public.planet VALUES ('Mars', 4, 2, true, 'earth', false);
INSERT INTO public.planet VALUES ('Venus', 5, 2, true, 'earth', false);
INSERT INTO public.planet VALUES ('Jupiter', 6, 2, true, 'gas giant', false);
INSERT INTO public.planet VALUES ('Saturn', 7, 2, true, 'gas giant', false);
INSERT INTO public.planet VALUES ('Mercury', 8, 2, true, 'earth', false);
INSERT INTO public.planet VALUES ('Neptun', 9, 2, true, 'earth', false);
INSERT INTO public.planet VALUES ('Pluto', 10, 2, true, 'earth', false);
INSERT INTO public.planet VALUES ('Test 1', 11, 3, true, 'earth', false);
INSERT INTO public.planet VALUES ('Test 2', 12, 3, true, 'earth', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 1, 1, 1.00, 'It represents Andromeda''s head in Western mythology');
INSERT INTO public.star VALUES ('Sun', 2, 2, 2.00, 'The Sun is near the inner rim of the Orion Arm');
INSERT INTO public.star VALUES ('Merak', 3, 3, 3.00, 'White star 79 light-years distant of magnitude 2.34');
INSERT INTO public.star VALUES ('Spica', 4, 4, 4.00, 'Spica is the brightest object in the constellation of Virgo');
INSERT INTO public.star VALUES ('Alpha Pavonis', 5, 5, 5.00, 'The historical name Peacock was assigned');
INSERT INTO public.star VALUES ('Alpha Tucanae', 6, 6, 6.00, 'This constellation contains the Small Magellanic Cloud, a satellite of the Milky Way Galaxy');


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

