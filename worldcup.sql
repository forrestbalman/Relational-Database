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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (171, 2018, 'Final', 458, 459, 4, 2);
INSERT INTO public.games VALUES (172, 2018, 'Third Place', 460, 461, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Semi-Final', 459, 461, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Semi-Final', 458, 460, 1, 0);
INSERT INTO public.games VALUES (175, 2018, 'Quarter-Final', 459, 462, 3, 2);
INSERT INTO public.games VALUES (176, 2018, 'Quarter-Final', 461, 463, 2, 0);
INSERT INTO public.games VALUES (177, 2018, 'Quarter-Final', 460, 464, 2, 1);
INSERT INTO public.games VALUES (178, 2018, 'Quarter-Final', 458, 465, 2, 0);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 461, 466, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Eighth-Final', 463, 467, 1, 0);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 460, 468, 3, 2);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 464, 469, 2, 0);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 459, 470, 2, 1);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 462, 471, 2, 1);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 465, 472, 2, 1);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 458, 473, 4, 3);
INSERT INTO public.games VALUES (187, 2014, 'Final', 474, 473, 1, 0);
INSERT INTO public.games VALUES (188, 2014, 'Third Place', 475, 464, 3, 0);
INSERT INTO public.games VALUES (189, 2014, 'Semi-Final', 473, 475, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Semi-Final', 474, 464, 7, 1);
INSERT INTO public.games VALUES (191, 2014, 'Quarter-Final', 475, 476, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Quarter-Final', 473, 460, 1, 0);
INSERT INTO public.games VALUES (193, 2014, 'Quarter-Final', 464, 466, 2, 1);
INSERT INTO public.games VALUES (194, 2014, 'Quarter-Final', 474, 458, 1, 0);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 464, 477, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Eighth-Final', 466, 465, 2, 0);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 458, 478, 2, 0);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 474, 479, 2, 1);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 475, 469, 2, 1);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 476, 480, 2, 1);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 473, 467, 1, 0);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 460, 481, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (458, 'France');
INSERT INTO public.teams VALUES (459, 'Croatia');
INSERT INTO public.teams VALUES (460, 'Belgium');
INSERT INTO public.teams VALUES (461, 'England');
INSERT INTO public.teams VALUES (462, 'Russia');
INSERT INTO public.teams VALUES (463, 'Sweden');
INSERT INTO public.teams VALUES (464, 'Brazil');
INSERT INTO public.teams VALUES (465, 'Uruguay');
INSERT INTO public.teams VALUES (466, 'Colombia');
INSERT INTO public.teams VALUES (467, 'Switzerland');
INSERT INTO public.teams VALUES (468, 'Japan');
INSERT INTO public.teams VALUES (469, 'Mexico');
INSERT INTO public.teams VALUES (470, 'Denmark');
INSERT INTO public.teams VALUES (471, 'Spain');
INSERT INTO public.teams VALUES (472, 'Portugal');
INSERT INTO public.teams VALUES (473, 'Argentina');
INSERT INTO public.teams VALUES (474, 'Germany');
INSERT INTO public.teams VALUES (475, 'Netherlands');
INSERT INTO public.teams VALUES (476, 'Costa Rica');
INSERT INTO public.teams VALUES (477, 'Chile');
INSERT INTO public.teams VALUES (478, 'Nigeria');
INSERT INTO public.teams VALUES (479, 'Algeria');
INSERT INTO public.teams VALUES (480, 'Greece');
INSERT INTO public.teams VALUES (481, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 202, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 481, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

