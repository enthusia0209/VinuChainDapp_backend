toc.dat                                                                                             0000600 0004000 0002000 00000046527 14505006177 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "                    {           VITEDB    10.23    10.23 D    C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         F           1262    25054    VITEDB    DATABASE     �   CREATE DATABASE "VITEDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Pakistan.1252' LC_CTYPE = 'English_Pakistan.1252';
    DROP DATABASE "VITEDB";
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         G           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         H           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    25055    Authors    TABLE     @  CREATE TABLE public."Authors" (
    id integer NOT NULL,
    q1 character varying(255),
    q2 character varying(255),
    q3 character varying(255),
    status character varying(255),
    "UserId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Authors";
       public         postgres    false    3         �            1259    25061    Authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Authors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Authors_id_seq";
       public       postgres    false    3    196         I           0    0    Authors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Authors_id_seq" OWNED BY public."Authors".id;
            public       postgres    false    197         �            1259    25063    Balances    TABLE     �   CREATE TABLE public."Balances" (
    id integer NOT NULL,
    balance character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Balances";
       public         postgres    false    3         �            1259    25066    Balances_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Balances_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Balances_id_seq";
       public       postgres    false    3    198         J           0    0    Balances_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Balances_id_seq" OWNED BY public."Balances".id;
            public       postgres    false    199         �            1259    25068    Comments    TABLE     �   CREATE TABLE public."Comments" (
    id integer NOT NULL,
    description text,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Comments";
       public         postgres    false    3         �            1259    25074    Comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Comments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Comments_id_seq";
       public       postgres    false    3    200         K           0    0    Comments_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Comments_id_seq" OWNED BY public."Comments".id;
            public       postgres    false    201         �            1259    25076    Impressions    TABLE     �   CREATE TABLE public."Impressions" (
    id integer NOT NULL,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Impressions";
       public         postgres    false    3         �            1259    25079    Impressions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Impressions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Impressions_id_seq";
       public       postgres    false    202    3         L           0    0    Impressions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Impressions_id_seq" OWNED BY public."Impressions".id;
            public       postgres    false    203         �            1259    25081    Likes    TABLE     �   CREATE TABLE public."Likes" (
    id integer NOT NULL,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Likes";
       public         postgres    false    3         �            1259    25084    Likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Likes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Likes_id_seq";
       public       postgres    false    204    3         M           0    0    Likes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Likes_id_seq" OWNED BY public."Likes".id;
            public       postgres    false    205         �            1259    25086    Posts    TABLE     5  CREATE TABLE public."Posts" (
    id integer NOT NULL,
    title character varying(255),
    tags text[],
    description json,
    "UserId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(255),
    "time" integer
);
    DROP TABLE public."Posts";
       public         postgres    false    3         �            1259    25092    Posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Posts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Posts_id_seq";
       public       postgres    false    3    206         N           0    0    Posts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Posts_id_seq" OWNED BY public."Posts".id;
            public       postgres    false    207         �            1259    25094    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         postgres    false    3         �            1259    25097    Users    TABLE     .  CREATE TABLE public."Users" (
    id integer NOT NULL,
    "firstName" character varying(255),
    "lastName" character varying(255),
    email character varying(255),
    password character varying(255),
    "displayName" character varying(255),
    about character varying(255),
    "walletAddress" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    role character varying(255),
    avatar text,
    "fToken" character varying(255),
    "expiresIn" timestamp with time zone
);
    DROP TABLE public."Users";
       public         postgres    false    3         �            1259    25103    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public       postgres    false    3    209         O           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
            public       postgres    false    210         �
           2604    25168 
   Authors id    DEFAULT     l   ALTER TABLE ONLY public."Authors" ALTER COLUMN id SET DEFAULT nextval('public."Authors_id_seq"'::regclass);
 ;   ALTER TABLE public."Authors" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196         �
           2604    25169    Balances id    DEFAULT     n   ALTER TABLE ONLY public."Balances" ALTER COLUMN id SET DEFAULT nextval('public."Balances_id_seq"'::regclass);
 <   ALTER TABLE public."Balances" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198         �
           2604    25170    Comments id    DEFAULT     n   ALTER TABLE ONLY public."Comments" ALTER COLUMN id SET DEFAULT nextval('public."Comments_id_seq"'::regclass);
 <   ALTER TABLE public."Comments" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200         �
           2604    25171    Impressions id    DEFAULT     t   ALTER TABLE ONLY public."Impressions" ALTER COLUMN id SET DEFAULT nextval('public."Impressions_id_seq"'::regclass);
 ?   ALTER TABLE public."Impressions" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202         �
           2604    25172    Likes id    DEFAULT     h   ALTER TABLE ONLY public."Likes" ALTER COLUMN id SET DEFAULT nextval('public."Likes_id_seq"'::regclass);
 9   ALTER TABLE public."Likes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204         �
           2604    25173    Posts id    DEFAULT     h   ALTER TABLE ONLY public."Posts" ALTER COLUMN id SET DEFAULT nextval('public."Posts_id_seq"'::regclass);
 9   ALTER TABLE public."Posts" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206         �
           2604    25174    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209         2          0    25055    Authors 
   TABLE DATA               _   COPY public."Authors" (id, q1, q2, q3, status, "UserId", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    196       2866.dat 4          0    25063    Balances 
   TABLE DATA               K   COPY public."Balances" (id, balance, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    198       2868.dat 6          0    25068    Comments 
   TABLE DATA               c   COPY public."Comments" (id, description, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    200       2870.dat 8          0    25076    Impressions 
   TABLE DATA               Y   COPY public."Impressions" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    202       2872.dat :          0    25081    Likes 
   TABLE DATA               S   COPY public."Likes" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    204       2874.dat <          0    25086    Posts 
   TABLE DATA               s   COPY public."Posts" (id, title, tags, description, "UserId", "createdAt", "updatedAt", status, "time") FROM stdin;
    public       postgres    false    206       2876.dat >          0    25094    SequelizeMeta 
   TABLE DATA               /   COPY public."SequelizeMeta" (name) FROM stdin;
    public       postgres    false    208       2878.dat ?          0    25097    Users 
   TABLE DATA               �   COPY public."Users" (id, "firstName", "lastName", email, password, "displayName", about, "walletAddress", "createdAt", "updatedAt", role, avatar, "fToken", "expiresIn") FROM stdin;
    public       postgres    false    209       2879.dat P           0    0    Authors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Authors_id_seq"', 1, false);
            public       postgres    false    197         Q           0    0    Balances_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Balances_id_seq"', 1, false);
            public       postgres    false    199         R           0    0    Comments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Comments_id_seq"', 1, false);
            public       postgres    false    201         S           0    0    Impressions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Impressions_id_seq"', 1, false);
            public       postgres    false    203         T           0    0    Likes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Likes_id_seq"', 1, false);
            public       postgres    false    205         U           0    0    Posts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Posts_id_seq"', 1, false);
            public       postgres    false    207         V           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);
            public       postgres    false    210         �
           2606    25113    Authors Authors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Authors"
    ADD CONSTRAINT "Authors_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Authors" DROP CONSTRAINT "Authors_pkey";
       public         postgres    false    196         �
           2606    25115    Balances Balances_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Balances"
    ADD CONSTRAINT "Balances_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Balances" DROP CONSTRAINT "Balances_pkey";
       public         postgres    false    198         �
           2606    25117    Comments Comments_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_pkey";
       public         postgres    false    200         �
           2606    25119    Impressions Impressions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_pkey";
       public         postgres    false    202         �
           2606    25121    Likes Likes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_pkey";
       public         postgres    false    204         �
           2606    25123    Posts Posts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_pkey";
       public         postgres    false    206         �
           2606    25125     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public         postgres    false    208         �
           2606    25127    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public         postgres    false    209         �
           2606    25128    Authors Authors_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Authors"
    ADD CONSTRAINT "Authors_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."Authors" DROP CONSTRAINT "Authors_UserId_fkey";
       public       postgres    false    196    209    2736         �
           2606    25133    Comments Comments_PostId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_PostId_fkey";
       public       postgres    false    2732    206    200         �
           2606    25138    Comments Comments_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_UserId_fkey";
       public       postgres    false    2736    200    209         �
           2606    25143 #   Impressions Impressions_PostId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_PostId_fkey";
       public       postgres    false    202    206    2732         �
           2606    25148 #   Impressions Impressions_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_UserId_fkey";
       public       postgres    false    202    209    2736         �
           2606    25153    Likes Likes_PostId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_PostId_fkey";
       public       postgres    false    206    204    2732         �
           2606    25158    Likes Likes_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_UserId_fkey";
       public       postgres    false    209    204    2736         �
           2606    25163    Posts Posts_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_UserId_fkey";
       public       postgres    false    2736    209    206                                                                                                                                                                                 2866.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2868.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2870.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2872.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2874.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2876.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2878.dat                                                                                            0000600 0004000 0002000 00000000647 14505006177 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20230201110946-create-user.js
20230201110947-create-post.js
20230201110948-create-comment.js
20230201110949-create-like.js
20230201110950-create-author.js
20230201110951-add-user-column .js
20230201110952-add-Post-column-status .js
20230201110953-add-Post-column-time.js
20230201110954-create-impression.js
20230201110955-create-balance.js
20230201110956-remove-avatar.js
20230201110957-add-column-fToken-expiresIn.js
\.


                                                                                         2879.dat                                                                                            0000600 0004000 0002000 00000000005 14505006177 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000042621 14505006177 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

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

ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_UserId_fkey";
ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_UserId_fkey";
ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_PostId_fkey";
ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_UserId_fkey";
ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_PostId_fkey";
ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_UserId_fkey";
ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_PostId_fkey";
ALTER TABLE ONLY public."Authors" DROP CONSTRAINT "Authors_UserId_fkey";
ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
ALTER TABLE ONLY public."Posts" DROP CONSTRAINT "Posts_pkey";
ALTER TABLE ONLY public."Likes" DROP CONSTRAINT "Likes_pkey";
ALTER TABLE ONLY public."Impressions" DROP CONSTRAINT "Impressions_pkey";
ALTER TABLE ONLY public."Comments" DROP CONSTRAINT "Comments_pkey";
ALTER TABLE ONLY public."Balances" DROP CONSTRAINT "Balances_pkey";
ALTER TABLE ONLY public."Authors" DROP CONSTRAINT "Authors_pkey";
ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Posts" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Likes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Impressions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Comments" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Balances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."Authors" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public."Users_id_seq";
DROP TABLE public."Users";
DROP TABLE public."SequelizeMeta";
DROP SEQUENCE public."Posts_id_seq";
DROP TABLE public."Posts";
DROP SEQUENCE public."Likes_id_seq";
DROP TABLE public."Likes";
DROP SEQUENCE public."Impressions_id_seq";
DROP TABLE public."Impressions";
DROP SEQUENCE public."Comments_id_seq";
DROP TABLE public."Comments";
DROP SEQUENCE public."Balances_id_seq";
DROP TABLE public."Balances";
DROP SEQUENCE public."Authors_id_seq";
DROP TABLE public."Authors";
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Authors" (
    id integer NOT NULL,
    q1 character varying(255),
    q2 character varying(255),
    q3 character varying(255),
    status character varying(255),
    "UserId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Authors" OWNER TO postgres;

--
-- Name: Authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Authors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Authors_id_seq" OWNER TO postgres;

--
-- Name: Authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Authors_id_seq" OWNED BY public."Authors".id;


--
-- Name: Balances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Balances" (
    id integer NOT NULL,
    balance character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Balances" OWNER TO postgres;

--
-- Name: Balances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Balances_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Balances_id_seq" OWNER TO postgres;

--
-- Name: Balances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Balances_id_seq" OWNED BY public."Balances".id;


--
-- Name: Comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Comments" (
    id integer NOT NULL,
    description text,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Comments" OWNER TO postgres;

--
-- Name: Comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Comments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Comments_id_seq" OWNER TO postgres;

--
-- Name: Comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Comments_id_seq" OWNED BY public."Comments".id;


--
-- Name: Impressions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Impressions" (
    id integer NOT NULL,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Impressions" OWNER TO postgres;

--
-- Name: Impressions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Impressions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Impressions_id_seq" OWNER TO postgres;

--
-- Name: Impressions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Impressions_id_seq" OWNED BY public."Impressions".id;


--
-- Name: Likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Likes" (
    id integer NOT NULL,
    "UserId" integer NOT NULL,
    "PostId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Likes" OWNER TO postgres;

--
-- Name: Likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Likes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Likes_id_seq" OWNER TO postgres;

--
-- Name: Likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Likes_id_seq" OWNED BY public."Likes".id;


--
-- Name: Posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Posts" (
    id integer NOT NULL,
    title character varying(255),
    tags text[],
    description json,
    "UserId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(255),
    "time" integer
);


ALTER TABLE public."Posts" OWNER TO postgres;

--
-- Name: Posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Posts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Posts_id_seq" OWNER TO postgres;

--
-- Name: Posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Posts_id_seq" OWNED BY public."Posts".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    "firstName" character varying(255),
    "lastName" character varying(255),
    email character varying(255),
    password character varying(255),
    "displayName" character varying(255),
    about character varying(255),
    "walletAddress" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    role character varying(255),
    avatar text,
    "fToken" character varying(255),
    "expiresIn" timestamp with time zone
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: Authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Authors" ALTER COLUMN id SET DEFAULT nextval('public."Authors_id_seq"'::regclass);


--
-- Name: Balances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Balances" ALTER COLUMN id SET DEFAULT nextval('public."Balances_id_seq"'::regclass);


--
-- Name: Comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments" ALTER COLUMN id SET DEFAULT nextval('public."Comments_id_seq"'::regclass);


--
-- Name: Impressions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impressions" ALTER COLUMN id SET DEFAULT nextval('public."Impressions_id_seq"'::regclass);


--
-- Name: Likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes" ALTER COLUMN id SET DEFAULT nextval('public."Likes_id_seq"'::regclass);


--
-- Name: Posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Posts" ALTER COLUMN id SET DEFAULT nextval('public."Posts_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Data for Name: Authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Authors" (id, q1, q2, q3, status, "UserId", "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Authors" (id, q1, q2, q3, status, "UserId", "createdAt", "updatedAt") FROM '$$PATH$$/2866.dat';

--
-- Data for Name: Balances; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Balances" (id, balance, "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Balances" (id, balance, "createdAt", "updatedAt") FROM '$$PATH$$/2868.dat';

--
-- Data for Name: Comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Comments" (id, description, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Comments" (id, description, "UserId", "PostId", "createdAt", "updatedAt") FROM '$$PATH$$/2870.dat';

--
-- Data for Name: Impressions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Impressions" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Impressions" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM '$$PATH$$/2872.dat';

--
-- Data for Name: Likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Likes" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Likes" (id, "UserId", "PostId", "createdAt", "updatedAt") FROM '$$PATH$$/2874.dat';

--
-- Data for Name: Posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Posts" (id, title, tags, description, "UserId", "createdAt", "updatedAt", status, "time") FROM stdin;
\.
COPY public."Posts" (id, title, tags, description, "UserId", "createdAt", "updatedAt", status, "time") FROM '$$PATH$$/2876.dat';

--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
\.
COPY public."SequelizeMeta" (name) FROM '$$PATH$$/2878.dat';

--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, "firstName", "lastName", email, password, "displayName", about, "walletAddress", "createdAt", "updatedAt", role, avatar, "fToken", "expiresIn") FROM stdin;
\.
COPY public."Users" (id, "firstName", "lastName", email, password, "displayName", about, "walletAddress", "createdAt", "updatedAt", role, avatar, "fToken", "expiresIn") FROM '$$PATH$$/2879.dat';

--
-- Name: Authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Authors_id_seq"', 1, false);


--
-- Name: Balances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Balances_id_seq"', 1, false);


--
-- Name: Comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Comments_id_seq"', 1, false);


--
-- Name: Impressions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Impressions_id_seq"', 1, false);


--
-- Name: Likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Likes_id_seq"', 1, false);


--
-- Name: Posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Posts_id_seq"', 1, false);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);


--
-- Name: Authors Authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Authors"
    ADD CONSTRAINT "Authors_pkey" PRIMARY KEY (id);


--
-- Name: Balances Balances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Balances"
    ADD CONSTRAINT "Balances_pkey" PRIMARY KEY (id);


--
-- Name: Comments Comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);


--
-- Name: Impressions Impressions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_pkey" PRIMARY KEY (id);


--
-- Name: Likes Likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_pkey" PRIMARY KEY (id);


--
-- Name: Posts Posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: Authors Authors_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Authors"
    ADD CONSTRAINT "Authors_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Comments Comments_PostId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Comments Comments_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Impressions Impressions_PostId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Impressions Impressions_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Impressions"
    ADD CONSTRAINT "Impressions_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Likes Likes_PostId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_PostId_fkey" FOREIGN KEY ("PostId") REFERENCES public."Posts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Likes Likes_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Posts Posts_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Posts"
    ADD CONSTRAINT "Posts_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               