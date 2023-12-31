PGDMP     %    9                {         	   frendexdb    14.9    15.2 '    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            {           1262    16489 	   frendexdb    DATABASE     t   CREATE DATABASE frendexdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE frendexdb;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                cloudsqlsuperuser    false            |           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   cloudsqlsuperuser    false    5            }           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     c   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    227            ~           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    215                       0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     X   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    216            �           0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    217            �           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     e   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    218            �           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    219            �           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     g   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    228            �           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    220            �           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     a   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    221            �           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    222            �           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    223            �           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO cloudsqlsuperuser;
       
   pg_catalog          cloudsqladmin    false    229            �            1259    16608    keys    TABLE     &  CREATE TABLE public.keys (
    id integer NOT NULL,
    holder numeric(20,0),
    holding numeric(20,0),
    hold_value numeric(3,2),
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.keys;
       public         heap    postgres    false    5            �            1259    16607    keys_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.keys_id_seq;
       public          postgres    false    214    5            �           0    0    keys_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.keys_id_seq OWNED BY public.keys.id;
          public          postgres    false    213            �            1259    16585    trades    TABLE       CREATE TABLE public.trades (
    id integer NOT NULL,
    user_id numeric(20,0),
    buy numeric(3,2),
    sell numeric(3,2),
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.trades;
       public         heap    postgres    false    5            �            1259    16584    trades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.trades_id_seq;
       public          postgres    false    5    210            �           0    0    trades_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.trades_id_seq OWNED BY public.trades.id;
          public          postgres    false    209            �            1259    16597    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    image character varying(255),
    username character varying(255),
    acc_address character varying(255),
    supply numeric(20,0),
    key_price numeric(3,2),
    unique_buyers numeric(20,0),
    total_amount numeric(3,2),
    total_spent numeric(3,2),
    total_fees_earned numeric(3,2),
    eth_balance numeric(3,2),
    buy_key numeric(3,2),
    sell_key numeric(3,2),
    points numeric(20,0),
    pandl numeric(3,2),
    user_status numeric,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    16596    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212    5            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            �           2604    16611    keys id    DEFAULT     b   ALTER TABLE ONLY public.keys ALTER COLUMN id SET DEFAULT nextval('public.keys_id_seq'::regclass);
 6   ALTER TABLE public.keys ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16588 	   trades id    DEFAULT     f   ALTER TABLE ONLY public.trades ALTER COLUMN id SET DEFAULT nextval('public.trades_id_seq'::regclass);
 8   ALTER TABLE public.trades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16600    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            u          0    16608    keys 
   TABLE DATA           W   COPY public.keys (id, holder, holding, hold_value, created_on, updated_on) FROM stdin;
    public          postgres    false    214   ,       q          0    16585    trades 
   TABLE DATA           P   COPY public.trades (id, user_id, buy, sell, created_on, updated_on) FROM stdin;
    public          postgres    false    210   '-       s          0    16597    users 
   TABLE DATA           �   COPY public.users (id, image, username, acc_address, supply, key_price, unique_buyers, total_amount, total_spent, total_fees_earned, eth_balance, buy_key, sell_key, points, pandl, user_status, created_on, updated_on) FROM stdin;
    public          postgres    false    212   +5       �           0    0    keys_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.keys_id_seq', 16, true);
          public          postgres    false    213            �           0    0    trades_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.trades_id_seq', 198, true);
          public          postgres    false    209            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 28, true);
          public          postgres    false    211            �           2606    16615    keys keys_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.keys
    ADD CONSTRAINT keys_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.keys DROP CONSTRAINT keys_pkey;
       public            postgres    false    214            �           2606    16592    trades trades_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.trades
    ADD CONSTRAINT trades_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.trades DROP CONSTRAINT trades_pkey;
       public            postgres    false    210            �           2606    16606    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            u     x�}�ˑ1D�"�M�*�ǲ�Ǳ`[�^W����4��CN?k��D,��?�O��Z3}�/�
��h� :�"[Y\D:DsYl���b��>�C,��P?p��h�,��d.39(�E�}�r�!�����EO�=�m�c8���kp�8X�%�oD���r`T	��S72����~�S�B��+��\DU��M�h:��α�Q]���+G�Й'��C�����SV��8�QE���>[���]Du�׿��p(L5�ϋ��~�$�_�S8O ���w� ���      q   �  x��Zە�����	�� �#p�q���g}솾5]�@� ��8H�q;�������נ���b�y�3�o��k��5}ڔ�&4� $8����nc�E�4r00R`H��C���S� `̃ �m�ԅ���e���A^Au|���6ȼl�yE$*����.�-�u��C)u �^��?_��͒B;$��]��^ |P�c�l���8p�&U�z�Ǐ��o\c�;���Q�K���+ܢ���r�� y�p���7$/	BX;��]��+Grg��� �/Eh�Y���9�rg E� "Ǎ��nb�9@���2� SL�a�b��Hb�	o��\C\����~������x"U�f�L�O|�/B��'�����DC� �AH�x�U΋�mmA3WD����>� ;��7vp��@]�����f�C�htɁ�ح"��Ɨr��� ��x�"&���*��=?�|-w�6�<�$-��%w��N�n~E���XY"�rZi�������1H8��\z�:I�!g�V�bh�5��SP�z�+�zb�C-Kb+��?��
����hgd��pqI�7�6��_������Q�m�œ%p�9*&�x�2�e��݃��/ �Rfa�!�3��%��ۀ��_>ci���~�����:���IPh5l���r�7����:_�0��1�5�t7��@Rh  ��c ��т�UG~�o��!������S��
��:0��H���d8U��b=�1�怿��A�g&(��O@0"!�B���6�k�#E���1Ɣ!��Y�M���q��n{�Š��Y��w��| ����b�['c��!� 瑬�[�q�d�/� G��XT�� B��Y���~b(-�8�!�#|8������ Av��1���o���w�ށYC�6KJ@6/Cd< I$ZmkFu��6��6���,�Gd-�������L�1����K�x��1g�$U�X�}�1Qf��<V�}҉p@l�c ��50��V�����x��C�������7��a0���:a�[frBuƀ+��2�>͉(��]3&2����U*�҄t�D,�[�.�9�8���pN�B`�5������FC/2��s��1�g��O�v8'��Ц/zŨ���aF�L&�5T�<��� iZ1/g.T� �}Wî�W��6
�/V%?�:��HDC��s��y��8g{˅Si�<�\J��6��hC�D�����9Z����4~E�{f B z�����ީ c����w��^;���L�.6����v�����7�F31��t���Q; ���V�;֫6`�@����w?h�F]�"�uI�]i�-Pp~:���{��@nTb>*6�� s��+M+� �9���.��u6�%��E}ݥ���c�p�x�7}5]���Df��zt�5@���C�i zR���V�aW�6�o?���%���V�J�l֙C#՚�O�0�
>��ΐ�`4s+�Q��r")���e���2�U%�r0���{Gc6�HH�A�S�5lEsB��:�&�{�� �*y��~�~��E~��]�.�A	y!52N��riN�A&em}}�|��B�}g��
�G' �:1^2S��P�~V�{`��}=���sd��\�EG�e�ֽ�Jm'|�P@1IK������3`�x�ڸ�5x�йZ�ݼ�޴p��]��l�8]6�A��T� ��~��/�����^��_�(Y�*�/�F�t�p����X}g�LY���}��[��+��@@����a��=`��g�?�Z?c3��&�E��"�'�(��f{��Q�V�$f{�҇PO�\^oH���3h�1߅���<)P�g���};�HC��u��M-AňZ���2��M��)�>���~:�{�����'H�8����)����1�B����_$^CKS��Xo&���;��Υn"3��p�Iu��Qq1�?��<�ޅ"g      s   F  x�}�˒�8���)��;v�x��p�����΅��lܤ�*�~��4�_|K���e�VJ������K?^?���'��sh���朓�XCX��9��͵��i�)~� �������a�K�/�rk��C(�O��4���sae$��^Y����B^�#��
"��x/BH$exX�� �H<��S(O����'�҇f����]B?����xgA,0���da�4��Jt]�a����}$�O��w�HN����O�o[H�(�y����0L�VDa��v�l�!fI�TYfR���Pշ�L=���Џ�L��Z��M�&HQ���D�4x���)gP=��d�+��b<��3���P��Pk��rfd�	�:Vw�V��/�`A(\ �$-���p�SQKP�#"�sj(�BY�$j�~z�'u�ռ~���m�'�aӯGY���^��r����b!s�=(�1�TR�t�3����n�QK����>��q`Q�o���t;�a"�B"�����-�e��(�2��R�*����d]�g�+Y��w�঵��Mg1��Xj�O�a	Ѝ��=��+��PJx�խ�u�W���y�e㮴����Om�B�bF`xp$��2�1~ЯXꋁ�	�^4��d��'Լ����0_��ic�u��-�|��ŋ�œ�t�$�*��8��ƢL�bM�P�v~:�0���8�Q� 0^^�y���>���%��@b��{�t����́�����P�v>s� ��Q���&���9u�L��uSwr*����֟�JQ���퍼r��|���0�S9l�sdb�3�,�Cߴ���Y�,�ƞ�X*�_:o�������o=�}�3љ�J#�H�>N5@B��2�D��{���VHs��B�x[��a��0Gw�������m�D�64n6�<f.��*R1��5��"\�!�����:�/�,�ń5����} �N��B}���^�������ÐjI`���-=B���O��$�a-���$˪�oY�m�^�W&��EE����&�X>}`�p���B���.����7��X�iRe5��r��Ğ��NݗI+�6P`�,OG�;X0����B��<�B�yxX`�h\.���e=�[s\H�Θ�6���3��'ko�%}S:��hN��B�;8�Q��dlC?.P���y:��O���N���x�S�>W��l��c,E9}U�.���L�>r}��`�ޔ�r�H�(��m�����j2i=��L�:F*�f�8S)�񝇇��Ȗ%S���Ŗp��nLT:Ms���ۓ�'IS�`<؟���^�}
e|����������B�w�L|���F�� ��nybyL��d��ѽz�P�(O�P����rAW���<U��BӘ u[zu2n0$uh9-��8O�=����M	/2o#ߙx%�yk2��2��Mu�ͣ�/a��G�������%��W� �������ξ��.Ȩ!�3$������$Nܨ{{!`y|�,X2%����V��x����λ�9O�u��c��q�n��Y�� 5���B�D�=w���[-gB��#���gY�,#�<     