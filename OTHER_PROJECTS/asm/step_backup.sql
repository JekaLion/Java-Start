PGDMP         *        
        x            step    12.2    12.2 4    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    24576    step    DATABASE     �   CREATE DATABASE step WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Kazakhstan.1251' LC_CTYPE = 'Russian_Kazakhstan.1251';
    DROP DATABASE step;
                postgres    false            �            1259    24603 	   classroom    TABLE     W   CREATE TABLE public.classroom (
    "Id" integer NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public.classroom;
       public         heap    postgres    false            �            1259    24601    classroom_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."classroom_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."classroom_Id_seq";
       public          postgres    false    203            I           0    0    classroom_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."classroom_Id_seq" OWNED BY public.classroom."Id";
          public          postgres    false    202            �            1259    24614    lesson    TABLE     �   CREATE TABLE public.lesson (
    "Id" integer NOT NULL,
    "Day_of_week" integer NOT NULL,
    "Classroom_id" integer NOT NULL,
    "Subject_id" integer NOT NULL
);
    DROP TABLE public.lesson;
       public         heap    postgres    false            �            1259    24612    lesson_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."lesson_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."lesson_Id_seq";
       public          postgres    false    205            J           0    0    lesson_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."lesson_Id_seq" OWNED BY public.lesson."Id";
          public          postgres    false    204            �            1259    24659    subject    TABLE     U   CREATE TABLE public.subject (
    "Id" integer NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public.subject;
       public         heap    postgres    false            �            1259    24657    subject_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."subject_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."subject_Id_seq";
       public          postgres    false    211            K           0    0    subject_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."subject_Id_seq" OWNED BY public.subject."Id";
          public          postgres    false    210            �            1259    24630    teacher    TABLE     z   CREATE TABLE public.teacher (
    "Id" integer NOT NULL,
    "Last_name" text NOT NULL,
    "First_name" text NOT NULL
);
    DROP TABLE public.teacher;
       public         heap    postgres    false            �            1259    24628    teacher_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."teacher_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."teacher_Id_seq";
       public          postgres    false    207            L           0    0    teacher_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."teacher_Id_seq" OWNED BY public.teacher."Id";
          public          postgres    false    206            �            1259    24641    teacher_lesson    TABLE     �   CREATE TABLE public.teacher_lesson (
    "Id" integer NOT NULL,
    "Teacher_id" integer NOT NULL,
    "Lesson_id" integer NOT NULL
);
 "   DROP TABLE public.teacher_lesson;
       public         heap    postgres    false            �            1259    24639    teacher_lesson_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."teacher_lesson_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."teacher_lesson_Id_seq";
       public          postgres    false    209            M           0    0    teacher_lesson_Id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."teacher_lesson_Id_seq" OWNED BY public.teacher_lesson."Id";
          public          postgres    false    208            �            1259    24670    teacher_subject    TABLE     �   CREATE TABLE public.teacher_subject (
    "Id" integer NOT NULL,
    "Teacher_id" integer NOT NULL,
    "Subject_id" integer NOT NULL
);
 #   DROP TABLE public.teacher_subject;
       public         heap    postgres    false            �            1259    24668    teacher_subject_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."teacher_subject_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."teacher_subject_Id_seq";
       public          postgres    false    213            N           0    0    teacher_subject_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."teacher_subject_Id_seq" OWNED BY public.teacher_subject."Id";
          public          postgres    false    212            �
           2604    24606    classroom Id    DEFAULT     p   ALTER TABLE ONLY public.classroom ALTER COLUMN "Id" SET DEFAULT nextval('public."classroom_Id_seq"'::regclass);
 =   ALTER TABLE public.classroom ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    24617 	   lesson Id    DEFAULT     j   ALTER TABLE ONLY public.lesson ALTER COLUMN "Id" SET DEFAULT nextval('public."lesson_Id_seq"'::regclass);
 :   ALTER TABLE public.lesson ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    24662 
   subject Id    DEFAULT     l   ALTER TABLE ONLY public.subject ALTER COLUMN "Id" SET DEFAULT nextval('public."subject_Id_seq"'::regclass);
 ;   ALTER TABLE public.subject ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    24633 
   teacher Id    DEFAULT     l   ALTER TABLE ONLY public.teacher ALTER COLUMN "Id" SET DEFAULT nextval('public."teacher_Id_seq"'::regclass);
 ;   ALTER TABLE public.teacher ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    24644    teacher_lesson Id    DEFAULT     z   ALTER TABLE ONLY public.teacher_lesson ALTER COLUMN "Id" SET DEFAULT nextval('public."teacher_lesson_Id_seq"'::regclass);
 B   ALTER TABLE public.teacher_lesson ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    24673    teacher_subject Id    DEFAULT     |   ALTER TABLE ONLY public.teacher_subject ALTER COLUMN "Id" SET DEFAULT nextval('public."teacher_subject_Id_seq"'::regclass);
 C   ALTER TABLE public.teacher_subject ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    213    212    213            8          0    24603 	   classroom 
   TABLE DATA           1   COPY public.classroom ("Id", "Name") FROM stdin;
    public          postgres    false    203   �9       :          0    24614    lesson 
   TABLE DATA           S   COPY public.lesson ("Id", "Day_of_week", "Classroom_id", "Subject_id") FROM stdin;
    public          postgres    false    205   �9       @          0    24659    subject 
   TABLE DATA           /   COPY public.subject ("Id", "Name") FROM stdin;
    public          postgres    false    211   �9       <          0    24630    teacher 
   TABLE DATA           B   COPY public.teacher ("Id", "Last_name", "First_name") FROM stdin;
    public          postgres    false    207   :       >          0    24641    teacher_lesson 
   TABLE DATA           I   COPY public.teacher_lesson ("Id", "Teacher_id", "Lesson_id") FROM stdin;
    public          postgres    false    209   +:       B          0    24670    teacher_subject 
   TABLE DATA           K   COPY public.teacher_subject ("Id", "Teacher_id", "Subject_id") FROM stdin;
    public          postgres    false    213   H:       O           0    0    classroom_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."classroom_Id_seq"', 1, false);
          public          postgres    false    202            P           0    0    lesson_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."lesson_Id_seq"', 1, false);
          public          postgres    false    204            Q           0    0    subject_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."subject_Id_seq"', 1, false);
          public          postgres    false    210            R           0    0    teacher_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."teacher_Id_seq"', 1, false);
          public          postgres    false    206            S           0    0    teacher_lesson_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."teacher_lesson_Id_seq"', 1, false);
          public          postgres    false    208            T           0    0    teacher_subject_Id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."teacher_subject_Id_seq"', 1, false);
          public          postgres    false    212            �
           2606    24611    classroom classroom_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classroom
    ADD CONSTRAINT classroom_pkey PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public.classroom DROP CONSTRAINT classroom_pkey;
       public            postgres    false    203            �
           2606    24619    lesson lesson_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public.lesson DROP CONSTRAINT lesson_pkey;
       public            postgres    false    205            �
           2606    24667    subject subject_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.subject DROP CONSTRAINT subject_pkey;
       public            postgres    false    211            �
           2606    24646 "   teacher_lesson teacher_lesson_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.teacher_lesson
    ADD CONSTRAINT teacher_lesson_pkey PRIMARY KEY ("Id");
 L   ALTER TABLE ONLY public.teacher_lesson DROP CONSTRAINT teacher_lesson_pkey;
       public            postgres    false    209            �
           2606    24638    teacher teacher_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    207            �
           2606    24675 $   teacher_subject teacher_subject_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_pkey PRIMARY KEY ("Id");
 N   ALTER TABLE ONLY public.teacher_subject DROP CONSTRAINT teacher_subject_pkey;
       public            postgres    false    213            �
           2606    24620    lesson lesson_fkey_classroom    FK CONSTRAINT     ~   ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_fkey_classroom FOREIGN KEY ("Id") REFERENCES public.classroom("Id");
 F   ALTER TABLE ONLY public.lesson DROP CONSTRAINT lesson_fkey_classroom;
       public          postgres    false    2728    203    205            �
           2606    24686    lesson lesson_fkey_subject    FK CONSTRAINT     �   ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_fkey_subject FOREIGN KEY ("Id") REFERENCES public.subject("Id") NOT VALID;
 D   ALTER TABLE ONLY public.lesson DROP CONSTRAINT lesson_fkey_subject;
       public          postgres    false    2736    205    211            �
           2606    24647 )   teacher_lesson teacher_lesson_fkey_lesson    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_lesson
    ADD CONSTRAINT teacher_lesson_fkey_lesson FOREIGN KEY ("Id") REFERENCES public.lesson("Id");
 S   ALTER TABLE ONLY public.teacher_lesson DROP CONSTRAINT teacher_lesson_fkey_lesson;
       public          postgres    false    2730    209    205            �
           2606    24652 *   teacher_lesson teacher_lesson_fkey_teacher    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_lesson
    ADD CONSTRAINT teacher_lesson_fkey_teacher FOREIGN KEY ("Id") REFERENCES public.teacher("Id");
 T   ALTER TABLE ONLY public.teacher_lesson DROP CONSTRAINT teacher_lesson_fkey_teacher;
       public          postgres    false    2732    207    209            �
           2606    24681 ,   teacher_subject teacher_subject_fkey_subject    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_fkey_subject FOREIGN KEY ("Id") REFERENCES public.subject("Id");
 V   ALTER TABLE ONLY public.teacher_subject DROP CONSTRAINT teacher_subject_fkey_subject;
       public          postgres    false    213    2736    211            �
           2606    24676 ,   teacher_subject teacher_subject_fkey_teacher    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher_subject
    ADD CONSTRAINT teacher_subject_fkey_teacher FOREIGN KEY ("Id") REFERENCES public.teacher("Id");
 V   ALTER TABLE ONLY public.teacher_subject DROP CONSTRAINT teacher_subject_fkey_teacher;
       public          postgres    false    2732    207    213            8      x������ � �      :      x������ � �      @      x������ � �      <      x������ � �      >      x������ � �      B      x������ � �     