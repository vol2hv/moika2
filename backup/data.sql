--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

-- Started on 2020-03-01 13:39:38

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16675)
-- Name: box; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.box (
    id bigint NOT NULL,
    box_status character varying(255),
    box_type character varying(255),
    description character varying(255),
    name character varying(80) NOT NULL
);


ALTER TABLE public.box OWNER TO root;

--
-- TOC entry 197 (class 1259 OID 16681)
-- Name: car_wash; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.car_wash (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(80) NOT NULL
);


ALTER TABLE public.car_wash OWNER TO root;

--
-- TOC entry 198 (class 1259 OID 16684)
-- Name: car_wash_boxes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.car_wash_boxes (
    car_wash_id bigint NOT NULL,
    boxes_id bigint NOT NULL
);


ALTER TABLE public.car_wash_boxes OWNER TO root;

--
-- TOC entry 199 (class 1259 OID 16687)
-- Name: child1; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.child1 (
    id bigint NOT NULL,
    field1 integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.child1 OWNER TO root;

--
-- TOC entry 200 (class 1259 OID 16690)
-- Name: child2; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.child2 (
    id bigint NOT NULL,
    field2 double precision NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.child2 OWNER TO root;

--
-- TOC entry 201 (class 1259 OID 16693)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO root;

--
-- TOC entry 202 (class 1259 OID 16695)
-- Name: parententity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.parententity (
    id bigint NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.parententity OWNER TO root;

--
-- TOC entry 203 (class 1259 OID 16698)
-- Name: parententity_children1; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.parententity_children1 (
    parententity_id bigint NOT NULL,
    children1_id bigint NOT NULL
);


ALTER TABLE public.parententity_children1 OWNER TO root;

--
-- TOC entry 204 (class 1259 OID 16701)
-- Name: sample; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sample (
    id bigint NOT NULL,
    big_decimal numeric(15,2),
    box_status character varying(255),
    description character varying(255),
    is_boolean boolean,
    local_date date,
    local_time time without time zone,
    name character varying(80) NOT NULL,
    password character varying(255)
);


ALTER TABLE public.sample OWNER TO root;

--
-- TOC entry 205 (class 1259 OID 16707)
-- Name: sample_boxes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sample_boxes (
    sample_id bigint NOT NULL,
    boxes_id bigint NOT NULL
);


ALTER TABLE public.sample_boxes OWNER TO root;

--
-- TOC entry 206 (class 1259 OID 16710)
-- Name: spring_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.spring_session (
    primary_id character(36) NOT NULL,
    session_id character(36) NOT NULL,
    creation_time bigint NOT NULL,
    last_access_time bigint NOT NULL,
    max_inactive_interval integer NOT NULL,
    expiry_time bigint NOT NULL,
    principal_name character varying(100)
);


ALTER TABLE public.spring_session OWNER TO root;

--
-- TOC entry 207 (class 1259 OID 16713)
-- Name: spring_session_attributes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.spring_session_attributes (
    session_primary_id character(36) NOT NULL,
    attribute_name character varying(200) NOT NULL,
    attribute_bytes bytea NOT NULL
);


ALTER TABLE public.spring_session_attributes OWNER TO root;

--
-- TOC entry 208 (class 1259 OID 16719)
-- Name: user_role; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_role (
    user_id bigint NOT NULL,
    roles character varying(255)
);


ALTER TABLE public.user_role OWNER TO root;

--
-- TOC entry 209 (class 1259 OID 16722)
-- Name: usr; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.usr (
    id bigint NOT NULL,
    activation_code character varying(255),
    active boolean NOT NULL,
    email character varying(30) NOT NULL,
    password character varying(255),
    username character varying(30) NOT NULL
);


ALTER TABLE public.usr OWNER TO root;

--
-- TOC entry 2894 (class 0 OID 16675)
-- Dependencies: 196
-- Data for Name: box; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.box (id, box_status, box_type, description, name) FROM stdin;
96	CLOSED	SMALL		б100
98	\N	\N		sampl б2-2
97	\N	\N	продакшен	б2-1
\.


--
-- TOC entry 2895 (class 0 OID 16681)
-- Dependencies: 197
-- Data for Name: car_wash; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.car_wash (id, description, name) FROM stdin;
92	вторая2222	Po-moika 2
88	Po-mo;ka 1111 полный deploy	Po-mo;ka 1
\.


--
-- TOC entry 2896 (class 0 OID 16684)
-- Dependencies: 198
-- Data for Name: car_wash_boxes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.car_wash_boxes (car_wash_id, boxes_id) FROM stdin;
92	97
\.


--
-- TOC entry 2897 (class 0 OID 16687)
-- Dependencies: 199
-- Data for Name: child1; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.child1 (id, field1, name) FROM stdin;
1	1234	имя1
44	44	Елена
48	0	Мойка1
49	111	Мойка2
46	33444	имя3
55	11	wwwww
\.


--
-- TOC entry 2898 (class 0 OID 16690)
-- Dependencies: 200
-- Data for Name: child2; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.child2 (id, field2, name) FROM stdin;
\.


--
-- TOC entry 2900 (class 0 OID 16695)
-- Dependencies: 202
-- Data for Name: parententity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.parententity (id, name) FROM stdin;
17	один
23	два
35	Мойка
38	гармония
\.


--
-- TOC entry 2901 (class 0 OID 16698)
-- Dependencies: 203
-- Data for Name: parententity_children1; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.parententity_children1 (parententity_id, children1_id) FROM stdin;
35	48
35	49
38	1
38	44
38	46
38	55
\.


--
-- TOC entry 2902 (class 0 OID 16701)
-- Dependencies: 204
-- Data for Name: sample; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sample (id, big_decimal, box_status, description, is_boolean, local_date, local_time, name, password) FROM stdin;
56	123.00	CLOSED	первая мойка	t	2019-09-27	19:18:00	Мойка1	12345
74	\N	REPAIR	user	f	\N	\N	wwwww	111
\.


--
-- TOC entry 2903 (class 0 OID 16707)
-- Dependencies: 205
-- Data for Name: sample_boxes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sample_boxes (sample_id, boxes_id) FROM stdin;
74	96
74	98
\.


--
-- TOC entry 2904 (class 0 OID 16710)
-- Dependencies: 206
-- Data for Name: spring_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM stdin;
7439f867-7a35-4edf-855b-37a8600ef7a0	82f7c911-d425-4093-9cbd-cc2ab9b273ed	1581875005139	1581875014876	1800	1581876814876	\N
\.


--
-- TOC entry 2905 (class 0 OID 16713)
-- Dependencies: 207
-- Data for Name: spring_session_attributes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM stdin;
7439f867-7a35-4edf-855b-37a8600ef7a0	org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN	\\xaced0005737200366f72672e737072696e676672616d65776f726b2e73656375726974792e7765622e637372662e44656661756c7443737266546f6b656e5aefb7c82fa2fbd50200034c000a6865616465724e616d657400124c6a6176612f6c616e672f537472696e673b4c000d706172616d657465724e616d6571007e00014c0005746f6b656e71007e0001787074000c582d435352462d544f4b454e7400055f6373726674002465396465363961652d663430632d343838622d613833662d623864366462386231656532
\.


--
-- TOC entry 2906 (class 0 OID 16719)
-- Dependencies: 208
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_role (user_id, roles) FROM stdin;
68	ROLE_ADMIN
68	ROLE_TOP_MANAGER
68	ROLE_MANAGER
\.


--
-- TOC entry 2907 (class 0 OID 16722)
-- Dependencies: 209
-- Data for Name: usr; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.usr (id, activation_code, active, email, password, username) FROM stdin;
68	\N	t	admin@ya.ru	$2a$08$h5rwIpoYUu64Vaq9x6W4VOTXnzPJKJCl6GdhVF.BnAh8Iy.mYjvxe	user
\.


--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 201
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.hibernate_sequence', 113, true);


--
-- TOC entry 2723 (class 2606 OID 16729)
-- Name: box box_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.box
    ADD CONSTRAINT box_pkey PRIMARY KEY (id);


--
-- TOC entry 2727 (class 2606 OID 16731)
-- Name: car_wash car_wash_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.car_wash
    ADD CONSTRAINT car_wash_pkey PRIMARY KEY (id);


--
-- TOC entry 2733 (class 2606 OID 16733)
-- Name: child1 child1_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.child1
    ADD CONSTRAINT child1_pkey PRIMARY KEY (id);


--
-- TOC entry 2737 (class 2606 OID 16735)
-- Name: child2 child2_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.child2
    ADD CONSTRAINT child2_pkey PRIMARY KEY (id);


--
-- TOC entry 2741 (class 2606 OID 16737)
-- Name: parententity parententity_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.parententity
    ADD CONSTRAINT parententity_pkey PRIMARY KEY (id);


--
-- TOC entry 2747 (class 2606 OID 16739)
-- Name: sample sample_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_pkey PRIMARY KEY (id);


--
-- TOC entry 2758 (class 2606 OID 16741)
-- Name: spring_session_attributes spring_session_attributes_pk; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name);


--
-- TOC entry 2756 (class 2606 OID 16743)
-- Name: spring_session spring_session_pk; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.spring_session
    ADD CONSTRAINT spring_session_pk PRIMARY KEY (primary_id);


--
-- TOC entry 2745 (class 2606 OID 16745)
-- Name: parententity_children1 uk_13wc2lhic1952gt8vjdorcxe6; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.parententity_children1
    ADD CONSTRAINT uk_13wc2lhic1952gt8vjdorcxe6 UNIQUE (children1_id);


--
-- TOC entry 2751 (class 2606 OID 16747)
-- Name: sample_boxes uk_202ijgm49v4r3hddgnjuvbmag; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sample_boxes
    ADD CONSTRAINT uk_202ijgm49v4r3hddgnjuvbmag UNIQUE (boxes_id);


--
-- TOC entry 2725 (class 2606 OID 16749)
-- Name: box uk_4n0c161uu3qvk9rtmw4n29v47; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.box
    ADD CONSTRAINT uk_4n0c161uu3qvk9rtmw4n29v47 UNIQUE (name);


--
-- TOC entry 2729 (class 2606 OID 16751)
-- Name: car_wash uk_7ngmww7ovpynn7s3om2ayfswx; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.car_wash
    ADD CONSTRAINT uk_7ngmww7ovpynn7s3om2ayfswx UNIQUE (name);


--
-- TOC entry 2739 (class 2606 OID 16753)
-- Name: child2 uk_7obw8wdhsspq7u9otpmtjfliq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.child2
    ADD CONSTRAINT uk_7obw8wdhsspq7u9otpmtjfliq UNIQUE (name);


--
-- TOC entry 2749 (class 2606 OID 16755)
-- Name: sample uk_a5hea3xlyin6etsaelmekjrbe; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT uk_a5hea3xlyin6etsaelmekjrbe UNIQUE (name);


--
-- TOC entry 2743 (class 2606 OID 16757)
-- Name: parententity uk_at7pdrmd6xjc2nwhlb8uti00p; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.parententity
    ADD CONSTRAINT uk_at7pdrmd6xjc2nwhlb8uti00p UNIQUE (name);


--
-- TOC entry 2731 (class 2606 OID 16759)
-- Name: car_wash_boxes uk_d6u89yu5yi02vq2jugqof64vs; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.car_wash_boxes
    ADD CONSTRAINT uk_d6u89yu5yi02vq2jugqof64vs UNIQUE (boxes_id);


--
-- TOC entry 2760 (class 2606 OID 16761)
-- Name: usr uk_dfui7gxngrgwn9ewee3ogtgym; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT uk_dfui7gxngrgwn9ewee3ogtgym UNIQUE (username);


--
-- TOC entry 2762 (class 2606 OID 16763)
-- Name: usr uk_g9l96r670qkidthshajdtxrqf; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT uk_g9l96r670qkidthshajdtxrqf UNIQUE (email);


--
-- TOC entry 2735 (class 2606 OID 16765)
-- Name: child1 uk_orf02g55fsprk78vi315o8k12; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.child1
    ADD CONSTRAINT uk_orf02g55fsprk78vi315o8k12 UNIQUE (name);


--
-- TOC entry 2764 (class 2606 OID 16767)
-- Name: usr usr_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);


--
-- TOC entry 2752 (class 1259 OID 16768)
-- Name: spring_session_ix1; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX spring_session_ix1 ON public.spring_session USING btree (session_id);


--
-- TOC entry 2753 (class 1259 OID 16769)
-- Name: spring_session_ix2; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX spring_session_ix2 ON public.spring_session USING btree (expiry_time);


--
-- TOC entry 2754 (class 1259 OID 16770)
-- Name: spring_session_ix3; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX spring_session_ix3 ON public.spring_session USING btree (principal_name);


--
-- TOC entry 2769 (class 2606 OID 16771)
-- Name: sample_boxes fk1e849b7dmok59yreauou1qlas; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sample_boxes
    ADD CONSTRAINT fk1e849b7dmok59yreauou1qlas FOREIGN KEY (sample_id) REFERENCES public.sample(id);


--
-- TOC entry 2765 (class 2606 OID 16776)
-- Name: car_wash_boxes fk4tgm73x3im6fosu4sko421v7q; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.car_wash_boxes
    ADD CONSTRAINT fk4tgm73x3im6fosu4sko421v7q FOREIGN KEY (boxes_id) REFERENCES public.box(id);


--
-- TOC entry 2766 (class 2606 OID 16781)
-- Name: car_wash_boxes fk6fykhnu77hwdwy2thdpyoqvht; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.car_wash_boxes
    ADD CONSTRAINT fk6fykhnu77hwdwy2thdpyoqvht FOREIGN KEY (car_wash_id) REFERENCES public.car_wash(id);


--
-- TOC entry 2767 (class 2606 OID 16786)
-- Name: parententity_children1 fk97ug7a1hxjpt1qk5gpuuyn7mp; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.parententity_children1
    ADD CONSTRAINT fk97ug7a1hxjpt1qk5gpuuyn7mp FOREIGN KEY (parententity_id) REFERENCES public.parententity(id);


--
-- TOC entry 2768 (class 2606 OID 16791)
-- Name: parententity_children1 fkam7vt7obr4qd0cf1errwlqglm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.parententity_children1
    ADD CONSTRAINT fkam7vt7obr4qd0cf1errwlqglm FOREIGN KEY (children1_id) REFERENCES public.child1(id);


--
-- TOC entry 2772 (class 2606 OID 16796)
-- Name: user_role fkfpm8swft53ulq2hl11yplpr5; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkfpm8swft53ulq2hl11yplpr5 FOREIGN KEY (user_id) REFERENCES public.usr(id);


--
-- TOC entry 2770 (class 2606 OID 16801)
-- Name: sample_boxes fkklx0qxq6cvv0oje805pusv4y6; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sample_boxes
    ADD CONSTRAINT fkklx0qxq6cvv0oje805pusv4y6 FOREIGN KEY (boxes_id) REFERENCES public.box(id);


--
-- TOC entry 2771 (class 2606 OID 16806)
-- Name: spring_session_attributes spring_session_attributes_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES public.spring_session(primary_id) ON DELETE CASCADE;


-- Completed on 2020-03-01 13:39:39

--
-- PostgreSQL database dump complete
--

