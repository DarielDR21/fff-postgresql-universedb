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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_type_code integer
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
    planet_id integer,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    diameter_km integer
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
    star_id integer,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    number_of_moons integer
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    star_id integer,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    number_of_planets integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    surface_temperature_kelvin integer
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, a barred spiral galaxy', true, 13600, 0, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major spiral galaxy.', true, 10010, 2537000, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy in our Local Group.', true, 12500, 2900000, 2);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Grand-design spiral galaxy', true, 400, 23000000, 2);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 'Unbarred lenticular galaxy', true, 13250, 29350000, 5);
INSERT INTO public.galaxy VALUES (8, 'Cartwheel Galaxy', 'Ring galaxy, result of a galactic collision', true, 200, 400000000, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 'Earth''s only natural satellite.', false, 4530, 384400, 3474);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 'Larger of Mars'' two moons.', false, 4603, 9377, 22);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 'Smaller of Mars'' two moons.', false, 4603, 23460, 12);
INSERT INTO public.moon VALUES (16, 3, 'Io', 'Most volcanically active world in the solar system.', false, 4503, 628730000, 3643);
INSERT INTO public.moon VALUES (17, 3, 'Europa', 'Icy moon with a possible subsurface ocean, potential for life.', false, 4503, 628730000, 3122);
INSERT INTO public.moon VALUES (18, 3, 'Ganymede', 'Largest moon in the solar system, even bigger than Mercury.', false, 4503, 628730000, 5268);
INSERT INTO public.moon VALUES (19, 3, 'Callisto', 'Heavily cratered and oldest surface in the solar system.', false, 4503, 628730000, 4821);
INSERT INTO public.moon VALUES (20, 6, 'Titan', 'Dense atmosphere and methane lakes, a unique world.', false, 4503, 1200000000, 5149);
INSERT INTO public.moon VALUES (21, 6, 'Enceladus', 'Icy moon with active geysers spewing water into space.', false, 4503, 1200000000, 504);
INSERT INTO public.moon VALUES (22, 7, 'Titania', 'Largest of Uranus'' moons, dark and icy surface.', false, 4503, 2570000000, 1578);
INSERT INTO public.moon VALUES (23, 7, 'Oberon', 'Furthest major moon from Uranus, heavily cratered.', false, 4503, 2570000000, 1523);
INSERT INTO public.moon VALUES (24, 8, 'Triton', 'Neptune''s largest moon, orbits in the opposite direction.', false, 4503, 4350000000, 2706);
INSERT INTO public.moon VALUES (25, 4, 'Charon', 'Large moon of Pluto, forming a binary system.', false, 4503, 5750000000, 1212);
INSERT INTO public.moon VALUES (26, 9, 'Candidate 1', 'Unconfirmed exomoon candidate around Proxima b.', false, NULL, 4.24, NULL);
INSERT INTO public.moon VALUES (27, 11, 'Kepler-1625b I', 'Possible large exomoon in another star system.', false, NULL, 1400, NULL);
INSERT INTO public.moon VALUES (28, 6, 'Rhea', 'Second-largest moon of Saturn, icy and heavily cratered.', false, 4503, 1200000000, 1527);
INSERT INTO public.moon VALUES (29, 6, 'Iapetus', 'Two-toned moon of Saturn, one side bright, one dark.', false, 4503, 1200000000, 1469);
INSERT INTO public.moon VALUES (30, 6, 'Dione', 'Bright, icy moon of Saturn with wispy terrain.', false, 4503, 1200000000, 1123);
INSERT INTO public.moon VALUES (31, 6, 'Tethys', 'Large crater and canyon, sixth-largest moon of Saturn.', false, 4503, 1200000000, 1062);
INSERT INTO public.moon VALUES (32, 5, 'Mimas', 'Smallest astronomical body rounded by gravity.', false, 4503, 1200000000, 396);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', 'Third planet from the Sun, harbors life.', true, 4543, 0, 1);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 'Fourth planet from the Sun.', false, 4603, 78340000, 2);
INSERT INTO public.planet VALUES (3, 1, 'Jupiter', 'Largest planet in our solar system.', false, 4603, 628730000, 95);
INSERT INTO public.planet VALUES (4, 1, 'Mercury', 'Smallest planet in our solar system.', false, 4503, 77000000, 0);
INSERT INTO public.planet VALUES (5, 1, 'Venus', 'Hottest planet in our solar system.', false, 4503, 41400000, 0);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Ringed gas giant.', false, 4503, 1200000000, 83);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 'Ice giant tilted on its side.', false, 4503, 2570000000, 27);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 'Blue ice giant.', false, 4503, 4350000000, 14);
INSERT INTO public.planet VALUES (9, 3, 'Proxima Centauri b', 'Closest exoplanet to Earth.', false, 4850, 4.24, NULL);
INSERT INTO public.planet VALUES (10, 3, 'Proxima Centauri c', 'Super-Earth or mini-Neptune exoplanet.', false, 4850, 4.24, NULL);
INSERT INTO public.planet VALUES (11, 6, 'Kepler-452b', 'Earth-like exoplanet in the habitable zone.', false, 6000, 1400, NULL);
INSERT INTO public.planet VALUES (12, 6, 'TRAPPIST-1e', 'Potentially habitable exoplanet.', false, 6500, 39.5, NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 1, 'Solar System', 'Our solar system.', true, 4603, 0, 8);
INSERT INTO public.solar_system VALUES (2, 2, 'Sirius System', 'Binary star system with Sirius A and B.', false, 250, 8.6, 0);
INSERT INTO public.solar_system VALUES (3, 3, 'Proxima Centauri System', 'Closest star system to the Sun.', false, 4850, 4.24, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'G-type main-sequence star.', false, 4603, 0, 5778);
INSERT INTO public.star VALUES (2, 2, 'Sirius', 'Brightest star in the night sky.', false, 250, 8.6, 9940);
INSERT INTO public.star VALUES (3, 1, 'Betelgeuse', 'Red supergiant star in Orion.', false, 8, 642.5, 3600);
INSERT INTO public.star VALUES (5, 1, 'Procyon', 'F-type main-sequence star in Canis Minor', false, 1870, 11.41, 6530);
INSERT INTO public.star VALUES (6, 1, 'Arcturus', 'K-type orange giant star in Boötes', false, 7100, 36.7, 4290);
INSERT INTO public.star VALUES (4, 1, 'Alpha Centauri A', 'G-tye main-sequence star.', false, 4850, 4.37, 5790);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_description UNIQUE (description);


--
-- Name: moon unique_moon_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_description UNIQUE (description);


--
-- Name: planet unique_planet_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_description UNIQUE (description);


--
-- Name: solar_system unique_solar_system_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT unique_solar_system_description UNIQUE (description);


--
-- Name: star unique_star_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_description UNIQUE (description);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: solar_system solar_system_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

