--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: accounts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.accounts (
    id integer NOT NULL,
    mobile_wallet_id_number character varying(255),
    physical_card_number character varying(255),
    virtual_card_number character varying(255),
    campaign_balance character varying(255),
    account_balance character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    last_4_ein character varying(255),
    notification_methods character varying(255),
    transaction_history character varying(255)
);


ALTER TABLE public.accounts OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: adc_drops; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.adc_drops (
    id integer NOT NULL,
    drop_timestamp character varying(255),
    description text,
    status character varying(255),
    result jsonb,
    adc_drop_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.adc_drops OWNER TO root;

--
-- Name: adc_drops_collectibles_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.adc_drops_collectibles_links (
    id integer NOT NULL,
    adc_drop_id integer,
    collectible_id integer,
    collectible_order double precision
);


ALTER TABLE public.adc_drops_collectibles_links OWNER TO root;

--
-- Name: adc_drops_collectibles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.adc_drops_collectibles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adc_drops_collectibles_links_id_seq OWNER TO root;

--
-- Name: adc_drops_collectibles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.adc_drops_collectibles_links_id_seq OWNED BY public.adc_drops_collectibles_links.id;


--
-- Name: adc_drops_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.adc_drops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adc_drops_id_seq OWNER TO root;

--
-- Name: adc_drops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.adc_drops_id_seq OWNED BY public.adc_drops.id;


--
-- Name: adc_drops_partner_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.adc_drops_partner_links (
    id integer NOT NULL,
    adc_drop_id integer,
    partner_id integer
);


ALTER TABLE public.adc_drops_partner_links OWNER TO root;

--
-- Name: adc_drops_partner_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.adc_drops_partner_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adc_drops_partner_links_id_seq OWNER TO root;

--
-- Name: adc_drops_partner_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.adc_drops_partner_links_id_seq OWNED BY public.adc_drops_partner_links.id;


--
-- Name: add_retailers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.add_retailers (
    id integer NOT NULL,
    short_id integer,
    name character varying(255),
    restricted_loyalty_program boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.add_retailers OWNER TO root;

--
-- Name: add_retailers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.add_retailers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add_retailers_id_seq OWNER TO root;

--
-- Name: add_retailers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.add_retailers_id_seq OWNED BY public.add_retailers.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO root;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO root;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO root;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO root;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO root;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO root;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO root;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO root;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO root;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO root;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: associates; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.associates (
    id integer NOT NULL,
    name character varying(255),
    associate_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.associates OWNER TO root;

--
-- Name: associates_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.associates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.associates_id_seq OWNER TO root;

--
-- Name: associates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.associates_id_seq OWNED BY public.associates.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.banners (
    id integer NOT NULL,
    short_name_tag character varying(255),
    visible boolean,
    featured_order integer,
    external_link character varying(255),
    banner_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.banners OWNER TO root;

--
-- Name: banners_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.banners_chains_links (
    id integer NOT NULL,
    banner_id integer,
    chain_id integer,
    chain_order double precision,
    banner_order double precision
);


ALTER TABLE public.banners_chains_links OWNER TO root;

--
-- Name: banners_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.banners_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_chains_links_id_seq OWNER TO root;

--
-- Name: banners_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.banners_chains_links_id_seq OWNED BY public.banners_chains_links.id;


--
-- Name: banners_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.banners_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.banners_components OWNER TO root;

--
-- Name: banners_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_components_id_seq OWNER TO root;

--
-- Name: banners_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.banners_components_id_seq OWNED BY public.banners_components.id;


--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO root;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: campaigns; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns (
    id integer NOT NULL,
    campaign_id character varying(255),
    coupon_value numeric(10,2),
    begin_date date,
    end_date date,
    is_basket boolean,
    is_rebate boolean,
    basket_value numeric(10,2),
    quantity integer,
    is_multiple boolean,
    update_level integer,
    coupon_supply bigint,
    additional_rules_link character varying(255),
    list_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    type character varying(255),
    loyalty_points bigint,
    is_featured boolean,
    status character varying(255),
    coupon_type character varying(255),
    total_redeemed bigint,
    total_loaded bigint,
    total_available bigint,
    preview_link character varying(255),
    short_id character varying(255),
    short_name character varying(255),
    featured_order integer,
    deals_order integer,
    passive_redemption character varying(255),
    on_display_in_pwa boolean,
    redeem_button_on_reward boolean,
    disable_load_to_wallet_by_user boolean
);


ALTER TABLE public.campaigns OWNER TO root;

--
-- Name: campaigns_campaigns_to_load_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_campaigns_to_load_links (
    id integer NOT NULL,
    campaign_id integer,
    inv_campaign_id integer,
    campaign_order double precision
);


ALTER TABLE public.campaigns_campaigns_to_load_links OWNER TO root;

--
-- Name: campaigns_campaigns_to_load_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_campaigns_to_load_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_campaigns_to_load_links_id_seq OWNER TO root;

--
-- Name: campaigns_campaigns_to_load_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_campaigns_to_load_links_id_seq OWNED BY public.campaigns_campaigns_to_load_links.id;


--
-- Name: campaigns_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_chains_links (
    id integer NOT NULL,
    campaign_id integer,
    chain_id integer,
    chain_order double precision
);


ALTER TABLE public.campaigns_chains_links OWNER TO root;

--
-- Name: campaigns_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_chains_links_id_seq OWNER TO root;

--
-- Name: campaigns_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_chains_links_id_seq OWNED BY public.campaigns_chains_links.id;


--
-- Name: campaigns_collectibles_to_load_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_collectibles_to_load_links (
    id integer NOT NULL,
    campaign_id integer,
    collectible_id integer,
    collectible_order double precision
);


ALTER TABLE public.campaigns_collectibles_to_load_links OWNER TO root;

--
-- Name: campaigns_collectibles_to_load_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_collectibles_to_load_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_collectibles_to_load_links_id_seq OWNER TO root;

--
-- Name: campaigns_collectibles_to_load_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_collectibles_to_load_links_id_seq OWNED BY public.campaigns_collectibles_to_load_links.id;


--
-- Name: campaigns_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.campaigns_components OWNER TO root;

--
-- Name: campaigns_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_components_id_seq OWNER TO root;

--
-- Name: campaigns_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_components_id_seq OWNED BY public.campaigns_components.id;


--
-- Name: campaigns_corporate_entities_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_corporate_entities_links (
    id integer NOT NULL,
    campaign_id integer,
    corporate_entity_id integer,
    corporate_entity_order double precision
);


ALTER TABLE public.campaigns_corporate_entities_links OWNER TO root;

--
-- Name: campaigns_corporate_entities_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_corporate_entities_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_corporate_entities_links_id_seq OWNER TO root;

--
-- Name: campaigns_corporate_entities_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_corporate_entities_links_id_seq OWNED BY public.campaigns_corporate_entities_links.id;


--
-- Name: campaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_id_seq OWNER TO root;

--
-- Name: campaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_id_seq OWNED BY public.campaigns.id;


--
-- Name: campaigns_list_items_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_list_items_links (
    id integer NOT NULL,
    campaign_id integer,
    product_id integer,
    product_order double precision,
    campaign_order double precision
);


ALTER TABLE public.campaigns_list_items_links OWNER TO root;

--
-- Name: campaigns_list_items_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_list_items_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_list_items_links_id_seq OWNER TO root;

--
-- Name: campaigns_list_items_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_list_items_links_id_seq OWNED BY public.campaigns_list_items_links.id;


--
-- Name: campaigns_regions_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_regions_links (
    id integer NOT NULL,
    campaign_id integer,
    region_id integer,
    region_order double precision
);


ALTER TABLE public.campaigns_regions_links OWNER TO root;

--
-- Name: campaigns_regions_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_regions_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_regions_links_id_seq OWNER TO root;

--
-- Name: campaigns_regions_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_regions_links_id_seq OWNED BY public.campaigns_regions_links.id;


--
-- Name: campaigns_stores_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.campaigns_stores_links (
    id integer NOT NULL,
    campaign_id integer,
    store_id integer,
    store_order double precision
);


ALTER TABLE public.campaigns_stores_links OWNER TO root;

--
-- Name: campaigns_stores_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.campaigns_stores_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campaigns_stores_links_id_seq OWNER TO root;

--
-- Name: campaigns_stores_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.campaigns_stores_links_id_seq OWNED BY public.campaigns_stores_links.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    tag character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.categories OWNER TO root;

--
-- Name: categories_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.categories_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.categories_components OWNER TO root;

--
-- Name: categories_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.categories_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_components_id_seq OWNER TO root;

--
-- Name: categories_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.categories_components_id_seq OWNED BY public.categories_components.id;


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO root;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: categories_items_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.categories_items_links (
    id integer NOT NULL,
    categorie_id integer,
    product_id integer,
    product_order double precision,
    categorie_order double precision
);


ALTER TABLE public.categories_items_links OWNER TO root;

--
-- Name: categories_items_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.categories_items_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_items_links_id_seq OWNER TO root;

--
-- Name: categories_items_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.categories_items_links_id_seq OWNED BY public.categories_items_links.id;


--
-- Name: chains; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.chains (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    name character varying(255)
);


ALTER TABLE public.chains OWNER TO root;

--
-- Name: chains_corporate_entity_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.chains_corporate_entity_links (
    id integer NOT NULL,
    chain_id integer,
    corporate_entity_id integer,
    chain_order double precision
);


ALTER TABLE public.chains_corporate_entity_links OWNER TO root;

--
-- Name: chains_corporate_entity_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.chains_corporate_entity_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chains_corporate_entity_links_id_seq OWNER TO root;

--
-- Name: chains_corporate_entity_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.chains_corporate_entity_links_id_seq OWNED BY public.chains_corporate_entity_links.id;


--
-- Name: chains_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.chains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chains_id_seq OWNER TO root;

--
-- Name: chains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.chains_id_seq OWNED BY public.chains.id;


--
-- Name: collectibles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.collectibles (
    id integer NOT NULL,
    collectible_id character varying(255),
    on_display_in_pwa boolean,
    unlimited_supply boolean,
    total_minted bigint,
    disable_load_to_wallet_by_user boolean,
    is_3_d_asset boolean,
    asset_3_d_background_color character varying(255),
    supply integer,
    vimeo_video_id character varying(255),
    asset_3_d_props jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    short_name character varying(255),
    end_date date
);


ALTER TABLE public.collectibles OWNER TO root;

--
-- Name: collectibles_allowed_country_codes_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.collectibles_allowed_country_codes_links (
    id integer NOT NULL,
    collectible_id integer,
    country_code_id integer,
    country_code_order double precision
);


ALTER TABLE public.collectibles_allowed_country_codes_links OWNER TO root;

--
-- Name: collectibles_allowed_country_codes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.collectibles_allowed_country_codes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collectibles_allowed_country_codes_links_id_seq OWNER TO root;

--
-- Name: collectibles_allowed_country_codes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.collectibles_allowed_country_codes_links_id_seq OWNED BY public.collectibles_allowed_country_codes_links.id;


--
-- Name: collectibles_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.collectibles_chains_links (
    id integer NOT NULL,
    collectible_id integer,
    chain_id integer,
    chain_order double precision
);


ALTER TABLE public.collectibles_chains_links OWNER TO root;

--
-- Name: collectibles_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.collectibles_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collectibles_chains_links_id_seq OWNER TO root;

--
-- Name: collectibles_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.collectibles_chains_links_id_seq OWNED BY public.collectibles_chains_links.id;


--
-- Name: collectibles_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.collectibles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.collectibles_components OWNER TO root;

--
-- Name: collectibles_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.collectibles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collectibles_components_id_seq OWNER TO root;

--
-- Name: collectibles_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.collectibles_components_id_seq OWNED BY public.collectibles_components.id;


--
-- Name: collectibles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.collectibles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collectibles_id_seq OWNER TO root;

--
-- Name: collectibles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.collectibles_id_seq OWNED BY public.collectibles.id;


--
-- Name: company_profiles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.company_profiles (
    id integer NOT NULL,
    company_name character varying(255),
    lookup_name character varying(255),
    company_ein_tin character varying(255),
    company_parent character varying(255),
    company_parent_ein_tin character varying(255),
    company_alliance_id character varying(255),
    contact_name character varying(255),
    contact_mobile character varying(255),
    contact_email character varying(255),
    password character varying(255),
    confirmed boolean,
    blocked boolean,
    role character varying(255),
    address_street character varying(255),
    city character varying(255),
    state character varying(255),
    zip character varying(255),
    gft_explorer_link character varying(255),
    language character varying(255),
    node character varying(255),
    id_number character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.company_profiles OWNER TO root;

--
-- Name: company_profiles_accounts_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.company_profiles_accounts_links (
    id integer NOT NULL,
    company_profile_id integer,
    account_id integer,
    account_order double precision
);


ALTER TABLE public.company_profiles_accounts_links OWNER TO root;

--
-- Name: company_profiles_accounts_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.company_profiles_accounts_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_profiles_accounts_links_id_seq OWNER TO root;

--
-- Name: company_profiles_accounts_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.company_profiles_accounts_links_id_seq OWNED BY public.company_profiles_accounts_links.id;


--
-- Name: company_profiles_country_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.company_profiles_country_links (
    id integer NOT NULL,
    company_profile_id integer,
    country_code_id integer
);


ALTER TABLE public.company_profiles_country_links OWNER TO root;

--
-- Name: company_profiles_country_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.company_profiles_country_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_profiles_country_links_id_seq OWNER TO root;

--
-- Name: company_profiles_country_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.company_profiles_country_links_id_seq OWNED BY public.company_profiles_country_links.id;


--
-- Name: company_profiles_gft_pays_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.company_profiles_gft_pays_links (
    id integer NOT NULL,
    company_profile_id integer,
    gft_pay_id integer,
    gft_pay_order double precision
);


ALTER TABLE public.company_profiles_gft_pays_links OWNER TO root;

--
-- Name: company_profiles_gft_pays_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.company_profiles_gft_pays_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_profiles_gft_pays_links_id_seq OWNER TO root;

--
-- Name: company_profiles_gft_pays_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.company_profiles_gft_pays_links_id_seq OWNED BY public.company_profiles_gft_pays_links.id;


--
-- Name: company_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.company_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_profiles_id_seq OWNER TO root;

--
-- Name: company_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.company_profiles_id_seq OWNED BY public.company_profiles.id;


--
-- Name: components_art_artworks; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_art_artworks (
    id integer NOT NULL
);


ALTER TABLE public.components_art_artworks OWNER TO root;

--
-- Name: components_art_artworks_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_art_artworks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_art_artworks_id_seq OWNER TO root;

--
-- Name: components_art_artworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_art_artworks_id_seq OWNED BY public.components_art_artworks.id;


--
-- Name: components_art_artworks_languages_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_art_artworks_languages_links (
    id integer NOT NULL,
    artwork_id integer,
    language_code_id integer,
    language_code_order double precision
);


ALTER TABLE public.components_art_artworks_languages_links OWNER TO root;

--
-- Name: components_art_artworks_languages_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_art_artworks_languages_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_art_artworks_languages_links_id_seq OWNER TO root;

--
-- Name: components_art_artworks_languages_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_art_artworks_languages_links_id_seq OWNED BY public.components_art_artworks_languages_links.id;


--
-- Name: components_art_image_collections; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_art_image_collections (
    id integer NOT NULL
);


ALTER TABLE public.components_art_image_collections OWNER TO root;

--
-- Name: components_art_image_collections_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_art_image_collections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_art_image_collections_id_seq OWNER TO root;

--
-- Name: components_art_image_collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_art_image_collections_id_seq OWNED BY public.components_art_image_collections.id;


--
-- Name: components_art_image_collections_languages_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_art_image_collections_languages_links (
    id integer NOT NULL,
    image_collection_id integer,
    language_code_id integer,
    language_code_order double precision
);


ALTER TABLE public.components_art_image_collections_languages_links OWNER TO root;

--
-- Name: components_art_image_collections_languages_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_art_image_collections_languages_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_art_image_collections_languages_links_id_seq OWNER TO root;

--
-- Name: components_art_image_collections_languages_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_art_image_collections_languages_links_id_seq OWNED BY public.components_art_image_collections_languages_links.id;


--
-- Name: components_gft_gft_pays; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_gft_gft_pays (
    id integer NOT NULL,
    balance_greater_than_1000 boolean,
    date_of_birth date,
    first_name character varying(255),
    middle_name character varying(255),
    last_name character varying(255),
    corporate_email character varying(255),
    corporate_address_1 character varying(255),
    corporate_address_2 character varying(255),
    province character varying(255),
    city character varying(255),
    postal_code character varying(255),
    country character varying(255),
    display_currency character varying(255),
    signature boolean
);


ALTER TABLE public.components_gft_gft_pays OWNER TO root;

--
-- Name: components_gft_gft_pays_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_gft_gft_pays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_gft_gft_pays_id_seq OWNER TO root;

--
-- Name: components_gft_gft_pays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_gft_gft_pays_id_seq OWNED BY public.components_gft_gft_pays.id;


--
-- Name: components_prize_collectible_prizes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_collectible_prizes (
    id integer NOT NULL,
    short_name character varying(255)
);


ALTER TABLE public.components_prize_collectible_prizes OWNER TO root;

--
-- Name: components_prize_collectible_prizes_collectible_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_collectible_prizes_collectible_links (
    id integer NOT NULL,
    collectible_prize_id integer,
    collectible_id integer
);


ALTER TABLE public.components_prize_collectible_prizes_collectible_links OWNER TO root;

--
-- Name: components_prize_collectible_prizes_collectible_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_collectible_prizes_collectible_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_collectible_prizes_collectible_links_id_seq OWNER TO root;

--
-- Name: components_prize_collectible_prizes_collectible_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_collectible_prizes_collectible_links_id_seq OWNED BY public.components_prize_collectible_prizes_collectible_links.id;


--
-- Name: components_prize_collectible_prizes_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_collectible_prizes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_prize_collectible_prizes_components OWNER TO root;

--
-- Name: components_prize_collectible_prizes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_collectible_prizes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_collectible_prizes_components_id_seq OWNER TO root;

--
-- Name: components_prize_collectible_prizes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_collectible_prizes_components_id_seq OWNED BY public.components_prize_collectible_prizes_components.id;


--
-- Name: components_prize_collectible_prizes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_collectible_prizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_collectible_prizes_id_seq OWNER TO root;

--
-- Name: components_prize_collectible_prizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_collectible_prizes_id_seq OWNED BY public.components_prize_collectible_prizes.id;


--
-- Name: components_prize_coupon_prizes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_coupon_prizes (
    id integer NOT NULL,
    short_name character varying(255)
);


ALTER TABLE public.components_prize_coupon_prizes OWNER TO root;

--
-- Name: components_prize_coupon_prizes_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_coupon_prizes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_prize_coupon_prizes_components OWNER TO root;

--
-- Name: components_prize_coupon_prizes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_coupon_prizes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_coupon_prizes_components_id_seq OWNER TO root;

--
-- Name: components_prize_coupon_prizes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_coupon_prizes_components_id_seq OWNED BY public.components_prize_coupon_prizes_components.id;


--
-- Name: components_prize_coupon_prizes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_coupon_prizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_coupon_prizes_id_seq OWNER TO root;

--
-- Name: components_prize_coupon_prizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_coupon_prizes_id_seq OWNED BY public.components_prize_coupon_prizes.id;


--
-- Name: components_prize_prize_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_prize_prize_details (
    id integer NOT NULL,
    prize_supply integer,
    win_after timestamp(6) without time zone,
    winning_prize boolean,
    prizes_available integer,
    max_wins_per_day integer,
    win_interval numeric(10,2),
    wait_after_win numeric(10,2),
    prize_id character varying(255)
);


ALTER TABLE public.components_prize_prize_details OWNER TO root;

--
-- Name: components_prize_prize_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_prize_prize_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_prize_prize_details_id_seq OWNER TO root;

--
-- Name: components_prize_prize_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_prize_prize_details_id_seq OWNED BY public.components_prize_prize_details.id;


--
-- Name: components_store_management_banners; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_banners (
    id integer NOT NULL,
    page_number integer,
    visible boolean,
    start_date date,
    end_date date,
    short_name character varying(255)
);


ALTER TABLE public.components_store_management_banners OWNER TO root;

--
-- Name: components_store_management_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_banners_id_seq OWNER TO root;

--
-- Name: components_store_management_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_banners_id_seq OWNED BY public.components_store_management_banners.id;


--
-- Name: components_store_management_headers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_headers (
    id integer NOT NULL,
    short_name character varying(255),
    page_order integer,
    visible boolean,
    start_date date,
    end_date date
);


ALTER TABLE public.components_store_management_headers OWNER TO root;

--
-- Name: components_store_management_headers_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_store_management_headers_components OWNER TO root;

--
-- Name: components_store_management_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_headers_components_id_seq OWNER TO root;

--
-- Name: components_store_management_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_headers_components_id_seq OWNED BY public.components_store_management_headers_components.id;


--
-- Name: components_store_management_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_headers_id_seq OWNER TO root;

--
-- Name: components_store_management_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_headers_id_seq OWNED BY public.components_store_management_headers.id;


--
-- Name: components_store_management_tiles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_tiles (
    id integer NOT NULL,
    page_order integer,
    short_name character varying(255),
    visible boolean,
    start_date date,
    end_date date,
    external_link character varying(255)
);


ALTER TABLE public.components_store_management_tiles OWNER TO root;

--
-- Name: components_store_management_tiles_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_tiles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_store_management_tiles_components OWNER TO root;

--
-- Name: components_store_management_tiles_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_tiles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_tiles_components_id_seq OWNER TO root;

--
-- Name: components_store_management_tiles_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_tiles_components_id_seq OWNED BY public.components_store_management_tiles_components.id;


--
-- Name: components_store_management_tiles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_tiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_tiles_id_seq OWNER TO root;

--
-- Name: components_store_management_tiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_tiles_id_seq OWNED BY public.components_store_management_tiles.id;


--
-- Name: components_store_management_tiles_internal_link_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_tiles_internal_link_links (
    id integer NOT NULL,
    tile_id integer,
    page_id integer
);


ALTER TABLE public.components_store_management_tiles_internal_link_links OWNER TO root;

--
-- Name: components_store_management_tiles_internal_link_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_tiles_internal_link_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_tiles_internal_link_links_id_seq OWNER TO root;

--
-- Name: components_store_management_tiles_internal_link_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_tiles_internal_link_links_id_seq OWNED BY public.components_store_management_tiles_internal_link_links.id;


--
-- Name: components_store_management_videos; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_management_videos (
    id integer NOT NULL,
    page_order integer,
    visible boolean,
    short_name character varying(255),
    start_date date,
    end_date date
);


ALTER TABLE public.components_store_management_videos OWNER TO root;

--
-- Name: components_store_management_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_management_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_management_videos_id_seq OWNER TO root;

--
-- Name: components_store_management_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_management_videos_id_seq OWNED BY public.components_store_management_videos.id;


--
-- Name: components_store_stores; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_stores (
    id integer NOT NULL,
    banner character varying(255),
    name character varying(255),
    address character varying(255),
    city character varying(255),
    zip character varying(255),
    state character varying(255),
    number integer,
    latitude character varying(255),
    longitude character varying(255)
);


ALTER TABLE public.components_store_stores OWNER TO root;

--
-- Name: components_store_stores_country_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_store_stores_country_links (
    id integer NOT NULL,
    store_id integer,
    country_code_id integer
);


ALTER TABLE public.components_store_stores_country_links OWNER TO root;

--
-- Name: components_store_stores_country_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_stores_country_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_stores_country_links_id_seq OWNER TO root;

--
-- Name: components_store_stores_country_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_stores_country_links_id_seq OWNED BY public.components_store_stores_country_links.id;


--
-- Name: components_store_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_store_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_store_stores_id_seq OWNER TO root;

--
-- Name: components_store_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_store_stores_id_seq OWNED BY public.components_store_stores.id;


--
-- Name: components_translation_game_texts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_game_texts (
    id integer NOT NULL
);


ALTER TABLE public.components_translation_game_texts OWNER TO root;

--
-- Name: components_translation_game_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_game_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_game_texts_id_seq OWNER TO root;

--
-- Name: components_translation_game_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_game_texts_id_seq OWNED BY public.components_translation_game_texts.id;


--
-- Name: components_translation_game_texts_languages_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_game_texts_languages_links (
    id integer NOT NULL,
    game_text_id integer,
    language_code_id integer,
    language_code_order double precision
);


ALTER TABLE public.components_translation_game_texts_languages_links OWNER TO root;

--
-- Name: components_translation_game_texts_languages_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_game_texts_languages_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_game_texts_languages_links_id_seq OWNER TO root;

--
-- Name: components_translation_game_texts_languages_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_game_texts_languages_links_id_seq OWNED BY public.components_translation_game_texts_languages_links.id;


--
-- Name: components_translation_terms_conditions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_terms_conditions (
    id integer NOT NULL,
    translation character varying(255),
    featured_order integer
);


ALTER TABLE public.components_translation_terms_conditions OWNER TO root;

--
-- Name: components_translation_terms_conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_terms_conditions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_terms_conditions_id_seq OWNER TO root;

--
-- Name: components_translation_terms_conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_terms_conditions_id_seq OWNED BY public.components_translation_terms_conditions.id;


--
-- Name: components_translation_terms_conditions_language_code_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_terms_conditions_language_code_links (
    id integer NOT NULL,
    terms_conditions_id integer,
    language_code_id integer
);


ALTER TABLE public.components_translation_terms_conditions_language_code_links OWNER TO root;

--
-- Name: components_translation_terms_conditions_language_code_li_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_terms_conditions_language_code_li_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_terms_conditions_language_code_li_id_seq OWNER TO root;

--
-- Name: components_translation_terms_conditions_language_code_li_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_terms_conditions_language_code_li_id_seq OWNED BY public.components_translation_terms_conditions_language_code_links.id;


--
-- Name: components_translation_terms_lists; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_terms_lists (
    id integer NOT NULL,
    translation character varying(255)
);


ALTER TABLE public.components_translation_terms_lists OWNER TO root;

--
-- Name: components_translation_terms_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_terms_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_terms_lists_id_seq OWNER TO root;

--
-- Name: components_translation_terms_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_terms_lists_id_seq OWNED BY public.components_translation_terms_lists.id;


--
-- Name: components_translation_terms_lists_languages_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_terms_lists_languages_links (
    id integer NOT NULL,
    terms_list_id integer,
    language_code_id integer,
    language_code_order double precision
);


ALTER TABLE public.components_translation_terms_lists_languages_links OWNER TO root;

--
-- Name: components_translation_terms_lists_languages_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_terms_lists_languages_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_terms_lists_languages_links_id_seq OWNER TO root;

--
-- Name: components_translation_terms_lists_languages_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_terms_lists_languages_links_id_seq OWNED BY public.components_translation_terms_lists_languages_links.id;


--
-- Name: components_translation_translations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_translations (
    id integer NOT NULL,
    translation character varying(255)
);


ALTER TABLE public.components_translation_translations OWNER TO root;

--
-- Name: components_translation_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_translations_id_seq OWNER TO root;

--
-- Name: components_translation_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_translations_id_seq OWNED BY public.components_translation_translations.id;


--
-- Name: components_translation_translations_languages_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.components_translation_translations_languages_links (
    id integer NOT NULL,
    translation_id integer,
    language_code_id integer,
    language_code_order double precision
);


ALTER TABLE public.components_translation_translations_languages_links OWNER TO root;

--
-- Name: components_translation_translations_languages_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.components_translation_translations_languages_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_translation_translations_languages_links_id_seq OWNER TO root;

--
-- Name: components_translation_translations_languages_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.components_translation_translations_languages_links_id_seq OWNED BY public.components_translation_translations_languages_links.id;


--
-- Name: configurations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.configurations (
    id integer NOT NULL,
    json jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.configurations OWNER TO root;

--
-- Name: configurations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.configurations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configurations_id_seq OWNER TO root;

--
-- Name: configurations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.configurations_id_seq OWNED BY public.configurations.id;


--
-- Name: congratulation_screens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.congratulation_screens (
    id integer NOT NULL,
    name character varying(255),
    how_to_title character varying(255),
    how_to_text character varying(255),
    congratulations_text character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    congratulation_title character varying(255)
);


ALTER TABLE public.congratulation_screens OWNER TO root;

--
-- Name: congratulation_screens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.congratulation_screens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.congratulation_screens_id_seq OWNER TO root;

--
-- Name: congratulation_screens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.congratulation_screens_id_seq OWNED BY public.congratulation_screens.id;


--
-- Name: corporate_entities; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.corporate_entities (
    id integer NOT NULL,
    name character varying(255),
    lookup_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.corporate_entities OWNER TO root;

--
-- Name: corporate_entities_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.corporate_entities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corporate_entities_id_seq OWNER TO root;

--
-- Name: corporate_entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.corporate_entities_id_seq OWNED BY public.corporate_entities.id;


--
-- Name: country_codes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.country_codes (
    id integer NOT NULL,
    name character varying(255),
    dial_code character varying(255),
    code character varying(255),
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.country_codes OWNER TO root;

--
-- Name: country_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.country_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_codes_id_seq OWNER TO root;

--
-- Name: country_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.country_codes_id_seq OWNED BY public.country_codes.id;


--
-- Name: coupon_drops; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.coupon_drops (
    id integer NOT NULL,
    description character varying(255),
    phone_numbers jsonb,
    status character varying(255),
    drop_timestamp character varying(255),
    coupon_drop_id integer,
    result jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.coupon_drops OWNER TO root;

--
-- Name: coupon_drops_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.coupon_drops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_drops_id_seq OWNER TO root;

--
-- Name: coupon_drops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.coupon_drops_id_seq OWNED BY public.coupon_drops.id;


--
-- Name: coupons; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.coupons (
    id integer NOT NULL,
    reward_name character varying(255),
    pos_campaign_id bigint,
    status character varying(255),
    preview_link character varying(255),
    on_display_in_pwa boolean,
    type character varying(255),
    reward_type character varying(255),
    passive_redemption character varying(255),
    front_of_reward_artwork character varying(255),
    back_of_reward_artwork character varying(255),
    description text,
    disclaimer text,
    additional_terms_link character varying(255),
    receipt_description character varying(255),
    reward_supply character varying(255),
    reward_value character varying(255),
    total_products integer,
    basket_reward boolean,
    basket_value character varying(255),
    is_featured boolean,
    short_id character varying(255),
    total_available integer,
    total_loaded integer,
    total_redeemed integer,
    featured_order character varying(255),
    deals_order character varying(255),
    redeem_button_on_reward boolean,
    disable_load_to_wallet_by_user boolean,
    is_rebate boolean,
    included_products character varying(255),
    corporate_entity character varying(255),
    chains character varying(255),
    regions character varying(255),
    stores character varying(255),
    collectibles_to_load character varying(255),
    campaigns_to_load character varying(255),
    gft_explorer_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    begin_date date,
    end_date date
);


ALTER TABLE public.coupons OWNER TO root;

--
-- Name: coupons_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.coupons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.coupons_components OWNER TO root;

--
-- Name: coupons_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.coupons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupons_components_id_seq OWNER TO root;

--
-- Name: coupons_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.coupons_components_id_seq OWNED BY public.coupons_components.id;


--
-- Name: coupons_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.coupons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupons_id_seq OWNER TO root;

--
-- Name: coupons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.coupons_id_seq OWNED BY public.coupons.id;


--
-- Name: create_pwas; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.create_pwas (
    id integer NOT NULL,
    matcher character varying(255),
    name character varying(255),
    rules character varying(255),
    privacy character varying(255),
    terms character varying(255),
    enable_associates_portal character varying(255),
    asset_types_supported character varying(255),
    xsolla_paystation_url character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.create_pwas OWNER TO root;

--
-- Name: create_pwas_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.create_pwas_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.create_pwas_components OWNER TO root;

--
-- Name: create_pwas_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.create_pwas_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.create_pwas_components_id_seq OWNER TO root;

--
-- Name: create_pwas_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.create_pwas_components_id_seq OWNED BY public.create_pwas_components.id;


--
-- Name: create_pwas_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.create_pwas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.create_pwas_id_seq OWNER TO root;

--
-- Name: create_pwas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.create_pwas_id_seq OWNED BY public.create_pwas.id;


--
-- Name: domains; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.domains (
    id integer NOT NULL,
    matcher character varying(255),
    rules character varying(255),
    privacy character varying(255),
    terms character varying(255),
    enable_associates_portal boolean,
    asset_types_supported character varying(255),
    x_solla_paystation_url character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.domains OWNER TO root;

--
-- Name: domains_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.domains_chains_links (
    id integer NOT NULL,
    domain_id integer,
    chain_id integer,
    chain_order double precision
);


ALTER TABLE public.domains_chains_links OWNER TO root;

--
-- Name: domains_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.domains_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domains_chains_links_id_seq OWNER TO root;

--
-- Name: domains_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.domains_chains_links_id_seq OWNED BY public.domains_chains_links.id;


--
-- Name: domains_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.domains_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.domains_components OWNER TO root;

--
-- Name: domains_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.domains_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domains_components_id_seq OWNER TO root;

--
-- Name: domains_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.domains_components_id_seq OWNED BY public.domains_components.id;


--
-- Name: domains_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.domains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domains_id_seq OWNER TO root;

--
-- Name: domains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.domains_id_seq OWNED BY public.domains.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO root;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO root;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO root;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO root;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO root;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO root;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: generate_reports; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.generate_reports (
    id integer NOT NULL,
    report_type_summary character varying(255),
    receipt_mints character varying(255),
    rewards_tranfers character varying(255),
    receipt_transfers character varying(255),
    rewards_mints character varying(255),
    start_date date,
    end_date date,
    domain_specific_reports character varying(255),
    generate_report character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.generate_reports OWNER TO root;

--
-- Name: generate_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.generate_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.generate_reports_id_seq OWNER TO root;

--
-- Name: generate_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.generate_reports_id_seq OWNED BY public.generate_reports.id;


--
-- Name: gft_pays; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.gft_pays (
    id integer NOT NULL,
    mobile_number character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.gft_pays OWNER TO root;

--
-- Name: gft_pays_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.gft_pays_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.gft_pays_components OWNER TO root;

--
-- Name: gft_pays_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.gft_pays_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gft_pays_components_id_seq OWNER TO root;

--
-- Name: gft_pays_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.gft_pays_components_id_seq OWNED BY public.gft_pays_components.id;


--
-- Name: gft_pays_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.gft_pays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gft_pays_id_seq OWNER TO root;

--
-- Name: gft_pays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.gft_pays_id_seq OWNED BY public.gft_pays.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO root;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO root;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: importconfigs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.importconfigs (
    id integer NOT NULL,
    date date,
    source character varying(255),
    content_type character varying(255),
    imported_count integer,
    ongoing boolean,
    options jsonb,
    field_mapping jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.importconfigs OWNER TO root;

--
-- Name: importconfigs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.importconfigs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.importconfigs_id_seq OWNER TO root;

--
-- Name: importconfigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.importconfigs_id_seq OWNED BY public.importconfigs.id;


--
-- Name: language_codes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.language_codes (
    id integer NOT NULL,
    code character varying(255),
    language_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.language_codes OWNER TO root;

--
-- Name: language_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.language_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.language_codes_id_seq OWNER TO root;

--
-- Name: language_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.language_codes_id_seq OWNED BY public.language_codes.id;


--
-- Name: messagings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.messagings (
    id integer NOT NULL,
    social_link character varying(255),
    text_message character varying(255),
    email_message character varying(255),
    blog_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.messagings OWNER TO root;

--
-- Name: messagings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.messagings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messagings_id_seq OWNER TO root;

--
-- Name: messagings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.messagings_id_seq OWNED BY public.messagings.id;


--
-- Name: nft_collections; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.nft_collections (
    id integer NOT NULL,
    name character varying(255),
    short_name character varying(255),
    gft_explorer_link character varying(255),
    supply integer,
    total_minted integer,
    vimeo_video_id character varying(255),
    nft_collection_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.nft_collections OWNER TO root;

--
-- Name: nft_collections_allowed_country_codes_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.nft_collections_allowed_country_codes_links (
    id integer NOT NULL,
    nft_collection_id integer,
    country_code_id integer,
    country_code_order double precision
);


ALTER TABLE public.nft_collections_allowed_country_codes_links OWNER TO root;

--
-- Name: nft_collections_allowed_country_codes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.nft_collections_allowed_country_codes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nft_collections_allowed_country_codes_links_id_seq OWNER TO root;

--
-- Name: nft_collections_allowed_country_codes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.nft_collections_allowed_country_codes_links_id_seq OWNED BY public.nft_collections_allowed_country_codes_links.id;


--
-- Name: nft_collections_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.nft_collections_chains_links (
    id integer NOT NULL,
    nft_collection_id integer,
    chain_id integer,
    chain_order double precision
);


ALTER TABLE public.nft_collections_chains_links OWNER TO root;

--
-- Name: nft_collections_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.nft_collections_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nft_collections_chains_links_id_seq OWNER TO root;

--
-- Name: nft_collections_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.nft_collections_chains_links_id_seq OWNED BY public.nft_collections_chains_links.id;


--
-- Name: nft_collections_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.nft_collections_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.nft_collections_components OWNER TO root;

--
-- Name: nft_collections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.nft_collections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nft_collections_components_id_seq OWNER TO root;

--
-- Name: nft_collections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.nft_collections_components_id_seq OWNED BY public.nft_collections_components.id;


--
-- Name: nft_collections_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.nft_collections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nft_collections_id_seq OWNER TO root;

--
-- Name: nft_collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.nft_collections_id_seq OWNED BY public.nft_collections.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    page_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pages OWNER TO root;

--
-- Name: pages_chains_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.pages_chains_links (
    id integer NOT NULL,
    page_id integer,
    chain_id integer,
    chain_order double precision
);


ALTER TABLE public.pages_chains_links OWNER TO root;

--
-- Name: pages_chains_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.pages_chains_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_chains_links_id_seq OWNER TO root;

--
-- Name: pages_chains_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.pages_chains_links_id_seq OWNED BY public.pages_chains_links.id;


--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pages_components OWNER TO root;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_components_id_seq OWNER TO root;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO root;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: partners; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.partners (
    id integer NOT NULL,
    short_id character varying(255),
    name character varying(255),
    restricted_loyalty_program boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.partners OWNER TO root;

--
-- Name: partners_congratulation_screen_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.partners_congratulation_screen_links (
    id integer NOT NULL,
    partner_id integer,
    congratulation_screen_id integer,
    partner_order double precision
);


ALTER TABLE public.partners_congratulation_screen_links OWNER TO root;

--
-- Name: partners_congratulation_screen_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.partners_congratulation_screen_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_congratulation_screen_links_id_seq OWNER TO root;

--
-- Name: partners_congratulation_screen_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.partners_congratulation_screen_links_id_seq OWNED BY public.partners_congratulation_screen_links.id;


--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_id_seq OWNER TO root;

--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.partners_id_seq OWNED BY public.partners.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    upc character varying(255)
);


ALTER TABLE public.products OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.regions (
    id integer NOT NULL,
    division character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.regions OWNER TO root;

--
-- Name: regions_chain_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.regions_chain_links (
    id integer NOT NULL,
    region_id integer,
    chain_id integer,
    region_order double precision
);


ALTER TABLE public.regions_chain_links OWNER TO root;

--
-- Name: regions_chain_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.regions_chain_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_chain_links_id_seq OWNER TO root;

--
-- Name: regions_chain_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.regions_chain_links_id_seq OWNED BY public.regions_chain_links.id;


--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO root;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: retail_profiles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.retail_profiles (
    id integer NOT NULL,
    division character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.retail_profiles OWNER TO root;

--
-- Name: retail_profiles_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.retail_profiles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.retail_profiles_components OWNER TO root;

--
-- Name: retail_profiles_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.retail_profiles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retail_profiles_components_id_seq OWNER TO root;

--
-- Name: retail_profiles_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.retail_profiles_components_id_seq OWNED BY public.retail_profiles_components.id;


--
-- Name: retail_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.retail_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retail_profiles_id_seq OWNER TO root;

--
-- Name: retail_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.retail_profiles_id_seq OWNED BY public.retail_profiles.id;


--
-- Name: retail_profiles_regions_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.retail_profiles_regions_links (
    id integer NOT NULL,
    retail_profile_id integer,
    region_id integer,
    region_order double precision
);


ALTER TABLE public.retail_profiles_regions_links OWNER TO root;

--
-- Name: retail_profiles_regions_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.retail_profiles_regions_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retail_profiles_regions_links_id_seq OWNER TO root;

--
-- Name: retail_profiles_regions_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.retail_profiles_regions_links_id_seq OWNED BY public.retail_profiles_regions_links.id;


--
-- Name: reward_drops; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_drops (
    id integer NOT NULL,
    description text,
    phone_numbers character varying(255),
    result jsonb,
    status character varying(255),
    drop_timestamp character varying(255),
    reward_drop_id integer,
    campaign character varying(255),
    gft_explorer_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.reward_drops OWNER TO root;

--
-- Name: reward_drops_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_drops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_drops_id_seq OWNER TO root;

--
-- Name: reward_drops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_drops_id_seq OWNED BY public.reward_drops.id;


--
-- Name: reward_games; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_games (
    id integer NOT NULL,
    game_name character varying(255),
    banner character varying(255),
    game_id integer,
    max_daily_plays integer,
    begin_date date,
    end_date date,
    game_server_url character varying(255),
    official_rules_link character varying(255),
    feature_order character varying(255),
    gft_explorer_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.reward_games OWNER TO root;

--
-- Name: reward_games_chain_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_games_chain_links (
    id integer NOT NULL,
    reward_game_id integer,
    chain_id integer,
    reward_game_order double precision
);


ALTER TABLE public.reward_games_chain_links OWNER TO root;

--
-- Name: reward_games_chain_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_games_chain_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_games_chain_links_id_seq OWNER TO root;

--
-- Name: reward_games_chain_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_games_chain_links_id_seq OWNED BY public.reward_games_chain_links.id;


--
-- Name: reward_games_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_games_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.reward_games_components OWNER TO root;

--
-- Name: reward_games_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_games_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_games_components_id_seq OWNER TO root;

--
-- Name: reward_games_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_games_components_id_seq OWNED BY public.reward_games_components.id;


--
-- Name: reward_games_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_games_id_seq OWNER TO root;

--
-- Name: reward_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_games_id_seq OWNED BY public.reward_games.id;


--
-- Name: reward_products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_products (
    id integer NOT NULL,
    product_name character varying(255),
    upc_code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.reward_products OWNER TO root;

--
-- Name: reward_products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_products_id_seq OWNER TO root;

--
-- Name: reward_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_products_id_seq OWNED BY public.reward_products.id;


--
-- Name: reward_subscriptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_subscriptions (
    id integer NOT NULL,
    subscription_id character varying(255),
    short_name character varying(255),
    display_name character varying(255),
    price integer,
    more_link_info character varying(255),
    billing_id character varying(255),
    x_solla_api_latest_status boolean,
    x_solla_product_id integer,
    gft_explorer_link character varying(255),
    live boolean,
    currency character varying(255),
    drop_frequency character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    terms_conditions character varying(255),
    feature_order integer
);


ALTER TABLE public.reward_subscriptions OWNER TO root;

--
-- Name: reward_subscriptions_allowed_country_codes_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_subscriptions_allowed_country_codes_links (
    id integer NOT NULL,
    reward_subscription_id integer,
    country_code_id integer,
    country_code_order double precision
);


ALTER TABLE public.reward_subscriptions_allowed_country_codes_links OWNER TO root;

--
-- Name: reward_subscriptions_allowed_country_codes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_subscriptions_allowed_country_codes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_subscriptions_allowed_country_codes_links_id_seq OWNER TO root;

--
-- Name: reward_subscriptions_allowed_country_codes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_subscriptions_allowed_country_codes_links_id_seq OWNED BY public.reward_subscriptions_allowed_country_codes_links.id;


--
-- Name: reward_subscriptions_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_subscriptions_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.reward_subscriptions_components OWNER TO root;

--
-- Name: reward_subscriptions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_subscriptions_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_subscriptions_components_id_seq OWNER TO root;

--
-- Name: reward_subscriptions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_subscriptions_components_id_seq OWNED BY public.reward_subscriptions_components.id;


--
-- Name: reward_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_subscriptions_id_seq OWNER TO root;

--
-- Name: reward_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_subscriptions_id_seq OWNED BY public.reward_subscriptions.id;


--
-- Name: reward_subscriptions_regions_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.reward_subscriptions_regions_links (
    id integer NOT NULL,
    reward_subscription_id integer,
    region_id integer
);


ALTER TABLE public.reward_subscriptions_regions_links OWNER TO root;

--
-- Name: reward_subscriptions_regions_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.reward_subscriptions_regions_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reward_subscriptions_regions_links_id_seq OWNER TO root;

--
-- Name: reward_subscriptions_regions_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.reward_subscriptions_regions_links_id_seq OWNED BY public.reward_subscriptions_regions_links.id;


--
-- Name: shopper_coupons; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shopper_coupons (
    id integer NOT NULL,
    vatom_user_id character varying(255),
    vatom_business_id character varying(255),
    vatom_campaign_id character varying(255),
    vatom_design_id character varying(255),
    vatom_distribution_id character varying(255),
    vatom_source character varying(255),
    vatom_medium character varying(255),
    vatom_state character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    vatom_token_id character varying(255)
);


ALTER TABLE public.shopper_coupons OWNER TO root;

--
-- Name: shopper_coupons_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shopper_coupons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopper_coupons_id_seq OWNER TO root;

--
-- Name: shopper_coupons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shopper_coupons_id_seq OWNED BY public.shopper_coupons.id;


--
-- Name: shopper_coupons_shopper_id_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shopper_coupons_shopper_id_links (
    id integer NOT NULL,
    shopper_coupon_id integer,
    shopper_id integer,
    shopper_order double precision
);


ALTER TABLE public.shopper_coupons_shopper_id_links OWNER TO root;

--
-- Name: shopper_coupons_shopper_id_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shopper_coupons_shopper_id_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopper_coupons_shopper_id_links_id_seq OWNER TO root;

--
-- Name: shopper_coupons_shopper_id_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shopper_coupons_shopper_id_links_id_seq OWNED BY public.shopper_coupons_shopper_id_links.id;


--
-- Name: shoppers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shoppers (
    id integer NOT NULL,
    name character varying(255),
    phone_number character varying(255),
    email character varying(255),
    vatom_user_id character varying(255),
    vatom_business_id character varying(255),
    vatom_campaign_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.shoppers OWNER TO root;

--
-- Name: shoppers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shoppers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shoppers_id_seq OWNER TO root;

--
-- Name: shoppers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shoppers_id_seq OWNED BY public.shoppers.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.stores (
    id integer NOT NULL,
    latitude double precision,
    longitude double precision,
    banner character varying(255),
    name character varying(255),
    address character varying(255),
    city character varying(255),
    county character varying(255),
    zip integer,
    state character varying(255),
    number integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.stores OWNER TO root;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO root;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: stores_region_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.stores_region_links (
    id integer NOT NULL,
    store_id integer,
    region_id integer,
    store_order double precision
);


ALTER TABLE public.stores_region_links OWNER TO root;

--
-- Name: stores_region_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.stores_region_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_region_links_id_seq OWNER TO root;

--
-- Name: stores_region_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.stores_region_links_id_seq OWNED BY public.stores_region_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO root;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO root;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO root;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO root;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO root;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO root;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO root;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO root;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO root;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO root;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO root;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO root;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO root;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO root;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO root;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO root;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO root;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO root;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO root;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO root;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: subscription_drops; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscription_drops (
    id integer NOT NULL,
    subscription_drop_id bigint,
    drop_timestamp character varying(255),
    status character varying(255),
    start_date date,
    end_date date,
    description text,
    rewards character varying(255),
    gft_explorer_link character varying(255),
    result jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.subscription_drops OWNER TO root;

--
-- Name: subscription_drops_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscription_drops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_drops_id_seq OWNER TO root;

--
-- Name: subscription_drops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscription_drops_id_seq OWNED BY public.subscription_drops.id;


--
-- Name: subscription_drops_subscription_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscription_drops_subscription_links (
    id integer NOT NULL,
    subscription_drop_id integer,
    reward_subscription_id integer,
    subscription_drop_order double precision
);


ALTER TABLE public.subscription_drops_subscription_links OWNER TO root;

--
-- Name: subscription_drops_subscription_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscription_drops_subscription_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_drops_subscription_links_id_seq OWNER TO root;

--
-- Name: subscription_drops_subscription_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscription_drops_subscription_links_id_seq OWNED BY public.subscription_drops_subscription_links.id;


--
-- Name: terms_of_services; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.terms_of_services (
    id integer NOT NULL,
    terms_of_service character varying(255),
    gft_explorer_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.terms_of_services OWNER TO root;

--
-- Name: terms_of_services_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.terms_of_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terms_of_services_id_seq OWNER TO root;

--
-- Name: terms_of_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.terms_of_services_id_seq OWNED BY public.terms_of_services.id;


--
-- Name: tokenized_receipts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tokenized_receipts (
    id integer NOT NULL,
    name character varying(255),
    short_name character varying(255),
    gft_explorer_link character varying(255),
    vimeo_video_id bigint,
    receipt_id bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.tokenized_receipts OWNER TO root;

--
-- Name: tokenized_receipts_allowed_country_codes_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tokenized_receipts_allowed_country_codes_links (
    id integer NOT NULL,
    tokenized_receipt_id integer,
    country_code_id integer
);


ALTER TABLE public.tokenized_receipts_allowed_country_codes_links OWNER TO root;

--
-- Name: tokenized_receipts_allowed_country_codes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.tokenized_receipts_allowed_country_codes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokenized_receipts_allowed_country_codes_links_id_seq OWNER TO root;

--
-- Name: tokenized_receipts_allowed_country_codes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.tokenized_receipts_allowed_country_codes_links_id_seq OWNED BY public.tokenized_receipts_allowed_country_codes_links.id;


--
-- Name: tokenized_receipts_components; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tokenized_receipts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.tokenized_receipts_components OWNER TO root;

--
-- Name: tokenized_receipts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.tokenized_receipts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokenized_receipts_components_id_seq OWNER TO root;

--
-- Name: tokenized_receipts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.tokenized_receipts_components_id_seq OWNED BY public.tokenized_receipts_components.id;


--
-- Name: tokenized_receipts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.tokenized_receipts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokenized_receipts_id_seq OWNER TO root;

--
-- Name: tokenized_receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.tokenized_receipts_id_seq OWNED BY public.tokenized_receipts.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO root;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO root;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO root;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO root;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO root;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO root;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO root;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO root;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO root;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO root;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO root;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO root;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO root;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO root;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: adc_drops id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops ALTER COLUMN id SET DEFAULT nextval('public.adc_drops_id_seq'::regclass);


--
-- Name: adc_drops_collectibles_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_collectibles_links ALTER COLUMN id SET DEFAULT nextval('public.adc_drops_collectibles_links_id_seq'::regclass);


--
-- Name: adc_drops_partner_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_partner_links ALTER COLUMN id SET DEFAULT nextval('public.adc_drops_partner_links_id_seq'::regclass);


--
-- Name: add_retailers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.add_retailers ALTER COLUMN id SET DEFAULT nextval('public.add_retailers_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: associates id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.associates ALTER COLUMN id SET DEFAULT nextval('public.associates_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: banners_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_chains_links ALTER COLUMN id SET DEFAULT nextval('public.banners_chains_links_id_seq'::regclass);


--
-- Name: banners_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_components ALTER COLUMN id SET DEFAULT nextval('public.banners_components_id_seq'::regclass);


--
-- Name: campaigns id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns ALTER COLUMN id SET DEFAULT nextval('public.campaigns_id_seq'::regclass);


--
-- Name: campaigns_campaigns_to_load_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_campaigns_to_load_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_campaigns_to_load_links_id_seq'::regclass);


--
-- Name: campaigns_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_chains_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_chains_links_id_seq'::regclass);


--
-- Name: campaigns_collectibles_to_load_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_collectibles_to_load_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_collectibles_to_load_links_id_seq'::regclass);


--
-- Name: campaigns_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_components ALTER COLUMN id SET DEFAULT nextval('public.campaigns_components_id_seq'::regclass);


--
-- Name: campaigns_corporate_entities_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_corporate_entities_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_corporate_entities_links_id_seq'::regclass);


--
-- Name: campaigns_list_items_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_list_items_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_list_items_links_id_seq'::regclass);


--
-- Name: campaigns_regions_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_regions_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_regions_links_id_seq'::regclass);


--
-- Name: campaigns_stores_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_stores_links ALTER COLUMN id SET DEFAULT nextval('public.campaigns_stores_links_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categories_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_components ALTER COLUMN id SET DEFAULT nextval('public.categories_components_id_seq'::regclass);


--
-- Name: categories_items_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_items_links ALTER COLUMN id SET DEFAULT nextval('public.categories_items_links_id_seq'::regclass);


--
-- Name: chains id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains ALTER COLUMN id SET DEFAULT nextval('public.chains_id_seq'::regclass);


--
-- Name: chains_corporate_entity_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains_corporate_entity_links ALTER COLUMN id SET DEFAULT nextval('public.chains_corporate_entity_links_id_seq'::regclass);


--
-- Name: collectibles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles ALTER COLUMN id SET DEFAULT nextval('public.collectibles_id_seq'::regclass);


--
-- Name: collectibles_allowed_country_codes_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_allowed_country_codes_links ALTER COLUMN id SET DEFAULT nextval('public.collectibles_allowed_country_codes_links_id_seq'::regclass);


--
-- Name: collectibles_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_chains_links ALTER COLUMN id SET DEFAULT nextval('public.collectibles_chains_links_id_seq'::regclass);


--
-- Name: collectibles_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_components ALTER COLUMN id SET DEFAULT nextval('public.collectibles_components_id_seq'::regclass);


--
-- Name: company_profiles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles ALTER COLUMN id SET DEFAULT nextval('public.company_profiles_id_seq'::regclass);


--
-- Name: company_profiles_accounts_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_accounts_links ALTER COLUMN id SET DEFAULT nextval('public.company_profiles_accounts_links_id_seq'::regclass);


--
-- Name: company_profiles_country_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_country_links ALTER COLUMN id SET DEFAULT nextval('public.company_profiles_country_links_id_seq'::regclass);


--
-- Name: company_profiles_gft_pays_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_gft_pays_links ALTER COLUMN id SET DEFAULT nextval('public.company_profiles_gft_pays_links_id_seq'::regclass);


--
-- Name: components_art_artworks id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks ALTER COLUMN id SET DEFAULT nextval('public.components_art_artworks_id_seq'::regclass);


--
-- Name: components_art_artworks_languages_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks_languages_links ALTER COLUMN id SET DEFAULT nextval('public.components_art_artworks_languages_links_id_seq'::regclass);


--
-- Name: components_art_image_collections id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections ALTER COLUMN id SET DEFAULT nextval('public.components_art_image_collections_id_seq'::regclass);


--
-- Name: components_art_image_collections_languages_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections_languages_links ALTER COLUMN id SET DEFAULT nextval('public.components_art_image_collections_languages_links_id_seq'::regclass);


--
-- Name: components_gft_gft_pays id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_gft_gft_pays ALTER COLUMN id SET DEFAULT nextval('public.components_gft_gft_pays_id_seq'::regclass);


--
-- Name: components_prize_collectible_prizes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes ALTER COLUMN id SET DEFAULT nextval('public.components_prize_collectible_prizes_id_seq'::regclass);


--
-- Name: components_prize_collectible_prizes_collectible_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_collectible_links ALTER COLUMN id SET DEFAULT nextval('public.components_prize_collectible_prizes_collectible_links_id_seq'::regclass);


--
-- Name: components_prize_collectible_prizes_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_components ALTER COLUMN id SET DEFAULT nextval('public.components_prize_collectible_prizes_components_id_seq'::regclass);


--
-- Name: components_prize_coupon_prizes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes ALTER COLUMN id SET DEFAULT nextval('public.components_prize_coupon_prizes_id_seq'::regclass);


--
-- Name: components_prize_coupon_prizes_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes_components ALTER COLUMN id SET DEFAULT nextval('public.components_prize_coupon_prizes_components_id_seq'::regclass);


--
-- Name: components_prize_prize_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_prize_details ALTER COLUMN id SET DEFAULT nextval('public.components_prize_prize_details_id_seq'::regclass);


--
-- Name: components_store_management_banners id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_banners ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_banners_id_seq'::regclass);


--
-- Name: components_store_management_headers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_headers_id_seq'::regclass);


--
-- Name: components_store_management_headers_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_headers_components_id_seq'::regclass);


--
-- Name: components_store_management_tiles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_tiles_id_seq'::regclass);


--
-- Name: components_store_management_tiles_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_components ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_tiles_components_id_seq'::regclass);


--
-- Name: components_store_management_tiles_internal_link_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_internal_link_links ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_tiles_internal_link_links_id_seq'::regclass);


--
-- Name: components_store_management_videos id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_videos ALTER COLUMN id SET DEFAULT nextval('public.components_store_management_videos_id_seq'::regclass);


--
-- Name: components_store_stores id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores ALTER COLUMN id SET DEFAULT nextval('public.components_store_stores_id_seq'::regclass);


--
-- Name: components_store_stores_country_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores_country_links ALTER COLUMN id SET DEFAULT nextval('public.components_store_stores_country_links_id_seq'::regclass);


--
-- Name: components_translation_game_texts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts ALTER COLUMN id SET DEFAULT nextval('public.components_translation_game_texts_id_seq'::regclass);


--
-- Name: components_translation_game_texts_languages_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts_languages_links ALTER COLUMN id SET DEFAULT nextval('public.components_translation_game_texts_languages_links_id_seq'::regclass);


--
-- Name: components_translation_terms_conditions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions ALTER COLUMN id SET DEFAULT nextval('public.components_translation_terms_conditions_id_seq'::regclass);


--
-- Name: components_translation_terms_conditions_language_code_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions_language_code_links ALTER COLUMN id SET DEFAULT nextval('public.components_translation_terms_conditions_language_code_li_id_seq'::regclass);


--
-- Name: components_translation_terms_lists id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists ALTER COLUMN id SET DEFAULT nextval('public.components_translation_terms_lists_id_seq'::regclass);


--
-- Name: components_translation_terms_lists_languages_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists_languages_links ALTER COLUMN id SET DEFAULT nextval('public.components_translation_terms_lists_languages_links_id_seq'::regclass);


--
-- Name: components_translation_translations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations ALTER COLUMN id SET DEFAULT nextval('public.components_translation_translations_id_seq'::regclass);


--
-- Name: components_translation_translations_languages_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations_languages_links ALTER COLUMN id SET DEFAULT nextval('public.components_translation_translations_languages_links_id_seq'::regclass);


--
-- Name: configurations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.configurations ALTER COLUMN id SET DEFAULT nextval('public.configurations_id_seq'::regclass);


--
-- Name: congratulation_screens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.congratulation_screens ALTER COLUMN id SET DEFAULT nextval('public.congratulation_screens_id_seq'::regclass);


--
-- Name: corporate_entities id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.corporate_entities ALTER COLUMN id SET DEFAULT nextval('public.corporate_entities_id_seq'::regclass);


--
-- Name: country_codes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.country_codes ALTER COLUMN id SET DEFAULT nextval('public.country_codes_id_seq'::regclass);


--
-- Name: coupon_drops id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupon_drops ALTER COLUMN id SET DEFAULT nextval('public.coupon_drops_id_seq'::regclass);


--
-- Name: coupons id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons ALTER COLUMN id SET DEFAULT nextval('public.coupons_id_seq'::regclass);


--
-- Name: coupons_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons_components ALTER COLUMN id SET DEFAULT nextval('public.coupons_components_id_seq'::regclass);


--
-- Name: create_pwas id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas ALTER COLUMN id SET DEFAULT nextval('public.create_pwas_id_seq'::regclass);


--
-- Name: create_pwas_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas_components ALTER COLUMN id SET DEFAULT nextval('public.create_pwas_components_id_seq'::regclass);


--
-- Name: domains id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains ALTER COLUMN id SET DEFAULT nextval('public.domains_id_seq'::regclass);


--
-- Name: domains_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_chains_links ALTER COLUMN id SET DEFAULT nextval('public.domains_chains_links_id_seq'::regclass);


--
-- Name: domains_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_components ALTER COLUMN id SET DEFAULT nextval('public.domains_components_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: generate_reports id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.generate_reports ALTER COLUMN id SET DEFAULT nextval('public.generate_reports_id_seq'::regclass);


--
-- Name: gft_pays id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays ALTER COLUMN id SET DEFAULT nextval('public.gft_pays_id_seq'::regclass);


--
-- Name: gft_pays_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays_components ALTER COLUMN id SET DEFAULT nextval('public.gft_pays_components_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: importconfigs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.importconfigs ALTER COLUMN id SET DEFAULT nextval('public.importconfigs_id_seq'::regclass);


--
-- Name: language_codes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.language_codes ALTER COLUMN id SET DEFAULT nextval('public.language_codes_id_seq'::regclass);


--
-- Name: messagings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messagings ALTER COLUMN id SET DEFAULT nextval('public.messagings_id_seq'::regclass);


--
-- Name: nft_collections id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections ALTER COLUMN id SET DEFAULT nextval('public.nft_collections_id_seq'::regclass);


--
-- Name: nft_collections_allowed_country_codes_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_allowed_country_codes_links ALTER COLUMN id SET DEFAULT nextval('public.nft_collections_allowed_country_codes_links_id_seq'::regclass);


--
-- Name: nft_collections_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_chains_links ALTER COLUMN id SET DEFAULT nextval('public.nft_collections_chains_links_id_seq'::regclass);


--
-- Name: nft_collections_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_components ALTER COLUMN id SET DEFAULT nextval('public.nft_collections_components_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_chains_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_chains_links ALTER COLUMN id SET DEFAULT nextval('public.pages_chains_links_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: partners id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners ALTER COLUMN id SET DEFAULT nextval('public.partners_id_seq'::regclass);


--
-- Name: partners_congratulation_screen_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners_congratulation_screen_links ALTER COLUMN id SET DEFAULT nextval('public.partners_congratulation_screen_links_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: regions_chain_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions_chain_links ALTER COLUMN id SET DEFAULT nextval('public.regions_chain_links_id_seq'::regclass);


--
-- Name: retail_profiles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles ALTER COLUMN id SET DEFAULT nextval('public.retail_profiles_id_seq'::regclass);


--
-- Name: retail_profiles_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_components ALTER COLUMN id SET DEFAULT nextval('public.retail_profiles_components_id_seq'::regclass);


--
-- Name: retail_profiles_regions_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_regions_links ALTER COLUMN id SET DEFAULT nextval('public.retail_profiles_regions_links_id_seq'::regclass);


--
-- Name: reward_drops id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_drops ALTER COLUMN id SET DEFAULT nextval('public.reward_drops_id_seq'::regclass);


--
-- Name: reward_games id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games ALTER COLUMN id SET DEFAULT nextval('public.reward_games_id_seq'::regclass);


--
-- Name: reward_games_chain_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_chain_links ALTER COLUMN id SET DEFAULT nextval('public.reward_games_chain_links_id_seq'::regclass);


--
-- Name: reward_games_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_components ALTER COLUMN id SET DEFAULT nextval('public.reward_games_components_id_seq'::regclass);


--
-- Name: reward_products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_products ALTER COLUMN id SET DEFAULT nextval('public.reward_products_id_seq'::regclass);


--
-- Name: reward_subscriptions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.reward_subscriptions_id_seq'::regclass);


--
-- Name: reward_subscriptions_allowed_country_codes_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_allowed_country_codes_links ALTER COLUMN id SET DEFAULT nextval('public.reward_subscriptions_allowed_country_codes_links_id_seq'::regclass);


--
-- Name: reward_subscriptions_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_components ALTER COLUMN id SET DEFAULT nextval('public.reward_subscriptions_components_id_seq'::regclass);


--
-- Name: reward_subscriptions_regions_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_regions_links ALTER COLUMN id SET DEFAULT nextval('public.reward_subscriptions_regions_links_id_seq'::regclass);


--
-- Name: shopper_coupons id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons ALTER COLUMN id SET DEFAULT nextval('public.shopper_coupons_id_seq'::regclass);


--
-- Name: shopper_coupons_shopper_id_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons_shopper_id_links ALTER COLUMN id SET DEFAULT nextval('public.shopper_coupons_shopper_id_links_id_seq'::regclass);


--
-- Name: shoppers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shoppers ALTER COLUMN id SET DEFAULT nextval('public.shoppers_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Name: stores_region_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores_region_links ALTER COLUMN id SET DEFAULT nextval('public.stores_region_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: subscription_drops id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops ALTER COLUMN id SET DEFAULT nextval('public.subscription_drops_id_seq'::regclass);


--
-- Name: subscription_drops_subscription_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops_subscription_links ALTER COLUMN id SET DEFAULT nextval('public.subscription_drops_subscription_links_id_seq'::regclass);


--
-- Name: terms_of_services id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.terms_of_services ALTER COLUMN id SET DEFAULT nextval('public.terms_of_services_id_seq'::regclass);


--
-- Name: tokenized_receipts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts ALTER COLUMN id SET DEFAULT nextval('public.tokenized_receipts_id_seq'::regclass);


--
-- Name: tokenized_receipts_allowed_country_codes_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_allowed_country_codes_links ALTER COLUMN id SET DEFAULT nextval('public.tokenized_receipts_allowed_country_codes_links_id_seq'::regclass);


--
-- Name: tokenized_receipts_components id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_components ALTER COLUMN id SET DEFAULT nextval('public.tokenized_receipts_components_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.accounts (id, mobile_wallet_id_number, physical_card_number, virtual_card_number, campaign_balance, account_balance, created_at, updated_at, published_at, created_by_id, updated_by_id, last_4_ein, notification_methods, transaction_history) FROM stdin;
\.


--
-- Data for Name: adc_drops; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.adc_drops (id, drop_timestamp, description, status, result, adc_drop_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: adc_drops_collectibles_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.adc_drops_collectibles_links (id, adc_drop_id, collectible_id, collectible_order) FROM stdin;
\.


--
-- Data for Name: adc_drops_partner_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.adc_drops_partner_links (id, adc_drop_id, partner_id) FROM stdin;
\.


--
-- Data for Name: add_retailers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.add_retailers (id, short_id, name, restricted_loyalty_program, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2023-04-07 14:57:04.814	2023-04-07 14:57:04.814	\N	\N
2	plugin::upload.configure-view	\N	{}	[]	2023-04-07 14:57:04.82	2023-04-07 14:57:04.82	\N	\N
3	plugin::upload.assets.create	\N	{}	[]	2023-04-07 14:57:04.824	2023-04-07 14:57:04.824	\N	\N
4	plugin::upload.assets.update	\N	{}	[]	2023-04-07 14:57:04.827	2023-04-07 14:57:04.827	\N	\N
5	plugin::upload.assets.download	\N	{}	[]	2023-04-07 14:57:04.831	2023-04-07 14:57:04.831	\N	\N
6	plugin::upload.assets.copy-link	\N	{}	[]	2023-04-07 14:57:04.834	2023-04-07 14:57:04.834	\N	\N
7	plugin::upload.read	\N	{}	["admin::is-creator"]	2023-04-07 14:57:04.838	2023-04-07 14:57:04.838	\N	\N
8	plugin::upload.configure-view	\N	{}	[]	2023-04-07 14:57:04.842	2023-04-07 14:57:04.842	\N	\N
9	plugin::upload.assets.create	\N	{}	[]	2023-04-07 14:57:04.845	2023-04-07 14:57:04.845	\N	\N
10	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2023-04-07 14:57:04.848	2023-04-07 14:57:04.848	\N	\N
11	plugin::upload.assets.download	\N	{}	[]	2023-04-07 14:57:04.851	2023-04-07 14:57:04.851	\N	\N
12	plugin::upload.assets.copy-link	\N	{}	[]	2023-04-07 14:57:04.855	2023-04-07 14:57:04.855	\N	\N
16	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2023-04-07 14:57:04.881	2023-04-07 14:57:04.881	\N	\N
17	plugin::content-manager.single-types.configure-view	\N	{}	[]	2023-04-07 14:57:04.884	2023-04-07 14:57:04.884	\N	\N
18	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2023-04-07 14:57:04.888	2023-04-07 14:57:04.888	\N	\N
19	plugin::content-manager.components.configure-layout	\N	{}	[]	2023-04-07 14:57:04.891	2023-04-07 14:57:04.891	\N	\N
20	plugin::content-type-builder.read	\N	{}	[]	2023-04-07 14:57:04.895	2023-04-07 14:57:04.895	\N	\N
21	plugin::email.settings.read	\N	{}	[]	2023-04-07 14:57:04.898	2023-04-07 14:57:04.898	\N	\N
22	plugin::upload.read	\N	{}	[]	2023-04-07 14:57:04.9	2023-04-07 14:57:04.9	\N	\N
23	plugin::upload.assets.create	\N	{}	[]	2023-04-07 14:57:04.903	2023-04-07 14:57:04.903	\N	\N
24	plugin::upload.assets.update	\N	{}	[]	2023-04-07 14:57:04.907	2023-04-07 14:57:04.907	\N	\N
25	plugin::upload.assets.download	\N	{}	[]	2023-04-07 14:57:04.91	2023-04-07 14:57:04.91	\N	\N
26	plugin::upload.assets.copy-link	\N	{}	[]	2023-04-07 14:57:04.913	2023-04-07 14:57:04.913	\N	\N
27	plugin::upload.configure-view	\N	{}	[]	2023-04-07 14:57:04.917	2023-04-07 14:57:04.917	\N	\N
28	plugin::upload.settings.read	\N	{}	[]	2023-04-07 14:57:04.92	2023-04-07 14:57:04.92	\N	\N
29	plugin::documentation.read	\N	{}	[]	2023-04-07 14:57:04.923	2023-04-07 14:57:04.923	\N	\N
30	plugin::documentation.settings.update	\N	{}	[]	2023-04-07 14:57:04.926	2023-04-07 14:57:04.926	\N	\N
31	plugin::documentation.settings.regenerate	\N	{}	[]	2023-04-07 14:57:04.93	2023-04-07 14:57:04.93	\N	\N
32	plugin::documentation.settings.read	\N	{}	[]	2023-04-07 14:57:04.934	2023-04-07 14:57:04.934	\N	\N
33	plugin::i18n.locale.create	\N	{}	[]	2023-04-07 14:57:04.938	2023-04-07 14:57:04.938	\N	\N
34	plugin::i18n.locale.read	\N	{}	[]	2023-04-07 14:57:04.941	2023-04-07 14:57:04.941	\N	\N
35	plugin::i18n.locale.update	\N	{}	[]	2023-04-07 14:57:04.944	2023-04-07 14:57:04.944	\N	\N
36	plugin::i18n.locale.delete	\N	{}	[]	2023-04-07 14:57:04.947	2023-04-07 14:57:04.947	\N	\N
37	plugin::users-permissions.roles.create	\N	{}	[]	2023-04-07 14:57:04.95	2023-04-07 14:57:04.95	\N	\N
38	plugin::users-permissions.roles.read	\N	{}	[]	2023-04-07 14:57:04.953	2023-04-07 14:57:04.953	\N	\N
39	plugin::users-permissions.roles.update	\N	{}	[]	2023-04-07 14:57:04.956	2023-04-07 14:57:04.956	\N	\N
40	plugin::users-permissions.roles.delete	\N	{}	[]	2023-04-07 14:57:04.959	2023-04-07 14:57:04.959	\N	\N
41	plugin::users-permissions.providers.read	\N	{}	[]	2023-04-07 14:57:04.961	2023-04-07 14:57:04.961	\N	\N
42	plugin::users-permissions.providers.update	\N	{}	[]	2023-04-07 14:57:04.964	2023-04-07 14:57:04.964	\N	\N
43	plugin::users-permissions.email-templates.read	\N	{}	[]	2023-04-07 14:57:04.967	2023-04-07 14:57:04.967	\N	\N
44	plugin::users-permissions.email-templates.update	\N	{}	[]	2023-04-07 14:57:04.97	2023-04-07 14:57:04.97	\N	\N
45	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2023-04-07 14:57:04.972	2023-04-07 14:57:04.972	\N	\N
46	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2023-04-07 14:57:04.975	2023-04-07 14:57:04.975	\N	\N
47	admin::marketplace.read	\N	{}	[]	2023-04-07 14:57:04.978	2023-04-07 14:57:04.978	\N	\N
48	admin::webhooks.create	\N	{}	[]	2023-04-07 14:57:04.981	2023-04-07 14:57:04.981	\N	\N
49	admin::webhooks.read	\N	{}	[]	2023-04-07 14:57:04.983	2023-04-07 14:57:04.983	\N	\N
50	admin::webhooks.update	\N	{}	[]	2023-04-07 14:57:04.986	2023-04-07 14:57:04.986	\N	\N
51	admin::webhooks.delete	\N	{}	[]	2023-04-07 14:57:04.99	2023-04-07 14:57:04.99	\N	\N
52	admin::users.create	\N	{}	[]	2023-04-07 14:57:04.993	2023-04-07 14:57:04.993	\N	\N
53	admin::users.read	\N	{}	[]	2023-04-07 14:57:04.995	2023-04-07 14:57:04.995	\N	\N
54	admin::users.update	\N	{}	[]	2023-04-07 14:57:04.998	2023-04-07 14:57:04.998	\N	\N
55	admin::users.delete	\N	{}	[]	2023-04-07 14:57:05.001	2023-04-07 14:57:05.001	\N	\N
56	admin::roles.create	\N	{}	[]	2023-04-07 14:57:05.004	2023-04-07 14:57:05.004	\N	\N
57	admin::roles.read	\N	{}	[]	2023-04-07 14:57:05.007	2023-04-07 14:57:05.007	\N	\N
58	admin::roles.update	\N	{}	[]	2023-04-07 14:57:05.009	2023-04-07 14:57:05.009	\N	\N
59	admin::roles.delete	\N	{}	[]	2023-04-07 14:57:05.012	2023-04-07 14:57:05.012	\N	\N
60	admin::api-tokens.access	\N	{}	[]	2023-04-07 14:57:05.015	2023-04-07 14:57:05.015	\N	\N
61	admin::api-tokens.create	\N	{}	[]	2023-04-07 14:57:05.017	2023-04-07 14:57:05.017	\N	\N
62	admin::api-tokens.read	\N	{}	[]	2023-04-07 14:57:05.02	2023-04-07 14:57:05.02	\N	\N
63	admin::api-tokens.update	\N	{}	[]	2023-04-07 14:57:05.023	2023-04-07 14:57:05.023	\N	\N
64	admin::api-tokens.regenerate	\N	{}	[]	2023-04-07 14:57:05.026	2023-04-07 14:57:05.026	\N	\N
65	admin::api-tokens.delete	\N	{}	[]	2023-04-07 14:57:05.029	2023-04-07 14:57:05.029	\N	\N
66	admin::project-settings.update	\N	{}	[]	2023-04-07 14:57:05.032	2023-04-07 14:57:05.032	\N	\N
67	admin::project-settings.read	\N	{}	[]	2023-04-07 14:57:05.034	2023-04-07 14:57:05.034	\N	\N
68	admin::transfer.tokens.access	\N	{}	[]	2023-04-07 14:57:05.037	2023-04-07 14:57:05.037	\N	\N
69	admin::transfer.tokens.create	\N	{}	[]	2023-04-07 14:57:05.04	2023-04-07 14:57:05.04	\N	\N
70	admin::transfer.tokens.read	\N	{}	[]	2023-04-07 14:57:05.043	2023-04-07 14:57:05.043	\N	\N
71	admin::transfer.tokens.update	\N	{}	[]	2023-04-07 14:57:05.046	2023-04-07 14:57:05.046	\N	\N
72	admin::transfer.tokens.regenerate	\N	{}	[]	2023-04-07 14:57:05.049	2023-04-07 14:57:05.049	\N	\N
73	admin::transfer.tokens.delete	\N	{}	[]	2023-04-07 14:57:05.052	2023-04-07 14:57:05.052	\N	\N
178	plugin::content-manager.explorer.delete	api::domain.domain	{}	[]	2023-04-07 16:27:14.856	2023-04-07 16:27:14.856	\N	\N
77	plugin::content-manager.explorer.delete	api::adc-drop.adc-drop	{}	[]	2023-04-07 15:27:03.292	2023-04-07 15:27:03.292	\N	\N
78	plugin::content-manager.explorer.publish	api::adc-drop.adc-drop	{}	[]	2023-04-07 15:27:03.295	2023-04-07 15:27:03.295	\N	\N
79	plugin::content-manager.explorer.create	api::add-retailer.add-retailer	{"fields": ["short_id", "name", "restricted_loyalty_program"]}	[]	2023-04-07 15:30:08.292	2023-04-07 15:30:08.292	\N	\N
80	plugin::content-manager.explorer.read	api::add-retailer.add-retailer	{"fields": ["short_id", "name", "restricted_loyalty_program"]}	[]	2023-04-07 15:30:08.3	2023-04-07 15:30:08.3	\N	\N
81	plugin::content-manager.explorer.update	api::add-retailer.add-retailer	{"fields": ["short_id", "name", "restricted_loyalty_program"]}	[]	2023-04-07 15:30:08.303	2023-04-07 15:30:08.303	\N	\N
82	plugin::content-manager.explorer.delete	api::add-retailer.add-retailer	{}	[]	2023-04-07 15:30:08.307	2023-04-07 15:30:08.307	\N	\N
83	plugin::content-manager.explorer.publish	api::add-retailer.add-retailer	{}	[]	2023-04-07 15:30:08.312	2023-04-07 15:30:08.312	\N	\N
84	plugin::content-manager.explorer.create	api::associate.associate	{"fields": ["name", "associate_id"]}	[]	2023-04-07 15:31:26.896	2023-04-07 15:31:26.896	\N	\N
85	plugin::content-manager.explorer.read	api::associate.associate	{"fields": ["name", "associate_id"]}	[]	2023-04-07 15:31:26.91	2023-04-07 15:31:26.91	\N	\N
86	plugin::content-manager.explorer.update	api::associate.associate	{"fields": ["name", "associate_id"]}	[]	2023-04-07 15:31:26.922	2023-04-07 15:31:26.922	\N	\N
87	plugin::content-manager.explorer.delete	api::associate.associate	{}	[]	2023-04-07 15:31:26.932	2023-04-07 15:31:26.932	\N	\N
88	plugin::content-manager.explorer.publish	api::associate.associate	{}	[]	2023-04-07 15:31:26.937	2023-04-07 15:31:26.937	\N	\N
92	plugin::content-manager.explorer.delete	api::banner.banner	{}	[]	2023-04-07 15:34:19.378	2023-04-07 15:34:19.378	\N	\N
93	plugin::content-manager.explorer.publish	api::banner.banner	{}	[]	2023-04-07 15:34:19.383	2023-04-07 15:34:19.383	\N	\N
97	plugin::content-manager.explorer.delete	api::categorie.categorie	{}	[]	2023-04-07 15:36:44.278	2023-04-07 15:36:44.278	\N	\N
98	plugin::content-manager.explorer.publish	api::categorie.categorie	{}	[]	2023-04-07 15:36:44.282	2023-04-07 15:36:44.282	\N	\N
102	plugin::content-manager.explorer.delete	api::language-code.language-code	{}	[]	2023-04-07 15:37:25.462	2023-04-07 15:37:25.462	\N	\N
103	plugin::content-manager.explorer.publish	api::language-code.language-code	{}	[]	2023-04-07 15:37:25.466	2023-04-07 15:37:25.466	\N	\N
104	plugin::content-manager.explorer.create	api::country-code.country-code	{"fields": ["name", "dial_code", "code", "label"]}	[]	2023-04-07 15:38:09.709	2023-04-07 15:38:09.709	\N	\N
105	plugin::content-manager.explorer.read	api::country-code.country-code	{"fields": ["name", "dial_code", "code", "label"]}	[]	2023-04-07 15:38:09.717	2023-04-07 15:38:09.717	\N	\N
106	plugin::content-manager.explorer.update	api::country-code.country-code	{"fields": ["name", "dial_code", "code", "label"]}	[]	2023-04-07 15:38:09.721	2023-04-07 15:38:09.721	\N	\N
107	plugin::content-manager.explorer.delete	api::country-code.country-code	{}	[]	2023-04-07 15:38:09.724	2023-04-07 15:38:09.724	\N	\N
108	plugin::content-manager.explorer.publish	api::country-code.country-code	{}	[]	2023-04-07 15:38:09.728	2023-04-07 15:38:09.728	\N	\N
115	plugin::content-manager.explorer.delete	api::chain.chain	{}	[]	2023-04-07 15:41:16.642	2023-04-07 15:41:16.642	\N	\N
116	plugin::content-manager.explorer.publish	api::chain.chain	{}	[]	2023-04-07 15:41:16.646	2023-04-07 15:41:16.646	\N	\N
117	plugin::content-manager.explorer.create	api::banner.banner	{"fields": ["artwork.artwork", "artwork.languages", "short_name_tag", "visible", "featured_order", "external_link", "banner_id", "chains"]}	[]	2023-04-07 15:41:56.447	2023-04-07 15:41:56.447	\N	\N
118	plugin::content-manager.explorer.read	api::banner.banner	{"fields": ["artwork.artwork", "artwork.languages", "short_name_tag", "visible", "featured_order", "external_link", "banner_id", "chains"]}	[]	2023-04-07 15:41:56.454	2023-04-07 15:41:56.454	\N	\N
119	plugin::content-manager.explorer.update	api::banner.banner	{"fields": ["artwork.artwork", "artwork.languages", "short_name_tag", "visible", "featured_order", "external_link", "banner_id", "chains"]}	[]	2023-04-07 15:41:56.459	2023-04-07 15:41:56.459	\N	\N
179	plugin::content-manager.explorer.publish	api::domain.domain	{}	[]	2023-04-07 16:27:14.861	2023-04-07 16:27:14.861	\N	\N
123	plugin::content-manager.explorer.delete	api::company-profile.company-profile	{}	[]	2023-04-07 15:49:09.187	2023-04-07 15:49:09.187	\N	\N
124	plugin::content-manager.explorer.publish	api::company-profile.company-profile	{}	[]	2023-04-07 15:49:09.193	2023-04-07 15:49:09.193	\N	\N
128	plugin::content-manager.explorer.delete	api::congratulation-screen.congratulation-screen	{}	[]	2023-04-07 15:50:42.112	2023-04-07 15:50:42.112	\N	\N
129	plugin::content-manager.explorer.publish	api::congratulation-screen.congratulation-screen	{}	[]	2023-04-07 15:50:42.115	2023-04-07 15:50:42.115	\N	\N
459	plugin::content-manager.explorer.read	api::chain.chain	{"fields": ["name", "banners", "reward_games", "regions", "corporateEntity"]}	[]	2023-06-01 13:21:56.104	2023-06-01 13:21:56.104	\N	\N
460	plugin::content-manager.explorer.read	api::corporate-entity.corporate-entity	{"fields": ["name", "lookupName", "chains"]}	[]	2023-06-01 13:21:56.11	2023-06-01 13:21:56.11	\N	\N
193	plugin::content-manager.explorer.delete	api::messaging.messaging	{}	[]	2023-04-07 16:30:25.957	2023-04-07 16:30:25.957	\N	\N
461	plugin::content-manager.explorer.update	api::chain.chain	{"fields": ["name", "banners", "reward_games", "regions", "corporateEntity"]}	[]	2023-06-01 13:21:56.114	2023-06-01 13:21:56.114	\N	\N
136	plugin::content-manager.explorer.delete	api::partner.partner	{}	[]	2023-04-07 15:52:04.799	2023-04-07 15:52:04.799	\N	\N
137	plugin::content-manager.explorer.publish	api::partner.partner	{}	[]	2023-04-07 15:52:04.803	2023-04-07 15:52:04.803	\N	\N
462	plugin::content-manager.explorer.update	api::corporate-entity.corporate-entity	{"fields": ["name", "lookupName", "chains"]}	[]	2023-06-01 13:21:56.117	2023-06-01 13:21:56.117	\N	\N
463	plugin::content-manager.explorer.delete	api::corporate-entity.corporate-entity	{}	[]	2023-06-01 13:21:56.12	2023-06-01 13:21:56.12	\N	\N
464	plugin::content-manager.explorer.publish	api::corporate-entity.corporate-entity	{}	[]	2023-06-01 13:21:56.124	2023-06-01 13:21:56.124	\N	\N
141	plugin::content-manager.explorer.create	api::coupon-drop.coupon-drop	{"fields": ["description", "phone_numbers", "status", "drop_timestamp", "coupon_drop_id", "result"]}	[]	2023-04-07 15:54:25.988	2023-04-07 15:54:25.988	\N	\N
142	plugin::content-manager.explorer.read	api::coupon-drop.coupon-drop	{"fields": ["description", "phone_numbers", "status", "drop_timestamp", "coupon_drop_id", "result"]}	[]	2023-04-07 15:54:26.004	2023-04-07 15:54:26.004	\N	\N
143	plugin::content-manager.explorer.update	api::coupon-drop.coupon-drop	{"fields": ["description", "phone_numbers", "status", "drop_timestamp", "coupon_drop_id", "result"]}	[]	2023-04-07 15:54:26.017	2023-04-07 15:54:26.017	\N	\N
144	plugin::content-manager.explorer.delete	api::coupon-drop.coupon-drop	{}	[]	2023-04-07 15:54:26.023	2023-04-07 15:54:26.023	\N	\N
476	plugin::content-manager.explorer.create	api::campaign.campaign	{"fields": ["campaignId", "couponValue", "beginDate", "endDate", "isBasket", "isRebate", "basketValue", "quantity", "isMultiple", "updateLevel", "couponSupply", "additionalRulesLink", "listId", "listItems", "type", "loyaltyPoints", "isFeatured", "status", "couponType", "totalRedeemed", "totalLoaded", "totalAvailable", "previewLink", "chains", "corporateEntities", "regions", "stores", "shortId", "primaryArtworkList.artwork", "primaryArtworkList.languages", "bannerArtworkList.artwork", "bannerArtworkList.languages", "descriptions.translation", "descriptions.languages", "termsList.translation", "termsList.languages", "storeTerminalDescriptions.translation", "storeTerminalDescriptions.languages", "shortName", "backArtwork.artwork", "backArtwork.languages", "featuredOrder", "dealsOrder", "passiveRedemption", "collectiblesToLoad", "campaignsToLoad", "onDisplayInPWA", "redeemButtonOnReward", "disableLoadToWalletByUser"]}	[]	2023-06-01 13:37:14.467	2023-06-01 13:37:14.467	\N	\N
145	plugin::content-manager.explorer.publish	api::coupon-drop.coupon-drop	{}	[]	2023-04-07 15:54:26.03	2023-04-07 15:54:26.03	\N	\N
146	plugin::content-manager.explorer.create	api::coupon.coupon	{"fields": ["reward_name", "pos_campaign_id", "status", "preview_link", "on_display_in_pwa", "type", "reward_type", "begin_date", "end_date", "passive_redemption", "front_of_reward_artwork", "back_of_reward_artwork", "description", "disclaimer", "additional_terms_link", "receipt_description", "reward_supply", "reward_value", "total_products", "basket_reward", "basket_value", "is_featured", "short_id", "total_available", "total_loaded", "total_redeemed", "featured_order", "deals_order", "redeem_button_on_reward", "disable_load_to_wallet_by_user", "is_rebate", "included_products", "corporate_entity", "chains", "regions", "stores", "collectibles_to_load", "campaigns_to_load", "gft_explorer_link", "banner_artwork.artwork", "banner_artwork.languages"]}	[]	2023-04-07 16:00:23.715	2023-04-07 16:00:23.715	\N	\N
147	plugin::content-manager.explorer.read	api::coupon.coupon	{"fields": ["reward_name", "pos_campaign_id", "status", "preview_link", "on_display_in_pwa", "type", "reward_type", "begin_date", "end_date", "passive_redemption", "front_of_reward_artwork", "back_of_reward_artwork", "description", "disclaimer", "additional_terms_link", "receipt_description", "reward_supply", "reward_value", "total_products", "basket_reward", "basket_value", "is_featured", "short_id", "total_available", "total_loaded", "total_redeemed", "featured_order", "deals_order", "redeem_button_on_reward", "disable_load_to_wallet_by_user", "is_rebate", "included_products", "corporate_entity", "chains", "regions", "stores", "collectibles_to_load", "campaigns_to_load", "gft_explorer_link", "banner_artwork.artwork", "banner_artwork.languages"]}	[]	2023-04-07 16:00:23.725	2023-04-07 16:00:23.725	\N	\N
148	plugin::content-manager.explorer.update	api::coupon.coupon	{"fields": ["reward_name", "pos_campaign_id", "status", "preview_link", "on_display_in_pwa", "type", "reward_type", "begin_date", "end_date", "passive_redemption", "front_of_reward_artwork", "back_of_reward_artwork", "description", "disclaimer", "additional_terms_link", "receipt_description", "reward_supply", "reward_value", "total_products", "basket_reward", "basket_value", "is_featured", "short_id", "total_available", "total_loaded", "total_redeemed", "featured_order", "deals_order", "redeem_button_on_reward", "disable_load_to_wallet_by_user", "is_rebate", "included_products", "corporate_entity", "chains", "regions", "stores", "collectibles_to_load", "campaigns_to_load", "gft_explorer_link", "banner_artwork.artwork", "banner_artwork.languages"]}	[]	2023-04-07 16:00:23.729	2023-04-07 16:00:23.729	\N	\N
149	plugin::content-manager.explorer.delete	api::coupon.coupon	{}	[]	2023-04-07 16:00:23.732	2023-04-07 16:00:23.732	\N	\N
150	plugin::content-manager.explorer.publish	api::coupon.coupon	{}	[]	2023-04-07 16:00:23.737	2023-04-07 16:00:23.737	\N	\N
180	plugin::content-manager.explorer.create	api::generate-report.generate-report	{"fields": ["report_type_summary", "receipt_mints", "rewards_tranfers", "receipt_transfers", "rewards_mints", "start_date", "end_date", "domain_specific_reports", "generate_report"]}	[]	2023-04-07 16:28:37.983	2023-04-07 16:28:37.983	\N	\N
181	plugin::content-manager.explorer.read	api::generate-report.generate-report	{"fields": ["report_type_summary", "receipt_mints", "rewards_tranfers", "receipt_transfers", "rewards_mints", "start_date", "end_date", "domain_specific_reports", "generate_report"]}	[]	2023-04-07 16:28:37.992	2023-04-07 16:28:37.992	\N	\N
182	plugin::content-manager.explorer.update	api::generate-report.generate-report	{"fields": ["report_type_summary", "receipt_mints", "rewards_tranfers", "receipt_transfers", "rewards_mints", "start_date", "end_date", "domain_specific_reports", "generate_report"]}	[]	2023-04-07 16:28:37.997	2023-04-07 16:28:37.997	\N	\N
154	plugin::content-manager.explorer.delete	api::page.page	{}	[]	2023-04-07 16:14:04.624	2023-04-07 16:14:04.624	\N	\N
155	plugin::content-manager.explorer.publish	api::page.page	{}	[]	2023-04-07 16:14:04.629	2023-04-07 16:14:04.629	\N	\N
159	plugin::content-manager.explorer.create	api::page.page	{"fields": ["page_name", "chains", "banners.page_number", "banners.visible", "banners.start_date", "banners.end_date", "banners.short_name", "headers.short_name", "headers.page_order", "headers.visible", "headers.start_date", "headers.end_date", "headers.header_text.translation", "headers.header_text.languages", "tiles.page_order", "tiles.short_name", "tiles.visible", "tiles.start_date", "tiles.end_date", "tiles.art_work_list.artwork", "tiles.art_work_list.languages", "tiles.external_link", "tiles.internal_link", "videos.page_order", "videos.visible", "videos.short_name", "videos.start_date", "videos.end_date"]}	[]	2023-04-07 16:18:24.863	2023-04-07 16:18:24.863	\N	\N
191	plugin::content-manager.explorer.read	api::messaging.messaging	{"fields": ["social_link", "text_message", "email_message", "blog_link"]}	[]	2023-04-07 16:30:25.944	2023-04-07 16:30:25.944	\N	\N
192	plugin::content-manager.explorer.update	api::messaging.messaging	{"fields": ["social_link", "text_message", "email_message", "blog_link"]}	[]	2023-04-07 16:30:25.951	2023-04-07 16:30:25.951	\N	\N
160	plugin::content-manager.explorer.read	api::page.page	{"fields": ["page_name", "chains", "banners.page_number", "banners.visible", "banners.start_date", "banners.end_date", "banners.short_name", "headers.short_name", "headers.page_order", "headers.visible", "headers.start_date", "headers.end_date", "headers.header_text.translation", "headers.header_text.languages", "tiles.page_order", "tiles.short_name", "tiles.visible", "tiles.start_date", "tiles.end_date", "tiles.art_work_list.artwork", "tiles.art_work_list.languages", "tiles.external_link", "tiles.internal_link", "videos.page_order", "videos.visible", "videos.short_name", "videos.start_date", "videos.end_date"]}	[]	2023-04-07 16:18:24.878	2023-04-07 16:18:24.878	\N	\N
161	plugin::content-manager.explorer.update	api::page.page	{"fields": ["page_name", "chains", "banners.page_number", "banners.visible", "banners.start_date", "banners.end_date", "banners.short_name", "headers.short_name", "headers.page_order", "headers.visible", "headers.start_date", "headers.end_date", "headers.header_text.translation", "headers.header_text.languages", "tiles.page_order", "tiles.short_name", "tiles.visible", "tiles.start_date", "tiles.end_date", "tiles.art_work_list.artwork", "tiles.art_work_list.languages", "tiles.external_link", "tiles.internal_link", "videos.page_order", "videos.visible", "videos.short_name", "videos.start_date", "videos.end_date"]}	[]	2023-04-07 16:18:24.888	2023-04-07 16:18:24.888	\N	\N
162	plugin::content-manager.explorer.create	api::terms-of-service.terms-of-service	{"fields": ["terms_of_service", "gft_explorer_link"]}	[]	2023-04-07 16:19:11.26	2023-04-07 16:19:11.26	\N	\N
163	plugin::content-manager.explorer.read	api::terms-of-service.terms-of-service	{"fields": ["terms_of_service", "gft_explorer_link"]}	[]	2023-04-07 16:19:11.28	2023-04-07 16:19:11.28	\N	\N
164	plugin::content-manager.explorer.update	api::terms-of-service.terms-of-service	{"fields": ["terms_of_service", "gft_explorer_link"]}	[]	2023-04-07 16:19:11.289	2023-04-07 16:19:11.289	\N	\N
165	plugin::content-manager.explorer.delete	api::terms-of-service.terms-of-service	{}	[]	2023-04-07 16:19:11.294	2023-04-07 16:19:11.294	\N	\N
166	plugin::content-manager.explorer.publish	api::terms-of-service.terms-of-service	{}	[]	2023-04-07 16:19:11.298	2023-04-07 16:19:11.298	\N	\N
170	plugin::content-manager.explorer.create	api::create-pwa.create-pwa	{"fields": ["matcher", "name", "logo", "rules", "privacy", "terms", "enable_associates_portal", "asset_types_supported", "xsolla_paystation_url", "transfer_receipt_messages.translation", "transfer_receipt_messages.languages", "transfer_reward_messages.translation", "transfer_reward_messages.languages", "redemption_instructions.translation", "redemption_instructions.languages", "receipt_message.translation", "receipt_message.languages", "left_footer_image", "right_footer_image"]}	[]	2023-04-07 16:23:00.117	2023-04-07 16:23:00.117	\N	\N
171	plugin::content-manager.explorer.read	api::create-pwa.create-pwa	{"fields": ["matcher", "name", "logo", "rules", "privacy", "terms", "enable_associates_portal", "asset_types_supported", "xsolla_paystation_url", "transfer_receipt_messages.translation", "transfer_receipt_messages.languages", "transfer_reward_messages.translation", "transfer_reward_messages.languages", "redemption_instructions.translation", "redemption_instructions.languages", "receipt_message.translation", "receipt_message.languages", "left_footer_image", "right_footer_image"]}	[]	2023-04-07 16:23:00.14	2023-04-07 16:23:00.14	\N	\N
172	plugin::content-manager.explorer.update	api::create-pwa.create-pwa	{"fields": ["matcher", "name", "logo", "rules", "privacy", "terms", "enable_associates_portal", "asset_types_supported", "xsolla_paystation_url", "transfer_receipt_messages.translation", "transfer_receipt_messages.languages", "transfer_reward_messages.translation", "transfer_reward_messages.languages", "redemption_instructions.translation", "redemption_instructions.languages", "receipt_message.translation", "receipt_message.languages", "left_footer_image", "right_footer_image"]}	[]	2023-04-07 16:23:00.149	2023-04-07 16:23:00.149	\N	\N
173	plugin::content-manager.explorer.delete	api::create-pwa.create-pwa	{}	[]	2023-04-07 16:23:00.154	2023-04-07 16:23:00.154	\N	\N
174	plugin::content-manager.explorer.publish	api::create-pwa.create-pwa	{}	[]	2023-04-07 16:23:00.16	2023-04-07 16:23:00.16	\N	\N
175	plugin::content-manager.explorer.create	api::domain.domain	{"fields": ["matcher", "chains", "logo", "rules", "privacy", "terms", "redemption_instructions.translation", "redemption_instructions.languages", "transfer_collectible_messages.translation", "transfer_collectible_messages.languages", "receipt_message.translation", "receipt_message.languages", "enable_associates_portal", "asset_types_supported", "left_footer_image", "right_footer_image", "x_solla_paystation_url", "transfer_coupon_messages.translation", "transfer_coupon_messages.languages"]}	[]	2023-04-07 16:27:14.827	2023-04-07 16:27:14.827	\N	\N
176	plugin::content-manager.explorer.read	api::domain.domain	{"fields": ["matcher", "chains", "logo", "rules", "privacy", "terms", "redemption_instructions.translation", "redemption_instructions.languages", "transfer_collectible_messages.translation", "transfer_collectible_messages.languages", "receipt_message.translation", "receipt_message.languages", "enable_associates_portal", "asset_types_supported", "left_footer_image", "right_footer_image", "x_solla_paystation_url", "transfer_coupon_messages.translation", "transfer_coupon_messages.languages"]}	[]	2023-04-07 16:27:14.844	2023-04-07 16:27:14.844	\N	\N
177	plugin::content-manager.explorer.update	api::domain.domain	{"fields": ["matcher", "chains", "logo", "rules", "privacy", "terms", "redemption_instructions.translation", "redemption_instructions.languages", "transfer_collectible_messages.translation", "transfer_collectible_messages.languages", "receipt_message.translation", "receipt_message.languages", "enable_associates_portal", "asset_types_supported", "left_footer_image", "right_footer_image", "x_solla_paystation_url", "transfer_coupon_messages.translation", "transfer_coupon_messages.languages"]}	[]	2023-04-07 16:27:14.849	2023-04-07 16:27:14.849	\N	\N
183	plugin::content-manager.explorer.delete	api::generate-report.generate-report	{}	[]	2023-04-07 16:28:38.004	2023-04-07 16:28:38.004	\N	\N
184	plugin::content-manager.explorer.publish	api::generate-report.generate-report	{}	[]	2023-04-07 16:28:38.009	2023-04-07 16:28:38.009	\N	\N
185	plugin::content-manager.explorer.create	api::importconfig.importconfig	{"fields": ["date", "source", "content_type", "imported_count", "ongoing", "options", "field_mapping"]}	[]	2023-04-07 16:29:49.961	2023-04-07 16:29:49.961	\N	\N
186	plugin::content-manager.explorer.read	api::importconfig.importconfig	{"fields": ["date", "source", "content_type", "imported_count", "ongoing", "options", "field_mapping"]}	[]	2023-04-07 16:29:49.973	2023-04-07 16:29:49.973	\N	\N
187	plugin::content-manager.explorer.update	api::importconfig.importconfig	{"fields": ["date", "source", "content_type", "imported_count", "ongoing", "options", "field_mapping"]}	[]	2023-04-07 16:29:49.984	2023-04-07 16:29:49.984	\N	\N
188	plugin::content-manager.explorer.delete	api::importconfig.importconfig	{}	[]	2023-04-07 16:29:49.991	2023-04-07 16:29:49.991	\N	\N
189	plugin::content-manager.explorer.publish	api::importconfig.importconfig	{}	[]	2023-04-07 16:29:49.997	2023-04-07 16:29:49.997	\N	\N
190	plugin::content-manager.explorer.create	api::messaging.messaging	{"fields": ["social_link", "text_message", "email_message", "blog_link"]}	[]	2023-04-07 16:30:25.934	2023-04-07 16:30:25.934	\N	\N
194	plugin::content-manager.explorer.publish	api::messaging.messaging	{}	[]	2023-04-07 16:30:25.964	2023-04-07 16:30:25.964	\N	\N
195	plugin::content-manager.explorer.create	api::nft-collection.nft-collection	{"fields": ["name", "short_name", "gft_explorer_link", "supply", "terms_list.translation", "terms_list.languages", "description.translation", "description.languages", "total_minted", "vimeo_video_id", "default_back_image.artwork", "default_back_image.languages", "nft_collection_id", "allowed_country_codes", "chains"]}	[]	2023-04-07 16:33:15.227	2023-04-07 16:33:15.227	\N	\N
196	plugin::content-manager.explorer.read	api::nft-collection.nft-collection	{"fields": ["name", "short_name", "gft_explorer_link", "supply", "terms_list.translation", "terms_list.languages", "description.translation", "description.languages", "total_minted", "vimeo_video_id", "default_back_image.artwork", "default_back_image.languages", "nft_collection_id", "allowed_country_codes", "chains"]}	[]	2023-04-07 16:33:15.249	2023-04-07 16:33:15.249	\N	\N
197	plugin::content-manager.explorer.update	api::nft-collection.nft-collection	{"fields": ["name", "short_name", "gft_explorer_link", "supply", "terms_list.translation", "terms_list.languages", "description.translation", "description.languages", "total_minted", "vimeo_video_id", "default_back_image.artwork", "default_back_image.languages", "nft_collection_id", "allowed_country_codes", "chains"]}	[]	2023-04-07 16:33:15.257	2023-04-07 16:33:15.257	\N	\N
198	plugin::content-manager.explorer.delete	api::nft-collection.nft-collection	{}	[]	2023-04-07 16:33:15.262	2023-04-07 16:33:15.262	\N	\N
199	plugin::content-manager.explorer.publish	api::nft-collection.nft-collection	{}	[]	2023-04-07 16:33:15.268	2023-04-07 16:33:15.268	\N	\N
203	plugin::content-manager.explorer.delete	api::product.product	{}	[]	2023-04-07 16:34:37.899	2023-04-07 16:34:37.899	\N	\N
204	plugin::content-manager.explorer.publish	api::product.product	{}	[]	2023-04-07 16:34:37.905	2023-04-07 16:34:37.905	\N	\N
211	plugin::content-manager.explorer.delete	api::region.region	{}	[]	2023-04-07 16:47:44.06	2023-04-07 16:47:44.06	\N	\N
212	plugin::content-manager.explorer.publish	api::region.region	{}	[]	2023-04-07 16:47:44.067	2023-04-07 16:47:44.067	\N	\N
437	plugin::content-manager.explorer.create	api::reward-game.reward-game	{"fields": ["game_name", "banner", "game_id", "max_daily_plays", "begin_date", "end_date", "game_server_url", "official_rules_link", "feature_order", "gft_explorer_link", "banner_artwork_list.artwork", "banner_artwork_list.languages", "coupon_prize.shortName", "coupon_prize.details.prizeSupply", "coupon_prize.details.winAfter", "coupon_prize.details.winningPrize", "coupon_prize.details.prizesAvailable", "coupon_prize.details.maxWinsPerDay", "coupon_prize.details.winInterval", "coupon_prize.details.waitAfterWin", "coupon_prize.details.prizeId", "game_text.text", "game_text.languages", "chain"]}	[]	2023-06-01 13:02:24.418	2023-06-01 13:02:24.418	\N	\N
438	plugin::content-manager.explorer.read	api::reward-game.reward-game	{"fields": ["game_name", "banner", "game_id", "max_daily_plays", "begin_date", "end_date", "game_server_url", "official_rules_link", "feature_order", "gft_explorer_link", "banner_artwork_list.artwork", "banner_artwork_list.languages", "coupon_prize.shortName", "coupon_prize.details.prizeSupply", "coupon_prize.details.winAfter", "coupon_prize.details.winningPrize", "coupon_prize.details.prizesAvailable", "coupon_prize.details.maxWinsPerDay", "coupon_prize.details.winInterval", "coupon_prize.details.waitAfterWin", "coupon_prize.details.prizeId", "game_text.text", "game_text.languages", "chain"]}	[]	2023-06-01 13:02:24.423	2023-06-01 13:02:24.423	\N	\N
439	plugin::content-manager.explorer.update	api::reward-game.reward-game	{"fields": ["game_name", "banner", "game_id", "max_daily_plays", "begin_date", "end_date", "game_server_url", "official_rules_link", "feature_order", "gft_explorer_link", "banner_artwork_list.artwork", "banner_artwork_list.languages", "coupon_prize.shortName", "coupon_prize.details.prizeSupply", "coupon_prize.details.winAfter", "coupon_prize.details.winningPrize", "coupon_prize.details.prizesAvailable", "coupon_prize.details.maxWinsPerDay", "coupon_prize.details.winInterval", "coupon_prize.details.waitAfterWin", "coupon_prize.details.prizeId", "game_text.text", "game_text.languages", "chain"]}	[]	2023-06-01 13:02:24.428	2023-06-01 13:02:24.428	\N	\N
216	plugin::content-manager.explorer.delete	api::retail-profile.retail-profile	{}	[]	2023-04-07 16:48:32.232	2023-04-07 16:48:32.232	\N	\N
217	plugin::content-manager.explorer.publish	api::retail-profile.retail-profile	{}	[]	2023-04-07 16:48:32.238	2023-04-07 16:48:32.238	\N	\N
218	plugin::content-manager.explorer.create	api::reward-drop.reward-drop	{"fields": ["description", "phone_numbers", "result", "status", "drop_timestamp", "reward_drop_id", "campaign", "gft_explorer_link"]}	[]	2023-04-07 16:49:34.856	2023-04-07 16:49:34.856	\N	\N
219	plugin::content-manager.explorer.read	api::reward-drop.reward-drop	{"fields": ["description", "phone_numbers", "result", "status", "drop_timestamp", "reward_drop_id", "campaign", "gft_explorer_link"]}	[]	2023-04-07 16:49:34.867	2023-04-07 16:49:34.867	\N	\N
220	plugin::content-manager.explorer.update	api::reward-drop.reward-drop	{"fields": ["description", "phone_numbers", "result", "status", "drop_timestamp", "reward_drop_id", "campaign", "gft_explorer_link"]}	[]	2023-04-07 16:49:34.874	2023-04-07 16:49:34.874	\N	\N
221	plugin::content-manager.explorer.delete	api::reward-drop.reward-drop	{}	[]	2023-04-07 16:49:34.88	2023-04-07 16:49:34.88	\N	\N
222	plugin::content-manager.explorer.publish	api::reward-drop.reward-drop	{}	[]	2023-04-07 16:49:34.887	2023-04-07 16:49:34.887	\N	\N
226	plugin::content-manager.explorer.delete	api::reward-game.reward-game	{}	[]	2023-04-07 16:53:33.686	2023-04-07 16:53:33.686	\N	\N
227	plugin::content-manager.explorer.publish	api::reward-game.reward-game	{}	[]	2023-04-07 16:53:33.698	2023-04-07 16:53:33.698	\N	\N
228	plugin::content-manager.explorer.create	api::reward-product.reward-product	{"fields": ["product_name", "upc_code", "product_image"]}	[]	2023-04-07 16:54:50.841	2023-04-07 16:54:50.841	\N	\N
229	plugin::content-manager.explorer.read	api::reward-product.reward-product	{"fields": ["product_name", "upc_code", "product_image"]}	[]	2023-04-07 16:54:50.862	2023-04-07 16:54:50.862	\N	\N
230	plugin::content-manager.explorer.update	api::reward-product.reward-product	{"fields": ["product_name", "upc_code", "product_image"]}	[]	2023-04-07 16:54:50.874	2023-04-07 16:54:50.874	\N	\N
231	plugin::content-manager.explorer.delete	api::reward-product.reward-product	{}	[]	2023-04-07 16:54:50.879	2023-04-07 16:54:50.879	\N	\N
232	plugin::content-manager.explorer.publish	api::reward-product.reward-product	{}	[]	2023-04-07 16:54:50.887	2023-04-07 16:54:50.887	\N	\N
236	plugin::content-manager.explorer.delete	api::reward-subscription.reward-subscription	{}	[]	2023-04-07 16:58:36.569	2023-04-07 16:58:36.569	\N	\N
237	plugin::content-manager.explorer.publish	api::reward-subscription.reward-subscription	{}	[]	2023-04-07 16:58:36.578	2023-04-07 16:58:36.578	\N	\N
244	plugin::content-manager.explorer.delete	api::subscription-drop.subscription-drop	{}	[]	2023-04-07 17:00:41.266	2023-04-07 17:00:41.266	\N	\N
245	plugin::content-manager.explorer.publish	api::subscription-drop.subscription-drop	{}	[]	2023-04-07 17:00:41.272	2023-04-07 17:00:41.272	\N	\N
252	plugin::content-manager.explorer.delete	api::tokenized-receipt.tokenized-receipt	{}	[]	2023-04-07 17:04:14.138	2023-04-07 17:04:14.138	\N	\N
253	plugin::content-manager.explorer.publish	api::tokenized-receipt.tokenized-receipt	{}	[]	2023-04-07 17:04:14.142	2023-04-07 17:04:14.142	\N	\N
477	plugin::content-manager.explorer.read	api::campaign.campaign	{"fields": ["campaignId", "couponValue", "beginDate", "endDate", "isBasket", "isRebate", "basketValue", "quantity", "isMultiple", "updateLevel", "couponSupply", "additionalRulesLink", "listId", "listItems", "type", "loyaltyPoints", "isFeatured", "status", "couponType", "totalRedeemed", "totalLoaded", "totalAvailable", "previewLink", "chains", "corporateEntities", "regions", "stores", "shortId", "primaryArtworkList.artwork", "primaryArtworkList.languages", "bannerArtworkList.artwork", "bannerArtworkList.languages", "descriptions.translation", "descriptions.languages", "termsList.translation", "termsList.languages", "storeTerminalDescriptions.translation", "storeTerminalDescriptions.languages", "shortName", "backArtwork.artwork", "backArtwork.languages", "featuredOrder", "dealsOrder", "passiveRedemption", "collectiblesToLoad", "campaignsToLoad", "onDisplayInPWA", "redeemButtonOnReward", "disableLoadToWalletByUser"]}	[]	2023-06-01 13:37:14.473	2023-06-01 13:37:14.473	\N	\N
257	plugin::content-manager.explorer.delete	api::collectible.collectible	{}	[]	2023-04-07 17:07:54.213	2023-04-07 17:07:54.213	\N	\N
258	plugin::content-manager.explorer.publish	api::collectible.collectible	{}	[]	2023-04-07 17:07:54.217	2023-04-07 17:07:54.217	\N	\N
443	plugin::content-manager.explorer.delete	api::campaign.campaign	{}	[]	2023-06-01 13:11:29.504	2023-06-01 13:11:29.504	\N	\N
444	plugin::content-manager.explorer.publish	api::campaign.campaign	{}	[]	2023-06-01 13:11:29.508	2023-06-01 13:11:29.508	\N	\N
275	plugin::content-manager.explorer.create	api::subscription-drop.subscription-drop	{"fields": ["subscription_drop_id", "drop_timestamp", "status", "start_date", "end_date", "description", "rewards", "gft_explorer_link", "result", "subscription"]}	[]	2023-04-12 12:28:29.42	2023-04-12 12:28:29.42	\N	\N
468	plugin::content-manager.explorer.create	api::region.region	{"fields": ["chain", "division", "stores"]}	[]	2023-06-01 13:28:28.831	2023-06-01 13:28:28.831	\N	\N
277	plugin::content-manager.explorer.read	api::subscription-drop.subscription-drop	{"fields": ["subscription_drop_id", "drop_timestamp", "status", "start_date", "end_date", "description", "rewards", "gft_explorer_link", "result", "subscription"]}	[]	2023-04-12 12:28:29.427	2023-04-12 12:28:29.427	\N	\N
469	plugin::content-manager.explorer.create	api::store.store	{"fields": ["latitude", "longitude", "banner", "name", "address", "city", "county", "zip", "state", "number", "region"]}	[]	2023-06-01 13:28:28.837	2023-06-01 13:28:28.837	\N	\N
279	plugin::content-manager.explorer.update	api::subscription-drop.subscription-drop	{"fields": ["subscription_drop_id", "drop_timestamp", "status", "start_date", "end_date", "description", "rewards", "gft_explorer_link", "result", "subscription"]}	[]	2023-04-12 12:28:29.434	2023-04-12 12:28:29.434	\N	\N
470	plugin::content-manager.explorer.read	api::region.region	{"fields": ["chain", "division", "stores"]}	[]	2023-06-01 13:28:28.841	2023-06-01 13:28:28.841	\N	\N
471	plugin::content-manager.explorer.read	api::store.store	{"fields": ["latitude", "longitude", "banner", "name", "address", "city", "county", "zip", "state", "number", "region"]}	[]	2023-06-01 13:28:28.844	2023-06-01 13:28:28.844	\N	\N
472	plugin::content-manager.explorer.update	api::region.region	{"fields": ["chain", "division", "stores"]}	[]	2023-06-01 13:28:28.85	2023-06-01 13:28:28.85	\N	\N
473	plugin::content-manager.explorer.update	api::store.store	{"fields": ["latitude", "longitude", "banner", "name", "address", "city", "county", "zip", "state", "number", "region"]}	[]	2023-06-01 13:28:28.855	2023-06-01 13:28:28.855	\N	\N
474	plugin::content-manager.explorer.delete	api::store.store	{}	[]	2023-06-01 13:28:28.859	2023-06-01 13:28:28.859	\N	\N
475	plugin::content-manager.explorer.publish	api::store.store	{}	[]	2023-06-01 13:28:28.863	2023-06-01 13:28:28.863	\N	\N
478	plugin::content-manager.explorer.update	api::campaign.campaign	{"fields": ["campaignId", "couponValue", "beginDate", "endDate", "isBasket", "isRebate", "basketValue", "quantity", "isMultiple", "updateLevel", "couponSupply", "additionalRulesLink", "listId", "listItems", "type", "loyaltyPoints", "isFeatured", "status", "couponType", "totalRedeemed", "totalLoaded", "totalAvailable", "previewLink", "chains", "corporateEntities", "regions", "stores", "shortId", "primaryArtworkList.artwork", "primaryArtworkList.languages", "bannerArtworkList.artwork", "bannerArtworkList.languages", "descriptions.translation", "descriptions.languages", "termsList.translation", "termsList.languages", "storeTerminalDescriptions.translation", "storeTerminalDescriptions.languages", "shortName", "backArtwork.artwork", "backArtwork.languages", "featuredOrder", "dealsOrder", "passiveRedemption", "collectiblesToLoad", "campaignsToLoad", "onDisplayInPWA", "redeemButtonOnReward", "disableLoadToWalletByUser"]}	[]	2023-06-01 13:37:14.477	2023-06-01 13:37:14.477	\N	\N
445	plugin::content-manager.explorer.create	api::categorie.categorie	{"fields": ["artwork", "tag", "names.translation", "names.languages", "items"]}	[]	2023-06-01 13:14:06.128	2023-06-01 13:14:06.128	\N	\N
298	plugin::content-manager.explorer.delete	api::account.account	{}	[]	2023-04-27 12:28:32.964	2023-04-27 12:28:32.964	\N	\N
299	plugin::content-manager.explorer.publish	api::account.account	{}	[]	2023-04-27 12:28:32.967	2023-04-27 12:28:32.967	\N	\N
300	plugin::content-manager.explorer.create	api::account.account	{"fields": ["mobile_wallet_id_number", "physical_card_number", "virtual_card_number", "campaign_balance", "account_balance", "last_4_EIN", "notification_methods", "transaction_history"]}	[]	2023-04-27 15:08:35.305	2023-04-27 15:08:35.305	\N	\N
301	plugin::content-manager.explorer.read	api::account.account	{"fields": ["mobile_wallet_id_number", "physical_card_number", "virtual_card_number", "campaign_balance", "account_balance", "last_4_EIN", "notification_methods", "transaction_history"]}	[]	2023-04-27 15:08:35.313	2023-04-27 15:08:35.313	\N	\N
302	plugin::content-manager.explorer.update	api::account.account	{"fields": ["mobile_wallet_id_number", "physical_card_number", "virtual_card_number", "campaign_balance", "account_balance", "last_4_EIN", "notification_methods", "transaction_history"]}	[]	2023-04-27 15:08:35.317	2023-04-27 15:08:35.317	\N	\N
306	plugin::content-manager.explorer.delete	api::gft-pay.gft-pay	{}	[]	2023-04-27 15:16:26.282	2023-04-27 15:16:26.282	\N	\N
307	plugin::content-manager.explorer.publish	api::gft-pay.gft-pay	{}	[]	2023-04-27 15:16:26.285	2023-04-27 15:16:26.285	\N	\N
311	plugin::content-manager.explorer.create	api::gft-pay.gft-pay	{"fields": ["mobile_number", "gft_mobile_number.balance_greater_than_1000", "gft_mobile_number.date_of_birth", "gft_mobile_number.first_name", "gft_mobile_number.middle_name", "gft_mobile_number.last_name", "gft_mobile_number.corporate_email", "gft_mobile_number.corporate_address_1", "gft_mobile_number.corporate_address_2", "gft_mobile_number.province", "gft_mobile_number.city", "gft_mobile_number.postal_code", "gft_mobile_number.country", "gft_mobile_number.display_currency", "gft_mobile_number.signature"]}	[]	2023-04-27 15:17:34.097	2023-04-27 15:17:34.097	\N	\N
312	plugin::content-manager.explorer.read	api::gft-pay.gft-pay	{"fields": ["mobile_number", "gft_mobile_number.balance_greater_than_1000", "gft_mobile_number.date_of_birth", "gft_mobile_number.first_name", "gft_mobile_number.middle_name", "gft_mobile_number.last_name", "gft_mobile_number.corporate_email", "gft_mobile_number.corporate_address_1", "gft_mobile_number.corporate_address_2", "gft_mobile_number.province", "gft_mobile_number.city", "gft_mobile_number.postal_code", "gft_mobile_number.country", "gft_mobile_number.display_currency", "gft_mobile_number.signature"]}	[]	2023-04-27 15:17:34.102	2023-04-27 15:17:34.102	\N	\N
313	plugin::content-manager.explorer.update	api::gft-pay.gft-pay	{"fields": ["mobile_number", "gft_mobile_number.balance_greater_than_1000", "gft_mobile_number.date_of_birth", "gft_mobile_number.first_name", "gft_mobile_number.middle_name", "gft_mobile_number.last_name", "gft_mobile_number.corporate_email", "gft_mobile_number.corporate_address_1", "gft_mobile_number.corporate_address_2", "gft_mobile_number.province", "gft_mobile_number.city", "gft_mobile_number.postal_code", "gft_mobile_number.country", "gft_mobile_number.display_currency", "gft_mobile_number.signature"]}	[]	2023-04-27 15:17:34.106	2023-04-27 15:17:34.106	\N	\N
320	plugin::content-manager.explorer.create	api::company-profile.company-profile	{"fields": ["company_name", "lookup_name", "company_EIN_TIN", "company_parent", "company_parent_EIN_TIN", "company_alliance_id", "contact_name", "contact_mobile", "contact_email", "password", "confirmed", "blocked", "role", "address_street", "city", "state", "zip", "gft_explorer_link", "language", "node", "id_number", "gft_pays", "accounts", "country"]}	[]	2023-05-03 18:04:17.751	2023-05-03 18:04:17.751	\N	\N
321	plugin::content-manager.explorer.read	api::company-profile.company-profile	{"fields": ["company_name", "lookup_name", "company_EIN_TIN", "company_parent", "company_parent_EIN_TIN", "company_alliance_id", "contact_name", "contact_mobile", "contact_email", "password", "confirmed", "blocked", "role", "address_street", "city", "state", "zip", "gft_explorer_link", "language", "node", "id_number", "gft_pays", "accounts", "country"]}	[]	2023-05-03 18:04:17.76	2023-05-03 18:04:17.76	\N	\N
322	plugin::content-manager.explorer.update	api::company-profile.company-profile	{"fields": ["company_name", "lookup_name", "company_EIN_TIN", "company_parent", "company_parent_EIN_TIN", "company_alliance_id", "contact_name", "contact_mobile", "contact_email", "password", "confirmed", "blocked", "role", "address_street", "city", "state", "zip", "gft_explorer_link", "language", "node", "id_number", "gft_pays", "accounts", "country"]}	[]	2023-05-03 18:04:17.765	2023-05-03 18:04:17.765	\N	\N
447	plugin::content-manager.explorer.read	api::categorie.categorie	{"fields": ["artwork", "tag", "names.translation", "names.languages", "items"]}	[]	2023-06-01 13:14:06.139	2023-06-01 13:14:06.139	\N	\N
449	plugin::content-manager.explorer.update	api::categorie.categorie	{"fields": ["artwork", "tag", "names.translation", "names.languages", "items"]}	[]	2023-06-01 13:14:06.148	2023-06-01 13:14:06.148	\N	\N
353	plugin::content-manager.explorer.delete	api::shopper.shopper	{}	[]	2023-05-18 13:13:36.572	2023-05-18 13:13:36.572	\N	\N
354	plugin::content-manager.explorer.publish	api::shopper.shopper	{}	[]	2023-05-18 13:13:36.575	2023-05-18 13:13:36.575	\N	\N
355	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-18 13:15:20.803	2023-05-18 13:15:20.803	\N	\N
356	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-18 13:15:20.808	2023-05-18 13:15:20.808	\N	\N
357	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-18 13:15:20.812	2023-05-18 13:15:20.812	\N	\N
361	plugin::content-manager.explorer.delete	api::shopper-coupon.shopper-coupon	{}	[]	2023-05-24 11:44:12.86	2023-05-24 11:44:12.86	\N	\N
362	plugin::content-manager.explorer.publish	api::shopper-coupon.shopper-coupon	{}	[]	2023-05-24 11:44:12.864	2023-05-24 11:44:12.864	\N	\N
452	plugin::content-manager.explorer.create	api::product.product	{"fields": ["mainImage", "upc", "name", "categories", "campaigns"]}	[]	2023-06-01 13:19:29.94	2023-06-01 13:19:29.94	\N	\N
366	plugin::content-manager.explorer.create	api::shopper.shopper	{"fields": ["name", "email", "vatom_user_id", "vatom_business_id", "vatom_campaign_id", "phone_number"]}	[]	2023-05-24 12:57:40.887	2023-05-24 12:57:40.887	\N	\N
367	plugin::content-manager.explorer.read	api::shopper.shopper	{"fields": ["name", "email", "vatom_user_id", "vatom_business_id", "vatom_campaign_id", "phone_number"]}	[]	2023-05-24 12:57:40.896	2023-05-24 12:57:40.896	\N	\N
368	plugin::content-manager.explorer.update	api::shopper.shopper	{"fields": ["name", "email", "vatom_user_id", "vatom_business_id", "vatom_campaign_id", "phone_number"]}	[]	2023-05-24 12:57:40.901	2023-05-24 12:57:40.901	\N	\N
369	plugin::content-manager.explorer.create	api::shopper-coupon.shopper-coupon	{"fields": ["vatom_user_id", "vatom_business_id", "vatom_campaign_id", "vatom_design_id", "vatom_distribution_id", "vatom_token_id", "vatom_source", "vatom_medium", "vatom_state", "shopper_id"]}	[]	2023-05-24 12:59:50.573	2023-05-24 12:59:50.573	\N	\N
370	plugin::content-manager.explorer.read	api::shopper-coupon.shopper-coupon	{"fields": ["vatom_user_id", "vatom_business_id", "vatom_campaign_id", "vatom_design_id", "vatom_distribution_id", "vatom_token_id", "vatom_source", "vatom_medium", "vatom_state", "shopper_id"]}	[]	2023-05-24 12:59:50.586	2023-05-24 12:59:50.586	\N	\N
371	plugin::content-manager.explorer.update	api::shopper-coupon.shopper-coupon	{"fields": ["vatom_user_id", "vatom_business_id", "vatom_campaign_id", "vatom_design_id", "vatom_distribution_id", "vatom_token_id", "vatom_source", "vatom_medium", "vatom_state", "shopper_id"]}	[]	2023-05-24 12:59:50.591	2023-05-24 12:59:50.591	\N	\N
454	plugin::content-manager.explorer.read	api::product.product	{"fields": ["mainImage", "upc", "name", "categories", "campaigns"]}	[]	2023-06-01 13:19:29.947	2023-06-01 13:19:29.947	\N	\N
456	plugin::content-manager.explorer.update	api::product.product	{"fields": ["mainImage", "upc", "name", "categories", "campaigns"]}	[]	2023-06-01 13:19:29.956	2023-06-01 13:19:29.956	\N	\N
379	plugin::content-manager.explorer.create	api::retail-profile.retail-profile	{"fields": ["division", "stores.banner", "stores.name", "stores.address", "stores.city", "stores.zip", "stores.state", "stores.number", "stores.latitude", "stores.longitude", "stores.country", "regions"]}	[]	2023-05-30 14:29:53.951	2023-05-30 14:29:53.951	\N	\N
381	plugin::content-manager.explorer.read	api::retail-profile.retail-profile	{"fields": ["division", "stores.banner", "stores.name", "stores.address", "stores.city", "stores.zip", "stores.state", "stores.number", "stores.latitude", "stores.longitude", "stores.country", "regions"]}	[]	2023-05-30 14:29:53.958	2023-05-30 14:29:53.958	\N	\N
383	plugin::content-manager.explorer.update	api::retail-profile.retail-profile	{"fields": ["division", "stores.banner", "stores.name", "stores.address", "stores.city", "stores.zip", "stores.state", "stores.number", "stores.latitude", "stores.longitude", "stores.country", "regions"]}	[]	2023-05-30 14:29:53.967	2023-05-30 14:29:53.967	\N	\N
399	plugin::content-manager.explorer.create	api::adc-drop.adc-drop	{"fields": ["dropTimestamp", "description", "status", "result", "adcDropId", "partner", "collectibles"]}	[]	2023-06-01 12:07:30.523	2023-06-01 12:07:30.523	\N	\N
400	plugin::content-manager.explorer.read	api::adc-drop.adc-drop	{"fields": ["dropTimestamp", "description", "status", "result", "adcDropId", "partner", "collectibles"]}	[]	2023-06-01 12:07:30.53	2023-06-01 12:07:30.53	\N	\N
401	plugin::content-manager.explorer.update	api::adc-drop.adc-drop	{"fields": ["dropTimestamp", "description", "status", "result", "adcDropId", "partner", "collectibles"]}	[]	2023-06-01 12:07:30.535	2023-06-01 12:07:30.535	\N	\N
403	plugin::content-manager.explorer.create	api::partner.partner	{"fields": ["shortId", "name", "restrictedLoyaltyProgram", "congratulationScreen"]}	[]	2023-06-01 12:09:43.317	2023-06-01 12:09:43.317	\N	\N
405	plugin::content-manager.explorer.read	api::partner.partner	{"fields": ["shortId", "name", "restrictedLoyaltyProgram", "congratulationScreen"]}	[]	2023-06-01 12:09:43.326	2023-06-01 12:09:43.326	\N	\N
407	plugin::content-manager.explorer.update	api::partner.partner	{"fields": ["shortId", "name", "restrictedLoyaltyProgram", "congratulationScreen"]}	[]	2023-06-01 12:09:43.333	2023-06-01 12:09:43.333	\N	\N
457	plugin::content-manager.explorer.create	api::chain.chain	{"fields": ["name", "banners", "reward_games", "regions", "corporateEntity"]}	[]	2023-06-01 13:21:56.096	2023-06-01 13:21:56.096	\N	\N
458	plugin::content-manager.explorer.create	api::corporate-entity.corporate-entity	{"fields": ["name", "lookupName", "chains"]}	[]	2023-06-01 13:21:56.101	2023-06-01 13:21:56.101	\N	\N
414	plugin::content-manager.explorer.create	api::collectible.collectible	{"fields": ["collectibleId", "onDisplayInPWA", "unlimitedSupply", "totalMinted", "disableLoadToWalletByUser", "is3DAsset", "asset3dBackgroundColor", "supply", "descriptions.translation", "descriptions.languages", "vimeoVideoId", "target3dAsset", "target3dMtl", "asset3dProps", "chains", "allowedCountryCodes", "shortName", "endDate", "primaryArtworkList.artwork", "primaryArtworkList.languages", "secondaryArtworkList.artwork", "secondaryArtworkList.languages", "termsList.translation", "termsList.languages"]}	[]	2023-06-01 12:29:32.605	2023-06-01 12:29:32.605	\N	\N
415	plugin::content-manager.explorer.read	api::collectible.collectible	{"fields": ["collectibleId", "onDisplayInPWA", "unlimitedSupply", "totalMinted", "disableLoadToWalletByUser", "is3DAsset", "asset3dBackgroundColor", "supply", "descriptions.translation", "descriptions.languages", "vimeoVideoId", "target3dAsset", "target3dMtl", "asset3dProps", "chains", "allowedCountryCodes", "shortName", "endDate", "primaryArtworkList.artwork", "primaryArtworkList.languages", "secondaryArtworkList.artwork", "secondaryArtworkList.languages", "termsList.translation", "termsList.languages"]}	[]	2023-06-01 12:29:32.611	2023-06-01 12:29:32.611	\N	\N
416	plugin::content-manager.explorer.update	api::collectible.collectible	{"fields": ["collectibleId", "onDisplayInPWA", "unlimitedSupply", "totalMinted", "disableLoadToWalletByUser", "is3DAsset", "asset3dBackgroundColor", "supply", "descriptions.translation", "descriptions.languages", "vimeoVideoId", "target3dAsset", "target3dMtl", "asset3dProps", "chains", "allowedCountryCodes", "shortName", "endDate", "primaryArtworkList.artwork", "primaryArtworkList.languages", "secondaryArtworkList.artwork", "secondaryArtworkList.languages", "termsList.translation", "termsList.languages"]}	[]	2023-06-01 12:29:32.617	2023-06-01 12:29:32.617	\N	\N
417	plugin::content-manager.explorer.create	api::congratulation-screen.congratulation-screen	{"fields": ["name", "congratulationsImage", "congratulationTitle", "howToTitle", "howToText", "congratulationsText", "howToImage", "partners"]}	[]	2023-06-01 12:35:21.661	2023-06-01 12:35:21.661	\N	\N
418	plugin::content-manager.explorer.read	api::congratulation-screen.congratulation-screen	{"fields": ["name", "congratulationsImage", "congratulationTitle", "howToTitle", "howToText", "congratulationsText", "howToImage", "partners"]}	[]	2023-06-01 12:35:21.667	2023-06-01 12:35:21.667	\N	\N
419	plugin::content-manager.explorer.update	api::congratulation-screen.congratulation-screen	{"fields": ["name", "congratulationsImage", "congratulationTitle", "howToTitle", "howToText", "congratulationsText", "howToImage", "partners"]}	[]	2023-06-01 12:35:21.67	2023-06-01 12:35:21.67	\N	\N
420	plugin::content-manager.explorer.create	api::language-code.language-code	{"fields": ["code", "languageName"]}	[]	2023-06-01 12:41:34.38	2023-06-01 12:41:34.38	\N	\N
421	plugin::content-manager.explorer.read	api::language-code.language-code	{"fields": ["code", "languageName"]}	[]	2023-06-01 12:41:34.386	2023-06-01 12:41:34.386	\N	\N
422	plugin::content-manager.explorer.update	api::language-code.language-code	{"fields": ["code", "languageName"]}	[]	2023-06-01 12:41:34.389	2023-06-01 12:41:34.389	\N	\N
423	plugin::content-manager.explorer.create	api::configuration.configuration	{"fields": ["json"]}	[]	2023-06-01 12:47:17.863	2023-06-01 12:47:17.863	\N	\N
424	plugin::content-manager.explorer.read	api::configuration.configuration	{"fields": ["json"]}	[]	2023-06-01 12:47:17.87	2023-06-01 12:47:17.87	\N	\N
425	plugin::content-manager.explorer.update	api::configuration.configuration	{"fields": ["json"]}	[]	2023-06-01 12:47:17.874	2023-06-01 12:47:17.874	\N	\N
426	plugin::content-manager.explorer.delete	api::configuration.configuration	{}	[]	2023-06-01 12:47:17.879	2023-06-01 12:47:17.879	\N	\N
427	plugin::content-manager.explorer.publish	api::configuration.configuration	{}	[]	2023-06-01 12:47:17.884	2023-06-01 12:47:17.884	\N	\N
428	plugin::content-manager.explorer.create	api::reward-subscription.reward-subscription	{"fields": ["subscription_id", "short_name", "display_name", "price", "more_link_info", "billing_id", "x_solla_api_latest_status", "x_solla_product_id", "gft_explorer_link", "live", "currency", "drop_frequency", "allowed_country_codes", "regions", "subscription_drops", "terms_conditions", "promotional_images.imageCollection", "promotional_images.languages", "description.translation", "description.languages", "feature_order", "primary_display_image.artwork", "primary_display_image.languages"]}	[]	2023-06-01 12:49:38.171	2023-06-01 12:49:38.171	\N	\N
429	plugin::content-manager.explorer.create	api::tokenized-receipt.tokenized-receipt	{"fields": ["name", "short_name", "gft_explorer_link", "vimeo_video_id", "receipt_id", "terms_list.translation", "terms_list.languages", "allowed_country_codes", "description.translation", "description.languages", "default_back_image.imageCollection", "default_back_image.languages"]}	[]	2023-06-01 12:49:38.177	2023-06-01 12:49:38.177	\N	\N
430	plugin::content-manager.explorer.read	api::reward-subscription.reward-subscription	{"fields": ["subscription_id", "short_name", "display_name", "price", "more_link_info", "billing_id", "x_solla_api_latest_status", "x_solla_product_id", "gft_explorer_link", "live", "currency", "drop_frequency", "allowed_country_codes", "regions", "subscription_drops", "terms_conditions", "promotional_images.imageCollection", "promotional_images.languages", "description.translation", "description.languages", "feature_order", "primary_display_image.artwork", "primary_display_image.languages"]}	[]	2023-06-01 12:49:38.181	2023-06-01 12:49:38.181	\N	\N
431	plugin::content-manager.explorer.read	api::tokenized-receipt.tokenized-receipt	{"fields": ["name", "short_name", "gft_explorer_link", "vimeo_video_id", "receipt_id", "terms_list.translation", "terms_list.languages", "allowed_country_codes", "description.translation", "description.languages", "default_back_image.imageCollection", "default_back_image.languages"]}	[]	2023-06-01 12:49:38.186	2023-06-01 12:49:38.186	\N	\N
432	plugin::content-manager.explorer.update	api::reward-subscription.reward-subscription	{"fields": ["subscription_id", "short_name", "display_name", "price", "more_link_info", "billing_id", "x_solla_api_latest_status", "x_solla_product_id", "gft_explorer_link", "live", "currency", "drop_frequency", "allowed_country_codes", "regions", "subscription_drops", "terms_conditions", "promotional_images.imageCollection", "promotional_images.languages", "description.translation", "description.languages", "feature_order", "primary_display_image.artwork", "primary_display_image.languages"]}	[]	2023-06-01 12:49:38.189	2023-06-01 12:49:38.189	\N	\N
433	plugin::content-manager.explorer.update	api::tokenized-receipt.tokenized-receipt	{"fields": ["name", "short_name", "gft_explorer_link", "vimeo_video_id", "receipt_id", "terms_list.translation", "terms_list.languages", "allowed_country_codes", "description.translation", "description.languages", "default_back_image.imageCollection", "default_back_image.languages"]}	[]	2023-06-01 12:49:38.192	2023-06-01 12:49:38.192	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
70	70	1	58
71	71	1	59
72	72	1	60
73	73	1	61
77	77	1	65
78	78	1	66
79	79	1	67
80	80	1	68
81	81	1	69
82	82	1	70
83	83	1	71
84	84	1	72
85	85	1	73
86	86	1	74
87	87	1	75
88	88	1	76
92	92	1	80
93	93	1	81
97	97	1	85
98	98	1	86
102	102	1	90
103	103	1	91
104	104	1	92
105	105	1	93
106	106	1	94
107	107	1	95
108	108	1	96
115	115	1	103
116	116	1	104
117	117	1	105
118	118	1	106
119	119	1	107
123	123	1	111
124	124	1	112
128	128	1	116
129	129	1	117
136	136	1	124
137	137	1	125
443	443	1	368
444	444	1	369
141	141	1	129
142	142	1	130
143	143	1	131
144	144	1	132
145	145	1	133
146	146	1	134
147	147	1	135
148	148	1	136
149	149	1	137
150	150	1	138
154	154	1	142
155	155	1	143
159	159	1	144
160	160	1	145
161	161	1	146
162	162	1	147
163	163	1	148
164	164	1	149
165	165	1	150
166	166	1	151
170	170	1	155
171	171	1	156
172	172	1	157
173	173	1	158
174	174	1	159
175	175	1	160
176	176	1	161
177	177	1	162
178	178	1	163
179	179	1	164
180	180	1	165
181	181	1	166
182	182	1	167
183	183	1	168
184	184	1	169
185	185	1	170
186	186	1	171
187	187	1	172
188	188	1	173
189	189	1	174
190	190	1	175
191	191	1	176
192	192	1	177
193	193	1	178
452	452	1	376
454	454	1	378
456	456	1	380
476	476	1	400
477	477	1	401
478	478	1	402
194	194	1	179
195	195	1	180
196	196	1	181
197	197	1	182
198	198	1	183
199	199	1	184
203	203	1	188
204	204	1	189
211	211	1	196
212	212	1	197
437	437	1	362
438	438	1	363
439	439	1	364
216	216	1	201
217	217	1	202
218	218	1	203
219	219	1	204
220	220	1	205
221	221	1	206
222	222	1	207
226	226	1	211
227	227	1	212
228	228	1	213
229	229	1	214
230	230	1	215
231	231	1	216
232	232	1	217
236	236	1	221
237	237	1	222
244	244	1	229
245	245	1	230
445	445	1	370
447	447	1	372
252	252	1	237
253	253	1	238
449	449	1	374
257	257	1	242
258	258	1	243
457	457	1	381
458	458	1	382
459	459	1	383
460	460	1	384
275	275	1	260
461	461	1	385
277	277	1	262
462	462	1	386
279	279	1	264
463	463	1	387
464	464	1	388
468	468	1	392
469	469	1	393
470	470	1	394
471	471	1	395
472	472	1	396
473	473	1	397
474	474	1	398
298	298	1	280
299	299	1	281
300	300	1	282
301	301	1	283
302	302	1	284
306	306	1	288
307	307	1	289
311	311	1	290
312	312	1	291
313	313	1	292
320	320	1	293
321	321	1	294
322	322	1	295
475	475	1	399
353	353	1	302
354	354	1	303
355	355	1	304
356	356	1	305
357	357	1	306
361	361	1	310
362	362	1	311
366	366	1	315
367	367	1	316
368	368	1	317
369	369	1	318
370	370	1	319
371	371	1	320
379	379	1	322
381	381	1	324
383	383	1	326
399	399	1	333
400	400	1	334
401	401	1	335
403	403	1	337
405	405	1	339
407	407	1	341
414	414	1	342
415	415	1	343
416	416	1	344
417	417	1	345
418	418	1	346
419	419	1	347
420	420	1	348
421	421	1	349
422	422	1	350
423	423	1	351
424	424	1	352
425	425	1	353
426	426	1	354
427	427	1	355
428	428	1	356
429	429	1	357
430	430	1	358
431	431	1	359
432	432	1	360
433	433	1	361
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-04-07 14:57:04.803	2023-04-07 14:57:04.803	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-04-07 14:57:04.811	2023-04-07 14:57:04.811	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-04-07 14:57:04.809	2023-04-19 15:46:30.842	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Unified	Signal	\N	admin@unifiedsignal.com	$2a$10$/WKyrMTG1EyfjsaQMA8RCOQ64aJ7u1IPiooyvRYRTjP/UMt8.g1S6	\N	\N	t	f	\N	2023-04-07 15:05:39.437	2023-04-07 15:05:39.437	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: associates; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.associates (id, name, associate_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.banners (id, short_name_tag, visible, featured_order, external_link, banner_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
64	Test	t	1	google.com	123	2023-05-30 16:56:38.51	2023-05-30 16:56:40.51	2023-05-30 16:56:40.507	1	1
\.


--
-- Data for Name: banners_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.banners_chains_links (id, banner_id, chain_id, chain_order, banner_order) FROM stdin;
2	64	2	1	0
\.


--
-- Data for Name: banners_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.banners_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns (id, campaign_id, coupon_value, begin_date, end_date, is_basket, is_rebate, basket_value, quantity, is_multiple, update_level, coupon_supply, additional_rules_link, list_id, created_at, updated_at, published_at, created_by_id, updated_by_id, type, loyalty_points, is_featured, status, coupon_type, total_redeemed, total_loaded, total_available, preview_link, short_id, short_name, featured_order, deals_order, passive_redemption, on_display_in_pwa, redeem_button_on_reward, disable_load_to_wallet_by_user) FROM stdin;
\.


--
-- Data for Name: campaigns_campaigns_to_load_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_campaigns_to_load_links (id, campaign_id, inv_campaign_id, campaign_order) FROM stdin;
\.


--
-- Data for Name: campaigns_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_chains_links (id, campaign_id, chain_id, chain_order) FROM stdin;
\.


--
-- Data for Name: campaigns_collectibles_to_load_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_collectibles_to_load_links (id, campaign_id, collectible_id, collectible_order) FROM stdin;
\.


--
-- Data for Name: campaigns_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: campaigns_corporate_entities_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_corporate_entities_links (id, campaign_id, corporate_entity_id, corporate_entity_order) FROM stdin;
\.


--
-- Data for Name: campaigns_list_items_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_list_items_links (id, campaign_id, product_id, product_order, campaign_order) FROM stdin;
\.


--
-- Data for Name: campaigns_regions_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_regions_links (id, campaign_id, region_id, region_order) FROM stdin;
\.


--
-- Data for Name: campaigns_stores_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.campaigns_stores_links (id, campaign_id, store_id, store_order) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.categories (id, tag, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: categories_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.categories_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: categories_items_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.categories_items_links (id, categorie_id, product_id, product_order, categorie_order) FROM stdin;
\.


--
-- Data for Name: chains; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.chains (id, created_at, updated_at, published_at, created_by_id, updated_by_id, name) FROM stdin;
2	2023-05-30 16:57:01.333	2023-05-31 15:07:00.823	2023-05-30 16:57:02.682	1	1	Chain 1
\.


--
-- Data for Name: chains_corporate_entity_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.chains_corporate_entity_links (id, chain_id, corporate_entity_id, chain_order) FROM stdin;
\.


--
-- Data for Name: collectibles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.collectibles (id, collectible_id, on_display_in_pwa, unlimited_supply, total_minted, disable_load_to_wallet_by_user, is_3_d_asset, asset_3_d_background_color, supply, vimeo_video_id, asset_3_d_props, created_at, updated_at, published_at, created_by_id, updated_by_id, short_name, end_date) FROM stdin;
\.


--
-- Data for Name: collectibles_allowed_country_codes_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.collectibles_allowed_country_codes_links (id, collectible_id, country_code_id, country_code_order) FROM stdin;
\.


--
-- Data for Name: collectibles_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.collectibles_chains_links (id, collectible_id, chain_id, chain_order) FROM stdin;
\.


--
-- Data for Name: collectibles_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.collectibles_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: company_profiles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.company_profiles (id, company_name, lookup_name, company_ein_tin, company_parent, company_parent_ein_tin, company_alliance_id, contact_name, contact_mobile, contact_email, password, confirmed, blocked, role, address_street, city, state, zip, gft_explorer_link, language, node, id_number, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
2	First Company	Lookup	EIN Tin	Company Parent	Parent EIN Tin	allieance id	Contact Name	1234567	test@gmail.com	$2a$10$iz7YJcA3f0wAjqqwnHL.QOhb3AEdbyHV.MrKP2ZeiLXLlmDPqTjCu	t	f	1	street	indore	mp	1234	testing	Eng	\N	\N	2023-05-05 18:52:12.469	2023-05-05 18:52:12.469	2023-05-05 18:52:12.383	\N	\N
1	First Company	First Lookup up	EIN Tin	Company Parent	Parent EIN Tin	allieance id	Contact Name	8888888	test@gmail.com	$2a$10$2So/Jm6ZW9wlxpR65hsLae4ngL6OPkC1Vn4vKmiSS5NCo.7p.m2Fe	t	f	1	street	indore	mp	1234	testing	Eng	\N	\N	2023-05-03 19:21:41.656	2023-05-08 12:18:24.997	2023-05-03 19:21:48.265	1	1
4	Third Company	Lookup	EIN Tin	Company Parent	Parent EIN Tin	allieance id	Contact Name	1234567	test@gmail.com	$2a$10$w2Xsldm2E9K0fqlpL9TwsON957hNOmhyY3QazqWBD3QB04g2V50lW	t	f	1	street	indore	mp	1234	testing	Eng	\N	\N	2023-05-19 10:51:19.259	2023-05-19 10:51:19.259	2023-05-19 10:51:19.173	\N	\N
5	test	Lookup	EINTin	Company Parent	Parent EIN Tin	allieance id	Contact Name	12345678	test@gmail.com	$2a$10$EAxhzBX25pJWowPkvs2qt.exILRpPmmAoyEDeBnzjS5Xux/6BD2Zu	t	f	1	street	indore	mp	1234	testing	Eng	\N	\N	2023-05-23 13:20:13.159	2023-05-23 13:20:13.159	2023-05-23 13:20:13.071	\N	\N
3	Third Company		EIN Tin	Company Parent	Parent EIN Tin	allieance id	Contact Name	1234567	test@gmail.com	$2a$10$dHhnfrMKBfeqJMk.FMvLHeL/nFMOQk.z/mqFsq1b8C9iM7PTFzicC	t	f	1	street	indore	mp	1234	testing	Eng	\N	\N	2023-05-08 12:16:50.671	2023-05-23 13:20:40.177	2023-05-08 12:16:50.555	\N	\N
\.


--
-- Data for Name: company_profiles_accounts_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.company_profiles_accounts_links (id, company_profile_id, account_id, account_order) FROM stdin;
\.


--
-- Data for Name: company_profiles_country_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.company_profiles_country_links (id, company_profile_id, country_code_id) FROM stdin;
2	1	83
3	2	83
5	3	83
\.


--
-- Data for Name: company_profiles_gft_pays_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.company_profiles_gft_pays_links (id, company_profile_id, gft_pay_id, gft_pay_order) FROM stdin;
\.


--
-- Data for Name: components_art_artworks; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_art_artworks (id) FROM stdin;
\.


--
-- Data for Name: components_art_artworks_languages_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_art_artworks_languages_links (id, artwork_id, language_code_id, language_code_order) FROM stdin;
\.


--
-- Data for Name: components_art_image_collections; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_art_image_collections (id) FROM stdin;
\.


--
-- Data for Name: components_art_image_collections_languages_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_art_image_collections_languages_links (id, image_collection_id, language_code_id, language_code_order) FROM stdin;
\.


--
-- Data for Name: components_gft_gft_pays; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_gft_gft_pays (id, balance_greater_than_1000, date_of_birth, first_name, middle_name, last_name, corporate_email, corporate_address_1, corporate_address_2, province, city, postal_code, country, display_currency, signature) FROM stdin;
\.


--
-- Data for Name: components_prize_collectible_prizes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_collectible_prizes (id, short_name) FROM stdin;
\.


--
-- Data for Name: components_prize_collectible_prizes_collectible_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_collectible_prizes_collectible_links (id, collectible_prize_id, collectible_id) FROM stdin;
\.


--
-- Data for Name: components_prize_collectible_prizes_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_collectible_prizes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_prize_coupon_prizes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_coupon_prizes (id, short_name) FROM stdin;
\.


--
-- Data for Name: components_prize_coupon_prizes_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_coupon_prizes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_prize_prize_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_prize_prize_details (id, prize_supply, win_after, winning_prize, prizes_available, max_wins_per_day, win_interval, wait_after_win, prize_id) FROM stdin;
\.


--
-- Data for Name: components_store_management_banners; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_banners (id, page_number, visible, start_date, end_date, short_name) FROM stdin;
\.


--
-- Data for Name: components_store_management_headers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_headers (id, short_name, page_order, visible, start_date, end_date) FROM stdin;
\.


--
-- Data for Name: components_store_management_headers_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_store_management_tiles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_tiles (id, page_order, short_name, visible, start_date, end_date, external_link) FROM stdin;
\.


--
-- Data for Name: components_store_management_tiles_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_tiles_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_store_management_tiles_internal_link_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_tiles_internal_link_links (id, tile_id, page_id) FROM stdin;
\.


--
-- Data for Name: components_store_management_videos; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_management_videos (id, page_order, visible, short_name, start_date, end_date) FROM stdin;
\.


--
-- Data for Name: components_store_stores; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_stores (id, banner, name, address, city, zip, state, number, latitude, longitude) FROM stdin;
1	banner	name	indore	indore	89899	mp	3	33	33
2	Banner 2	\N	\N	\N	\N	\N	3	\N	\N
\.


--
-- Data for Name: components_store_stores_country_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_store_stores_country_links (id, store_id, country_code_id) FROM stdin;
\.


--
-- Data for Name: components_translation_game_texts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_game_texts (id) FROM stdin;
\.


--
-- Data for Name: components_translation_game_texts_languages_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_game_texts_languages_links (id, game_text_id, language_code_id, language_code_order) FROM stdin;
\.


--
-- Data for Name: components_translation_terms_conditions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_terms_conditions (id, translation, featured_order) FROM stdin;
\.


--
-- Data for Name: components_translation_terms_conditions_language_code_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_terms_conditions_language_code_links (id, terms_conditions_id, language_code_id) FROM stdin;
\.


--
-- Data for Name: components_translation_terms_lists; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_terms_lists (id, translation) FROM stdin;
\.


--
-- Data for Name: components_translation_terms_lists_languages_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_terms_lists_languages_links (id, terms_list_id, language_code_id, language_code_order) FROM stdin;
\.


--
-- Data for Name: components_translation_translations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_translations (id, translation) FROM stdin;
1	Test
2	English Test
\.


--
-- Data for Name: components_translation_translations_languages_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.components_translation_translations_languages_links (id, translation_id, language_code_id, language_code_order) FROM stdin;
1	1	2	0
2	2	1	0
\.


--
-- Data for Name: configurations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.configurations (id, json, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: congratulation_screens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.congratulation_screens (id, name, how_to_title, how_to_text, congratulations_text, created_at, updated_at, published_at, created_by_id, updated_by_id, congratulation_title) FROM stdin;
\.


--
-- Data for Name: corporate_entities; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.corporate_entities (id, name, lookup_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: country_codes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.country_codes (id, name, dial_code, code, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	United States of America	1	229	US	2023-05-03 12:37:22.396	2023-05-03 12:38:47.689	2023-05-03 12:38:47.686	1	1
2	Albania	355	2	AL	2023-05-03 14:41:12.531	2023-05-03 14:41:13.62	2023-05-03 14:41:13.618	1	1
3	Algeria	213	3	DZ	2023-05-03 14:42:01.241	2023-05-03 14:42:02.534	2023-05-03 14:42:02.532	1	1
4	American Samoa	1	4	AS	2023-05-03 14:43:15.89	2023-05-03 14:43:16.639	2023-05-03 14:43:16.636	1	1
5	Andorra	376	5	AD	2023-05-03 14:43:38.478	2023-05-03 14:43:39.436	2023-05-03 14:43:39.433	1	1
6	Angola	244	6	AO	2023-05-03 14:43:58.806	2023-05-03 14:43:59.484	2023-05-03 14:43:59.482	1	1
7	Anguilla	1	7	AI	2023-05-03 14:44:20.189	2023-05-03 14:44:20.901	2023-05-03 14:44:20.899	1	1
8	Antarctica	672	8	AQ	2023-05-03 14:44:39.054	2023-05-03 14:44:39.753	2023-05-03 14:44:39.75	1	1
9	Antigua and Barbuda	1	9	AG	2023-05-03 14:44:59.068	2023-05-03 14:44:59.8	2023-05-03 14:44:59.797	1	1
10	Argentina	54	10	AR	2023-05-03 14:45:23.589	2023-05-03 14:45:24.301	2023-05-03 14:45:24.299	1	1
11	Aruba	297	12	AW	2023-05-03 14:45:48.347	2023-05-03 14:45:49.173	2023-05-03 14:45:49.17	1	1
12	Australia	61	13	AU	2023-05-03 14:46:11.896	2023-05-03 14:46:12.636	2023-05-03 14:46:12.634	1	1
13	Austria	43	14	AT	2023-05-03 14:47:01.962	2023-05-03 14:47:02.83	2023-05-03 14:47:02.828	1	1
14	Bahamas	1	16	BS	2023-05-03 14:47:21.332	2023-05-03 14:47:22.043	2023-05-03 14:47:22.041	1	1
15	Bahrain	973	17	BH	2023-05-03 14:47:42.892	2023-05-03 14:47:43.801	2023-05-03 14:47:43.798	1	1
16	Bangladesh	880	18	BD	2023-05-03 14:48:03.491	2023-05-03 14:48:04.136	2023-05-03 14:48:04.133	1	1
17	Barbados	1	19	BB	2023-05-03 14:48:25.632	2023-05-03 14:48:26.494	2023-05-03 14:48:26.492	1	1
18	Belgium	32	21	BE	2023-05-03 15:15:43.198	2023-05-03 15:15:44.066	2023-05-03 15:15:44.063	1	1
19	Belize	501	22	BZ	2023-05-03 15:16:22.564	2023-05-03 15:16:23.416	2023-05-03 15:16:23.413	1	1
20	Benin	229	23	BJ	2023-05-03 15:16:41.797	2023-05-03 15:16:42.639	2023-05-03 15:16:42.635	1	1
21	Bermuda	1	24	BM	2023-05-03 15:17:05.065	2023-05-03 15:17:05.923	2023-05-03 15:17:05.921	1	1
22	Bhutan	975	25	BT	2023-05-03 15:17:27.683	2023-05-03 15:17:28.492	2023-05-03 15:17:28.489	1	1
23	Bolivia	591	26	BO	2023-05-03 15:18:11.584	2023-05-03 15:18:12.697	2023-05-03 15:18:12.694	1	1
24	Brazil	55	29	BR	2023-05-03 15:30:14.608	2023-05-03 15:30:15.408	2023-05-03 15:30:15.403	1	1
25	British Indian Ocean Territory	246	30	IO	2023-05-03 15:30:43.108	2023-05-03 15:30:43.994	2023-05-03 15:30:43.985	1	1
26	British Virgin Islands	1	31	VG	2023-05-03 15:31:09.375	2023-05-03 15:31:10.195	2023-05-03 15:31:10.191	1	1
27	Brunei	673	32	BN	2023-05-03 15:31:40.132	2023-05-03 15:31:40.955	2023-05-03 15:31:40.95	1	1
28	Bulgaria	359	33	BG	2023-05-03 15:32:08.298	2023-05-03 15:32:09.182	2023-05-03 15:32:09.18	1	1
29	Burkina Faso	226	34	BF	2023-05-03 15:32:33.267	2023-05-03 15:32:34.187	2023-05-03 15:32:34.184	1	1
30	Burundi	257	35	BI	2023-05-03 15:33:37.476	2023-05-03 15:33:38.384	2023-05-03 15:33:38.382	1	1
31	Cambodia	855	36	KH	2023-05-03 15:34:19.432	2023-05-03 15:34:20.378	2023-05-03 15:34:20.375	1	1
32	Cameroon	237	37	CM	2023-05-03 15:34:56.155	2023-05-03 15:34:57.492	2023-05-03 15:34:57.488	1	1
33	Canada	1	38	CA	2023-05-03 15:35:29.192	2023-05-03 15:35:30.856	2023-05-03 15:35:30.853	1	1
34	Cape Verde	238	39	CV	2023-05-03 15:36:05.767	2023-05-03 15:36:08.033	2023-05-03 15:36:08.029	1	1
35	Cayman Islands	1	40	KY	2023-05-03 15:36:56.208	2023-05-03 15:36:57.326	2023-05-03 15:36:57.323	1	1
36	Chad	235	42	TD	2023-05-03 15:37:57.57	2023-05-03 15:37:59.88	2023-05-03 15:37:59.876	1	1
37	Chile	56	43	CL	2023-05-03 15:46:06.142	2023-05-03 15:46:06.969	2023-05-03 15:46:06.966	1	1
38	China	86	44	CN	2023-05-03 15:46:35.897	2023-05-03 15:46:36.757	2023-05-03 15:46:36.752	1	1
39	Christmas Island	61	45	CX	2023-05-03 15:48:21.032	2023-05-03 15:48:22.909	2023-05-03 15:48:22.906	1	1
40	Cocos Islands	61	46	CC	2023-05-03 15:49:43.194	2023-05-03 15:49:44.048	2023-05-03 15:49:44.045	1	1
41	Colombia	57	47	CO	2023-05-03 15:50:11.333	2023-05-03 15:50:12.293	2023-05-03 15:50:12.289	1	1
42	Comoros	269	48	KM	2023-05-03 16:17:05.281	2023-05-03 16:17:07.209	2023-05-03 16:17:07.207	1	1
43	Cook Islands	682	49	CK	2023-05-03 16:17:28.403	2023-05-03 16:17:29.115	2023-05-03 16:17:29.113	1	1
44	Costa Rica	506	50	CR	2023-05-03 16:17:48.289	2023-05-03 16:17:49.12	2023-05-03 16:17:49.118	1	1
45	Croatia	385	51	HR	2023-05-03 16:18:13.591	2023-05-03 16:18:14.309	2023-05-03 16:18:14.307	1	1
46	Curaçao	599	53	CW	2023-05-03 16:18:34.673	2023-05-03 16:18:35.311	2023-05-03 16:18:35.309	1	1
62	Fiji	679	71	FJ	2023-05-03 16:30:23.193	2023-05-03 16:30:23.868	2023-05-03 16:30:23.867	1	1
47	Cyprus	397	54	CY	2023-05-03 16:18:57.48	2023-05-03 16:19:20.337	2023-05-03 16:18:58.077	1	1
48	Czech Republic	420	55	CZ	2023-05-03 16:19:50.187	2023-05-03 16:19:50.992	2023-05-03 16:19:50.988	1	1
49	Denmark	45	57	DK	2023-05-03 16:20:20.507	2023-05-03 16:20:21.068	2023-05-03 16:20:21.066	1	1
50	Djibouti	253	58	DJ	2023-05-03 16:20:40.957	2023-05-03 16:20:41.729	2023-05-03 16:20:41.724	1	1
51	Dominica	1	59	DM	2023-05-03 16:21:00.288	2023-05-03 16:21:00.946	2023-05-03 16:21:00.944	1	1
52	Dominican Republic	1	60	DO	2023-05-03 16:21:22.102	2023-05-03 16:22:31.406	2023-05-03 16:21:22.833	1	1
53	East Timor	670	61	TL	2023-05-03 16:22:54.612	2023-05-03 16:22:55.272	2023-05-03 16:22:55.269	1	1
54	Ecuador	593	63	EC	2023-05-03 16:23:27.153	2023-05-03 16:23:27.858	2023-05-03 16:23:27.856	1	1
55	El Salvador	503	64	SV	2023-05-03 16:26:41.469	2023-05-03 16:26:42.141	2023-05-03 16:26:42.139	1	1
56	Equatorial Guinea	240	65	GQ	2023-05-03 16:27:03.398	2023-05-03 16:27:04.078	2023-05-03 16:27:04.076	1	1
57	Eritrea	291	66	ER	2023-05-03 16:27:30.755	2023-05-03 16:27:31.53	2023-05-03 16:27:31.528	1	1
58	Estonia	372	67	EE	2023-05-03 16:28:05.513	2023-05-03 16:28:06.136	2023-05-03 16:28:06.134	1	1
59	Ethiopia	251	68	ET	2023-05-03 16:28:35.358	2023-05-03 16:28:37.469	2023-05-03 16:28:37.467	1	1
60	Falkland Islands	500	69	FK	2023-05-03 16:28:56.965	2023-05-03 16:28:57.778	2023-05-03 16:28:57.776	1	1
61	Faroe Islands	298	70	FO	2023-05-03 16:29:52.357	2023-05-03 16:29:53.051	2023-05-03 16:29:53.049	1	1
63	Finland	358	72	FI	2023-05-03 16:30:48.012	2023-05-03 16:30:49.004	2023-05-03 16:30:49.002	1	1
64	France	33	73	FR	2023-05-03 16:31:21.355	2023-05-03 16:31:22.03	2023-05-03 16:31:22.028	1	1
65	French Polynesia	689	74	PF	2023-05-03 16:31:50.486	2023-05-03 16:31:51.171	2023-05-03 16:31:51.169	1	1
66	Gabon	241	75	GA	2023-05-03 16:32:19.549	2023-05-03 16:32:20.791	2023-05-03 16:32:20.789	1	1
67	Gambia	220	76	GM	2023-05-03 16:32:40.906	2023-05-03 16:32:41.687	2023-05-03 16:32:41.686	1	1
68	Georgia	995	77	GE	2023-05-03 16:33:09.582	2023-05-03 16:33:10.235	2023-05-03 16:33:10.233	1	1
69	Germany	49	78	DE	2023-05-03 16:33:35.166	2023-05-03 16:33:35.935	2023-05-03 16:33:35.933	1	1
70	Ghana	233	79	GH	2023-05-03 16:34:06.857	2023-05-03 16:34:07.506	2023-05-03 16:34:07.503	1	1
71	Gibraltar	350	80	GI	2023-05-03 16:34:25.502	2023-05-03 16:34:26.143	2023-05-03 16:34:26.14	1	1
72	Greece	30	81	GR	2023-05-03 16:34:45.792	2023-05-03 16:34:46.465	2023-05-03 16:34:46.463	1	1
73	Greenland	299	82	GL	2023-05-03 16:35:10.682	2023-05-03 16:35:11.49	2023-05-03 16:35:11.488	1	1
74	Grenada	1	83	GD	2023-05-03 16:35:29.283	2023-05-03 16:35:29.979	2023-05-03 16:35:29.978	1	1
75	Guam	1	84	GU	2023-05-03 16:35:50.566	2023-05-03 16:35:51.498	2023-05-03 16:35:51.496	1	1
76	Guatemala	502	85	GT	2023-05-03 16:36:16.238	2023-05-03 16:36:16.991	2023-05-03 16:36:16.99	1	1
77	Guernsey	44	86	GG	2023-05-03 16:37:11.136	2023-05-03 16:37:11.941	2023-05-03 16:37:11.939	1	1
78	Guyana	592	89	GY	2023-05-03 16:38:05.442	2023-05-03 16:38:06.198	2023-05-03 16:38:06.195	1	1
79	Honduras	504	91	HN	2023-05-03 16:38:32.102	2023-05-03 16:38:32.765	2023-05-03 16:38:32.763	1	1
80	Hong Kong	852	92	HK	2023-05-03 16:38:57.923	2023-05-03 16:38:58.674	2023-05-03 16:38:58.672	1	1
81	Hungary	36	93	HU	2023-05-03 16:39:25.091	2023-05-03 16:39:25.896	2023-05-03 16:39:25.894	1	1
82	Iceland	354	94	IS	2023-05-03 16:40:03.165	2023-05-03 16:40:03.708	2023-05-03 16:40:03.705	1	1
83	India	91	95	IN	2023-05-03 16:40:26.595	2023-05-03 16:40:27.348	2023-05-03 16:40:27.346	1	1
84	Indonesia	62	96	ID	2023-05-03 16:40:49.804	2023-05-03 16:40:50.385	2023-05-03 16:40:50.383	1	1
85	Ireland	353	99	IE	2023-05-03 16:41:11.696	2023-05-03 16:41:12.353	2023-05-03 16:41:12.351	1	1
86	Isle of Man	44	100	IM	2023-05-03 16:41:29.815	2023-05-03 16:41:30.437	2023-05-03 16:41:30.435	1	1
87	Israel	972	101	IL	2023-05-03 16:41:57.998	2023-05-03 16:41:58.719	2023-05-03 16:41:58.716	1	1
88	Italy	32	109	IT	2023-05-03 16:42:17.72	2023-05-03 16:42:18.385	2023-05-03 16:42:18.383	1	1
89	Jamaica	1	104	JM	2023-05-03 16:42:35.867	2023-05-03 16:42:36.506	2023-05-03 16:42:36.504	1	1
90	Japan	81	105	JP	2023-05-03 16:43:10.398	2023-05-03 16:43:11.177	2023-05-03 16:43:11.176	1	1
91	Jersey	44	106	JE	2023-05-03 16:43:31.817	2023-05-03 16:43:32.599	2023-05-03 16:43:32.598	1	1
92	Jordan	962	107	JO	2023-05-03 16:43:58.571	2023-05-03 16:43:59.215	2023-05-03 16:43:59.213	1	1
93	Kazakhstan	7	108	KZ	2023-05-03 16:44:29.293	2023-05-03 16:44:29.933	2023-05-03 16:44:29.93	1	1
94	Kenya	254	109	KE	2023-05-03 16:44:49.69	2023-05-03 16:44:50.462	2023-05-03 16:44:50.46	1	1
95	Kiribati	686	110	KI	2023-05-03 16:45:17.537	2023-05-03 16:45:18.223	2023-05-03 16:45:18.221	1	1
96	Kosovo	383	111	XK	2023-05-03 16:45:44.825	2023-05-03 16:45:45.478	2023-05-03 16:45:45.477	1	1
97	Kuwait	965	112	KW	2023-05-03 16:46:08.7	2023-05-03 16:46:09.671	2023-05-03 16:46:09.669	1	1
98	Kyrgyzstan	996	113	KG	2023-05-03 16:46:33.607	2023-05-03 16:46:34.301	2023-05-03 16:46:34.299	1	1
99	Laos	856	114	LA	2023-05-03 16:46:51.421	2023-05-03 16:46:52.009	2023-05-03 16:46:52.008	1	1
100	Latvia	371	115	LV	2023-05-03 16:47:12.231	2023-05-03 16:47:13.019	2023-05-03 16:47:13.016	1	1
101	Lesotho	266	117	LS	2023-05-03 16:47:31.937	2023-05-03 16:47:32.61	2023-05-03 16:47:32.609	1	1
102	Liechtenstein	423	120	LI	2023-05-03 16:47:50.994	2023-05-03 16:47:51.531	2023-05-03 16:47:51.529	1	1
103	Lithuania	370	121	LT	2023-05-03 16:48:09.975	2023-05-03 16:48:10.562	2023-05-03 16:48:10.56	1	1
104	Luxembourg	352	122	LU	2023-05-03 16:48:32.974	2023-05-03 16:48:33.661	2023-05-03 16:48:33.659	1	1
105	Macau	853	123	MO	2023-05-03 16:48:54.184	2023-05-03 16:48:54.88	2023-05-03 16:48:54.877	1	1
106	Macedonia	389	124	MK	2023-05-03 16:49:11.682	2023-05-03 16:49:12.529	2023-05-03 16:49:12.527	1	1
107	Macedonia	389	124	MK	2023-05-03 16:53:40.448	2023-05-03 16:53:41.196	2023-05-03 16:53:41.194	1	1
108	Madagascar	261	125	MG	2023-05-03 16:54:04.425	2023-05-03 16:54:05.254	2023-05-03 16:54:05.252	1	1
109	Malawi	265	126	MW	2023-05-03 16:54:37.215	2023-05-03 16:54:37.921	2023-05-03 16:54:37.92	1	1
110	Malaysia	60	127	MY	2023-05-03 16:55:03.524	2023-05-03 16:55:04.237	2023-05-03 16:55:04.235	1	1
111	Maldives	960	128	MV	2023-05-03 16:55:27.999	2023-05-03 16:55:28.7	2023-05-03 16:55:28.698	1	1
112	Malta	356	130	MT	2023-05-03 16:55:52.92	2023-05-03 16:55:53.647	2023-05-03 16:55:53.645	1	1
113	Marshall Islands	692	131	MH	2023-05-03 16:56:17.257	2023-05-03 16:56:17.901	2023-05-03 16:56:17.9	1	1
114	Mauritania	222	132	MR	2023-05-03 16:56:38.467	2023-05-03 16:56:39.21	2023-05-03 16:56:39.208	1	1
115	Mauritius	230	133	MU	2023-05-03 16:57:01.687	2023-05-03 16:57:02.399	2023-05-03 16:57:02.398	1	1
116	Mayotte	262	134	MY	2023-05-03 16:57:33.71	2023-05-03 16:57:34.537	2023-05-03 16:57:34.536	1	1
117	Mexico	52	135	MX	2023-05-03 17:40:21.266	2023-05-03 17:40:21.872	2023-05-03 17:40:21.87	1	1
118	Micronesia	691	136	FM	2023-05-03 17:40:45.946	2023-05-03 17:40:46.731	2023-05-03 17:40:46.728	1	1
119	Monaco	377	138	MC	2023-05-03 17:41:08.484	2023-05-03 17:41:09.322	2023-05-03 17:41:09.32	1	1
120	Mongolia	976	139	MN	2023-05-03 17:41:31.349	2023-05-03 17:41:31.979	2023-05-03 17:41:31.978	1	1
121	Montserrat	1	141	MS	2023-05-03 17:41:55.876	2023-05-03 17:41:56.506	2023-05-03 17:41:56.505	1	1
122	Morocco	212	142	MA	2023-05-03 17:42:19.49	2023-05-03 17:42:20.194	2023-05-03 17:42:20.192	1	1
123	Mozambique	258	143	MZ	2023-05-03 17:42:41.342	2023-05-03 17:42:42.001	2023-05-03 17:42:41.999	1	1
124	Namibia	264	145	NA	2023-05-03 17:43:09.307	2023-05-03 17:43:10.027	2023-05-03 17:43:10.025	1	1
125	Nauru	674	146	NR	2023-05-03 17:43:36.819	2023-05-03 17:43:37.506	2023-05-03 17:43:37.504	1	1
126	Nepal	977	147	NP	2023-05-03 17:44:03.937	2023-05-03 17:44:04.778	2023-05-03 17:44:04.776	1	1
127	Netherlands	31	148	NL	2023-05-03 17:44:29.701	2023-05-03 17:44:30.45	2023-05-03 17:44:30.447	1	1
128	Netherlands Antilles	599	149	AN	2023-05-03 17:45:03.678	2023-05-03 17:45:04.454	2023-05-03 17:45:04.453	1	1
129	New Caledonia	687	150	NC	2023-05-03 17:45:32.003	2023-05-03 17:45:32.679	2023-05-03 17:45:32.677	1	1
130	New Zealand	64	151	NZ	2023-05-04 11:44:28.202	2023-05-04 11:44:29.15	2023-05-04 11:44:29.142	1	1
131	Niger	227	153	NE	2023-05-04 11:45:08.585	2023-05-04 11:45:09.411	2023-05-04 11:45:09.409	1	1
132	Niue	683	155	NU	2023-05-04 11:45:28.722	2023-05-04 11:45:29.392	2023-05-04 11:45:29.39	1	1
133	Northern Mariana Islands	1	157	MP	2023-05-04 11:45:48.844	2023-05-04 11:45:49.644	2023-05-04 11:45:49.642	1	1
134	Norway	47	158	NO	2023-05-04 11:46:07.804	2023-05-04 11:46:08.579	2023-05-04 11:46:08.577	1	1
135	Oman	968	159	OM	2023-05-04 11:48:04.181	2023-05-04 11:48:04.881	2023-05-04 11:48:04.88	1	1
136	Pakistan	92	160	PK	2023-05-04 11:48:25.865	2023-05-04 11:48:26.488	2023-05-04 11:48:26.486	1	1
137	Palau	680	161	PW	2023-05-04 11:48:46.338	2023-05-04 11:48:47.012	2023-05-04 11:48:47.01	1	1
138	Palestine	970	162	PS	2023-05-04 11:49:06.906	2023-05-04 11:49:07.691	2023-05-04 11:49:07.688	1	1
139	Panama	507	163	PA	2023-05-04 11:49:31.13	2023-05-04 11:49:31.877	2023-05-04 11:49:31.875	1	1
140	Papua New Guinea	675	164	PG	2023-05-04 11:49:55.741	2023-05-04 11:49:56.457	2023-05-04 11:49:56.455	1	1
141	Paraguay	595	165	PY	2023-05-04 11:50:24.961	2023-05-04 11:50:27.094	2023-05-04 11:50:27.093	1	1
142	Peru	51	166	PA	2023-05-04 11:50:47.716	2023-05-04 11:50:48.62	2023-05-04 11:50:48.618	1	1
143	Philippines	63	167	PH	2023-05-04 11:51:52.403	2023-05-04 11:51:53.076	2023-05-04 11:51:53.074	1	1
144	Pitcairn	64	168	PN	2023-05-04 11:52:10.818	2023-05-04 11:52:11.463	2023-05-04 11:52:11.46	1	1
145	Poland	48	169	PL	2023-05-04 11:52:35.651	2023-05-04 11:52:36.383	2023-05-04 11:52:36.38	1	1
146	Portugal	351	170	PT	2023-05-04 11:53:03.012	2023-05-04 11:53:03.841	2023-05-04 11:53:03.837	1	1
147	Puerto Rico	1	171	PR	2023-05-04 11:53:22.923	2023-05-04 11:53:23.681	2023-05-04 11:53:23.68	1	1
148	Qatar	974	172	QA	2023-05-04 11:53:45.423	2023-05-04 11:53:46.09	2023-05-04 11:53:46.089	1	1
149	Republic of the Congo	242	173	CG	2023-05-04 11:54:12.421	2023-05-04 11:54:13.179	2023-05-04 11:54:13.177	1	1
150	Reunion	262	174	RE	2023-05-04 11:54:57.891	2023-05-04 11:54:58.643	2023-05-04 11:54:58.642	1	1
151	Romania	40	175	RO	2023-05-04 11:55:30.889	2023-05-04 11:55:31.587	2023-05-04 11:55:31.585	1	1
152	Rwanda	250	177	RW	2023-05-04 11:55:49.884	2023-05-04 11:55:50.477	2023-05-04 11:55:50.476	1	1
153	Saint Barthelemy	590	178	BL	2023-05-04 11:56:11.635	2023-05-04 11:56:12.422	2023-05-04 11:56:12.419	1	1
154	Saint Helena	290	179	SH	2023-05-04 11:56:35.499	2023-05-04 11:56:36.222	2023-05-04 11:56:36.22	1	1
155	Saint Kitts and Nevis	1	180	KN	2023-05-04 11:56:53.503	2023-05-04 11:56:54.131	2023-05-04 11:56:54.129	1	1
156	Saint Lucia	1	181	LC	2023-05-04 11:57:18.359	2023-05-04 11:57:18.982	2023-05-04 11:57:18.98	1	1
157	Saint Martin	590	182	MF	2023-05-04 11:57:39.197	2023-05-04 11:57:39.931	2023-05-04 11:57:39.929	1	1
158	Saint Pierre and Miquelon	508	183	PM	2023-05-04 11:58:03.254	2023-05-04 11:58:03.863	2023-05-04 11:58:03.861	1	1
159	Saint Vincent and the Grenadines	1	184	VC	2023-05-04 11:58:29.538	2023-05-04 11:58:30.152	2023-05-04 11:58:30.15	1	1
160	Samoa	685	185	WS	2023-05-04 11:58:50.567	2023-05-04 11:58:51.282	2023-05-04 11:58:51.28	1	1
161	San Marino	378	186	SM	2023-05-04 11:59:43.649	2023-05-04 11:59:44.448	2023-05-04 11:59:44.447	1	1
162	Sao Tome and Principe	239	187	ST	2023-05-04 12:01:15.966	2023-05-04 12:01:16.687	2023-05-04 12:01:16.686	1	1
163	Saudi Arabia	966	188	SA	2023-05-04 12:12:18.834	2023-05-04 12:12:19.388	2023-05-04 12:12:19.386	1	1
164	Senegal	221	189	SN	2023-05-04 12:12:38.762	2023-05-04 12:12:39.418	2023-05-04 12:12:39.416	1	1
165	Serbia	381	190	CS	2023-05-04 12:13:00.996	2023-05-04 12:13:01.732	2023-05-04 12:13:01.73	1	1
166	Seychelles	248	191	SC	2023-05-04 12:13:23.767	2023-05-04 12:13:24.38	2023-05-04 12:13:24.378	1	1
167	Singapore	65	193	SG	2023-05-04 12:14:27.509	2023-05-04 12:14:28.149	2023-05-04 12:14:28.147	1	1
168	Sint Maarten	1	194	SX	2023-05-04 12:14:50.708	2023-05-04 12:14:51.401	2023-05-04 12:14:51.399	1	1
169	Slovakia	421	195	SK	2023-05-04 12:15:12.71	2023-05-04 12:15:13.375	2023-05-04 12:15:13.373	1	1
170	Slovenia	386	196	SI	2023-05-04 12:15:37.007	2023-05-04 12:15:37.679	2023-05-04 12:15:37.677	1	1
171	Solomon Islands	677	197	SB	2023-05-04 12:15:59.112	2023-05-04 12:15:59.776	2023-05-04 12:15:59.775	1	1
172	South Africa	27	199	ZA	2023-05-04 12:16:18.159	2023-05-04 12:16:18.74	2023-05-04 12:16:18.738	1	1
173	Spain	34	202	ES	2023-05-04 12:17:00.29	2023-05-04 12:17:00.887	2023-05-04 12:17:00.885	1	1
174	Sri Lanka	94	203	LK	2023-05-04 12:17:22.521	2023-05-04 12:17:23.128	2023-05-04 12:17:23.126	1	1
175	Suriname	597	205	SR	2023-05-04 12:17:44.513	2023-05-04 12:17:45.156	2023-05-04 12:17:45.153	1	1
176	Svalbard and Jan Mayen	47	206	SJ	2023-05-04 12:18:05.185	2023-05-04 12:18:05.856	2023-05-04 12:18:05.853	1	1
177	Swaziland	268	207	SZ	2023-05-04 12:19:41.97	2023-05-04 12:19:42.667	2023-05-04 12:19:42.663	1	1
178	Sweden	46	208	SE	2023-05-04 12:20:15.731	2023-05-04 12:20:16.453	2023-05-04 12:20:16.452	1	1
179	Switzerland	41	209	CH	2023-05-04 12:20:45.421	2023-05-04 12:20:46.004	2023-05-04 12:20:46.002	1	1
180	Taiwan	886	211	TW	2023-05-04 12:21:03.843	2023-05-04 12:21:04.513	2023-05-04 12:21:04.511	1	1
181	Tajikistan	992	212	TJ	2023-05-04 12:21:23.625	2023-05-04 12:21:24.23	2023-05-04 12:21:24.228	1	1
182	Tanzania	255	213	TZ	2023-05-04 12:21:48.255	2023-05-04 12:21:48.858	2023-05-04 12:21:48.856	1	1
183	Thailand	66	214	TH	2023-05-04 12:22:05.273	2023-05-04 12:22:05.965	2023-05-04 12:22:05.963	1	1
184	Togo	228	215	TG	2023-05-04 12:22:25.131	2023-05-04 12:22:25.742	2023-05-04 12:22:25.74	1	1
185	Tokelau	690	216	TK	2023-05-04 12:22:45.991	2023-05-04 12:22:46.787	2023-05-04 12:22:46.785	1	1
186	Tonga	676	217	TO	2023-05-04 12:23:08.8	2023-05-04 12:23:09.622	2023-05-04 12:23:09.62	1	1
187	Trinidad and Tobago	1	218	TT	2023-05-04 12:23:31.38	2023-05-04 12:23:31.977	2023-05-04 12:23:31.976	1	1
188	Turkey	90	220	TR	2023-05-04 12:23:49.241	2023-05-04 12:23:49.884	2023-05-04 12:23:49.882	1	1
189	Turks and Caicos Islands	1	222	TC	2023-05-04 12:24:06.637	2023-05-04 12:24:07.283	2023-05-04 12:24:07.282	1	1
190	Tuvalu	688	223	TV	2023-05-04 12:24:26.956	2023-05-04 12:24:27.646	2023-05-04 12:24:27.643	1	1
191	U.S. Virgin Islands	1	224	VI	2023-05-04 12:24:47.8	2023-05-04 12:24:48.383	2023-05-04 12:24:48.381	1	1
192	Uganda	256	225	UG	2023-05-04 12:25:06.663	2023-05-04 12:25:07.302	2023-05-04 12:25:07.3	1	1
193	Ukraine	380	226	UA	2023-05-04 12:25:47.152	2023-05-04 12:25:47.807	2023-05-04 12:25:47.804	1	1
194	United Arab Emirates	971	227	AE	2023-05-04 12:26:17.624	2023-05-04 12:26:18.326	2023-05-04 12:26:18.325	1	1
195	United Kingdom	44	228	GB	2023-05-04 12:26:40.797	2023-05-04 12:26:41.379	2023-05-04 12:26:41.377	1	1
196	Uruguay	598	230	UY	2023-05-04 12:27:03.535	2023-05-04 12:27:04.285	2023-05-04 12:27:04.282	1	1
197	Uzbekistan	998	231	UZ	2023-05-04 12:27:21.855	2023-05-04 12:27:22.472	2023-05-04 12:27:22.47	1	1
198	Vanuatu	678	232	VU	2023-05-04 12:27:41.317	2023-05-04 12:27:41.991	2023-05-04 12:27:41.989	1	1
199	Vatican	379	233	VA	2023-05-04 12:28:06.774	2023-05-04 12:28:07.409	2023-05-04 12:28:07.407	1	1
200	Vietnam	84	235	VN	2023-05-04 12:28:33.517	2023-05-04 12:28:34.216	2023-05-04 12:28:34.214	1	1
201	Wallis and Futuna	681	236	WF	2023-05-04 12:28:57.573	2023-05-04 12:28:58.248	2023-05-04 12:28:58.247	1	1
202	Western Sahara	212	237	EH	2023-05-04 12:29:18.98	2023-05-04 12:29:19.573	2023-05-04 12:29:19.571	1	1
203	Zambia	260	239	ZM	2023-05-04 12:29:40.745	2023-05-04 12:29:41.383	2023-05-04 12:29:41.381	1	1
204	Zimbabwe	263	240	ZW	2023-05-04 12:30:02.809	2023-05-04 12:30:03.528	2023-05-04 12:30:03.526	1	1
\.


--
-- Data for Name: coupon_drops; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.coupon_drops (id, description, phone_numbers, status, drop_timestamp, coupon_drop_id, result, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.coupons (id, reward_name, pos_campaign_id, status, preview_link, on_display_in_pwa, type, reward_type, passive_redemption, front_of_reward_artwork, back_of_reward_artwork, description, disclaimer, additional_terms_link, receipt_description, reward_supply, reward_value, total_products, basket_reward, basket_value, is_featured, short_id, total_available, total_loaded, total_redeemed, featured_order, deals_order, redeem_button_on_reward, disable_load_to_wallet_by_user, is_rebate, included_products, corporate_entity, chains, regions, stores, collectibles_to_load, campaigns_to_load, gft_explorer_link, created_at, updated_at, published_at, created_by_id, updated_by_id, begin_date, end_date) FROM stdin;
1	reward	112	publish	test.com	t	cool	RT	test	tes	test	test	test	\N	\N	\N	\N	\N	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-04-19 16:38:22.851	2023-04-19 16:38:37.75	2023-04-19 16:38:37.742	1	1	\N	\N
2	reward2	222	publish	test2.com	t	cool2	RT	test	tes	test	test	test	\N	\N	\N	\N	\N	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-04-19 16:41:19.18	2023-04-19 16:41:19.18	2023-04-19 16:41:19.176	\N	\N	\N	\N
4	Reward Name	11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 10:41:37.683	2023-05-19 10:41:37.683	2023-05-19 10:41:37.676	\N	\N	2015-09-09	2015-09-09
5	Reward Name	11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 10:46:13.683	2023-05-19 10:46:13.683	2023-05-19 10:46:13.678	\N	\N	2015-09-09	2015-09-09
3	Reward Name 22	11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-08 18:28:58.947	2023-05-19 10:46:25.96	2023-05-08 18:28:58.942	\N	\N	2015-09-09	2015-09-09
6		11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:29:02.533	2023-05-19 11:29:02.533	2023-05-19 11:29:02.527	\N	\N	2015-09-09	2015-09-09
7		11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:29:15.831	2023-05-19 11:29:15.831	2023-05-19 11:29:15.827	\N	\N	2015-09-09	2015-09-09
8	TR	11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:34:42.878	2023-05-19 11:34:42.878	2023-05-19 11:34:42.872	\N	\N	2015-09-09	2015-09-09
9		11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:38:09.431	2023-05-19 11:38:09.431	2023-05-19 11:38:09.424	\N	\N	2015-09-09	2015-09-09
10		11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:38:11.897	2023-05-19 11:38:11.897	2023-05-19 11:38:11.893	\N	\N	2015-09-09	2015-09-09
11		11111	yes	Link	t	type	reward_type										1	t	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-19 11:38:13.387	2023-05-19 11:38:13.387	2023-05-19 11:38:13.383	\N	\N	2015-09-09	2015-09-09
\.


--
-- Data for Name: coupons_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.coupons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: create_pwas; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.create_pwas (id, matcher, name, rules, privacy, terms, enable_associates_portal, asset_types_supported, xsolla_paystation_url, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: create_pwas_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.create_pwas_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: domains; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.domains (id, matcher, rules, privacy, terms, enable_associates_portal, asset_types_supported, x_solla_paystation_url, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Domain Matcher	Rules	privacy	terms	t	couponsAndCollectibles	\N	2023-05-31 15:59:19.279	2023-05-31 19:06:59.987	2023-05-31 19:06:59.981	1	1
\.


--
-- Data for Name: domains_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.domains_chains_links (id, domain_id, chain_id, chain_order) FROM stdin;
1	1	2	0
\.


--
-- Data for Name: domains_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.domains_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	translation.translation	receipt_message	1
2	1	2	translation.translation	receipt_message	2
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: generate_reports; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.generate_reports (id, report_type_summary, receipt_mints, rewards_tranfers, receipt_transfers, rewards_mints, start_date, end_date, domain_specific_reports, generate_report, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: gft_pays; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.gft_pays (id, mobile_number, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: gft_pays_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.gft_pays_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-04-07 14:57:04.735	2023-04-07 14:57:04.735	\N	\N
\.


--
-- Data for Name: importconfigs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.importconfigs (id, date, source, content_type, imported_count, ongoing, options, field_mapping, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: language_codes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.language_codes (id, code, language_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Eng	English	2023-05-31 15:56:37.664	2023-05-31 15:56:39.127	2023-05-31 15:56:39.124	1	1
2	Hin	Hindi	2023-05-31 15:56:49.504	2023-05-31 15:56:50.157	2023-05-31 15:56:50.155	1	1
\.


--
-- Data for Name: messagings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.messagings (id, social_link, text_message, email_message, blog_link, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: nft_collections; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.nft_collections (id, name, short_name, gft_explorer_link, supply, total_minted, vimeo_video_id, nft_collection_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: nft_collections_allowed_country_codes_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.nft_collections_allowed_country_codes_links (id, nft_collection_id, country_code_id, country_code_order) FROM stdin;
\.


--
-- Data for Name: nft_collections_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.nft_collections_chains_links (id, nft_collection_id, chain_id, chain_order) FROM stdin;
\.


--
-- Data for Name: nft_collections_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.nft_collections_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.pages (id, page_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: pages_chains_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.pages_chains_links (id, page_id, chain_id, chain_order) FROM stdin;
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.partners (id, short_id, name, restricted_loyalty_program, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: partners_congratulation_screen_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.partners_congratulation_screen_links (id, partner_id, congratulation_screen_id, partner_order) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, upc) FROM stdin;
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.regions (id, division, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	test	2023-05-30 16:54:29.444	2023-05-31 13:19:47.285	2023-05-30 16:54:39.095	1	1
2	Test2	2023-05-31 15:28:31.277	2023-05-31 15:28:32.055	2023-05-31 15:28:32.052	1	1
\.


--
-- Data for Name: regions_chain_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.regions_chain_links (id, region_id, chain_id, region_order) FROM stdin;
1	1	2	1
2	2	2	2
\.


--
-- Data for Name: retail_profiles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.retail_profiles (id, division, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Test Div	2023-05-30 19:21:28.978	2023-05-31 19:08:02.86	\N	1	1
2	Test Div	2023-05-31 16:21:38.775	2023-05-31 19:08:19.759	\N	1	1
\.


--
-- Data for Name: retail_profiles_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.retail_profiles_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	store.store	stores	1
2	2	2	store.store	stores	1
\.


--
-- Data for Name: retail_profiles_regions_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.retail_profiles_regions_links (id, retail_profile_id, region_id, region_order) FROM stdin;
1	1	1	0
2	2	2	0
\.


--
-- Data for Name: reward_drops; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_drops (id, description, phone_numbers, result, status, drop_timestamp, reward_drop_id, campaign, gft_explorer_link, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: reward_games; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_games (id, game_name, banner, game_id, max_daily_plays, begin_date, end_date, game_server_url, official_rules_link, feature_order, gft_explorer_link, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: reward_games_chain_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_games_chain_links (id, reward_game_id, chain_id, reward_game_order) FROM stdin;
\.


--
-- Data for Name: reward_games_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_games_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: reward_products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_products (id, product_name, upc_code, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: reward_subscriptions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_subscriptions (id, subscription_id, short_name, display_name, price, more_link_info, billing_id, x_solla_api_latest_status, x_solla_product_id, gft_explorer_link, live, currency, drop_frequency, created_at, updated_at, published_at, created_by_id, updated_by_id, terms_conditions, feature_order) FROM stdin;
\.


--
-- Data for Name: reward_subscriptions_allowed_country_codes_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_subscriptions_allowed_country_codes_links (id, reward_subscription_id, country_code_id, country_code_order) FROM stdin;
\.


--
-- Data for Name: reward_subscriptions_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_subscriptions_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: reward_subscriptions_regions_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.reward_subscriptions_regions_links (id, reward_subscription_id, region_id) FROM stdin;
\.


--
-- Data for Name: shopper_coupons; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shopper_coupons (id, vatom_user_id, vatom_business_id, vatom_campaign_id, vatom_design_id, vatom_distribution_id, vatom_source, vatom_medium, vatom_state, created_at, updated_at, published_at, created_by_id, updated_by_id, vatom_token_id) FROM stdin;
2	Test	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-24 14:14:17.328	2023-05-24 14:14:17.328	2023-05-24 14:14:17.326	\N	\N	testing01
1	Test	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-24 14:14:04.346	2023-05-24 14:18:33.835	2023-05-24 14:14:04.341	\N	\N	testing01
3	123456	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 11:32:39.8	2023-05-25 11:48:00.387	2023-05-25 11:32:39.792	\N	\N	testing01
4	\N	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 12:34:44.079	2023-05-25 12:34:44.079	\N	\N	\N	testing01
5	\N	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 12:35:34.242	2023-05-25 12:35:34.242	\N	\N	\N	testing01
6	Test	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 12:35:55.824	2023-05-25 12:35:55.824	\N	\N	\N	testing01
9	Test12	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 14:59:30.372	2023-05-25 14:59:30.372	\N	\N	\N	123456
10	Test12	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 15:00:46.017	2023-05-25 15:00:46.017	\N	\N	\N	123456
7	Test12	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 12:36:11.384	2023-05-25 15:01:02.933	\N	\N	\N	123456
8	Test12	Test	Test	Test User 1	test	vatom_source	vatom_medium	Minted	2023-05-25 14:59:21.47	2023-05-26 15:53:36.502	\N	\N	\N	1234567
11	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-26 17:12:08.401	2023-05-26 17:12:08.401	\N	1	1	\N
12	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-26 17:25:18.052	2023-05-26 17:25:18.052	\N	1	1	\N
13	\N	\N	\N	\N	\N	\N	\N	\N	2023-05-30 12:33:20.503	2023-05-30 12:33:20.503	\N	1	1	\N
\.


--
-- Data for Name: shopper_coupons_shopper_id_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shopper_coupons_shopper_id_links (id, shopper_coupon_id, shopper_id, shopper_order) FROM stdin;
2	2	12	\N
4	1	13	\N
6	3	12	\N
\.


--
-- Data for Name: shoppers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shoppers (id, name, phone_number, email, vatom_user_id, vatom_business_id, vatom_campaign_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
12	aaru	898989898	nilesh-test-050@gmail.com	123456	123	123	2023-05-24 12:11:48.305	2023-05-24 12:11:50.683	2023-05-24 12:11:50.681	1	1
13	aaru22	123454555	nilesh-test-051@gmail.com	12321	12321	1132	2023-05-24 12:13:52.522	2023-05-24 12:13:55.074	2023-05-24 12:13:55.069	1	1
14	Test User 1	13172123434	testing01@example.com	Test	Test	Test	2023-05-24 12:48:56.197	2023-05-24 12:48:56.197	2023-05-24 12:48:56.189	\N	\N
15	Test User 1	+13172123434	testing010@example.com	Test0	Test0	Test0	2023-05-25 15:25:38.79	2023-05-25 15:25:38.79	2023-05-25 15:25:38.776	\N	\N
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.stores (id, latitude, longitude, banner, name, address, city, county, zip, state, number, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: stores_region_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.stores_region_links (id, store_id, region_id, store_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
15	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
16	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
19	plugin_i18n_default_locale	"en"	string	\N	\N
18	plugin_documentation_config	{"restrictedAccess":true,"password":"$2a$10$PutPKAzkWTB50QqQrC59.eP1fuFtcJ5WNbSWQU6OMValfPimDFkTK"}	object	\N	\N
17	plugin_upload_metrics	{"weeklySchedule":"8 9 12 * * 4","lastWeeklyUpdate":1685601548035}	object	\N	\N
23	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::account.account":{"kind":"collectionType","collectionName":"accounts","info":{"singularName":"account","pluralName":"accounts","displayName":"Account","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobile_wallet_id_number":{"type":"enumeration","enum":["Live","Suspended"]},"physical_card_number":{"type":"enumeration","enum":["Live","Suspended"]},"virtual_card_number":{"type":"enumeration","enum":["Live","Suspended"]},"campaign_balance":{"type":"string"},"account_balance":{"type":"string"},"last_4_EIN":{"type":"string"},"notification_methods":{"type":"enumeration","enum":["SMS","Email"]},"transaction_history":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"accounts","info":{"singularName":"account","pluralName":"accounts","displayName":"Account","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobile_wallet_id_number":{"type":"enumeration","enum":["Live","Suspended"]},"physical_card_number":{"type":"enumeration","enum":["Live","Suspended"]},"virtual_card_number":{"type":"enumeration","enum":["Live","Suspended"]},"campaign_balance":{"type":"string"},"account_balance":{"type":"string"},"last_4_EIN":{"type":"string"},"notification_methods":{"type":"enumeration","enum":["SMS","Email"]},"transaction_history":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"account","connection":"default","uid":"api::account.account","apiName":"account","globalId":"Account","actions":{},"lifecycles":{}},"api::adc-drop.adc-drop":{"kind":"collectionType","collectionName":"adc_drops","info":{"singularName":"adc-drop","pluralName":"adc-drops","displayName":"ADC Drop","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dropTimestamp":{"type":"string"},"description":{"type":"richtext"},"status":{"type":"string"},"result":{"type":"json"},"adcDropId":{"type":"string"},"partner":{"type":"relation","relation":"oneToOne","target":"api::partner.partner"},"collectibles":{"type":"relation","relation":"oneToMany","target":"api::collectible.collectible"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"adc_drops","info":{"singularName":"adc-drop","pluralName":"adc-drops","displayName":"ADC Drop","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"dropTimestamp":{"type":"string"},"description":{"type":"richtext"},"status":{"type":"string"},"result":{"type":"json"},"adcDropId":{"type":"string"},"partner":{"type":"relation","relation":"oneToOne","target":"api::partner.partner"},"collectibles":{"type":"relation","relation":"oneToMany","target":"api::collectible.collectible"}},"kind":"collectionType"},"modelType":"contentType","modelName":"adc-drop","connection":"default","uid":"api::adc-drop.adc-drop","apiName":"adc-drop","globalId":"AdcDrop","actions":{},"lifecycles":{}},"api::add-retailer.add-retailer":{"kind":"collectionType","collectionName":"add_retailers","info":{"singularName":"add-retailer","pluralName":"add-retailers","displayName":"Add Retailer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"short_id":{"type":"integer"},"name":{"type":"string"},"restricted_loyalty_program":{"type":"boolean","default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"add_retailers","info":{"singularName":"add-retailer","pluralName":"add-retailers","displayName":"Add Retailer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"short_id":{"type":"integer"},"name":{"type":"string"},"restricted_loyalty_program":{"type":"boolean","default":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"add-retailer","connection":"default","uid":"api::add-retailer.add-retailer","apiName":"add-retailer","globalId":"AddRetailer","actions":{},"lifecycles":{}},"api::associate.associate":{"kind":"collectionType","collectionName":"associates","info":{"singularName":"associate","pluralName":"associates","displayName":"Associate","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"associate_id":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"associates","info":{"singularName":"associate","pluralName":"associates","displayName":"Associate","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"associate_id":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"associate","connection":"default","uid":"api::associate.associate","apiName":"associate","globalId":"Associate","actions":{},"lifecycles":{}},"api::banner.banner":{"kind":"collectionType","collectionName":"banners","info":{"singularName":"banner","pluralName":"banners","displayName":"Banner","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"artwork":{"displayName":"Artwork","type":"component","repeatable":true,"component":"art.artwork"},"short_name_tag":{"type":"string"},"visible":{"type":"boolean"},"featured_order":{"type":"integer"},"external_link":{"type":"string"},"banner_id":{"type":"string"},"chains":{"type":"relation","relation":"manyToMany","target":"api::chain.chain","inversedBy":"banners"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"banners","info":{"singularName":"banner","pluralName":"banners","displayName":"Banner","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"artwork":{"displayName":"Artwork","type":"component","repeatable":true,"component":"art.artwork"},"short_name_tag":{"type":"string"},"visible":{"type":"boolean"},"featured_order":{"type":"integer"},"external_link":{"type":"string"},"banner_id":{"type":"string"},"chains":{"type":"relation","relation":"manyToMany","target":"api::chain.chain","inversedBy":"banners"}},"kind":"collectionType"},"modelType":"contentType","modelName":"banner","connection":"default","uid":"api::banner.banner","apiName":"banner","globalId":"Banner","actions":{},"lifecycles":{}},"api::campaign.campaign":{"kind":"collectionType","collectionName":"campaigns","info":{"singularName":"campaign","pluralName":"campaigns","displayName":"Campaign","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"campaignId":{"type":"string","unique":true},"couponValue":{"type":"decimal","required":true},"beginDate":{"type":"date","required":true},"endDate":{"type":"date","required":true},"isBasket":{"type":"boolean"},"isRebate":{"type":"boolean","default":false},"basketValue":{"type":"decimal"},"quantity":{"type":"integer","required":true},"isMultiple":{"type":"boolean"},"updateLevel":{"type":"integer","default":0},"couponSupply":{"type":"biginteger","required":true},"additionalRulesLink":{"type":"string","default":"https://www.food4less.com/"},"listId":{"type":"string"},"listItems":{"type":"relation","relation":"manyToMany","target":"api::product.product","inversedBy":"campaigns"},"type":{"type":"enumeration","enum":["coupon"],"default":"coupon"},"loyaltyPoints":{"type":"biginteger"},"isFeatured":{"type":"boolean","default":false},"status":{"type":"string","default":"draft"},"couponType":{"type":"enumeration","enum":["manufacturer","store"],"default":"manufacturer"},"totalRedeemed":{"type":"biginteger","default":"0"},"totalLoaded":{"type":"biginteger","default":"0"},"totalAvailable":{"type":"biginteger"},"previewLink":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"corporateEntities":{"type":"relation","relation":"oneToMany","target":"api::corporate-entity.corporate-entity"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"stores":{"type":"relation","relation":"oneToMany","target":"api::store.store"},"shortId":{"type":"string"},"primaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"bannerArtworkList":{"type":"component","repeatable":true,"component":"art.artwork"},"descriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"termsList":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"storeTerminalDescriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"shortName":{"type":"string","required":true,"unique":true},"backArtwork":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"featuredOrder":{"type":"integer"},"dealsOrder":{"type":"integer"},"passiveRedemption":{"type":"enumeration","enum":["none","new_users","new_and_existing_users"],"default":"none"},"collectiblesToLoad":{"type":"relation","relation":"oneToMany","target":"api::collectible.collectible"},"campaignsToLoad":{"type":"relation","relation":"oneToMany","target":"api::campaign.campaign"},"onDisplayInPWA":{"type":"boolean","default":true},"redeemButtonOnReward":{"type":"boolean","default":false},"disableLoadToWalletByUser":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"campaigns","info":{"singularName":"campaign","pluralName":"campaigns","displayName":"Campaign","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"campaignId":{"type":"string","unique":true},"couponValue":{"type":"decimal","required":true},"beginDate":{"type":"date","required":true},"endDate":{"type":"date","required":true},"isBasket":{"type":"boolean"},"isRebate":{"type":"boolean","default":false},"basketValue":{"type":"decimal"},"quantity":{"type":"integer","required":true},"isMultiple":{"type":"boolean"},"updateLevel":{"type":"integer","default":0},"couponSupply":{"type":"biginteger","required":true},"additionalRulesLink":{"type":"string","default":"https://www.food4less.com/"},"listId":{"type":"string"},"listItems":{"type":"relation","relation":"manyToMany","target":"api::product.product","inversedBy":"campaigns"},"type":{"type":"enumeration","enum":["coupon"],"default":"coupon"},"loyaltyPoints":{"type":"biginteger"},"isFeatured":{"type":"boolean","default":false},"status":{"type":"string","default":"draft"},"couponType":{"type":"enumeration","enum":["manufacturer","store"],"default":"manufacturer"},"totalRedeemed":{"type":"biginteger","default":"0"},"totalLoaded":{"type":"biginteger","default":"0"},"totalAvailable":{"type":"biginteger"},"previewLink":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"corporateEntities":{"type":"relation","relation":"oneToMany","target":"api::corporate-entity.corporate-entity"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"stores":{"type":"relation","relation":"oneToMany","target":"api::store.store"},"shortId":{"type":"string"},"primaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"bannerArtworkList":{"type":"component","repeatable":true,"component":"art.artwork"},"descriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"termsList":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"storeTerminalDescriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"shortName":{"type":"string","required":true,"unique":true},"backArtwork":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"featuredOrder":{"type":"integer"},"dealsOrder":{"type":"integer"},"passiveRedemption":{"type":"enumeration","enum":["none","new_users","new_and_existing_users"],"default":"none"},"collectiblesToLoad":{"type":"relation","relation":"oneToMany","target":"api::collectible.collectible"},"campaignsToLoad":{"type":"relation","relation":"oneToMany","target":"api::campaign.campaign"},"onDisplayInPWA":{"type":"boolean","default":true},"redeemButtonOnReward":{"type":"boolean","default":false},"disableLoadToWalletByUser":{"type":"boolean","default":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"campaign","connection":"default","uid":"api::campaign.campaign","apiName":"campaign","globalId":"Campaign","actions":{},"lifecycles":{}},"api::categorie.categorie":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"categorie","pluralName":"categories","displayName":"Categories","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"artwork":{"type":"media","multiple":false,"required":true,"allowedTypes":["images","files","videos","audios"]},"tag":{"type":"uid"},"names":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"items":{"type":"relation","relation":"manyToMany","target":"api::product.product","inversedBy":"categories"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"categorie","pluralName":"categories","displayName":"Categories","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"artwork":{"type":"media","multiple":false,"required":true,"allowedTypes":["images","files","videos","audios"]},"tag":{"type":"uid"},"names":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"items":{"type":"relation","relation":"manyToMany","target":"api::product.product","inversedBy":"categories"}},"kind":"collectionType"},"modelType":"contentType","modelName":"categorie","connection":"default","uid":"api::categorie.categorie","apiName":"categorie","globalId":"Categorie","actions":{},"lifecycles":{}},"api::chain.chain":{"kind":"collectionType","collectionName":"chains","info":{"singularName":"chain","pluralName":"chains","displayName":"Chain"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"banners":{"type":"relation","relation":"manyToMany","target":"api::banner.banner","mappedBy":"chains"},"reward_games":{"type":"relation","relation":"oneToMany","target":"api::reward-game.reward-game","mappedBy":"chain"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region","mappedBy":"chain"},"corporateEntity":{"type":"relation","relation":"manyToOne","target":"api::corporate-entity.corporate-entity","inversedBy":"chains"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"chains","info":{"singularName":"chain","pluralName":"chains","displayName":"Chain"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"banners":{"type":"relation","relation":"manyToMany","target":"api::banner.banner","mappedBy":"chains"},"reward_games":{"type":"relation","relation":"oneToMany","target":"api::reward-game.reward-game","mappedBy":"chain"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region","mappedBy":"chain"},"corporateEntity":{"type":"relation","relation":"manyToOne","target":"api::corporate-entity.corporate-entity","inversedBy":"chains"}},"kind":"collectionType"},"modelType":"contentType","modelName":"chain","connection":"default","uid":"api::chain.chain","apiName":"chain","globalId":"Chain","actions":{},"lifecycles":{}},"api::collectible.collectible":{"kind":"collectionType","collectionName":"collectibles","info":{"singularName":"collectible","pluralName":"collectibles","displayName":"Collectible","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"collectibleId":{"type":"string","unique":true},"onDisplayInPWA":{"type":"boolean"},"unlimitedSupply":{"type":"boolean"},"totalMinted":{"type":"biginteger"},"disableLoadToWalletByUser":{"type":"boolean"},"is3DAsset":{"type":"boolean"},"asset3dBackgroundColor":{"type":"string"},"supply":{"type":"integer"},"descriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"vimeoVideoId":{"type":"string"},"target3dAsset":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"target3dMtl":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"asset3dProps":{"type":"json"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"allowedCountryCodes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"shortName":{"type":"string","required":true,"unique":true},"endDate":{"type":"date"},"primaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"secondaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork"},"termsList":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"collectibles","info":{"singularName":"collectible","pluralName":"collectibles","displayName":"Collectible","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"collectibleId":{"type":"string","unique":true},"onDisplayInPWA":{"type":"boolean"},"unlimitedSupply":{"type":"boolean"},"totalMinted":{"type":"biginteger"},"disableLoadToWalletByUser":{"type":"boolean"},"is3DAsset":{"type":"boolean"},"asset3dBackgroundColor":{"type":"string"},"supply":{"type":"integer"},"descriptions":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1},"vimeoVideoId":{"type":"string"},"target3dAsset":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"target3dMtl":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"asset3dProps":{"type":"json"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"allowedCountryCodes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"shortName":{"type":"string","required":true,"unique":true},"endDate":{"type":"date"},"primaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork","required":true,"min":1},"secondaryArtworkList":{"type":"component","repeatable":true,"component":"art.artwork"},"termsList":{"type":"component","repeatable":true,"component":"translation.translation","required":true,"min":1}},"kind":"collectionType"},"modelType":"contentType","modelName":"collectible","connection":"default","uid":"api::collectible.collectible","apiName":"collectible","globalId":"Collectible","actions":{},"lifecycles":{}},"api::company-profile.company-profile":{"kind":"collectionType","collectionName":"company_profiles","info":{"singularName":"company-profile","pluralName":"company-profiles","displayName":"Company Profile","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"company_name":{"type":"string","required":true,"minLength":3},"lookup_name":{"type":"string","required":true},"company_EIN_TIN":{"type":"string","required":true,"minLength":3,"unique":true},"company_parent":{"type":"string"},"company_parent_EIN_TIN":{"type":"string"},"company_alliance_id":{"type":"string"},"contact_name":{"type":"string","required":true,"minLength":3},"contact_mobile":{"type":"string","required":true,"minLength":8},"contact_email":{"type":"email","required":true,"minLength":3},"password":{"type":"password"},"confirmed":{"type":"boolean","default":false},"blocked":{"type":"boolean","default":false},"role":{"type":"string"},"address_street":{"type":"string"},"city":{"type":"string"},"state":{"type":"string"},"zip":{"type":"string"},"gft_explorer_link":{"type":"string"},"language":{"type":"string"},"node":{"type":"string"},"id_number":{"type":"uid"},"gft_pays":{"type":"relation","relation":"oneToMany","target":"api::gft-pay.gft-pay"},"accounts":{"type":"relation","relation":"oneToMany","target":"api::account.account"},"country":{"type":"relation","relation":"oneToOne","target":"api::country-code.country-code"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"company_profiles","info":{"singularName":"company-profile","pluralName":"company-profiles","displayName":"Company Profile","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"company_name":{"type":"string","required":true,"minLength":3},"lookup_name":{"type":"string","required":true},"company_EIN_TIN":{"type":"string","required":true,"minLength":3,"unique":true},"company_parent":{"type":"string"},"company_parent_EIN_TIN":{"type":"string"},"company_alliance_id":{"type":"string"},"contact_name":{"type":"string","required":true,"minLength":3},"contact_mobile":{"type":"string","required":true,"minLength":8},"contact_email":{"type":"email","required":true,"minLength":3},"password":{"type":"password"},"confirmed":{"type":"boolean","default":false},"blocked":{"type":"boolean","default":false},"role":{"type":"string"},"address_street":{"type":"string"},"city":{"type":"string"},"state":{"type":"string"},"zip":{"type":"string"},"gft_explorer_link":{"type":"string"},"language":{"type":"string"},"node":{"type":"string"},"id_number":{"type":"uid"},"gft_pays":{"type":"relation","relation":"oneToMany","target":"api::gft-pay.gft-pay"},"accounts":{"type":"relation","relation":"oneToMany","target":"api::account.account"},"country":{"type":"relation","relation":"oneToOne","target":"api::country-code.country-code"}},"kind":"collectionType"},"modelType":"contentType","modelName":"company-profile","connection":"default","uid":"api::company-profile.company-profile","apiName":"company-profile","globalId":"CompanyProfile","actions":{},"lifecycles":{}},"api::configuration.configuration":{"kind":"singleType","collectionName":"configurations","info":{"singularName":"configuration","pluralName":"configurations","displayName":"configuration"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"json":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"configurations","info":{"singularName":"configuration","pluralName":"configurations","displayName":"configuration"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"json":{"type":"json"}},"kind":"singleType"},"modelType":"contentType","modelName":"configuration","connection":"default","uid":"api::configuration.configuration","apiName":"configuration","globalId":"Configuration","actions":{},"lifecycles":{}},"api::congratulation-screen.congratulation-screen":{"kind":"collectionType","collectionName":"congratulation_screens","info":{"singularName":"congratulation-screen","pluralName":"congratulation-screens","displayName":"Congratulation Screens","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"congratulationsImage":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"congratulationTitle":{"type":"string"},"howToTitle":{"type":"string"},"howToText":{"type":"string"},"congratulationsText":{"type":"string"},"howToImage":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"partners":{"type":"relation","relation":"oneToMany","target":"api::partner.partner","mappedBy":"congratulationScreen"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"congratulation_screens","info":{"singularName":"congratulation-screen","pluralName":"congratulation-screens","displayName":"Congratulation Screens","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"congratulationsImage":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"congratulationTitle":{"type":"string"},"howToTitle":{"type":"string"},"howToText":{"type":"string"},"congratulationsText":{"type":"string"},"howToImage":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"partners":{"type":"relation","relation":"oneToMany","target":"api::partner.partner","mappedBy":"congratulationScreen"}},"kind":"collectionType"},"modelType":"contentType","modelName":"congratulation-screen","connection":"default","uid":"api::congratulation-screen.congratulation-screen","apiName":"congratulation-screen","globalId":"CongratulationScreen","actions":{},"lifecycles":{}},"api::corporate-entity.corporate-entity":{"kind":"collectionType","collectionName":"corporate_entities","info":{"singularName":"corporate-entity","pluralName":"corporate-entities","displayName":"Corporate Entity"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"lookupName":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain","mappedBy":"corporateEntity"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"corporate_entities","info":{"singularName":"corporate-entity","pluralName":"corporate-entities","displayName":"Corporate Entity"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"lookupName":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain","mappedBy":"corporateEntity"}},"kind":"collectionType"},"modelType":"contentType","modelName":"corporate-entity","connection":"default","uid":"api::corporate-entity.corporate-entity","apiName":"corporate-entity","globalId":"CorporateEntity","actions":{},"lifecycles":{}},"api::country-code.country-code":{"kind":"collectionType","collectionName":"country_codes","info":{"singularName":"country-code","pluralName":"country-codes","displayName":"Country Code"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"dial_code":{"type":"string"},"code":{"type":"string"},"label":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"country_codes","info":{"singularName":"country-code","pluralName":"country-codes","displayName":"Country Code"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"dial_code":{"type":"string"},"code":{"type":"string"},"label":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"country-code","connection":"default","uid":"api::country-code.country-code","apiName":"country-code","globalId":"CountryCode","actions":{},"lifecycles":{}},"api::coupon.coupon":{"kind":"collectionType","collectionName":"coupons","info":{"singularName":"coupon","pluralName":"coupons","displayName":"Coupon","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"reward_name":{"type":"string","required":true,"minLength":5},"pos_campaign_id":{"type":"biginteger","required":true,"min":"5"},"status":{"type":"string"},"preview_link":{"type":"string"},"on_display_in_pwa":{"type":"boolean"},"type":{"type":"string","required":true,"minLength":2},"reward_type":{"type":"string"},"begin_date":{"type":"date","required":true},"end_date":{"type":"date","required":true},"passive_redemption":{"type":"string"},"front_of_reward_artwork":{"type":"string","required":true,"minLength":2},"back_of_reward_artwork":{"type":"string","required":true,"minLength":2},"description":{"type":"richtext","required":true,"minLength":10},"disclaimer":{"type":"richtext","required":true},"additional_terms_link":{"type":"string"},"receipt_description":{"type":"string","required":true},"reward_supply":{"type":"string","required":true,"minLength":3},"reward_value":{"type":"string","required":true,"minLength":2},"total_products":{"type":"integer","required":true},"basket_reward":{"type":"boolean","default":true},"basket_value":{"type":"string"},"is_featured":{"type":"boolean","default":false},"short_id":{"type":"string"},"total_available":{"type":"integer"},"total_loaded":{"type":"integer"},"total_redeemed":{"type":"integer"},"featured_order":{"type":"string"},"deals_order":{"type":"string"},"redeem_button_on_reward":{"type":"boolean"},"disable_load_to_wallet_by_user":{"type":"boolean"},"is_rebate":{"type":"boolean"},"included_products":{"type":"string"},"corporate_entity":{"type":"string"},"chains":{"type":"string"},"regions":{"type":"string"},"stores":{"type":"string"},"collectibles_to_load":{"type":"string"},"campaigns_to_load":{"type":"string"},"gft_explorer_link":{"type":"string"},"banner_artwork":{"type":"component","repeatable":true,"component":"art.artwork"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"coupons","info":{"singularName":"coupon","pluralName":"coupons","displayName":"Coupon","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"reward_name":{"type":"string","required":true,"minLength":5},"pos_campaign_id":{"type":"biginteger","required":true,"min":"5"},"status":{"type":"string"},"preview_link":{"type":"string"},"on_display_in_pwa":{"type":"boolean"},"type":{"type":"string","required":true,"minLength":2},"reward_type":{"type":"string"},"begin_date":{"type":"date","required":true},"end_date":{"type":"date","required":true},"passive_redemption":{"type":"string"},"front_of_reward_artwork":{"type":"string","required":true,"minLength":2},"back_of_reward_artwork":{"type":"string","required":true,"minLength":2},"description":{"type":"richtext","required":true,"minLength":10},"disclaimer":{"type":"richtext","required":true},"additional_terms_link":{"type":"string"},"receipt_description":{"type":"string","required":true},"reward_supply":{"type":"string","required":true,"minLength":3},"reward_value":{"type":"string","required":true,"minLength":2},"total_products":{"type":"integer","required":true},"basket_reward":{"type":"boolean","default":true},"basket_value":{"type":"string"},"is_featured":{"type":"boolean","default":false},"short_id":{"type":"string"},"total_available":{"type":"integer"},"total_loaded":{"type":"integer"},"total_redeemed":{"type":"integer"},"featured_order":{"type":"string"},"deals_order":{"type":"string"},"redeem_button_on_reward":{"type":"boolean"},"disable_load_to_wallet_by_user":{"type":"boolean"},"is_rebate":{"type":"boolean"},"included_products":{"type":"string"},"corporate_entity":{"type":"string"},"chains":{"type":"string"},"regions":{"type":"string"},"stores":{"type":"string"},"collectibles_to_load":{"type":"string"},"campaigns_to_load":{"type":"string"},"gft_explorer_link":{"type":"string"},"banner_artwork":{"type":"component","repeatable":true,"component":"art.artwork"}},"kind":"collectionType"},"modelType":"contentType","modelName":"coupon","connection":"default","uid":"api::coupon.coupon","apiName":"coupon","globalId":"Coupon","actions":{},"lifecycles":{}},"api::coupon-drop.coupon-drop":{"kind":"collectionType","collectionName":"coupon_drops","info":{"singularName":"coupon-drop","pluralName":"coupon-drops","displayName":"Coupon Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"description":{"type":"string"},"phone_numbers":{"type":"json"},"status":{"type":"string"},"drop_timestamp":{"type":"string"},"coupon_drop_id":{"type":"integer"},"result":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"coupon_drops","info":{"singularName":"coupon-drop","pluralName":"coupon-drops","displayName":"Coupon Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"description":{"type":"string"},"phone_numbers":{"type":"json"},"status":{"type":"string"},"drop_timestamp":{"type":"string"},"coupon_drop_id":{"type":"integer"},"result":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"coupon-drop","connection":"default","uid":"api::coupon-drop.coupon-drop","apiName":"coupon-drop","globalId":"CouponDrop","actions":{},"lifecycles":{}},"api::create-pwa.create-pwa":{"kind":"collectionType","collectionName":"create_pwas","info":{"singularName":"create-pwa","pluralName":"create-pwas","displayName":"Create PWA"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"matcher":{"type":"string"},"name":{"type":"string"},"logo":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"rules":{"type":"string"},"privacy":{"type":"string"},"terms":{"type":"string"},"enable_associates_portal":{"type":"string"},"asset_types_supported":{"type":"string"},"xsolla_paystation_url":{"type":"string"},"transfer_receipt_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"transfer_reward_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"redemption_instructions":{"type":"component","repeatable":true,"component":"translation.translation"},"receipt_message":{"type":"component","repeatable":true,"component":"translation.translation"},"left_footer_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"right_footer_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"create_pwas","info":{"singularName":"create-pwa","pluralName":"create-pwas","displayName":"Create PWA"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"matcher":{"type":"string"},"name":{"type":"string"},"logo":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"rules":{"type":"string"},"privacy":{"type":"string"},"terms":{"type":"string"},"enable_associates_portal":{"type":"string"},"asset_types_supported":{"type":"string"},"xsolla_paystation_url":{"type":"string"},"transfer_receipt_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"transfer_reward_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"redemption_instructions":{"type":"component","repeatable":true,"component":"translation.translation"},"receipt_message":{"type":"component","repeatable":true,"component":"translation.translation"},"left_footer_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"right_footer_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"create-pwa","connection":"default","uid":"api::create-pwa.create-pwa","apiName":"create-pwa","globalId":"CreatePwa","actions":{},"lifecycles":{}},"api::domain.domain":{"kind":"collectionType","collectionName":"domains","info":{"singularName":"domain","pluralName":"domains","displayName":"Domain","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"matcher":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"logo":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"rules":{"type":"string"},"privacy":{"type":"string"},"terms":{"type":"string"},"redemption_instructions":{"type":"component","repeatable":true,"component":"translation.translation"},"transfer_collectible_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"receipt_message":{"type":"component","repeatable":true,"component":"translation.translation"},"enable_associates_portal":{"type":"boolean"},"asset_types_supported":{"type":"enumeration","enum":["couponsAndCollectibles","coupons","collectibles"]},"left_footer_image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"right_footer_image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"x_solla_paystation_url":{"type":"string"},"transfer_coupon_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"domains","info":{"singularName":"domain","pluralName":"domains","displayName":"Domain","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"matcher":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"logo":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"rules":{"type":"string"},"privacy":{"type":"string"},"terms":{"type":"string"},"redemption_instructions":{"type":"component","repeatable":true,"component":"translation.translation"},"transfer_collectible_messages":{"type":"component","repeatable":true,"component":"translation.translation"},"receipt_message":{"type":"component","repeatable":true,"component":"translation.translation"},"enable_associates_portal":{"type":"boolean"},"asset_types_supported":{"type":"enumeration","enum":["couponsAndCollectibles","coupons","collectibles"]},"left_footer_image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"right_footer_image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"x_solla_paystation_url":{"type":"string"},"transfer_coupon_messages":{"type":"component","repeatable":true,"component":"translation.translation"}},"kind":"collectionType"},"modelType":"contentType","modelName":"domain","connection":"default","uid":"api::domain.domain","apiName":"domain","globalId":"Domain","actions":{},"lifecycles":{}},"api::generate-report.generate-report":{"kind":"collectionType","collectionName":"generate_reports","info":{"singularName":"generate-report","pluralName":"generate-reports","displayName":"Generate Report","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"report_type_summary":{"type":"string"},"receipt_mints":{"type":"string"},"rewards_tranfers":{"type":"string"},"receipt_transfers":{"type":"string"},"rewards_mints":{"type":"string"},"start_date":{"type":"date"},"end_date":{"type":"date"},"domain_specific_reports":{"type":"string"},"generate_report":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"generate_reports","info":{"singularName":"generate-report","pluralName":"generate-reports","displayName":"Generate Report","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"report_type_summary":{"type":"string"},"receipt_mints":{"type":"string"},"rewards_tranfers":{"type":"string"},"receipt_transfers":{"type":"string"},"rewards_mints":{"type":"string"},"start_date":{"type":"date"},"end_date":{"type":"date"},"domain_specific_reports":{"type":"string"},"generate_report":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"generate-report","connection":"default","uid":"api::generate-report.generate-report","apiName":"generate-report","globalId":"GenerateReport","actions":{},"lifecycles":{}},"api::gft-pay.gft-pay":{"kind":"collectionType","collectionName":"gft_pays","info":{"singularName":"gft-pay","pluralName":"gft-pays","displayName":"GFT Pay","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobile_number":{"type":"string"},"gft_mobile_number":{"type":"component","repeatable":true,"component":"gft.gft-pay"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"gft_pays","info":{"singularName":"gft-pay","pluralName":"gft-pays","displayName":"GFT Pay","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobile_number":{"type":"string"},"gft_mobile_number":{"type":"component","repeatable":true,"component":"gft.gft-pay"}},"kind":"collectionType"},"modelType":"contentType","modelName":"gft-pay","connection":"default","uid":"api::gft-pay.gft-pay","apiName":"gft-pay","globalId":"GftPay","actions":{},"lifecycles":{}},"api::importconfig.importconfig":{"kind":"collectionType","collectionName":"importconfigs","info":{"singularName":"importconfig","pluralName":"importconfigs","displayName":"Importconfig"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"date":{"type":"date"},"source":{"type":"string"},"content_type":{"type":"string"},"imported_count":{"type":"integer"},"ongoing":{"type":"boolean"},"options":{"type":"json"},"field_mapping":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"importconfigs","info":{"singularName":"importconfig","pluralName":"importconfigs","displayName":"Importconfig"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"date":{"type":"date"},"source":{"type":"string"},"content_type":{"type":"string"},"imported_count":{"type":"integer"},"ongoing":{"type":"boolean"},"options":{"type":"json"},"field_mapping":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"importconfig","connection":"default","uid":"api::importconfig.importconfig","apiName":"importconfig","globalId":"Importconfig","actions":{},"lifecycles":{}},"api::language-code.language-code":{"kind":"collectionType","collectionName":"language_codes","info":{"singularName":"language-code","pluralName":"language-codes","displayName":"Language Code","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"code":{"type":"string"},"languageName":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"language_codes","info":{"singularName":"language-code","pluralName":"language-codes","displayName":"Language Code","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"code":{"type":"string"},"languageName":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"language-code","connection":"default","uid":"api::language-code.language-code","apiName":"language-code","globalId":"LanguageCode","actions":{},"lifecycles":{}},"api::messaging.messaging":{"kind":"collectionType","collectionName":"messagings","info":{"singularName":"messaging","pluralName":"messagings","displayName":"Messaging"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"social_link":{"type":"string"},"text_message":{"type":"string"},"email_message":{"type":"string"},"blog_link":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"messagings","info":{"singularName":"messaging","pluralName":"messagings","displayName":"Messaging"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"social_link":{"type":"string"},"text_message":{"type":"string"},"email_message":{"type":"string"},"blog_link":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"messaging","connection":"default","uid":"api::messaging.messaging","apiName":"messaging","globalId":"Messaging","actions":{},"lifecycles":{}},"api::nft-collection.nft-collection":{"kind":"collectionType","collectionName":"nft_collections","info":{"singularName":"nft-collection","pluralName":"nft-collections","displayName":"NFT Collection","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"short_name":{"type":"string"},"gft_explorer_link":{"type":"string"},"supply":{"type":"integer"},"terms_list":{"type":"component","repeatable":true,"component":"translation.terms-list"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"total_minted":{"type":"integer"},"vimeo_video_id":{"type":"string"},"default_back_image":{"type":"component","repeatable":true,"component":"art.artwork"},"nft_collection_id":{"type":"string"},"allowed_country_codes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"nft_collections","info":{"singularName":"nft-collection","pluralName":"nft-collections","displayName":"NFT Collection","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"short_name":{"type":"string"},"gft_explorer_link":{"type":"string"},"supply":{"type":"integer"},"terms_list":{"type":"component","repeatable":true,"component":"translation.terms-list"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"total_minted":{"type":"integer"},"vimeo_video_id":{"type":"string"},"default_back_image":{"type":"component","repeatable":true,"component":"art.artwork"},"nft_collection_id":{"type":"string"},"allowed_country_codes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"}},"kind":"collectionType"},"modelType":"contentType","modelName":"nft-collection","connection":"default","uid":"api::nft-collection.nft-collection","apiName":"nft-collection","globalId":"NftCollection","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"page_name":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"banners":{"type":"component","repeatable":true,"component":"store-management.banner"},"headers":{"type":"component","repeatable":true,"component":"store-management.header"},"tiles":{"type":"component","repeatable":true,"component":"store-management.tile"},"videos":{"type":"component","repeatable":true,"component":"store-management.video"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"page_name":{"type":"string"},"chains":{"type":"relation","relation":"oneToMany","target":"api::chain.chain"},"banners":{"type":"component","repeatable":true,"component":"store-management.banner"},"headers":{"type":"component","repeatable":true,"component":"store-management.header"},"tiles":{"type":"component","repeatable":true,"component":"store-management.tile"},"videos":{"type":"component","repeatable":true,"component":"store-management.video"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}},"api::partner.partner":{"kind":"collectionType","collectionName":"partners","info":{"singularName":"partner","pluralName":"partners","displayName":"Partners","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"shortId":{"type":"string"},"name":{"type":"string"},"restrictedLoyaltyProgram":{"type":"boolean"},"congratulationScreen":{"type":"relation","relation":"manyToOne","target":"api::congratulation-screen.congratulation-screen","inversedBy":"partners"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"partners","info":{"singularName":"partner","pluralName":"partners","displayName":"Partners","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"shortId":{"type":"string"},"name":{"type":"string"},"restrictedLoyaltyProgram":{"type":"boolean"},"congratulationScreen":{"type":"relation","relation":"manyToOne","target":"api::congratulation-screen.congratulation-screen","inversedBy":"partners"}},"kind":"collectionType"},"modelType":"contentType","modelName":"partner","connection":"default","uid":"api::partner.partner","apiName":"partner","globalId":"Partner","actions":{},"lifecycles":{}},"api::product.product":{"kind":"collectionType","collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mainImage":{"type":"media","multiple":true,"required":true,"allowedTypes":["images","files","videos","audios"]},"upc":{"type":"string","required":true},"name":{"type":"string"},"categories":{"type":"relation","relation":"manyToMany","target":"api::categorie.categorie","mappedBy":"items"},"campaigns":{"type":"relation","relation":"manyToMany","target":"api::campaign.campaign","mappedBy":"listItems"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"Product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mainImage":{"type":"media","multiple":true,"required":true,"allowedTypes":["images","files","videos","audios"]},"upc":{"type":"string","required":true},"name":{"type":"string"},"categories":{"type":"relation","relation":"manyToMany","target":"api::categorie.categorie","mappedBy":"items"},"campaigns":{"type":"relation","relation":"manyToMany","target":"api::campaign.campaign","mappedBy":"listItems"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product","connection":"default","uid":"api::product.product","apiName":"product","globalId":"Product","actions":{},"lifecycles":{}},"api::region.region":{"kind":"collectionType","collectionName":"regions","info":{"singularName":"region","pluralName":"regions","displayName":"Region","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"chain":{"type":"relation","relation":"manyToOne","target":"api::chain.chain","inversedBy":"regions"},"division":{"type":"string"},"stores":{"type":"relation","relation":"oneToMany","target":"api::store.store","mappedBy":"region"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"regions","info":{"singularName":"region","pluralName":"regions","displayName":"Region","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"chain":{"type":"relation","relation":"manyToOne","target":"api::chain.chain","inversedBy":"regions"},"division":{"type":"string"},"stores":{"type":"relation","relation":"oneToMany","target":"api::store.store","mappedBy":"region"}},"kind":"collectionType"},"modelType":"contentType","modelName":"region","connection":"default","uid":"api::region.region","apiName":"region","globalId":"Region","actions":{},"lifecycles":{}},"api::retail-profile.retail-profile":{"kind":"collectionType","collectionName":"retail_profiles","info":{"singularName":"retail-profile","pluralName":"retail-profiles","displayName":"Retail Profile","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"division":{"type":"string"},"stores":{"type":"component","repeatable":true,"component":"store.store"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"retail_profiles","info":{"singularName":"retail-profile","pluralName":"retail-profiles","displayName":"Retail Profile","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"division":{"type":"string"},"stores":{"type":"component","repeatable":true,"component":"store.store"},"regions":{"type":"relation","relation":"oneToMany","target":"api::region.region"}},"kind":"collectionType"},"modelType":"contentType","modelName":"retail-profile","connection":"default","uid":"api::retail-profile.retail-profile","apiName":"retail-profile","globalId":"RetailProfile","actions":{},"lifecycles":{}},"api::reward-drop.reward-drop":{"kind":"collectionType","collectionName":"reward_drops","info":{"singularName":"reward-drop","pluralName":"reward-drops","displayName":"Reward Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"description":{"type":"richtext"},"phone_numbers":{"type":"string"},"result":{"type":"json"},"status":{"type":"string"},"drop_timestamp":{"type":"string"},"reward_drop_id":{"type":"integer"},"campaign":{"type":"string"},"gft_explorer_link":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"reward_drops","info":{"singularName":"reward-drop","pluralName":"reward-drops","displayName":"Reward Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"description":{"type":"richtext"},"phone_numbers":{"type":"string"},"result":{"type":"json"},"status":{"type":"string"},"drop_timestamp":{"type":"string"},"reward_drop_id":{"type":"integer"},"campaign":{"type":"string"},"gft_explorer_link":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"reward-drop","connection":"default","uid":"api::reward-drop.reward-drop","apiName":"reward-drop","globalId":"RewardDrop","actions":{},"lifecycles":{}},"api::reward-game.reward-game":{"kind":"collectionType","collectionName":"reward_games","info":{"singularName":"reward-game","pluralName":"reward-games","displayName":"Reward Game","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"game_name":{"type":"string"},"banner":{"type":"string"},"game_id":{"type":"integer"},"max_daily_plays":{"type":"integer"},"begin_date":{"type":"date"},"end_date":{"type":"date"},"game_server_url":{"type":"string"},"official_rules_link":{"type":"string"},"feature_order":{"type":"string"},"gft_explorer_link":{"type":"string"},"banner_artwork_list":{"type":"component","repeatable":true,"component":"art.artwork"},"coupon_prize":{"type":"component","repeatable":true,"component":"prize.coupon-prize"},"game_text":{"type":"component","repeatable":true,"component":"translation.game-text"},"chain":{"type":"relation","relation":"manyToOne","target":"api::chain.chain","inversedBy":"reward_games"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"reward_games","info":{"singularName":"reward-game","pluralName":"reward-games","displayName":"Reward Game","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"game_name":{"type":"string"},"banner":{"type":"string"},"game_id":{"type":"integer"},"max_daily_plays":{"type":"integer"},"begin_date":{"type":"date"},"end_date":{"type":"date"},"game_server_url":{"type":"string"},"official_rules_link":{"type":"string"},"feature_order":{"type":"string"},"gft_explorer_link":{"type":"string"},"banner_artwork_list":{"type":"component","repeatable":true,"component":"art.artwork"},"coupon_prize":{"type":"component","repeatable":true,"component":"prize.coupon-prize"},"game_text":{"type":"component","repeatable":true,"component":"translation.game-text"},"chain":{"type":"relation","relation":"manyToOne","target":"api::chain.chain","inversedBy":"reward_games"}},"kind":"collectionType"},"modelType":"contentType","modelName":"reward-game","connection":"default","uid":"api::reward-game.reward-game","apiName":"reward-game","globalId":"RewardGame","actions":{},"lifecycles":{}},"api::reward-product.reward-product":{"kind":"collectionType","collectionName":"reward_products","info":{"singularName":"reward-product","pluralName":"reward-products","displayName":"Reward Product"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"product_name":{"type":"string"},"upc_code":{"type":"string"},"product_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"reward_products","info":{"singularName":"reward-product","pluralName":"reward-products","displayName":"Reward Product"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"product_name":{"type":"string"},"upc_code":{"type":"string"},"product_image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"reward-product","connection":"default","uid":"api::reward-product.reward-product","apiName":"reward-product","globalId":"RewardProduct","actions":{},"lifecycles":{}},"api::reward-subscription.reward-subscription":{"kind":"collectionType","collectionName":"reward_subscriptions","info":{"singularName":"reward-subscription","pluralName":"reward-subscriptions","displayName":"Reward Subscription","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"subscription_id":{"type":"string"},"short_name":{"type":"string"},"display_name":{"type":"string"},"price":{"type":"integer"},"more_link_info":{"type":"string"},"billing_id":{"type":"string"},"x_solla_api_latest_status":{"type":"boolean"},"x_solla_product_id":{"type":"integer"},"gft_explorer_link":{"type":"string"},"live":{"type":"boolean"},"currency":{"type":"enumeration","enum":["Euro","Dollar"]},"drop_frequency":{"type":"enumeration","enum":["true"]},"allowed_country_codes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"regions":{"type":"relation","relation":"oneToOne","target":"api::region.region"},"subscription_drops":{"type":"relation","relation":"oneToMany","target":"api::subscription-drop.subscription-drop","mappedBy":"subscription"},"terms_conditions":{"type":"string"},"promotional_images":{"type":"component","repeatable":true,"component":"art.image-collection"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"feature_order":{"type":"integer"},"primary_display_image":{"type":"component","repeatable":true,"component":"art.artwork"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"reward_subscriptions","info":{"singularName":"reward-subscription","pluralName":"reward-subscriptions","displayName":"Reward Subscription","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"subscription_id":{"type":"string"},"short_name":{"type":"string"},"display_name":{"type":"string"},"price":{"type":"integer"},"more_link_info":{"type":"string"},"billing_id":{"type":"string"},"x_solla_api_latest_status":{"type":"boolean"},"x_solla_product_id":{"type":"integer"},"gft_explorer_link":{"type":"string"},"live":{"type":"boolean"},"currency":{"type":"enumeration","enum":["Euro","Dollar"]},"drop_frequency":{"type":"enumeration","enum":["true"]},"allowed_country_codes":{"type":"relation","relation":"oneToMany","target":"api::country-code.country-code"},"regions":{"type":"relation","relation":"oneToOne","target":"api::region.region"},"subscription_drops":{"type":"relation","relation":"oneToMany","target":"api::subscription-drop.subscription-drop","mappedBy":"subscription"},"terms_conditions":{"type":"string"},"promotional_images":{"type":"component","repeatable":true,"component":"art.image-collection"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"feature_order":{"type":"integer"},"primary_display_image":{"type":"component","repeatable":true,"component":"art.artwork"}},"kind":"collectionType"},"modelType":"contentType","modelName":"reward-subscription","connection":"default","uid":"api::reward-subscription.reward-subscription","apiName":"reward-subscription","globalId":"RewardSubscription","actions":{},"lifecycles":{}},"api::shopper.shopper":{"kind":"collectionType","collectionName":"shoppers","info":{"singularName":"shopper","pluralName":"shoppers","displayName":"Shopper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"minLength":3},"email":{"type":"email","required":true,"minLength":3,"unique":true},"vatom_user_id":{"type":"string","required":true,"unique":true,"minLength":3},"vatom_business_id":{"type":"string","required":true,"unique":true,"minLength":3},"vatom_campaign_id":{"type":"string","required":true,"unique":true,"minLength":3},"phone_number":{"type":"string","required":true,"minLength":8},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"shoppers","info":{"singularName":"shopper","pluralName":"shoppers","displayName":"Shopper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"minLength":3},"email":{"type":"email","required":true,"minLength":3,"unique":true},"vatom_user_id":{"type":"string","required":true,"unique":true,"minLength":3},"vatom_business_id":{"type":"string","required":true,"unique":true,"minLength":3},"vatom_campaign_id":{"type":"string","required":true,"unique":true,"minLength":3},"phone_number":{"type":"string","required":true,"minLength":8}},"kind":"collectionType"},"modelType":"contentType","modelName":"shopper","connection":"default","uid":"api::shopper.shopper","apiName":"shopper","globalId":"Shopper","actions":{},"lifecycles":{}},"api::shopper-coupon.shopper-coupon":{"kind":"collectionType","collectionName":"shopper_coupons","info":{"singularName":"shopper-coupon","pluralName":"shopper-coupons","displayName":"Shopper Coupon","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"vatom_user_id":{"type":"string","required":true,"minLength":3},"vatom_business_id":{"type":"string","required":true,"minLength":3},"vatom_campaign_id":{"type":"string","required":true,"minLength":3},"vatom_design_id":{"type":"string","required":true,"minLength":4},"vatom_distribution_id":{"type":"string","required":true,"minLength":4},"vatom_token_id":{"type":"string","required":true,"minLength":4,"unique":true},"vatom_source":{"type":"string","required":true,"minLength":3},"vatom_medium":{"type":"string","required":true,"minLength":3},"vatom_state":{"type":"enumeration","enum":["Minted","Transferred","Redeemed"],"required":true},"shopper_id":{"type":"relation","relation":"oneToMany","target":"api::shopper.shopper"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"shopper_coupons","info":{"singularName":"shopper-coupon","pluralName":"shopper-coupons","displayName":"Shopper Coupon","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"vatom_user_id":{"type":"string","required":true,"minLength":3},"vatom_business_id":{"type":"string","required":true,"minLength":3},"vatom_campaign_id":{"type":"string","required":true,"minLength":3},"vatom_design_id":{"type":"string","required":true,"minLength":4},"vatom_distribution_id":{"type":"string","required":true,"minLength":4},"vatom_token_id":{"type":"string","required":true,"minLength":4,"unique":true},"vatom_source":{"type":"string","required":true,"minLength":3},"vatom_medium":{"type":"string","required":true,"minLength":3},"vatom_state":{"type":"enumeration","enum":["Minted","Transferred","Redeemed"],"required":true},"shopper_id":{"type":"relation","relation":"oneToMany","target":"api::shopper.shopper"}},"kind":"collectionType"},"modelType":"contentType","modelName":"shopper-coupon","connection":"default","uid":"api::shopper-coupon.shopper-coupon","apiName":"shopper-coupon","globalId":"ShopperCoupon","actions":{},"lifecycles":{}},"api::store.store":{"kind":"collectionType","collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"latitude":{"type":"float"},"longitude":{"type":"float"},"banner":{"type":"string"},"name":{"type":"string"},"address":{"type":"string"},"city":{"type":"string"},"county":{"type":"string"},"zip":{"type":"integer"},"state":{"type":"string"},"number":{"type":"integer"},"region":{"type":"relation","relation":"manyToOne","target":"api::region.region","inversedBy":"stores"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"latitude":{"type":"float"},"longitude":{"type":"float"},"banner":{"type":"string"},"name":{"type":"string"},"address":{"type":"string"},"city":{"type":"string"},"county":{"type":"string"},"zip":{"type":"integer"},"state":{"type":"string"},"number":{"type":"integer"},"region":{"type":"relation","relation":"manyToOne","target":"api::region.region","inversedBy":"stores"}},"kind":"collectionType"},"modelType":"contentType","modelName":"store","connection":"default","uid":"api::store.store","apiName":"store","globalId":"Store","actions":{},"lifecycles":{}},"api::subscription-drop.subscription-drop":{"kind":"collectionType","collectionName":"subscription_drops","info":{"singularName":"subscription-drop","pluralName":"subscription-drops","displayName":"Subscription Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"subscription_drop_id":{"type":"biginteger"},"drop_timestamp":{"type":"string"},"status":{"type":"string"},"start_date":{"type":"date"},"end_date":{"type":"date"},"description":{"type":"richtext"},"rewards":{"type":"string"},"gft_explorer_link":{"type":"string"},"result":{"type":"json"},"subscription":{"type":"relation","relation":"manyToOne","target":"api::reward-subscription.reward-subscription","inversedBy":"subscription_drops"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"subscription_drops","info":{"singularName":"subscription-drop","pluralName":"subscription-drops","displayName":"Subscription Drop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"subscription_drop_id":{"type":"biginteger"},"drop_timestamp":{"type":"string"},"status":{"type":"string"},"start_date":{"type":"date"},"end_date":{"type":"date"},"description":{"type":"richtext"},"rewards":{"type":"string"},"gft_explorer_link":{"type":"string"},"result":{"type":"json"},"subscription":{"type":"relation","relation":"manyToOne","target":"api::reward-subscription.reward-subscription","inversedBy":"subscription_drops"}},"kind":"collectionType"},"modelType":"contentType","modelName":"subscription-drop","connection":"default","uid":"api::subscription-drop.subscription-drop","apiName":"subscription-drop","globalId":"SubscriptionDrop","actions":{},"lifecycles":{}},"api::terms-of-service.terms-of-service":{"kind":"singleType","collectionName":"terms_of_services","info":{"singularName":"terms-of-service","pluralName":"terms-of-services","displayName":"Terms Of Service"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"terms_of_service":{"type":"string"},"gft_explorer_link":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"terms_of_services","info":{"singularName":"terms-of-service","pluralName":"terms-of-services","displayName":"Terms Of Service"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"terms_of_service":{"type":"string"},"gft_explorer_link":{"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"terms-of-service","connection":"default","uid":"api::terms-of-service.terms-of-service","apiName":"terms-of-service","globalId":"TermsOfService","actions":{},"lifecycles":{}},"api::tokenized-receipt.tokenized-receipt":{"kind":"collectionType","collectionName":"tokenized_receipts","info":{"singularName":"tokenized-receipt","pluralName":"tokenized-receipts","displayName":"Tokenized Receipt"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"short_name":{"type":"string"},"gft_explorer_link":{"type":"string"},"vimeo_video_id":{"type":"biginteger"},"receipt_id":{"type":"biginteger"},"terms_list":{"type":"component","repeatable":true,"component":"translation.terms-list"},"allowed_country_codes":{"type":"relation","relation":"oneToOne","target":"api::country-code.country-code"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"default_back_image":{"type":"component","repeatable":true,"component":"art.image-collection"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"tokenized_receipts","info":{"singularName":"tokenized-receipt","pluralName":"tokenized-receipts","displayName":"Tokenized Receipt"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"short_name":{"type":"string"},"gft_explorer_link":{"type":"string"},"vimeo_video_id":{"type":"biginteger"},"receipt_id":{"type":"biginteger"},"terms_list":{"type":"component","repeatable":true,"component":"translation.terms-list"},"allowed_country_codes":{"type":"relation","relation":"oneToOne","target":"api::country-code.country-code"},"description":{"type":"component","repeatable":true,"component":"translation.translation"},"default_back_image":{"type":"component","repeatable":true,"component":"art.image-collection"}},"kind":"collectionType"},"modelType":"contentType","modelName":"tokenized-receipt","connection":"default","uid":"api::tokenized-receipt.tokenized-receipt","apiName":"tokenized-receipt","globalId":"TokenizedReceipt","actions":{},"lifecycles":{}}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
27	plugin_content_manager_configuration_components::art.artwork	{"uid":"art.artwork","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"artwork":{"edit":{"label":"artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"artwork","searchable":false,"sortable":false}},"languages":{"edit":{"label":"languages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"languages","searchable":false,"sortable":false}}},"layouts":{"list":["id","artwork","languages"],"edit":[[{"name":"artwork","size":6},{"name":"languages","size":6}]]},"isComponent":true}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
20	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
22	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::associate.associate	{"uid":"api::associate.associate","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"associate_id":{"edit":{"label":"Associate Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"associate_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"associate_id","size":4}]],"list":["id","name","associate_id","createdAt"]}}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::add-retailer.add-retailer	{"uid":"api::add-retailer.add-retailer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"short_id":{"edit":{"label":"Short Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"restricted_loyalty_program":{"edit":{"label":"Restricted Loyalty Program","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"restricted_loyalty_program","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"short_id","size":4},{"name":"name","size":6}],[{"name":"restricted_loyalty_program","size":4}]],"list":["id","short_id","name","restricted_loyalty_program"]}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::banner.banner	{"uid":"api::banner.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"short_name_tag","defaultSortBy":"short_name_tag","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"artwork":{"edit":{"label":"Artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"artwork","searchable":false,"sortable":false}},"short_name_tag":{"edit":{"label":"Short Name Tag","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name_tag","searchable":true,"sortable":true}},"visible":{"edit":{"label":"Visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"featured_order":{"edit":{"label":"Featured Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featured_order","searchable":true,"sortable":true}},"external_link":{"edit":{"label":"External Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"external_link","searchable":true,"sortable":true}},"banner_id":{"edit":{"label":"Banner Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner_id","searchable":true,"sortable":true}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","artwork","short_name_tag","visible"],"edit":[[{"name":"artwork","size":12}],[{"name":"short_name_tag","size":6},{"name":"visible","size":4}],[{"name":"featured_order","size":4},{"name":"external_link","size":6}],[{"name":"banner_id","size":6},{"name":"chains","size":6}]]}}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::importconfig.importconfig	{"uid":"api::importconfig.importconfig","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"source","defaultSortBy":"source","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"source":{"edit":{"label":"Source","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"source","searchable":true,"sortable":true}},"content_type":{"edit":{"label":"Content Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content_type","searchable":true,"sortable":true}},"imported_count":{"edit":{"label":"Imported Count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"imported_count","searchable":true,"sortable":true}},"ongoing":{"edit":{"label":"Ongoing","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ongoing","searchable":true,"sortable":true}},"options":{"edit":{"label":"Options","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"options","searchable":false,"sortable":false}},"field_mapping":{"edit":{"label":"Field Mapping","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"field_mapping","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"date","size":4},{"name":"source","size":6}],[{"name":"content_type","size":6},{"name":"imported_count","size":4}],[{"name":"ongoing","size":4}],[{"name":"options","size":12}],[{"name":"field_mapping","size":12}]],"list":["id","date","source","content_type"]}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::country-code.country-code	{"uid":"api::country-code.country-code","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"dial_code":{"edit":{"label":"Dial Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dial_code","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"dial_code","size":6}],[{"name":"code","size":6},{"name":"label","size":6}]],"list":["id","name","dial_code","code"]}}	object	\N	\N
36	plugin_content_manager_configuration_content_types::api::coupon-drop.coupon-drop	{"uid":"api::coupon-drop.coupon-drop","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"description","defaultSortBy":"description","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"phone_numbers":{"edit":{"label":"Phone Numbers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_numbers","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"drop_timestamp":{"edit":{"label":"Drop Timestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drop_timestamp","searchable":true,"sortable":true}},"coupon_drop_id":{"edit":{"label":"Coupon Drop Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coupon_drop_id","searchable":true,"sortable":true}},"result":{"edit":{"label":"Result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"result","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"description","size":6}],[{"name":"phone_numbers","size":12}],[{"name":"status","size":6},{"name":"drop_timestamp","size":6}],[{"name":"coupon_drop_id","size":4}],[{"name":"result","size":12}]],"list":["id","description","status","drop_timestamp"]}}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::generate-report.generate-report	{"uid":"api::generate-report.generate-report","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"report_type_summary","defaultSortBy":"report_type_summary","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"report_type_summary":{"edit":{"label":"Report Type Summary","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"report_type_summary","searchable":true,"sortable":true}},"receipt_mints":{"edit":{"label":"Receipt Mints","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_mints","searchable":true,"sortable":true}},"rewards_tranfers":{"edit":{"label":"Rewards Tranfers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rewards_tranfers","searchable":true,"sortable":true}},"receipt_transfers":{"edit":{"label":"Receipt Transfers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_transfers","searchable":true,"sortable":true}},"rewards_mints":{"edit":{"label":"Rewards Mints","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rewards_mints","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"Start Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"End Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"domain_specific_reports":{"edit":{"label":"Domain Specific Reports","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"domain_specific_reports","searchable":true,"sortable":true}},"generate_report":{"edit":{"label":"Generate Report","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"generate_report","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"report_type_summary","size":6},{"name":"receipt_mints","size":6}],[{"name":"rewards_tranfers","size":6},{"name":"receipt_transfers","size":6}],[{"name":"rewards_mints","size":6},{"name":"start_date","size":4}],[{"name":"end_date","size":4},{"name":"domain_specific_reports","size":6}],[{"name":"generate_report","size":6}]],"list":["id","report_type_summary","receipt_mints","rewards_tranfers"]}}	object	\N	\N
51	plugin_content_manager_configuration_components::translation.translation	{"uid":"translation.translation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"translation","defaultSortBy":"translation","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"translation":{"edit":{"label":"translation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"translation","searchable":true,"sortable":true}},"languages":{"edit":{"label":"languages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"languages","searchable":false,"sortable":false}}},"layouts":{"list":["id","translation","languages"],"edit":[[{"name":"translation","size":6},{"name":"languages","size":6}]]},"isComponent":true}	object	\N	\N
40	plugin_content_manager_configuration_components::prize.coupon-prize	{"uid":"prize.coupon-prize","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shortName","defaultSortBy":"shortName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"shortName":{"edit":{"label":"shortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortName","searchable":true,"sortable":true}},"details":{"edit":{"label":"details","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"details","searchable":false,"sortable":false}}},"layouts":{"list":["id","shortName","details"],"edit":[[{"name":"shortName","size":6}],[{"name":"details","size":12}]]},"isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_components::prize.collectible-prize	{"uid":"prize.collectible-prize","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shortName","defaultSortBy":"shortName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"shortName":{"edit":{"label":"shortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortName","searchable":true,"sortable":true}},"collectible":{"edit":{"label":"collectible","description":"","placeholder":"","visible":true,"editable":true,"mainField":"collectibleId"},"list":{"label":"collectible","searchable":true,"sortable":true}},"details":{"edit":{"label":"details","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"details","searchable":false,"sortable":false}}},"layouts":{"list":["id","shortName","collectible","details"],"edit":[[{"name":"shortName","size":6},{"name":"collectible","size":6}],[{"name":"details","size":12}]]},"isComponent":true}	object	\N	\N
43	plugin_content_manager_configuration_components::store-management.banner	{"uid":"store-management.banner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"short_name","defaultSortBy":"short_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"page_number":{"edit":{"label":"page_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_number","searchable":true,"sortable":true}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"short_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}}},"layouts":{"list":["id","page_number","visible","start_date"],"edit":[[{"name":"page_number","size":4},{"name":"visible","size":4},{"name":"start_date","size":4}],[{"name":"end_date","size":4},{"name":"short_name","size":6}]]},"isComponent":true}	object	\N	\N
46	plugin_content_manager_configuration_components::store-management.video	{"uid":"store-management.video","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"short_name","defaultSortBy":"short_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"page_order":{"edit":{"label":"page_order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_order","searchable":true,"sortable":true}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"short_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}}},"layouts":{"list":["id","page_order","visible","short_name"],"edit":[[{"name":"page_order","size":4},{"name":"visible","size":4}],[{"name":"short_name","size":6},{"name":"start_date","size":4}],[{"name":"end_date","size":4}]]},"isComponent":true}	object	\N	\N
44	plugin_content_manager_configuration_components::store-management.header	{"uid":"store-management.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"short_name","defaultSortBy":"short_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"short_name":{"edit":{"label":"short_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"page_order":{"edit":{"label":"page_order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_order","searchable":true,"sortable":true}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"header_text":{"edit":{"label":"header_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"header_text","searchable":false,"sortable":false}}},"layouts":{"list":["id","short_name","page_order","visible"],"edit":[[{"name":"short_name","size":6},{"name":"page_order","size":4}],[{"name":"visible","size":4},{"name":"start_date","size":4},{"name":"end_date","size":4}],[{"name":"header_text","size":12}]]},"isComponent":true}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::create-pwa.create-pwa	{"uid":"api::create-pwa.create-pwa","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"matcher","defaultSortBy":"matcher","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"matcher":{"edit":{"label":"Matcher","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"matcher","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rules","searchable":true,"sortable":true}},"privacy":{"edit":{"label":"Privacy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacy","searchable":true,"sortable":true}},"terms":{"edit":{"label":"Terms","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms","searchable":true,"sortable":true}},"enable_associates_portal":{"edit":{"label":"Enable Associates Portal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enable_associates_portal","searchable":true,"sortable":true}},"asset_types_supported":{"edit":{"label":"Asset Types Supported","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"asset_types_supported","searchable":true,"sortable":true}},"xsolla_paystation_url":{"edit":{"label":"X Solla Paystation URL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"xsolla_paystation_url","searchable":true,"sortable":true}},"transfer_receipt_messages":{"edit":{"label":"Transfer Receipt Messages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"transfer_receipt_messages","searchable":false,"sortable":false}},"transfer_reward_messages":{"edit":{"label":"Transfer Reward Messages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"transfer_reward_messages","searchable":false,"sortable":false}},"redemption_instructions":{"edit":{"label":"Redemption Instructions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"redemption_instructions","searchable":false,"sortable":false}},"receipt_message":{"edit":{"label":"Receipt Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_message","searchable":false,"sortable":false}},"left_footer_image":{"edit":{"label":"Left Footer Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"left_footer_image","searchable":false,"sortable":false}},"right_footer_image":{"edit":{"label":"Right Footer Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"right_footer_image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"matcher","size":6},{"name":"name","size":6}],[{"name":"logo","size":6},{"name":"rules","size":6}],[{"name":"privacy","size":6},{"name":"terms","size":6}],[{"name":"enable_associates_portal","size":6},{"name":"asset_types_supported","size":6}],[{"name":"xsolla_paystation_url","size":6}],[{"name":"transfer_receipt_messages","size":12}],[{"name":"transfer_reward_messages","size":12}],[{"name":"redemption_instructions","size":12}],[{"name":"receipt_message","size":12}],[{"name":"left_footer_image","size":6},{"name":"right_footer_image","size":6}]],"list":["id","matcher","name","logo"]}}	object	\N	\N
45	plugin_content_manager_configuration_components::store-management.tile	{"uid":"store-management.tile","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"short_name","defaultSortBy":"short_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"page_order":{"edit":{"label":"page_order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_order","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"short_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"art_work_list":{"edit":{"label":"art_work_list","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"art_work_list","searchable":false,"sortable":false}},"external_link":{"edit":{"label":"external_link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"external_link","searchable":true,"sortable":true}},"internal_link":{"edit":{"label":"internal_link","description":"","placeholder":"","visible":true,"editable":true,"mainField":"page_name"},"list":{"label":"internal_link","searchable":true,"sortable":true}}},"layouts":{"list":["id","page_order","short_name","visible"],"edit":[[{"name":"page_order","size":4},{"name":"short_name","size":6}],[{"name":"visible","size":4},{"name":"start_date","size":4},{"name":"end_date","size":4}],[{"name":"art_work_list","size":12}],[{"name":"external_link","size":6},{"name":"internal_link","size":6}]]},"isComponent":true}	object	\N	\N
49	plugin_content_manager_configuration_components::translation.terms-conditions	{"uid":"translation.terms-conditions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"translation","defaultSortBy":"translation","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"translation":{"edit":{"label":"translation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"translation","searchable":true,"sortable":true}},"language_code":{"edit":{"label":"language_code","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"language_code","searchable":true,"sortable":true}},"featured_order":{"edit":{"label":"featured_order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featured_order","searchable":true,"sortable":true}}},"layouts":{"list":["id","translation","language_code","featured_order"],"edit":[[{"name":"translation","size":6},{"name":"language_code","size":6}],[{"name":"featured_order","size":4}]]},"isComponent":true}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::terms-of-service.terms-of-service	{"uid":"api::terms-of-service.terms-of-service","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"terms_of_service","defaultSortBy":"terms_of_service","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"terms_of_service":{"edit":{"label":"Terms of Service","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms_of_service","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"terms_of_service","size":6},{"name":"gft_explorer_link","size":6}]],"list":["id","terms_of_service","gft_explorer_link","createdAt"]}}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::domain.domain	{"uid":"api::domain.domain","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"matcher","defaultSortBy":"matcher","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"matcher":{"edit":{"label":"Matcher","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"matcher","searchable":true,"sortable":true}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"rules":{"edit":{"label":"Rules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rules","searchable":true,"sortable":true}},"privacy":{"edit":{"label":"Privacy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacy","searchable":true,"sortable":true}},"terms":{"edit":{"label":"Terms","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms","searchable":true,"sortable":true}},"redemption_instructions":{"edit":{"label":"Redemption Instructions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"redemption_instructions","searchable":false,"sortable":false}},"transfer_collectible_messages":{"edit":{"label":"Transfer Collectible Messages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"transfer_collectible_messages","searchable":false,"sortable":false}},"receipt_message":{"edit":{"label":"Receipt Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_message","searchable":false,"sortable":false}},"enable_associates_portal":{"edit":{"label":"Enable Associates Portal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enable_associates_portal","searchable":true,"sortable":true}},"asset_types_supported":{"edit":{"label":"Asset Types Supported","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"asset_types_supported","searchable":true,"sortable":true}},"left_footer_image":{"edit":{"label":"Left Footer Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"left_footer_image","searchable":false,"sortable":false}},"right_footer_image":{"edit":{"label":"Right Footer Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"right_footer_image","searchable":false,"sortable":false}},"x_solla_paystation_url":{"edit":{"label":"X Solla Paystation URL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"x_solla_paystation_url","searchable":true,"sortable":true}},"transfer_coupon_messages":{"edit":{"label":"Transfer Coupon Messages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"transfer_coupon_messages","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","matcher","chains","logo"],"edit":[[{"name":"matcher","size":6},{"name":"chains","size":6}],[{"name":"logo","size":6},{"name":"rules","size":6}],[{"name":"privacy","size":6},{"name":"terms","size":6}],[{"name":"redemption_instructions","size":12}],[{"name":"transfer_collectible_messages","size":12}],[{"name":"receipt_message","size":12}],[{"name":"enable_associates_portal","size":4},{"name":"asset_types_supported","size":6}],[{"name":"left_footer_image","size":6},{"name":"right_footer_image","size":6}],[{"name":"x_solla_paystation_url","size":6}],[{"name":"transfer_coupon_messages","size":12}]]}}	object	\N	\N
50	plugin_content_manager_configuration_components::translation.terms-list	{"uid":"translation.terms-list","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"translation","defaultSortBy":"translation","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"translation":{"edit":{"label":"translation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"translation","searchable":true,"sortable":true}},"languages":{"edit":{"label":"languages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"languages","searchable":false,"sortable":false}}},"layouts":{"list":["id","translation","languages"],"edit":[[{"name":"translation","size":6},{"name":"languages","size":6}]]},"isComponent":true}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::nft-collection.nft-collection	{"uid":"api::nft-collection.nft-collection","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"Short Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"supply":{"edit":{"label":"Supply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"supply","searchable":true,"sortable":true}},"terms_list":{"edit":{"label":"Terms List","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms_list","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"total_minted":{"edit":{"label":"Total Minted","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_minted","searchable":true,"sortable":true}},"vimeo_video_id":{"edit":{"label":"Vimeo Video Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vimeo_video_id","searchable":true,"sortable":true}},"default_back_image":{"edit":{"label":"Default Back Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"default_back_image","searchable":false,"sortable":false}},"nft_collection_id":{"edit":{"label":"NFT Collection Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nft_collection_id","searchable":true,"sortable":true}},"allowed_country_codes":{"edit":{"label":"Allowed Country Codes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"allowed_country_codes","searchable":false,"sortable":false}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","short_name","gft_explorer_link"],"edit":[[{"name":"name","size":6},{"name":"short_name","size":6}],[{"name":"gft_explorer_link","size":6},{"name":"supply","size":4}],[{"name":"terms_list","size":12}],[{"name":"description","size":12}],[{"name":"total_minted","size":4},{"name":"vimeo_video_id","size":6}],[{"name":"default_back_image","size":12}],[{"name":"nft_collection_id","size":6},{"name":"allowed_country_codes","size":6}],[{"name":"chains","size":6}]]}}	object	\N	\N
48	plugin_content_manager_configuration_components::translation.game-text	{"uid":"translation.game-text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":false,"sortable":false}},"languages":{"edit":{"label":"languages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"languages","searchable":false,"sortable":false}}},"layouts":{"list":["id","text","languages"],"edit":[[{"name":"text","size":6},{"name":"languages","size":6}]]},"isComponent":true}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::reward-drop.reward-drop	{"uid":"api::reward-drop.reward-drop","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"phone_numbers","defaultSortBy":"phone_numbers","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"phone_numbers":{"edit":{"label":"Phone Numbers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_numbers","searchable":true,"sortable":true}},"result":{"edit":{"label":"Result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"result","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"drop_timestamp":{"edit":{"label":"Drop Timestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drop_timestamp","searchable":true,"sortable":true}},"reward_drop_id":{"edit":{"label":"Reward Drop Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_drop_id","searchable":true,"sortable":true}},"campaign":{"edit":{"label":"Campaign","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"campaign","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"GFT Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"description","size":12}],[{"name":"phone_numbers","size":6}],[{"name":"result","size":12}],[{"name":"status","size":6},{"name":"drop_timestamp","size":6}],[{"name":"reward_drop_id","size":4},{"name":"campaign","size":6}],[{"name":"gft_explorer_link","size":6}]],"list":["id","phone_numbers","status","drop_timestamp"]}}	object	\N	\N
66	plugin_content_manager_configuration_content_types::api::subscription-drop.subscription-drop	{"uid":"api::subscription-drop.subscription-drop","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"drop_timestamp","defaultSortBy":"drop_timestamp","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"subscription_drop_id":{"edit":{"label":"Subscription Drop Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscription_drop_id","searchable":true,"sortable":true}},"drop_timestamp":{"edit":{"label":"Drop Timestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drop_timestamp","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"Start Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"End Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"rewards":{"edit":{"label":"Rewards","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rewards","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"result":{"edit":{"label":"Result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"result","searchable":false,"sortable":false}},"subscription":{"edit":{"label":"subscription","description":"","placeholder":"","visible":true,"editable":true,"mainField":"subscription_id"},"list":{"label":"subscription","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","subscription_drop_id","drop_timestamp","status"],"edit":[[{"name":"subscription_drop_id","size":4},{"name":"drop_timestamp","size":6}],[{"name":"status","size":6},{"name":"start_date","size":4}],[{"name":"end_date","size":4}],[{"name":"description","size":12}],[{"name":"rewards","size":6},{"name":"gft_explorer_link","size":6}],[{"name":"result","size":12}],[{"name":"subscription","size":6}]]}}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::reward-product.reward-product	{"uid":"api::reward-product.reward-product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"product_name","defaultSortBy":"product_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"product_name":{"edit":{"label":"Product Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_name","searchable":true,"sortable":true}},"upc_code":{"edit":{"label":"UPC Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"upc_code","searchable":true,"sortable":true}},"product_image":{"edit":{"label":"Product Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"product_image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"product_name","size":6},{"name":"upc_code","size":6}],[{"name":"product_image","size":6}]],"list":["id","product_name","upc_code","product_image"]}}	object	\N	\N
67	plugin_content_manager_configuration_content_types::api::tokenized-receipt.tokenized-receipt	{"uid":"api::tokenized-receipt.tokenized-receipt","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"Short Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"vimeo_video_id":{"edit":{"label":"Vimeo Video Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vimeo_video_id","searchable":true,"sortable":true}},"receipt_id":{"edit":{"label":"Receipt Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_id","searchable":true,"sortable":true}},"terms_list":{"edit":{"label":"Terms List","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms_list","searchable":false,"sortable":false}},"allowed_country_codes":{"edit":{"label":"Allowed Country Codes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"allowed_country_codes","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"default_back_image":{"edit":{"label":"Default Back Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"default_back_image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"short_name","size":6}],[{"name":"gft_explorer_link","size":6},{"name":"vimeo_video_id","size":4}],[{"name":"receipt_id","size":4}],[{"name":"terms_list","size":12}],[{"name":"allowed_country_codes","size":6}],[{"name":"description","size":12}],[{"name":"default_back_image","size":12}]],"list":["id","name","short_name","gft_explorer_link"]}}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::reward-subscription.reward-subscription	{"uid":"api::reward-subscription.reward-subscription","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"subscription_id","defaultSortBy":"subscription_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"subscription_id":{"edit":{"label":"Subscription Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subscription_id","searchable":true,"sortable":true}},"short_name":{"edit":{"label":"Short Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_name","searchable":true,"sortable":true}},"display_name":{"edit":{"label":"Display Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"display_name","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"more_link_info":{"edit":{"label":"More Link Info","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"more_link_info","searchable":true,"sortable":true}},"billing_id":{"edit":{"label":"Billing Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billing_id","searchable":true,"sortable":true}},"x_solla_api_latest_status":{"edit":{"label":"X Solla API Latest Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"x_solla_api_latest_status","searchable":true,"sortable":true}},"x_solla_product_id":{"edit":{"label":"X Solla Product Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"x_solla_product_id","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"live":{"edit":{"label":"Live","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"live","searchable":true,"sortable":true}},"currency":{"edit":{"label":"Currency","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"currency","searchable":true,"sortable":true}},"drop_frequency":{"edit":{"label":"Drop Frequency","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drop_frequency","searchable":true,"sortable":true}},"allowed_country_codes":{"edit":{"label":"Allowed Country Codes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"allowed_country_codes","searchable":false,"sortable":false}},"regions":{"edit":{"label":"Regions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"regions","searchable":true,"sortable":true}},"subscription_drops":{"edit":{"label":"Subscription Drops","description":"","placeholder":"","visible":true,"editable":true,"mainField":"drop_timestamp"},"list":{"label":"subscription_drops","searchable":false,"sortable":false}},"terms_conditions":{"edit":{"label":"Terms Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"terms_conditions","searchable":true,"sortable":true}},"promotional_images":{"edit":{"label":"Promotional Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"promotional_images","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"feature_order":{"edit":{"label":"Feature Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_order","searchable":true,"sortable":true}},"primary_display_image":{"edit":{"label":"Primary Display Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"primary_display_image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","subscription_id","short_name","display_name"],"edit":[[{"name":"subscription_id","size":6},{"name":"short_name","size":6}],[{"name":"display_name","size":6},{"name":"price","size":4}],[{"name":"more_link_info","size":6}],[{"name":"billing_id","size":6},{"name":"x_solla_api_latest_status","size":4}],[{"name":"x_solla_product_id","size":4},{"name":"gft_explorer_link","size":6}],[{"name":"live","size":4},{"name":"currency","size":6}],[{"name":"drop_frequency","size":6},{"name":"allowed_country_codes","size":6}],[{"name":"regions","size":6},{"name":"subscription_drops","size":6}],[{"name":"terms_conditions","size":6}],[{"name":"promotional_images","size":12}],[{"name":"description","size":12}],[{"name":"feature_order","size":4}],[{"name":"primary_display_image","size":12}]]}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::congratulation-screen.congratulation-screen	{"uid":"api::congratulation-screen.congratulation-screen","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"congratulationsImage":{"edit":{"label":"congratulationsImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"congratulationsImage","searchable":false,"sortable":false}},"congratulationTitle":{"edit":{"label":"congratulationTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"congratulationTitle","searchable":true,"sortable":true}},"howToTitle":{"edit":{"label":"howToTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"howToTitle","searchable":true,"sortable":true}},"howToText":{"edit":{"label":"howToText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"howToText","searchable":true,"sortable":true}},"congratulationsText":{"edit":{"label":"congratulationsText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"congratulationsText","searchable":true,"sortable":true}},"howToImage":{"edit":{"label":"howToImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"howToImage","searchable":false,"sortable":false}},"partners":{"edit":{"label":"Partners","description":"","placeholder":"","visible":true,"editable":true,"mainField":"shortId"},"list":{"label":"partners","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","congratulationsImage","congratulationTitle"],"edit":[[{"name":"name","size":6}],[{"name":"partners","size":6},{"name":"congratulationsImage","size":6}],[{"name":"congratulationTitle","size":6},{"name":"howToTitle","size":6}],[{"name":"howToText","size":6},{"name":"congratulationsText","size":6}],[{"name":"howToImage","size":6}]]}}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::messaging.messaging	{"uid":"api::messaging.messaging","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"social_link","defaultSortBy":"social_link","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"social_link":{"edit":{"label":"Social Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"social_link","searchable":true,"sortable":true}},"text_message":{"edit":{"label":"Text Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_message","searchable":true,"sortable":true}},"email_message":{"edit":{"label":"Email Message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email_message","searchable":true,"sortable":true}},"blog_link":{"edit":{"label":"Blog Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blog_link","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"social_link","size":6},{"name":"text_message","size":6}],[{"name":"email_message","size":6},{"name":"blog_link","size":6}]],"list":["id","social_link","text_message","email_message"]}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::page.page	{"uid":"api::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"page_name","defaultSortBy":"page_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"page_name":{"edit":{"label":"Page Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"page_name","searchable":true,"sortable":true}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"banners":{"edit":{"label":"Banners","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banners","searchable":false,"sortable":false}},"headers":{"edit":{"label":"Headers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"headers","searchable":false,"sortable":false}},"tiles":{"edit":{"label":"Tiles","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tiles","searchable":false,"sortable":false}},"videos":{"edit":{"label":"Videos","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"videos","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","page_name","chains","banners"],"edit":[[{"name":"page_name","size":6},{"name":"chains","size":6}],[{"name":"banners","size":12}],[{"name":"headers","size":12}],[{"name":"tiles","size":12}],[{"name":"videos","size":12}]]}}	object	\N	\N
68	plugin_content_manager_configuration_content_types::api::collectible.collectible	{"uid":"api::collectible.collectible","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"collectibleId","defaultSortBy":"collectibleId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"collectibleId":{"edit":{"label":"collectibleId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"collectibleId","searchable":true,"sortable":true}},"onDisplayInPWA":{"edit":{"label":"onDisplayInPWA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"onDisplayInPWA","searchable":true,"sortable":true}},"unlimitedSupply":{"edit":{"label":"unlimitedSupply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"unlimitedSupply","searchable":true,"sortable":true}},"totalMinted":{"edit":{"label":"totalMinted","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalMinted","searchable":true,"sortable":true}},"disableLoadToWalletByUser":{"edit":{"label":"disableLoadToWalletByUser","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"disableLoadToWalletByUser","searchable":true,"sortable":true}},"is3DAsset":{"edit":{"label":"is3DAsset","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is3DAsset","searchable":true,"sortable":true}},"asset3dBackgroundColor":{"edit":{"label":"asset3dBackgroundColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"asset3dBackgroundColor","searchable":true,"sortable":true}},"supply":{"edit":{"label":"Supply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"supply","searchable":true,"sortable":true}},"descriptions":{"edit":{"label":"descriptions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descriptions","searchable":false,"sortable":false}},"vimeoVideoId":{"edit":{"label":"vimeoVideoId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vimeoVideoId","searchable":true,"sortable":true}},"target3dAsset":{"edit":{"label":"target3dAsset","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"target3dAsset","searchable":false,"sortable":false}},"target3dMtl":{"edit":{"label":"target3dMtl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"target3dMtl","searchable":false,"sortable":false}},"asset3dProps":{"edit":{"label":"asset3dProps","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"asset3dProps","searchable":false,"sortable":false}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"allowedCountryCodes":{"edit":{"label":"allowedCountryCodes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"allowedCountryCodes","searchable":false,"sortable":false}},"shortName":{"edit":{"label":"shortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortName","searchable":true,"sortable":true}},"endDate":{"edit":{"label":"endDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endDate","searchable":true,"sortable":true}},"primaryArtworkList":{"edit":{"label":"primaryArtworkList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"primaryArtworkList","searchable":false,"sortable":false}},"secondaryArtworkList":{"edit":{"label":"secondaryArtworkList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"secondaryArtworkList","searchable":false,"sortable":false}},"termsList":{"edit":{"label":"termsList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"termsList","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","collectibleId","onDisplayInPWA","descriptions"],"edit":[[{"name":"supply","size":4}],[{"name":"chains","size":6}],[{"name":"collectibleId","size":6},{"name":"onDisplayInPWA","size":4}],[{"name":"unlimitedSupply","size":4},{"name":"totalMinted","size":4},{"name":"disableLoadToWalletByUser","size":4}],[{"name":"is3DAsset","size":4},{"name":"asset3dBackgroundColor","size":6}],[{"name":"vimeoVideoId","size":6},{"name":"target3dAsset","size":6}],[{"name":"target3dMtl","size":6}],[{"name":"asset3dProps","size":12}],[{"name":"allowedCountryCodes","size":6},{"name":"shortName","size":6}],[{"name":"endDate","size":4}],[{"name":"descriptions","size":12}],[{"name":"primaryArtworkList","size":12}],[{"name":"secondaryArtworkList","size":12}],[{"name":"termsList","size":12}]]}}	object	\N	\N
69	plugin_content_manager_configuration_content_types::api::account.account	{"uid":"api::account.account","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"campaign_balance","defaultSortBy":"campaign_balance","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mobile_wallet_id_number":{"edit":{"label":"Mobile Wallet Id Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobile_wallet_id_number","searchable":true,"sortable":true}},"physical_card_number":{"edit":{"label":"Physical Card Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"physical_card_number","searchable":true,"sortable":true}},"virtual_card_number":{"edit":{"label":"Virtual Card Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"virtual_card_number","searchable":true,"sortable":true}},"campaign_balance":{"edit":{"label":"Campaign Balance","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"campaign_balance","searchable":true,"sortable":true}},"account_balance":{"edit":{"label":"Account Balance","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"account_balance","searchable":true,"sortable":true}},"last_4_EIN":{"edit":{"label":"Last 4 EIN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_4_EIN","searchable":true,"sortable":true}},"notification_methods":{"edit":{"label":"Notification Methods","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notification_methods","searchable":true,"sortable":true}},"transaction_history":{"edit":{"label":"Transaction History","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"transaction_history","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"mobile_wallet_id_number","size":6},{"name":"physical_card_number","size":6}],[{"name":"virtual_card_number","size":6},{"name":"campaign_balance","size":6}],[{"name":"account_balance","size":6},{"name":"last_4_EIN","size":6}],[{"name":"notification_methods","size":6},{"name":"transaction_history","size":6}]],"list":["id","mobile_wallet_id_number","physical_card_number","virtual_card_number"]}}	object	\N	\N
70	plugin_content_manager_configuration_components::gft.gft-pay	{"uid":"gft.gft-pay","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"first_name","defaultSortBy":"first_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"balance_greater_than_1000":{"edit":{"label":"Balance Greater than $1,000","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"balance_greater_than_1000","searchable":true,"sortable":true}},"date_of_birth":{"edit":{"label":"Date Of Birth","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date_of_birth","searchable":true,"sortable":true}},"first_name":{"edit":{"label":"First Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"first_name","searchable":true,"sortable":true}},"middle_name":{"edit":{"label":"Middle Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"middle_name","searchable":true,"sortable":true}},"last_name":{"edit":{"label":"Last Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_name","searchable":true,"sortable":true}},"corporate_email":{"edit":{"label":"Corporate Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"corporate_email","searchable":true,"sortable":true}},"corporate_address_1":{"edit":{"label":"Corporate Address 1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"corporate_address_1","searchable":true,"sortable":true}},"corporate_address_2":{"edit":{"label":"Corporate Address 2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"corporate_address_2","searchable":true,"sortable":true}},"province":{"edit":{"label":"Province","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"province","searchable":true,"sortable":true}},"city":{"edit":{"label":"City","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"postal_code":{"edit":{"label":" Postal Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"postal_code","searchable":true,"sortable":true}},"country":{"edit":{"label":"Country","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"country","searchable":true,"sortable":true}},"display_currency":{"edit":{"label":"Display Currency","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"display_currency","searchable":true,"sortable":true}},"signature":{"edit":{"label":"Signature","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"signature","searchable":true,"sortable":true}}},"layouts":{"list":["id","balance_greater_than_1000","date_of_birth"],"edit":[[{"name":"balance_greater_than_1000","size":4}],[{"name":"date_of_birth","size":4},{"name":"first_name","size":6}],[{"name":"middle_name","size":6},{"name":"last_name","size":6}],[{"name":"corporate_email","size":6},{"name":"corporate_address_1","size":6}],[{"name":"corporate_address_2","size":6},{"name":"province","size":6}],[{"name":"city","size":6},{"name":"postal_code","size":6}],[{"name":"country","size":6},{"name":"display_currency","size":6}],[{"name":"signature","size":4}]]},"isComponent":true}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"id","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
38	plugin_content_manager_configuration_components::art.image-collection	{"uid":"art.image-collection","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"imageCollection":{"edit":{"label":"imageCollection","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"imageCollection","searchable":false,"sortable":false}},"languages":{"edit":{"label":"languages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"languages","searchable":false,"sortable":false}}},"layouts":{"list":["id","languages","imageCollection"],"edit":[[{"name":"languages","size":6},{"name":"imageCollection","size":6}]]},"isComponent":true}	object	\N	\N
63	plugin_content_manager_configuration_content_types::api::reward-game.reward-game	{"uid":"api::reward-game.reward-game","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"game_name","defaultSortBy":"game_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"game_name":{"edit":{"label":"Game Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"game_name","searchable":true,"sortable":true}},"banner":{"edit":{"label":"Banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":true,"sortable":true}},"game_id":{"edit":{"label":"Game Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"game_id","searchable":true,"sortable":true}},"max_daily_plays":{"edit":{"label":"Max Daily Plays","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"max_daily_plays","searchable":true,"sortable":true}},"begin_date":{"edit":{"label":"Begin Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"begin_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"End Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"game_server_url":{"edit":{"label":"Game Server URL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"game_server_url","searchable":true,"sortable":true}},"official_rules_link":{"edit":{"label":"Official Rules Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"official_rules_link","searchable":true,"sortable":true}},"feature_order":{"edit":{"label":"Feature Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feature_order","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"banner_artwork_list":{"edit":{"label":"Banner Artwork List","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner_artwork_list","searchable":false,"sortable":false}},"coupon_prize":{"edit":{"label":"Coupon Prize","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coupon_prize","searchable":false,"sortable":false}},"game_text":{"edit":{"label":"Game Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"game_text","searchable":false,"sortable":false}},"chain":{"edit":{"label":"Chain","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chain","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","game_name","banner","game_id"],"edit":[[{"name":"game_name","size":6},{"name":"banner","size":6}],[{"name":"game_id","size":4},{"name":"max_daily_plays","size":4},{"name":"begin_date","size":4}],[{"name":"end_date","size":4},{"name":"game_server_url","size":6}],[{"name":"official_rules_link","size":6},{"name":"feature_order","size":6}],[{"name":"gft_explorer_link","size":6}],[{"name":"banner_artwork_list","size":12}],[{"name":"coupon_prize","size":12}],[{"name":"game_text","size":12}],[{"name":"chain","size":6}]]}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::chain.chain	{"uid":"api::chain.chain","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"banners":{"edit":{"label":"Banners","description":"","placeholder":"","visible":true,"editable":true,"mainField":"short_name_tag"},"list":{"label":"banners","searchable":false,"sortable":false}},"reward_games":{"edit":{"label":"Reward Games","description":"","placeholder":"","visible":true,"editable":true,"mainField":"game_name"},"list":{"label":"reward_games","searchable":false,"sortable":false}},"regions":{"edit":{"label":"regions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"division"},"list":{"label":"regions","searchable":false,"sortable":false}},"corporateEntity":{"edit":{"label":"corporateEntity","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"corporateEntity","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","createdAt","updatedAt"],"edit":[[{"name":"name","size":6},{"name":"banners","size":6}],[{"name":"reward_games","size":6},{"name":"regions","size":6}],[{"name":"corporateEntity","size":6}]]}}	object	\N	\N
33	plugin_content_manager_configuration_content_types::api::company-profile.company-profile	{"uid":"api::company-profile.company-profile","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"company_name","defaultSortBy":"company_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"company_name":{"edit":{"label":"Company Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_name","searchable":true,"sortable":true}},"lookup_name":{"edit":{"label":"Lookup Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lookup_name","searchable":true,"sortable":true}},"company_EIN_TIN":{"edit":{"label":"Company EIN TIN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_EIN_TIN","searchable":true,"sortable":true}},"company_parent":{"edit":{"label":"Company Parent","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_parent","searchable":true,"sortable":true}},"company_parent_EIN_TIN":{"edit":{"label":"Company Parent EIN TIN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_parent_EIN_TIN","searchable":true,"sortable":true}},"company_alliance_id":{"edit":{"label":"Company Alliance Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_alliance_id","searchable":true,"sortable":true}},"contact_name":{"edit":{"label":"Contact Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contact_name","searchable":true,"sortable":true}},"contact_mobile":{"edit":{"label":"Contact Mobile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contact_mobile","searchable":true,"sortable":true}},"contact_email":{"edit":{"label":"Contact Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contact_email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"address_street":{"edit":{"label":"Address Street","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address_street","searchable":true,"sortable":true}},"city":{"edit":{"label":"City","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"state":{"edit":{"label":"State","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"state","searchable":true,"sortable":true}},"zip":{"edit":{"label":"Zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"Gft Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"language":{"edit":{"label":"Language","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"language","searchable":true,"sortable":true}},"node":{"edit":{"label":"Node","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"node","searchable":true,"sortable":true}},"id_number":{"edit":{"label":"Id Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"id_number","searchable":true,"sortable":true}},"gft_pays":{"edit":{"label":"GFT Pays","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobile_number"},"list":{"label":"gft_pays","searchable":false,"sortable":false}},"accounts":{"edit":{"label":"Accounts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"campaign_balance"},"list":{"label":"accounts","searchable":false,"sortable":false}},"country":{"edit":{"label":"Country","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"country","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","company_name","lookup_name","company_EIN_TIN"],"edit":[[{"name":"company_name","size":6},{"name":"lookup_name","size":6}],[{"name":"company_EIN_TIN","size":6},{"name":"company_parent","size":6}],[{"name":"company_parent_EIN_TIN","size":6},{"name":"company_alliance_id","size":6}],[{"name":"contact_name","size":6},{"name":"contact_mobile","size":6}],[{"name":"contact_email","size":6},{"name":"password","size":6}],[{"name":"confirmed","size":4},{"name":"blocked","size":4}],[{"name":"role","size":6},{"name":"address_street","size":6}],[{"name":"city","size":6},{"name":"state","size":6}],[{"name":"zip","size":6},{"name":"country","size":6}],[{"name":"gft_explorer_link","size":6},{"name":"language","size":6}],[{"name":"node","size":6},{"name":"id_number","size":6}],[{"name":"gft_pays","size":6},{"name":"accounts","size":6}]]}}	object	\N	\N
71	plugin_content_manager_configuration_content_types::api::gft-pay.gft-pay	{"uid":"api::gft-pay.gft-pay","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"mobile_number","defaultSortBy":"mobile_number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mobile_number":{"edit":{"label":"Mobile Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobile_number","searchable":true,"sortable":true}},"gft_mobile_number":{"edit":{"label":"GFT Mobile Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_mobile_number","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"mobile_number","size":6}],[{"name":"gft_mobile_number","size":12}]],"list":["id","mobile_number","createdAt","updatedAt"]}}	object	\N	\N
37	plugin_content_manager_configuration_content_types::api::coupon.coupon	{"uid":"api::coupon.coupon","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"reward_name","defaultSortBy":"id","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"reward_name":{"edit":{"label":"Reward Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_name","searchable":true,"sortable":true}},"pos_campaign_id":{"edit":{"label":"Pos Campaign Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pos_campaign_id","searchable":true,"sortable":true}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"preview_link":{"edit":{"label":"Preview Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preview_link","searchable":true,"sortable":true}},"on_display_in_pwa":{"edit":{"label":"On Display in Pwa","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"on_display_in_pwa","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"reward_type":{"edit":{"label":"Reward Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_type","searchable":true,"sortable":true}},"begin_date":{"edit":{"label":"Begin Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"begin_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"End Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"passive_redemption":{"edit":{"label":"Passive Redemption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"passive_redemption","searchable":true,"sortable":true}},"front_of_reward_artwork":{"edit":{"label":"Front of Reward Artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"front_of_reward_artwork","searchable":true,"sortable":true}},"back_of_reward_artwork":{"edit":{"label":"Back of Reward Artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"back_of_reward_artwork","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"disclaimer":{"edit":{"label":"Disclaimer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"disclaimer","searchable":false,"sortable":false}},"additional_terms_link":{"edit":{"label":"Additional Terms Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additional_terms_link","searchable":true,"sortable":true}},"receipt_description":{"edit":{"label":"Receipt Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"receipt_description","searchable":true,"sortable":true}},"reward_supply":{"edit":{"label":"Reward Supply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_supply","searchable":true,"sortable":true}},"reward_value":{"edit":{"label":"Reward Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_value","searchable":true,"sortable":true}},"total_products":{"edit":{"label":"Total Products","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_products","searchable":true,"sortable":true}},"basket_reward":{"edit":{"label":"Basket Reward","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"basket_reward","searchable":true,"sortable":true}},"basket_value":{"edit":{"label":"Basket Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"basket_value","searchable":true,"sortable":true}},"is_featured":{"edit":{"label":"Is Featured","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_featured","searchable":true,"sortable":true}},"short_id":{"edit":{"label":"Short Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_id","searchable":true,"sortable":true}},"total_available":{"edit":{"label":"Total Available","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_available","searchable":true,"sortable":true}},"total_loaded":{"edit":{"label":"Total Loaded","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_loaded","searchable":true,"sortable":true}},"total_redeemed":{"edit":{"label":"Total Redeemed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_redeemed","searchable":true,"sortable":true}},"featured_order":{"edit":{"label":"Featured Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featured_order","searchable":true,"sortable":true}},"deals_order":{"edit":{"label":"Deals Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deals_order","searchable":true,"sortable":true}},"redeem_button_on_reward":{"edit":{"label":"Redeem Button on Reward","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"redeem_button_on_reward","searchable":true,"sortable":true}},"disable_load_to_wallet_by_user":{"edit":{"label":"Disable Load To Wallet By User","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"disable_load_to_wallet_by_user","searchable":true,"sortable":true}},"is_rebate":{"edit":{"label":"Is  Rebate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_rebate","searchable":true,"sortable":true}},"included_products":{"edit":{"label":"Included Products","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"included_products","searchable":true,"sortable":true}},"corporate_entity":{"edit":{"label":"Corporate Entity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"corporate_entity","searchable":true,"sortable":true}},"chains":{"edit":{"label":"Chains","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"chains","searchable":true,"sortable":true}},"regions":{"edit":{"label":"Regions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"regions","searchable":true,"sortable":true}},"stores":{"edit":{"label":"Stores","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stores","searchable":true,"sortable":true}},"collectibles_to_load":{"edit":{"label":"Collectibles To Load","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"collectibles_to_load","searchable":true,"sortable":true}},"campaigns_to_load":{"edit":{"label":"Campaigns To Load","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"campaigns_to_load","searchable":true,"sortable":true}},"gft_explorer_link":{"edit":{"label":"GFT Explorer Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gft_explorer_link","searchable":true,"sortable":true}},"banner_artwork":{"edit":{"label":"Banner Artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner_artwork","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"reward_name","size":6},{"name":"pos_campaign_id","size":4}],[{"name":"status","size":6},{"name":"preview_link","size":6}],[{"name":"on_display_in_pwa","size":4},{"name":"type","size":6}],[{"name":"reward_type","size":6},{"name":"begin_date","size":4}],[{"name":"end_date","size":4},{"name":"passive_redemption","size":6}],[{"name":"front_of_reward_artwork","size":6},{"name":"back_of_reward_artwork","size":6}],[{"name":"description","size":12}],[{"name":"disclaimer","size":12}],[{"name":"additional_terms_link","size":6},{"name":"receipt_description","size":6}],[{"name":"reward_supply","size":6},{"name":"reward_value","size":6}],[{"name":"total_products","size":4},{"name":"basket_reward","size":4}],[{"name":"basket_value","size":6},{"name":"is_featured","size":4}],[{"name":"short_id","size":6},{"name":"total_available","size":4}],[{"name":"total_loaded","size":4},{"name":"total_redeemed","size":4}],[{"name":"featured_order","size":6},{"name":"deals_order","size":6}],[{"name":"redeem_button_on_reward","size":4},{"name":"disable_load_to_wallet_by_user","size":4},{"name":"is_rebate","size":4}],[{"name":"included_products","size":6},{"name":"corporate_entity","size":6}],[{"name":"chains","size":6},{"name":"regions","size":6}],[{"name":"stores","size":6},{"name":"collectibles_to_load","size":6}],[{"name":"campaigns_to_load","size":6},{"name":"gft_explorer_link","size":6}],[{"name":"banner_artwork","size":12}]],"list":["id","reward_name","pos_campaign_id","status"]}}	object	\N	\N
75	plugin_content_manager_configuration_content_types::api::shopper.shopper	{"uid":"api::shopper.shopper","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"id","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"phone_number":{"edit":{"label":"Phone Number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_number","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"vatom_user_id":{"edit":{"label":"Vatom User Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_user_id","searchable":true,"sortable":true}},"vatom_business_id":{"edit":{"label":"Vatom Business Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_business_id","searchable":true,"sortable":true}},"vatom_campaign_id":{"edit":{"label":"Vatom Campaign Id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_campaign_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"phone_number","size":4}],[{"name":"email","size":6},{"name":"vatom_user_id","size":6}],[{"name":"vatom_business_id","size":6},{"name":"vatom_campaign_id","size":6}]],"list":["id","name","phone_number","email"]}}	object	\N	\N
76	plugin_content_manager_configuration_content_types::api::shopper-coupon.shopper-coupon	{"uid":"api::shopper-coupon.shopper-coupon","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"vatom_user_id","defaultSortBy":"vatom_user_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"vatom_user_id":{"edit":{"label":"vatom_user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_user_id","searchable":true,"sortable":true}},"vatom_business_id":{"edit":{"label":"vatom_business_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_business_id","searchable":true,"sortable":true}},"vatom_campaign_id":{"edit":{"label":"vatom_campaign_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_campaign_id","searchable":true,"sortable":true}},"vatom_design_id":{"edit":{"label":"vatom_design_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_design_id","searchable":true,"sortable":true}},"vatom_distribution_id":{"edit":{"label":"vatom_distribution_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_distribution_id","searchable":true,"sortable":true}},"vatom_token_id":{"edit":{"label":"vatom_token_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_token_id","searchable":true,"sortable":true}},"vatom_source":{"edit":{"label":"vatom_source","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_source","searchable":true,"sortable":true}},"vatom_medium":{"edit":{"label":"vatom_medium","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_medium","searchable":true,"sortable":true}},"vatom_state":{"edit":{"label":"vatom_state","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vatom_state","searchable":true,"sortable":true}},"shopper_id":{"edit":{"label":"shopper_id","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"shopper_id","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","vatom_user_id","vatom_business_id","vatom_campaign_id"],"edit":[[{"name":"vatom_user_id","size":6},{"name":"vatom_business_id","size":6}],[{"name":"vatom_campaign_id","size":6},{"name":"vatom_design_id","size":6}],[{"name":"vatom_distribution_id","size":6}],[{"name":"vatom_source","size":6},{"name":"vatom_medium","size":6}],[{"name":"vatom_state","size":6},{"name":"shopper_id","size":6}],[{"name":"vatom_token_id","size":6}]]}}	object	\N	\N
61	plugin_content_manager_configuration_content_types::api::retail-profile.retail-profile	{"uid":"api::retail-profile.retail-profile","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"division","defaultSortBy":"division","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"division":{"edit":{"label":"Division","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"division","searchable":true,"sortable":true}},"stores":{"edit":{"label":"Stores","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stores","searchable":false,"sortable":false}},"regions":{"edit":{"label":"regions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"regions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","division","stores","regions"],"edit":[[{"name":"division","size":6}],[{"name":"stores","size":12}],[{"name":"regions","size":6}]]}}	object	\N	\N
42	plugin_content_manager_configuration_components::store.store	{"uid":"store.store","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"banner","defaultSortBy":"banner","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"zip":{"edit":{"label":"zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"state":{"edit":{"label":"state","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"state","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"latitude":{"edit":{"label":"latitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"latitude","searchable":true,"sortable":true}},"longitude":{"edit":{"label":"longitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"longitude","searchable":true,"sortable":true}},"country":{"edit":{"label":"country","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"country","searchable":true,"sortable":true}}},"layouts":{"list":["id","banner","name","address"],"edit":[[{"name":"banner","size":6},{"name":"name","size":6}],[{"name":"address","size":6},{"name":"city","size":6}],[{"name":"zip","size":6},{"name":"state","size":6}],[{"name":"number","size":4},{"name":"latitude","size":6}],[{"name":"longitude","size":6},{"name":"country","size":6}]]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_content_types::api::partner.partner	{"uid":"api::partner.partner","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"shortId","defaultSortBy":"shortId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"shortId":{"edit":{"label":"shortId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortId","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"restrictedLoyaltyProgram":{"edit":{"label":"restrictedLoyaltyProgram","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"restrictedLoyaltyProgram","searchable":true,"sortable":true}},"congratulationScreen":{"edit":{"label":"congratulationScreen","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"congratulationScreen","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","shortId","restrictedLoyaltyProgram"],"edit":[[{"name":"name","size":6},{"name":"shortId","size":6}],[{"name":"restrictedLoyaltyProgram","size":4},{"name":"congratulationScreen","size":6}]]}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::adc-drop.adc-drop	{"uid":"api::adc-drop.adc-drop","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"dropTimestamp","defaultSortBy":"dropTimestamp","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"dropTimestamp":{"edit":{"label":"dropTimestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dropTimestamp","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"result":{"edit":{"label":"Result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"result","searchable":false,"sortable":false}},"adcDropId":{"edit":{"label":"adcDropId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"adcDropId","searchable":true,"sortable":true}},"partner":{"edit":{"label":"Partner","description":"","placeholder":"","visible":true,"editable":true,"mainField":"shortId"},"list":{"label":"partner","searchable":true,"sortable":true}},"collectibles":{"edit":{"label":"Collectibles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"collectibleId"},"list":{"label":"collectibles","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","status","dropTimestamp","adcDropId"],"edit":[[{"name":"description","size":12}],[{"name":"status","size":6}],[{"name":"result","size":12}],[{"name":"collectibles","size":6},{"name":"partner","size":6}],[{"name":"dropTimestamp","size":6},{"name":"adcDropId","size":6}]]}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::language-code.language-code	{"uid":"api::language-code.language-code","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"languageName":{"edit":{"label":"languageName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"languageName","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","createdAt","languageName"],"edit":[[{"name":"code","size":6},{"name":"languageName","size":6}]]}}	object	\N	\N
77	plugin_content_manager_configuration_content_types::api::configuration.configuration	{"uid":"api::configuration.configuration","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"json":{"edit":{"label":"json","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"json","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt"],"edit":[[{"name":"json","size":12}]]}}	object	\N	\N
78	plugin_content_manager_configuration_components::prize.prize-detail	{"uid":"prize.prize-detail","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"prizeId","defaultSortBy":"prizeId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"prizeSupply":{"edit":{"label":"prizeSupply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prizeSupply","searchable":true,"sortable":true}},"winAfter":{"edit":{"label":"winAfter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"winAfter","searchable":true,"sortable":true}},"winningPrize":{"edit":{"label":"winningPrize","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"winningPrize","searchable":true,"sortable":true}},"prizesAvailable":{"edit":{"label":"prizesAvailable","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prizesAvailable","searchable":true,"sortable":true}},"maxWinsPerDay":{"edit":{"label":"maxWinsPerDay","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"maxWinsPerDay","searchable":true,"sortable":true}},"winInterval":{"edit":{"label":"winInterval","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"winInterval","searchable":true,"sortable":true}},"waitAfterWin":{"edit":{"label":"waitAfterWin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"waitAfterWin","searchable":true,"sortable":true}},"prizeId":{"edit":{"label":"prizeId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prizeId","searchable":true,"sortable":true}}},"layouts":{"list":["id","prizeSupply","winAfter","winningPrize"],"edit":[[{"name":"prizeSupply","size":4},{"name":"winAfter","size":6}],[{"name":"winningPrize","size":4},{"name":"prizesAvailable","size":4},{"name":"maxWinsPerDay","size":4}],[{"name":"winInterval","size":4},{"name":"waitAfterWin","size":4}],[{"name":"prizeId","size":6}]]},"isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::categorie.categorie	{"uid":"api::categorie.categorie","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"artwork":{"edit":{"label":"Artwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"artwork","searchable":false,"sortable":false}},"tag":{"edit":{"label":"Tag","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tag","searchable":true,"sortable":true}},"names":{"edit":{"label":"Names","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"names","searchable":false,"sortable":false}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"upc"},"list":{"label":"items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","artwork","tag","createdAt"],"edit":[[{"name":"artwork","size":6},{"name":"tag","size":6}],[{"name":"names","size":12}],[{"name":"items","size":6}]]}}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::product.product	{"uid":"api::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"upc","defaultSortBy":"upc","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mainImage":{"edit":{"label":"mainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mainImage","searchable":false,"sortable":false}},"upc":{"edit":{"label":"upc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"upc","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"categories":{"edit":{"label":"Categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"categories","searchable":false,"sortable":false}},"campaigns":{"edit":{"label":"campaigns","description":"","placeholder":"","visible":true,"editable":true,"mainField":"campaignId"},"list":{"label":"campaigns","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","mainImage","upc","campaigns"],"edit":[[{"name":"name","size":6}],[{"name":"categories","size":6},{"name":"mainImage","size":6}],[{"name":"upc","size":6},{"name":"campaigns","size":6}]]}}	object	\N	\N
80	plugin_content_manager_configuration_content_types::api::corporate-entity.corporate-entity	{"uid":"api::corporate-entity.corporate-entity","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"lookupName":{"edit":{"label":"lookupName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lookupName","searchable":true,"sortable":true}},"chains":{"edit":{"label":"chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","lookupName","chains"],"edit":[[{"name":"name","size":6},{"name":"lookupName","size":6}],[{"name":"chains","size":6}]]}}	object	\N	\N
81	plugin_content_manager_configuration_content_types::api::store.store	{"uid":"api::store.store","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"banner","defaultSortBy":"banner","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"latitude":{"edit":{"label":"latitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"latitude","searchable":true,"sortable":true}},"longitude":{"edit":{"label":"longitude","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"longitude","searchable":true,"sortable":true}},"banner":{"edit":{"label":"banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"banner","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"county":{"edit":{"label":"county","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"county","searchable":true,"sortable":true}},"zip":{"edit":{"label":"zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"state":{"edit":{"label":"state","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"state","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"region":{"edit":{"label":"region","description":"","placeholder":"","visible":true,"editable":true,"mainField":"division"},"list":{"label":"region","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","latitude","longitude","banner"],"edit":[[{"name":"latitude","size":4},{"name":"longitude","size":4}],[{"name":"banner","size":6},{"name":"name","size":6}],[{"name":"address","size":6},{"name":"city","size":6}],[{"name":"county","size":6},{"name":"zip","size":4}],[{"name":"state","size":6},{"name":"number","size":4}],[{"name":"region","size":6}]]}}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::region.region	{"uid":"api::region.region","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"chain":{"edit":{"label":"chain","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chain","searchable":true,"sortable":true}},"division":{"edit":{"label":"Division","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"division","searchable":true,"sortable":true}},"stores":{"edit":{"label":"stores","description":"","placeholder":"","visible":true,"editable":true,"mainField":"banner"},"list":{"label":"stores","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","division","createdAt","updatedAt"],"edit":[[{"name":"division","size":4},{"name":"chain","size":6}],[{"name":"stores","size":6}]]}}	object	\N	\N
79	plugin_content_manager_configuration_content_types::api::campaign.campaign	{"uid":"api::campaign.campaign","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"campaignId","defaultSortBy":"campaignId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"campaignId":{"edit":{"label":"campaignId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"campaignId","searchable":true,"sortable":true}},"couponValue":{"edit":{"label":"couponValue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"couponValue","searchable":true,"sortable":true}},"beginDate":{"edit":{"label":"beginDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"beginDate","searchable":true,"sortable":true}},"endDate":{"edit":{"label":"endDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endDate","searchable":true,"sortable":true}},"isBasket":{"edit":{"label":"isBasket","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isBasket","searchable":true,"sortable":true}},"isRebate":{"edit":{"label":"isRebate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isRebate","searchable":true,"sortable":true}},"basketValue":{"edit":{"label":"basketValue","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"basketValue","searchable":true,"sortable":true}},"quantity":{"edit":{"label":"quantity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quantity","searchable":true,"sortable":true}},"isMultiple":{"edit":{"label":"isMultiple","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isMultiple","searchable":true,"sortable":true}},"updateLevel":{"edit":{"label":"updateLevel","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"updateLevel","searchable":true,"sortable":true}},"couponSupply":{"edit":{"label":"couponSupply","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"couponSupply","searchable":true,"sortable":true}},"additionalRulesLink":{"edit":{"label":"additionalRulesLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additionalRulesLink","searchable":true,"sortable":true}},"listId":{"edit":{"label":"listId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"listId","searchable":true,"sortable":true}},"listItems":{"edit":{"label":"listItems","description":"","placeholder":"","visible":true,"editable":true,"mainField":"upc"},"list":{"label":"listItems","searchable":false,"sortable":false}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"loyaltyPoints":{"edit":{"label":"loyaltyPoints","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"loyaltyPoints","searchable":true,"sortable":true}},"isFeatured":{"edit":{"label":"isFeatured","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFeatured","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"couponType":{"edit":{"label":"couponType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"couponType","searchable":true,"sortable":true}},"totalRedeemed":{"edit":{"label":"totalRedeemed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalRedeemed","searchable":true,"sortable":true}},"totalLoaded":{"edit":{"label":"totalLoaded","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalLoaded","searchable":true,"sortable":true}},"totalAvailable":{"edit":{"label":"totalAvailable","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalAvailable","searchable":true,"sortable":true}},"previewLink":{"edit":{"label":"previewLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewLink","searchable":true,"sortable":true}},"chains":{"edit":{"label":"chains","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"chains","searchable":false,"sortable":false}},"corporateEntities":{"edit":{"label":"corporateEntities","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"corporateEntities","searchable":false,"sortable":false}},"regions":{"edit":{"label":"regions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"division"},"list":{"label":"regions","searchable":false,"sortable":false}},"stores":{"edit":{"label":"stores","description":"","placeholder":"","visible":true,"editable":true,"mainField":"banner"},"list":{"label":"stores","searchable":false,"sortable":false}},"shortId":{"edit":{"label":"shortId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortId","searchable":true,"sortable":true}},"primaryArtworkList":{"edit":{"label":"primaryArtworkList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"primaryArtworkList","searchable":false,"sortable":false}},"bannerArtworkList":{"edit":{"label":"bannerArtworkList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bannerArtworkList","searchable":false,"sortable":false}},"descriptions":{"edit":{"label":"descriptions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descriptions","searchable":false,"sortable":false}},"termsList":{"edit":{"label":"termsList","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"termsList","searchable":false,"sortable":false}},"storeTerminalDescriptions":{"edit":{"label":"storeTerminalDescriptions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"storeTerminalDescriptions","searchable":false,"sortable":false}},"shortName":{"edit":{"label":"shortName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortName","searchable":true,"sortable":true}},"backArtwork":{"edit":{"label":"backArtwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"backArtwork","searchable":false,"sortable":false}},"featuredOrder":{"edit":{"label":"featuredOrder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"featuredOrder","searchable":true,"sortable":true}},"dealsOrder":{"edit":{"label":"dealsOrder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dealsOrder","searchable":true,"sortable":true}},"passiveRedemption":{"edit":{"label":"passiveRedemption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"passiveRedemption","searchable":true,"sortable":true}},"collectiblesToLoad":{"edit":{"label":"collectiblesToLoad","description":"","placeholder":"","visible":true,"editable":true,"mainField":"collectibleId"},"list":{"label":"collectiblesToLoad","searchable":false,"sortable":false}},"campaignsToLoad":{"edit":{"label":"campaignsToLoad","description":"","placeholder":"","visible":true,"editable":true,"mainField":"campaignId"},"list":{"label":"campaignsToLoad","searchable":false,"sortable":false}},"onDisplayInPWA":{"edit":{"label":"onDisplayInPWA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"onDisplayInPWA","searchable":true,"sortable":true}},"redeemButtonOnReward":{"edit":{"label":"redeemButtonOnReward","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"redeemButtonOnReward","searchable":true,"sortable":true}},"disableLoadToWalletByUser":{"edit":{"label":"disableLoadToWalletByUser","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"disableLoadToWalletByUser","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","campaignId","couponValue","beginDate"],"edit":[[{"name":"campaignId","size":6},{"name":"couponValue","size":4}],[{"name":"beginDate","size":4},{"name":"endDate","size":4},{"name":"isBasket","size":4}],[{"name":"isRebate","size":4},{"name":"basketValue","size":4},{"name":"quantity","size":4}],[{"name":"isMultiple","size":4},{"name":"updateLevel","size":4},{"name":"couponSupply","size":4}],[{"name":"additionalRulesLink","size":6},{"name":"listId","size":6}],[{"name":"listItems","size":6},{"name":"type","size":6}],[{"name":"loyaltyPoints","size":4},{"name":"isFeatured","size":4}],[{"name":"status","size":6},{"name":"couponType","size":6}],[{"name":"totalRedeemed","size":4},{"name":"totalLoaded","size":4},{"name":"totalAvailable","size":4}],[{"name":"previewLink","size":6},{"name":"chains","size":6}],[{"name":"corporateEntities","size":6},{"name":"regions","size":6}],[{"name":"stores","size":6},{"name":"shortId","size":6}],[{"name":"primaryArtworkList","size":12}],[{"name":"bannerArtworkList","size":12}],[{"name":"descriptions","size":12}],[{"name":"termsList","size":12}],[{"name":"storeTerminalDescriptions","size":12}],[{"name":"shortName","size":6}],[{"name":"backArtwork","size":12}],[{"name":"featuredOrder","size":4},{"name":"dealsOrder","size":4}],[{"name":"passiveRedemption","size":6},{"name":"collectiblesToLoad","size":6}],[{"name":"campaignsToLoad","size":6},{"name":"onDisplayInPWA","size":4}],[{"name":"redeemButtonOnReward","size":4},{"name":"disableLoadToWalletByUser","size":4}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
186	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"accounts","indexes":[{"name":"accounts_created_by_id_fk","columns":["created_by_id"]},{"name":"accounts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"accounts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"accounts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"mobile_wallet_id_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"physical_card_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"virtual_card_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"campaign_balance","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"account_balance","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_4_ein","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notification_methods","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"transaction_history","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"adc_drops","indexes":[{"name":"adc_drops_created_by_id_fk","columns":["created_by_id"]},{"name":"adc_drops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"adc_drops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"adc_drops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"drop_timestamp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"result","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"adc_drop_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"add_retailers","indexes":[{"name":"add_retailers_created_by_id_fk","columns":["created_by_id"]},{"name":"add_retailers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"add_retailers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"add_retailers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"restricted_loyalty_program","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"associates","indexes":[{"name":"associates_created_by_id_fk","columns":["created_by_id"]},{"name":"associates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"associates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"associates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"associate_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"banners","indexes":[{"name":"banners_created_by_id_fk","columns":["created_by_id"]},{"name":"banners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"banners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"banners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_name_tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"featured_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"external_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"banner_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns","indexes":[{"name":"campaigns_created_by_id_fk","columns":["created_by_id"]},{"name":"campaigns_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"campaigns_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"campaigns_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"coupon_value","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"begin_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_basket","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_rebate","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"basket_value","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quantity","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_multiple","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"update_level","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"coupon_supply","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_rules_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"list_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"loyalty_points","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_featured","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"coupon_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_redeemed","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_loaded","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_available","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"featured_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"deals_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"passive_redemption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"on_display_in_pwa","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"redeem_button_on_reward","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"disable_load_to_wallet_by_user","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories","indexes":[{"type":"unique","name":"categories_tag_unique","columns":["tag"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"chains","indexes":[{"name":"chains_created_by_id_fk","columns":["created_by_id"]},{"name":"chains_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"chains_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"chains_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"collectibles","indexes":[{"name":"collectibles_created_by_id_fk","columns":["created_by_id"]},{"name":"collectibles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"collectibles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"collectibles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"collectible_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"on_display_in_pwa","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"unlimited_supply","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_minted","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"disable_load_to_wallet_by_user","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_3_d_asset","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"asset_3_d_background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"supply","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vimeo_video_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"asset_3_d_props","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"company_profiles","indexes":[{"type":"unique","name":"company_profiles_id_number_unique","columns":["id_number"]},{"name":"company_profiles_created_by_id_fk","columns":["created_by_id"]},{"name":"company_profiles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"company_profiles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"company_profiles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"company_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lookup_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_ein_tin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_parent","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_parent_ein_tin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_alliance_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_mobile","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address_street","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"state","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"node","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"id_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"configurations","indexes":[{"name":"configurations_created_by_id_fk","columns":["created_by_id"]},{"name":"configurations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"configurations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"configurations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"json","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"congratulation_screens","indexes":[{"name":"congratulation_screens_created_by_id_fk","columns":["created_by_id"]},{"name":"congratulation_screens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"congratulation_screens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"congratulation_screens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"congratulation_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"how_to_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"how_to_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"congratulations_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"corporate_entities","indexes":[{"name":"corporate_entities_created_by_id_fk","columns":["created_by_id"]},{"name":"corporate_entities_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"corporate_entities_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"corporate_entities_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lookup_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"country_codes","indexes":[{"name":"country_codes_created_by_id_fk","columns":["created_by_id"]},{"name":"country_codes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"country_codes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"country_codes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"dial_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"coupons","indexes":[{"name":"coupons_created_by_id_fk","columns":["created_by_id"]},{"name":"coupons_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"coupons_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"coupons_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reward_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"pos_campaign_id","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"on_display_in_pwa","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reward_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"begin_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"passive_redemption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"front_of_reward_artwork","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"back_of_reward_artwork","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"disclaimer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_terms_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"receipt_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reward_supply","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reward_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_products","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"basket_reward","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"basket_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_featured","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_available","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_loaded","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_redeemed","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"featured_order","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"deals_order","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"redeem_button_on_reward","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"disable_load_to_wallet_by_user","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_rebate","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"included_products","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"corporate_entity","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"chains","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"regions","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"stores","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"collectibles_to_load","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"campaigns_to_load","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"coupon_drops","indexes":[{"name":"coupon_drops_created_by_id_fk","columns":["created_by_id"]},{"name":"coupon_drops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"coupon_drops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"coupon_drops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_numbers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drop_timestamp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"coupon_drop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"result","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"create_pwas","indexes":[{"name":"create_pwas_created_by_id_fk","columns":["created_by_id"]},{"name":"create_pwas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"create_pwas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"create_pwas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"matcher","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rules","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"privacy","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"terms","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_associates_portal","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"asset_types_supported","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"xsolla_paystation_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"domains","indexes":[{"name":"domains_created_by_id_fk","columns":["created_by_id"]},{"name":"domains_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"domains_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"domains_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"matcher","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rules","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"privacy","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"terms","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enable_associates_portal","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"asset_types_supported","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"x_solla_paystation_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"generate_reports","indexes":[{"name":"generate_reports_created_by_id_fk","columns":["created_by_id"]},{"name":"generate_reports_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"generate_reports_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"generate_reports_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"report_type_summary","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"receipt_mints","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rewards_tranfers","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"receipt_transfers","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rewards_mints","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"domain_specific_reports","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"generate_report","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"gft_pays","indexes":[{"name":"gft_pays_created_by_id_fk","columns":["created_by_id"]},{"name":"gft_pays_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"gft_pays_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"gft_pays_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"mobile_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"importconfigs","indexes":[{"name":"importconfigs_created_by_id_fk","columns":["created_by_id"]},{"name":"importconfigs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"importconfigs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"importconfigs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"source","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"imported_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ongoing","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"options","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field_mapping","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"language_codes","indexes":[{"name":"language_codes_created_by_id_fk","columns":["created_by_id"]},{"name":"language_codes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"language_codes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"language_codes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"language_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"messagings","indexes":[{"name":"messagings_created_by_id_fk","columns":["created_by_id"]},{"name":"messagings_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"messagings_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"messagings_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"social_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_message","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email_message","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blog_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"nft_collections","indexes":[{"name":"nft_collections_created_by_id_fk","columns":["created_by_id"]},{"name":"nft_collections_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"nft_collections_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"nft_collections_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"supply","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_minted","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vimeo_video_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nft_collection_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"partners","indexes":[{"name":"partners_created_by_id_fk","columns":["created_by_id"]},{"name":"partners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"partners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"partners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"restricted_loyalty_program","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"products","indexes":[{"name":"products_created_by_id_fk","columns":["created_by_id"]},{"name":"products_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"products_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"products_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"upc","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"regions","indexes":[{"name":"regions_created_by_id_fk","columns":["created_by_id"]},{"name":"regions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"regions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"regions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"division","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"retail_profiles","indexes":[{"name":"retail_profiles_created_by_id_fk","columns":["created_by_id"]},{"name":"retail_profiles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"retail_profiles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"retail_profiles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"division","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_drops","indexes":[{"name":"reward_drops_created_by_id_fk","columns":["created_by_id"]},{"name":"reward_drops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reward_drops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reward_drops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_numbers","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"result","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drop_timestamp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reward_drop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"campaign","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_games","indexes":[{"name":"reward_games_created_by_id_fk","columns":["created_by_id"]},{"name":"reward_games_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reward_games_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reward_games_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"game_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"banner","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"game_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_daily_plays","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"begin_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"game_server_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"official_rules_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"feature_order","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_products","indexes":[{"name":"reward_products_created_by_id_fk","columns":["created_by_id"]},{"name":"reward_products_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reward_products_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reward_products_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"product_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"upc_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_subscriptions","indexes":[{"name":"reward_subscriptions_created_by_id_fk","columns":["created_by_id"]},{"name":"reward_subscriptions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reward_subscriptions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reward_subscriptions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subscription_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"display_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"more_link_info","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"billing_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"x_solla_api_latest_status","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"x_solla_product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"live","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"currency","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drop_frequency","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"terms_conditions","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"feature_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"shoppers","indexes":[{"name":"shoppers_created_by_id_fk","columns":["created_by_id"]},{"name":"shoppers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"shoppers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"shoppers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_business_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_campaign_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"shopper_coupons","indexes":[{"name":"shopper_coupons_created_by_id_fk","columns":["created_by_id"]},{"name":"shopper_coupons_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"shopper_coupons_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"shopper_coupons_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"vatom_user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_business_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_campaign_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_design_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_distribution_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_token_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_source","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_medium","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vatom_state","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"stores","indexes":[{"name":"stores_created_by_id_fk","columns":["created_by_id"]},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"latitude","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"longitude","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"banner","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"county","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"state","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subscription_drops","indexes":[{"name":"subscription_drops_created_by_id_fk","columns":["created_by_id"]},{"name":"subscription_drops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subscription_drops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subscription_drops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subscription_drop_id","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drop_timestamp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rewards","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"result","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"terms_of_services","indexes":[{"name":"terms_of_services_created_by_id_fk","columns":["created_by_id"]},{"name":"terms_of_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"terms_of_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"terms_of_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"terms_of_service","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tokenized_receipts","indexes":[{"name":"tokenized_receipts_created_by_id_fk","columns":["created_by_id"]},{"name":"tokenized_receipts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tokenized_receipts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tokenized_receipts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gft_explorer_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vimeo_video_id","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"receipt_id","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_art_artworks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_art_image_collections","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_gft_gft_pays","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"balance_greater_than_1000","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date_of_birth","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"middle_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"corporate_email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"corporate_address_1","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"corporate_address_2","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"province","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"postal_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"country","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"display_currency","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"signature","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_prize_collectible_prizes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_prize_coupon_prizes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_prize_prize_details","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prize_supply","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"win_after","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"winning_prize","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prizes_available","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_wins_per_day","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"win_interval","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"wait_after_win","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prize_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_store_management_banners","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_store_management_headers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"page_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_store_management_tiles","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"external_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_store_management_videos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_store_stores","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"banner","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"state","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"latitude","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"longitude","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_translation_game_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_translation_terms_conditions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"translation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"featured_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_translation_terms_lists","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"translation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_translation_translations","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"translation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"adc_drops_partner_links","indexes":[{"name":"adc_drops_partner_links_fk","columns":["adc_drop_id"]},{"name":"adc_drops_partner_links_inv_fk","columns":["partner_id"]},{"name":"adc_drops_partner_links_unique","columns":["adc_drop_id","partner_id"],"type":"unique"}],"foreignKeys":[{"name":"adc_drops_partner_links_fk","columns":["adc_drop_id"],"referencedColumns":["id"],"referencedTable":"adc_drops","onDelete":"CASCADE"},{"name":"adc_drops_partner_links_inv_fk","columns":["partner_id"],"referencedColumns":["id"],"referencedTable":"partners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"adc_drop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"partner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"adc_drops_collectibles_links","indexes":[{"name":"adc_drops_collectibles_links_fk","columns":["adc_drop_id"]},{"name":"adc_drops_collectibles_links_inv_fk","columns":["collectible_id"]},{"name":"adc_drops_collectibles_links_unique","columns":["adc_drop_id","collectible_id"],"type":"unique"},{"name":"adc_drops_collectibles_links_order_fk","columns":["collectible_order"]}],"foreignKeys":[{"name":"adc_drops_collectibles_links_fk","columns":["adc_drop_id"],"referencedColumns":["id"],"referencedTable":"adc_drops","onDelete":"CASCADE"},{"name":"adc_drops_collectibles_links_inv_fk","columns":["collectible_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"adc_drop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"collectible_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"collectible_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"banners_components","indexes":[{"name":"banners_field_index","columns":["field"],"type":null},{"name":"banners_component_type_index","columns":["component_type"],"type":null},{"name":"banners_entity_fk","columns":["entity_id"]},{"name":"banners_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"banners_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"banners","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"banners_chains_links","indexes":[{"name":"banners_chains_links_fk","columns":["banner_id"]},{"name":"banners_chains_links_inv_fk","columns":["chain_id"]},{"name":"banners_chains_links_unique","columns":["banner_id","chain_id"],"type":"unique"},{"name":"banners_chains_links_order_fk","columns":["chain_order"]},{"name":"banners_chains_links_order_inv_fk","columns":["banner_order"]}],"foreignKeys":[{"name":"banners_chains_links_fk","columns":["banner_id"],"referencedColumns":["id"],"referencedTable":"banners","onDelete":"CASCADE"},{"name":"banners_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"banner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"banner_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_components","indexes":[{"name":"campaigns_field_index","columns":["field"],"type":null},{"name":"campaigns_component_type_index","columns":["component_type"],"type":null},{"name":"campaigns_entity_fk","columns":["entity_id"]},{"name":"campaigns_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"campaigns_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_list_items_links","indexes":[{"name":"campaigns_list_items_links_fk","columns":["campaign_id"]},{"name":"campaigns_list_items_links_inv_fk","columns":["product_id"]},{"name":"campaigns_list_items_links_unique","columns":["campaign_id","product_id"],"type":"unique"},{"name":"campaigns_list_items_links_order_fk","columns":["product_order"]},{"name":"campaigns_list_items_links_order_inv_fk","columns":["campaign_order"]}],"foreignKeys":[{"name":"campaigns_list_items_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_list_items_links_inv_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"campaign_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_chains_links","indexes":[{"name":"campaigns_chains_links_fk","columns":["campaign_id"]},{"name":"campaigns_chains_links_inv_fk","columns":["chain_id"]},{"name":"campaigns_chains_links_unique","columns":["campaign_id","chain_id"],"type":"unique"},{"name":"campaigns_chains_links_order_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"campaigns_chains_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_corporate_entities_links","indexes":[{"name":"campaigns_corporate_entities_links_fk","columns":["campaign_id"]},{"name":"campaigns_corporate_entities_links_inv_fk","columns":["corporate_entity_id"]},{"name":"campaigns_corporate_entities_links_unique","columns":["campaign_id","corporate_entity_id"],"type":"unique"},{"name":"campaigns_corporate_entities_links_order_fk","columns":["corporate_entity_order"]}],"foreignKeys":[{"name":"campaigns_corporate_entities_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_corporate_entities_links_inv_fk","columns":["corporate_entity_id"],"referencedColumns":["id"],"referencedTable":"corporate_entities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"corporate_entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"corporate_entity_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_regions_links","indexes":[{"name":"campaigns_regions_links_fk","columns":["campaign_id"]},{"name":"campaigns_regions_links_inv_fk","columns":["region_id"]},{"name":"campaigns_regions_links_unique","columns":["campaign_id","region_id"],"type":"unique"},{"name":"campaigns_regions_links_order_fk","columns":["region_order"]}],"foreignKeys":[{"name":"campaigns_regions_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_regions_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_stores_links","indexes":[{"name":"campaigns_stores_links_fk","columns":["campaign_id"]},{"name":"campaigns_stores_links_inv_fk","columns":["store_id"]},{"name":"campaigns_stores_links_unique","columns":["campaign_id","store_id"],"type":"unique"},{"name":"campaigns_stores_links_order_fk","columns":["store_order"]}],"foreignKeys":[{"name":"campaigns_stores_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_stores_links_inv_fk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_collectibles_to_load_links","indexes":[{"name":"campaigns_collectibles_to_load_links_fk","columns":["campaign_id"]},{"name":"campaigns_collectibles_to_load_links_inv_fk","columns":["collectible_id"]},{"name":"campaigns_collectibles_to_load_links_unique","columns":["campaign_id","collectible_id"],"type":"unique"},{"name":"campaigns_collectibles_to_load_links_order_fk","columns":["collectible_order"]}],"foreignKeys":[{"name":"campaigns_collectibles_to_load_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_collectibles_to_load_links_inv_fk","columns":["collectible_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"collectible_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"collectible_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"campaigns_campaigns_to_load_links","indexes":[{"name":"campaigns_campaigns_to_load_links_fk","columns":["campaign_id"]},{"name":"campaigns_campaigns_to_load_links_inv_fk","columns":["inv_campaign_id"]},{"name":"campaigns_campaigns_to_load_links_unique","columns":["campaign_id","inv_campaign_id"],"type":"unique"},{"name":"campaigns_campaigns_to_load_links_order_fk","columns":["campaign_order"]}],"foreignKeys":[{"name":"campaigns_campaigns_to_load_links_fk","columns":["campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"},{"name":"campaigns_campaigns_to_load_links_inv_fk","columns":["inv_campaign_id"],"referencedColumns":["id"],"referencedTable":"campaigns","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_campaign_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"campaign_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories_components","indexes":[{"name":"categories_field_index","columns":["field"],"type":null},{"name":"categories_component_type_index","columns":["component_type"],"type":null},{"name":"categories_entity_fk","columns":["entity_id"]},{"name":"categories_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"categories_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories_items_links","indexes":[{"name":"categories_items_links_fk","columns":["categorie_id"]},{"name":"categories_items_links_inv_fk","columns":["product_id"]},{"name":"categories_items_links_unique","columns":["categorie_id","product_id"],"type":"unique"},{"name":"categories_items_links_order_fk","columns":["product_order"]},{"name":"categories_items_links_order_inv_fk","columns":["categorie_order"]}],"foreignKeys":[{"name":"categories_items_links_fk","columns":["categorie_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"},{"name":"categories_items_links_inv_fk","columns":["product_id"],"referencedColumns":["id"],"referencedTable":"products","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"categorie_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"product_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"categorie_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"chains_corporate_entity_links","indexes":[{"name":"chains_corporate_entity_links_fk","columns":["chain_id"]},{"name":"chains_corporate_entity_links_inv_fk","columns":["corporate_entity_id"]},{"name":"chains_corporate_entity_links_unique","columns":["chain_id","corporate_entity_id"],"type":"unique"},{"name":"chains_corporate_entity_links_order_inv_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"chains_corporate_entity_links_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"},{"name":"chains_corporate_entity_links_inv_fk","columns":["corporate_entity_id"],"referencedColumns":["id"],"referencedTable":"corporate_entities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"corporate_entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"collectibles_components","indexes":[{"name":"collectibles_field_index","columns":["field"],"type":null},{"name":"collectibles_component_type_index","columns":["component_type"],"type":null},{"name":"collectibles_entity_fk","columns":["entity_id"]},{"name":"collectibles_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"collectibles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"collectibles_chains_links","indexes":[{"name":"collectibles_chains_links_fk","columns":["collectible_id"]},{"name":"collectibles_chains_links_inv_fk","columns":["chain_id"]},{"name":"collectibles_chains_links_unique","columns":["collectible_id","chain_id"],"type":"unique"},{"name":"collectibles_chains_links_order_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"collectibles_chains_links_fk","columns":["collectible_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"},{"name":"collectibles_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"collectible_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"collectibles_allowed_country_codes_links","indexes":[{"name":"collectibles_allowed_country_codes_links_fk","columns":["collectible_id"]},{"name":"collectibles_allowed_country_codes_links_inv_fk","columns":["country_code_id"]},{"name":"collectibles_allowed_country_codes_links_unique","columns":["collectible_id","country_code_id"],"type":"unique"},{"name":"collectibles_allowed_country_codes_links_order_fk","columns":["country_code_order"]}],"foreignKeys":[{"name":"collectibles_allowed_country_codes_links_fk","columns":["collectible_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"},{"name":"collectibles_allowed_country_codes_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"collectible_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"company_profiles_gft_pays_links","indexes":[{"name":"company_profiles_gft_pays_links_fk","columns":["company_profile_id"]},{"name":"company_profiles_gft_pays_links_inv_fk","columns":["gft_pay_id"]},{"name":"company_profiles_gft_pays_links_unique","columns":["company_profile_id","gft_pay_id"],"type":"unique"},{"name":"company_profiles_gft_pays_links_order_fk","columns":["gft_pay_order"]}],"foreignKeys":[{"name":"company_profiles_gft_pays_links_fk","columns":["company_profile_id"],"referencedColumns":["id"],"referencedTable":"company_profiles","onDelete":"CASCADE"},{"name":"company_profiles_gft_pays_links_inv_fk","columns":["gft_pay_id"],"referencedColumns":["id"],"referencedTable":"gft_pays","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"company_profile_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"gft_pay_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"gft_pay_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"company_profiles_accounts_links","indexes":[{"name":"company_profiles_accounts_links_fk","columns":["company_profile_id"]},{"name":"company_profiles_accounts_links_inv_fk","columns":["account_id"]},{"name":"company_profiles_accounts_links_unique","columns":["company_profile_id","account_id"],"type":"unique"},{"name":"company_profiles_accounts_links_order_fk","columns":["account_order"]}],"foreignKeys":[{"name":"company_profiles_accounts_links_fk","columns":["company_profile_id"],"referencedColumns":["id"],"referencedTable":"company_profiles","onDelete":"CASCADE"},{"name":"company_profiles_accounts_links_inv_fk","columns":["account_id"],"referencedColumns":["id"],"referencedTable":"accounts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"company_profile_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"account_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"account_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"company_profiles_country_links","indexes":[{"name":"company_profiles_country_links_fk","columns":["company_profile_id"]},{"name":"company_profiles_country_links_inv_fk","columns":["country_code_id"]},{"name":"company_profiles_country_links_unique","columns":["company_profile_id","country_code_id"],"type":"unique"}],"foreignKeys":[{"name":"company_profiles_country_links_fk","columns":["company_profile_id"],"referencedColumns":["id"],"referencedTable":"company_profiles","onDelete":"CASCADE"},{"name":"company_profiles_country_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"company_profile_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"coupons_components","indexes":[{"name":"coupons_field_index","columns":["field"],"type":null},{"name":"coupons_component_type_index","columns":["component_type"],"type":null},{"name":"coupons_entity_fk","columns":["entity_id"]},{"name":"coupons_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"coupons_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"coupons","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"create_pwas_components","indexes":[{"name":"create_pwas_field_index","columns":["field"],"type":null},{"name":"create_pwas_component_type_index","columns":["component_type"],"type":null},{"name":"create_pwas_entity_fk","columns":["entity_id"]},{"name":"create_pwas_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"create_pwas_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"create_pwas","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"domains_components","indexes":[{"name":"domains_field_index","columns":["field"],"type":null},{"name":"domains_component_type_index","columns":["component_type"],"type":null},{"name":"domains_entity_fk","columns":["entity_id"]},{"name":"domains_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"domains_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"domains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"domains_chains_links","indexes":[{"name":"domains_chains_links_fk","columns":["domain_id"]},{"name":"domains_chains_links_inv_fk","columns":["chain_id"]},{"name":"domains_chains_links_unique","columns":["domain_id","chain_id"],"type":"unique"},{"name":"domains_chains_links_order_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"domains_chains_links_fk","columns":["domain_id"],"referencedColumns":["id"],"referencedTable":"domains","onDelete":"CASCADE"},{"name":"domains_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"domain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"gft_pays_components","indexes":[{"name":"gft_pays_field_index","columns":["field"],"type":null},{"name":"gft_pays_component_type_index","columns":["component_type"],"type":null},{"name":"gft_pays_entity_fk","columns":["entity_id"]},{"name":"gft_pays_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"gft_pays_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"gft_pays","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"nft_collections_components","indexes":[{"name":"nft_collections_field_index","columns":["field"],"type":null},{"name":"nft_collections_component_type_index","columns":["component_type"],"type":null},{"name":"nft_collections_entity_fk","columns":["entity_id"]},{"name":"nft_collections_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"nft_collections_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"nft_collections","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"nft_collections_allowed_country_codes_links","indexes":[{"name":"nft_collections_allowed_country_codes_links_fk","columns":["nft_collection_id"]},{"name":"nft_collections_allowed_country_codes_links_inv_fk","columns":["country_code_id"]},{"name":"nft_collections_allowed_country_codes_links_unique","columns":["nft_collection_id","country_code_id"],"type":"unique"},{"name":"nft_collections_allowed_country_codes_links_order_fk","columns":["country_code_order"]}],"foreignKeys":[{"name":"nft_collections_allowed_country_codes_links_fk","columns":["nft_collection_id"],"referencedColumns":["id"],"referencedTable":"nft_collections","onDelete":"CASCADE"},{"name":"nft_collections_allowed_country_codes_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nft_collection_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"nft_collections_chains_links","indexes":[{"name":"nft_collections_chains_links_fk","columns":["nft_collection_id"]},{"name":"nft_collections_chains_links_inv_fk","columns":["chain_id"]},{"name":"nft_collections_chains_links_unique","columns":["nft_collection_id","chain_id"],"type":"unique"},{"name":"nft_collections_chains_links_order_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"nft_collections_chains_links_fk","columns":["nft_collection_id"],"referencedColumns":["id"],"referencedTable":"nft_collections","onDelete":"CASCADE"},{"name":"nft_collections_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nft_collection_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"],"type":null},{"name":"pages_component_type_index","columns":["component_type"],"type":null},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_chains_links","indexes":[{"name":"pages_chains_links_fk","columns":["page_id"]},{"name":"pages_chains_links_inv_fk","columns":["chain_id"]},{"name":"pages_chains_links_unique","columns":["page_id","chain_id"],"type":"unique"},{"name":"pages_chains_links_order_fk","columns":["chain_order"]}],"foreignKeys":[{"name":"pages_chains_links_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"},{"name":"pages_chains_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"partners_congratulation_screen_links","indexes":[{"name":"partners_congratulation_screen_links_fk","columns":["partner_id"]},{"name":"partners_congratulation_screen_links_inv_fk","columns":["congratulation_screen_id"]},{"name":"partners_congratulation_screen_links_unique","columns":["partner_id","congratulation_screen_id"],"type":"unique"},{"name":"partners_congratulation_screen_links_order_inv_fk","columns":["partner_order"]}],"foreignKeys":[{"name":"partners_congratulation_screen_links_fk","columns":["partner_id"],"referencedColumns":["id"],"referencedTable":"partners","onDelete":"CASCADE"},{"name":"partners_congratulation_screen_links_inv_fk","columns":["congratulation_screen_id"],"referencedColumns":["id"],"referencedTable":"congratulation_screens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"partner_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"congratulation_screen_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"partner_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"regions_chain_links","indexes":[{"name":"regions_chain_links_fk","columns":["region_id"]},{"name":"regions_chain_links_inv_fk","columns":["chain_id"]},{"name":"regions_chain_links_unique","columns":["region_id","chain_id"],"type":"unique"},{"name":"regions_chain_links_order_inv_fk","columns":["region_order"]}],"foreignKeys":[{"name":"regions_chain_links_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"},{"name":"regions_chain_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"retail_profiles_components","indexes":[{"name":"retail_profiles_field_index","columns":["field"],"type":null},{"name":"retail_profiles_component_type_index","columns":["component_type"],"type":null},{"name":"retail_profiles_entity_fk","columns":["entity_id"]},{"name":"retail_profiles_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"retail_profiles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"retail_profiles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"retail_profiles_regions_links","indexes":[{"name":"retail_profiles_regions_links_fk","columns":["retail_profile_id"]},{"name":"retail_profiles_regions_links_inv_fk","columns":["region_id"]},{"name":"retail_profiles_regions_links_unique","columns":["retail_profile_id","region_id"],"type":"unique"},{"name":"retail_profiles_regions_links_order_fk","columns":["region_order"]}],"foreignKeys":[{"name":"retail_profiles_regions_links_fk","columns":["retail_profile_id"],"referencedColumns":["id"],"referencedTable":"retail_profiles","onDelete":"CASCADE"},{"name":"retail_profiles_regions_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"retail_profile_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_games_components","indexes":[{"name":"reward_games_field_index","columns":["field"],"type":null},{"name":"reward_games_component_type_index","columns":["component_type"],"type":null},{"name":"reward_games_entity_fk","columns":["entity_id"]},{"name":"reward_games_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"reward_games_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"reward_games","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_games_chain_links","indexes":[{"name":"reward_games_chain_links_fk","columns":["reward_game_id"]},{"name":"reward_games_chain_links_inv_fk","columns":["chain_id"]},{"name":"reward_games_chain_links_unique","columns":["reward_game_id","chain_id"],"type":"unique"},{"name":"reward_games_chain_links_order_inv_fk","columns":["reward_game_order"]}],"foreignKeys":[{"name":"reward_games_chain_links_fk","columns":["reward_game_id"],"referencedColumns":["id"],"referencedTable":"reward_games","onDelete":"CASCADE"},{"name":"reward_games_chain_links_inv_fk","columns":["chain_id"],"referencedColumns":["id"],"referencedTable":"chains","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reward_game_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"chain_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"reward_game_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_subscriptions_components","indexes":[{"name":"reward_subscriptions_field_index","columns":["field"],"type":null},{"name":"reward_subscriptions_component_type_index","columns":["component_type"],"type":null},{"name":"reward_subscriptions_entity_fk","columns":["entity_id"]},{"name":"reward_subscriptions_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"reward_subscriptions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"reward_subscriptions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_subscriptions_allowed_country_codes_links","indexes":[{"name":"reward_subscriptions_allowed_country_codes_links_fk","columns":["reward_subscription_id"]},{"name":"reward_subscriptions_allowed_country_codes_links_inv_fk","columns":["country_code_id"]},{"name":"reward_subscriptions_allowed_country_codes_links_unique","columns":["reward_subscription_id","country_code_id"],"type":"unique"},{"name":"reward_subscriptions_allowed_country_codes_links_order_fk","columns":["country_code_order"]}],"foreignKeys":[{"name":"reward_subscriptions_allowed_country_codes_links_fk","columns":["reward_subscription_id"],"referencedColumns":["id"],"referencedTable":"reward_subscriptions","onDelete":"CASCADE"},{"name":"reward_subscriptions_allowed_country_codes_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reward_subscription_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"reward_subscriptions_regions_links","indexes":[{"name":"reward_subscriptions_regions_links_fk","columns":["reward_subscription_id"]},{"name":"reward_subscriptions_regions_links_inv_fk","columns":["region_id"]},{"name":"reward_subscriptions_regions_links_unique","columns":["reward_subscription_id","region_id"],"type":"unique"}],"foreignKeys":[{"name":"reward_subscriptions_regions_links_fk","columns":["reward_subscription_id"],"referencedColumns":["id"],"referencedTable":"reward_subscriptions","onDelete":"CASCADE"},{"name":"reward_subscriptions_regions_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"reward_subscription_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"shopper_coupons_shopper_id_links","indexes":[{"name":"shopper_coupons_shopper_id_links_fk","columns":["shopper_coupon_id"]},{"name":"shopper_coupons_shopper_id_links_inv_fk","columns":["shopper_id"]},{"name":"shopper_coupons_shopper_id_links_unique","columns":["shopper_coupon_id","shopper_id"],"type":"unique"},{"name":"shopper_coupons_shopper_id_links_order_fk","columns":["shopper_order"]}],"foreignKeys":[{"name":"shopper_coupons_shopper_id_links_fk","columns":["shopper_coupon_id"],"referencedColumns":["id"],"referencedTable":"shopper_coupons","onDelete":"CASCADE"},{"name":"shopper_coupons_shopper_id_links_inv_fk","columns":["shopper_id"],"referencedColumns":["id"],"referencedTable":"shoppers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"shopper_coupon_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"shopper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"shopper_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"stores_region_links","indexes":[{"name":"stores_region_links_fk","columns":["store_id"]},{"name":"stores_region_links_inv_fk","columns":["region_id"]},{"name":"stores_region_links_unique","columns":["store_id","region_id"],"type":"unique"},{"name":"stores_region_links_order_inv_fk","columns":["store_order"]}],"foreignKeys":[{"name":"stores_region_links_fk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"},{"name":"stores_region_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subscription_drops_subscription_links","indexes":[{"name":"subscription_drops_subscription_links_fk","columns":["subscription_drop_id"]},{"name":"subscription_drops_subscription_links_inv_fk","columns":["reward_subscription_id"]},{"name":"subscription_drops_subscription_links_unique","columns":["subscription_drop_id","reward_subscription_id"],"type":"unique"},{"name":"subscription_drops_subscription_links_order_inv_fk","columns":["subscription_drop_order"]}],"foreignKeys":[{"name":"subscription_drops_subscription_links_fk","columns":["subscription_drop_id"],"referencedColumns":["id"],"referencedTable":"subscription_drops","onDelete":"CASCADE"},{"name":"subscription_drops_subscription_links_inv_fk","columns":["reward_subscription_id"],"referencedColumns":["id"],"referencedTable":"reward_subscriptions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subscription_drop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"reward_subscription_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subscription_drop_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tokenized_receipts_components","indexes":[{"name":"tokenized_receipts_field_index","columns":["field"],"type":null},{"name":"tokenized_receipts_component_type_index","columns":["component_type"],"type":null},{"name":"tokenized_receipts_entity_fk","columns":["entity_id"]},{"name":"tokenized_receipts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"tokenized_receipts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"tokenized_receipts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tokenized_receipts_allowed_country_codes_links","indexes":[{"name":"tokenized_receipts_allowed_country_codes_links_fk","columns":["tokenized_receipt_id"]},{"name":"tokenized_receipts_allowed_country_codes_links_inv_fk","columns":["country_code_id"]},{"name":"tokenized_receipts_allowed_country_codes_links_unique","columns":["tokenized_receipt_id","country_code_id"],"type":"unique"}],"foreignKeys":[{"name":"tokenized_receipts_allowed_country_codes_links_fk","columns":["tokenized_receipt_id"],"referencedColumns":["id"],"referencedTable":"tokenized_receipts","onDelete":"CASCADE"},{"name":"tokenized_receipts_allowed_country_codes_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tokenized_receipt_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_art_artworks_languages_links","indexes":[{"name":"components_art_artworks_languages_links_fk","columns":["artwork_id"]},{"name":"components_art_artworks_languages_links_inv_fk","columns":["language_code_id"]},{"name":"components_art_artworks_languages_links_unique","columns":["artwork_id","language_code_id"],"type":"unique"},{"name":"components_art_artworks_languages_links_order_fk","columns":["language_code_order"]}],"foreignKeys":[{"name":"components_art_artworks_languages_links_fk","columns":["artwork_id"],"referencedColumns":["id"],"referencedTable":"components_art_artworks","onDelete":"CASCADE"},{"name":"components_art_artworks_languages_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"artwork_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_art_image_collections_languages_links","indexes":[{"name":"components_art_image_collections_languages_links_fk","columns":["image_collection_id"]},{"name":"components_art_image_collections_languages_links_inv_fk","columns":["language_code_id"]},{"name":"components_art_image_collections_languages_links_unique","columns":["image_collection_id","language_code_id"],"type":"unique"},{"name":"components_art_image_collections_languages_links_order_fk","columns":["language_code_order"]}],"foreignKeys":[{"name":"components_art_image_collections_languages_links_fk","columns":["image_collection_id"],"referencedColumns":["id"],"referencedTable":"components_art_image_collections","onDelete":"CASCADE"},{"name":"components_art_image_collections_languages_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"image_collection_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_prize_collectible_prizes_components","indexes":[{"name":"components_prize_collectible_prizes_field_index","columns":["field"],"type":null},{"name":"components_prize_collectible_prizes_component_type_index","columns":["component_type"],"type":null},{"name":"components_prize_collectible_prizes_entity_fk","columns":["entity_id"]},{"name":"components_prize_collectible_prizes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_prize_collectible_prizes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_prize_collectible_prizes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_prize_collectible_prizes_collectible_links","indexes":[{"name":"components_prize_collectible_prizes_collectible_links_fk","columns":["collectible_prize_id"]},{"name":"components_prize_collectible_prizes_collectible_links_inv_fk","columns":["collectible_id"]},{"name":"components_prize_collectible_prizes_collectible_links_unique","columns":["collectible_prize_id","collectible_id"],"type":"unique"}],"foreignKeys":[{"name":"components_prize_collectible_prizes_collectible_links_fk","columns":["collectible_prize_id"],"referencedColumns":["id"],"referencedTable":"components_prize_collectible_prizes","onDelete":"CASCADE"},{"name":"components_prize_collectible_prizes_collectible_links_inv_fk","columns":["collectible_id"],"referencedColumns":["id"],"referencedTable":"collectibles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"collectible_prize_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"collectible_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_prize_coupon_prizes_components","indexes":[{"name":"components_prize_coupon_prizes_field_index","columns":["field"],"type":null},{"name":"components_prize_coupon_prizes_component_type_index","columns":["component_type"],"type":null},{"name":"components_prize_coupon_prizes_entity_fk","columns":["entity_id"]},{"name":"components_prize_coupon_prizes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_prize_coupon_prizes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_prize_coupon_prizes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_store_management_headers_components","indexes":[{"name":"components_store_management_headers_field_index","columns":["field"],"type":null},{"name":"components_store_management_headers_component_type_index","columns":["component_type"],"type":null},{"name":"components_store_management_headers_entity_fk","columns":["entity_id"]},{"name":"components_store_management_headers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_store_management_headers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_store_management_headers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_store_management_tiles_components","indexes":[{"name":"components_store_management_tiles_field_index","columns":["field"],"type":null},{"name":"components_store_management_tiles_component_type_index","columns":["component_type"],"type":null},{"name":"components_store_management_tiles_entity_fk","columns":["entity_id"]},{"name":"components_store_management_tiles_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_store_management_tiles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_store_management_tiles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_store_management_tiles_internal_link_links","indexes":[{"name":"components_store_management_tiles_internal_link_links_fk","columns":["tile_id"]},{"name":"components_store_management_tiles_internal_link_links_inv_fk","columns":["page_id"]},{"name":"components_store_management_tiles_internal_link_links_unique","columns":["tile_id","page_id"],"type":"unique"}],"foreignKeys":[{"name":"components_store_management_tiles_internal_link_links_fk","columns":["tile_id"],"referencedColumns":["id"],"referencedTable":"components_store_management_tiles","onDelete":"CASCADE"},{"name":"components_store_management_tiles_internal_link_links_inv_fk","columns":["page_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tile_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_store_stores_country_links","indexes":[{"name":"components_store_stores_country_links_fk","columns":["store_id"]},{"name":"components_store_stores_country_links_inv_fk","columns":["country_code_id"]},{"name":"components_store_stores_country_links_unique","columns":["store_id","country_code_id"],"type":"unique"}],"foreignKeys":[{"name":"components_store_stores_country_links_fk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"components_store_stores","onDelete":"CASCADE"},{"name":"components_store_stores_country_links_inv_fk","columns":["country_code_id"],"referencedColumns":["id"],"referencedTable":"country_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_translation_game_texts_languages_links","indexes":[{"name":"components_translation_game_texts_languages_links_fk","columns":["game_text_id"]},{"name":"components_translation_game_texts_languages_links_inv_fk","columns":["language_code_id"]},{"name":"components_translation_game_texts_languages_links_unique","columns":["game_text_id","language_code_id"],"type":"unique"},{"name":"components_translation_game_texts_languages_links_order_fk","columns":["language_code_order"]}],"foreignKeys":[{"name":"components_translation_game_texts_languages_links_fk","columns":["game_text_id"],"referencedColumns":["id"],"referencedTable":"components_translation_game_texts","onDelete":"CASCADE"},{"name":"components_translation_game_texts_languages_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"game_text_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_translation_terms_conditions_language_code_links","indexes":[{"name":"components_translation_terms_conditions_language_code_links_fk","columns":["terms_conditions_id"]},{"name":"components_translation_terms_conditions_language_code_links_inv_fk","columns":["language_code_id"]},{"name":"components_translation_terms_conditions_language_code_links_unique","columns":["terms_conditions_id","language_code_id"],"type":"unique"}],"foreignKeys":[{"name":"components_translation_terms_conditions_language_code_links_fk","columns":["terms_conditions_id"],"referencedColumns":["id"],"referencedTable":"components_translation_terms_conditions","onDelete":"CASCADE"},{"name":"components_translation_terms_conditions_language_code_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"terms_conditions_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_translation_terms_lists_languages_links","indexes":[{"name":"components_translation_terms_lists_languages_links_fk","columns":["terms_list_id"]},{"name":"components_translation_terms_lists_languages_links_inv_fk","columns":["language_code_id"]},{"name":"components_translation_terms_lists_languages_links_unique","columns":["terms_list_id","language_code_id"],"type":"unique"},{"name":"components_translation_terms_lists_languages_links_order_fk","columns":["language_code_order"]}],"foreignKeys":[{"name":"components_translation_terms_lists_languages_links_fk","columns":["terms_list_id"],"referencedColumns":["id"],"referencedTable":"components_translation_terms_lists","onDelete":"CASCADE"},{"name":"components_translation_terms_lists_languages_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"terms_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_translation_translations_languages_links","indexes":[{"name":"components_translation_translations_languages_links_fk","columns":["translation_id"]},{"name":"components_translation_translations_languages_links_inv_fk","columns":["language_code_id"]},{"name":"components_translation_translations_languages_links_unique","columns":["translation_id","language_code_id"],"type":"unique"},{"name":"components_translation_translations_languages_links_order_fk","columns":["language_code_order"]}],"foreignKeys":[{"name":"components_translation_translations_languages_links_fk","columns":["translation_id"],"referencedColumns":["id"],"referencedTable":"components_translation_translations","onDelete":"CASCADE"},{"name":"components_translation_translations_languages_links_inv_fk","columns":["language_code_id"],"referencedColumns":["id"],"referencedTable":"language_codes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"translation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"language_code_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-06-01 13:37:12.68	4b5e3352c7c0a0f1d33075c181065d89
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
56	2023.05.11T00.00.21.coupon.js	2023-05-15 18:33:23.583
57	2023.05.15T18.29.16.test1.js	2023-05-15 18:33:23.595
58	2023.05.16T10.23.47.add-new-column.js	2023-05-16 10:30:21.053
59	2023.05.16T10.23.48.add-new-column.js	2023-05-16 10:33:05.627
60	2023.05.17T17.41.40.rename_table22.js	2023-05-17 17:42:43.906
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: subscription_drops; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscription_drops (id, subscription_drop_id, drop_timestamp, status, start_date, end_date, description, rewards, gft_explorer_link, result, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: subscription_drops_subscription_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscription_drops_subscription_links (id, subscription_drop_id, reward_subscription_id, subscription_drop_order) FROM stdin;
\.


--
-- Data for Name: terms_of_services; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.terms_of_services (id, terms_of_service, gft_explorer_link, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: tokenized_receipts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.tokenized_receipts (id, name, short_name, gft_explorer_link, vimeo_video_id, receipt_id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: tokenized_receipts_allowed_country_codes_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.tokenized_receipts_allowed_country_codes_links (id, tokenized_receipt_id, country_code_id) FROM stdin;
\.


--
-- Data for Name: tokenized_receipts_components; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.tokenized_receipts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-04-07 14:57:04.77	2023-04-07 14:57:04.77	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-04-07 14:57:04.77	2023-04-07 14:57:04.77	\N	\N
3	plugin::users-permissions.auth.callback	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
4	plugin::users-permissions.auth.connect	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
6	plugin::users-permissions.auth.register	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
7	plugin::users-permissions.auth.resetPassword	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2023-04-07 14:57:04.777	2023-04-07 14:57:04.777	\N	\N
10	plugin::users-permissions.user.create	2023-04-19 15:46:58.181	2023-04-19 15:46:58.181	\N	\N
21	api::country-code.country-code.find	2023-05-05 11:44:27.548	2023-05-05 11:44:27.548	\N	\N
22	api::country-code.country-code.findOne	2023-05-05 11:44:27.548	2023-05-05 11:44:27.548	\N	\N
23	api::country-code.country-code.create	2023-05-05 11:44:27.548	2023-05-05 11:44:27.548	\N	\N
25	api::custom-api.custom-api.exampleAction	2023-05-05 14:37:54.184	2023-05-05 14:37:54.184	\N	\N
26	api::custom-api.custom-api.exampleAction1	2023-05-05 15:27:36.89	2023-05-05 15:27:36.89	\N	\N
27	api::custom-api.custom-api.getCompanyProfileById	2023-05-05 17:29:21.646	2023-05-05 17:29:21.646	\N	\N
35	api::shopper.shopper.find	2023-05-18 14:09:02.516	2023-05-18 14:09:02.516	\N	\N
36	api::shopper.shopper.findOne	2023-05-18 14:09:02.516	2023-05-18 14:09:02.516	\N	\N
37	api::shopper.shopper.create	2023-05-18 14:09:02.516	2023-05-18 14:09:02.516	\N	\N
38	api::shopper.shopper.update	2023-05-18 14:09:02.516	2023-05-18 14:09:02.516	\N	\N
41	api::coupon.coupon.find	2023-05-19 10:44:19.364	2023-05-19 10:44:19.364	\N	\N
44	api::coupon.coupon.update	2023-05-19 10:44:19.364	2023-05-19 10:44:19.364	\N	\N
42	api::coupon.coupon.create	2023-05-19 10:44:19.364	2023-05-19 10:44:19.364	\N	\N
43	api::coupon.coupon.findOne	2023-05-19 10:44:19.364	2023-05-19 10:44:19.364	\N	\N
45	api::company-profile.company-profile.find	2023-05-19 10:49:41.086	2023-05-19 10:49:41.086	\N	\N
46	api::company-profile.company-profile.findOne	2023-05-19 10:49:41.086	2023-05-19 10:49:41.086	\N	\N
47	api::company-profile.company-profile.create	2023-05-19 10:49:41.086	2023-05-19 10:49:41.086	\N	\N
48	api::company-profile.company-profile.update	2023-05-19 10:49:41.086	2023-05-19 10:49:41.086	\N	\N
49	api::banner.banner.find	2023-05-19 15:08:01.901	2023-05-19 15:08:01.901	\N	\N
50	api::banner.banner.create	2023-05-19 15:08:01.901	2023-05-19 15:08:01.901	\N	\N
58	api::shopper.shopper.checkShopperExist	2023-05-22 11:45:28.886	2023-05-22 11:45:28.886	\N	\N
67	api::shopper-coupon.shopper-coupon.find	2023-05-24 14:06:18.394	2023-05-24 14:06:18.394	\N	\N
68	api::shopper-coupon.shopper-coupon.findOne	2023-05-24 14:06:18.394	2023-05-24 14:06:18.394	\N	\N
69	api::shopper-coupon.shopper-coupon.create	2023-05-24 14:06:18.394	2023-05-24 14:06:18.394	\N	\N
70	api::shopper-coupon.shopper-coupon.update	2023-05-24 14:06:18.394	2023-05-24 14:06:18.394	\N	\N
73	api::shopper-coupon.shopper-coupon.updateShopperCouponByTokenId	2023-05-25 15:11:22.194	2023-05-25 15:11:22.194	\N	\N
74	api::region.region.find	2023-05-30 15:03:26.835	2023-05-30 15:03:26.835	\N	\N
75	api::region.region.findOne	2023-05-30 15:03:26.835	2023-05-30 15:03:26.835	\N	\N
81	api::retail-profile.retail-profile.getRetailProfilesByDivsionStoreNo	2023-05-30 17:48:48.985	2023-05-30 17:48:48.985	\N	\N
82	api::retail-profile.retail-profile.find	2023-05-31 12:07:51.693	2023-05-31 12:07:51.693	\N	\N
83	api::retail-profile.retail-profile.findOne	2023-05-31 12:07:51.693	2023-05-31 12:07:51.693	\N	\N
84	api::chain.chain.find	2023-05-31 13:16:10.693	2023-05-31 13:16:10.693	\N	\N
85	api::chain.chain.findOne	2023-05-31 13:16:10.693	2023-05-31 13:16:10.693	\N	\N
86	api::domain.domain.findOne	2023-05-31 16:02:35.912	2023-05-31 16:02:35.912	\N	\N
87	api::domain.domain.find	2023-05-31 16:02:35.912	2023-05-31 16:02:35.912	\N	\N
88	api::domain.domain.getReceiptMessageByChainId	2023-05-31 17:44:12.328	2023-05-31 17:44:12.328	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	6	2	1
6	8	2	2
7	5	2	2
8	7	2	2
9	9	2	2
10	10	2	3
21	22	2	9
22	21	2	9
23	23	2	9
25	25	2	11
26	26	2	12
27	27	2	13
35	36	1	2
36	35	1	2
37	37	1	2
38	38	1	3
41	44	1	5
43	42	1	5
42	41	1	5
44	43	1	5
45	45	1	6
46	47	1	6
47	46	1	6
48	48	1	7
49	49	2	14
50	50	2	14
58	58	1	9
67	68	1	10
68	67	1	10
69	69	1	10
70	70	1	11
73	73	1	12
74	74	1	13
75	75	1	13
81	81	1	14
82	82	1	15
83	83	1	15
84	84	1	16
85	85	1	17
86	87	1	18
87	86	1	18
88	88	1	19
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	2023-04-07 14:57:04.766	2023-05-30 17:12:10.302	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	2023-04-07 14:57:04.763	2023-05-31 17:44:12.316	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
8	apiUser	apiuser@gmail.com	local	$2a$10$sHYeWN2ecClipDfx.ZHIUuRwr8/9fl33A6fqAUT6eBfl47gA.8wXW	\N	\N	t	f	2023-05-18 12:32:52.398	2023-05-18 13:16:32.885	1	1
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
10	8	1	1
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.accounts_id_seq', 1, false);


--
-- Name: adc_drops_collectibles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.adc_drops_collectibles_links_id_seq', 1, false);


--
-- Name: adc_drops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.adc_drops_id_seq', 1, false);


--
-- Name: adc_drops_partner_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.adc_drops_partner_links_id_seq', 1, false);


--
-- Name: add_retailers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.add_retailers_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 478, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 478, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: associates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.associates_id_seq', 1, false);


--
-- Name: banners_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.banners_chains_links_id_seq', 2, true);


--
-- Name: banners_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.banners_components_id_seq', 1, false);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.banners_id_seq', 64, true);


--
-- Name: campaigns_campaigns_to_load_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_campaigns_to_load_links_id_seq', 1, false);


--
-- Name: campaigns_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_chains_links_id_seq', 1, false);


--
-- Name: campaigns_collectibles_to_load_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_collectibles_to_load_links_id_seq', 1, false);


--
-- Name: campaigns_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_components_id_seq', 1, false);


--
-- Name: campaigns_corporate_entities_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_corporate_entities_links_id_seq', 1, false);


--
-- Name: campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_id_seq', 1, false);


--
-- Name: campaigns_list_items_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_list_items_links_id_seq', 1, false);


--
-- Name: campaigns_regions_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_regions_links_id_seq', 1, false);


--
-- Name: campaigns_stores_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.campaigns_stores_links_id_seq', 1, false);


--
-- Name: categories_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.categories_components_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: categories_items_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.categories_items_links_id_seq', 1, false);


--
-- Name: chains_corporate_entity_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.chains_corporate_entity_links_id_seq', 1, false);


--
-- Name: chains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.chains_id_seq', 2, true);


--
-- Name: collectibles_allowed_country_codes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.collectibles_allowed_country_codes_links_id_seq', 1, false);


--
-- Name: collectibles_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.collectibles_chains_links_id_seq', 1, false);


--
-- Name: collectibles_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.collectibles_components_id_seq', 1, false);


--
-- Name: collectibles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.collectibles_id_seq', 1, false);


--
-- Name: company_profiles_accounts_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.company_profiles_accounts_links_id_seq', 1, false);


--
-- Name: company_profiles_country_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.company_profiles_country_links_id_seq', 5, true);


--
-- Name: company_profiles_gft_pays_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.company_profiles_gft_pays_links_id_seq', 1, false);


--
-- Name: company_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.company_profiles_id_seq', 5, true);


--
-- Name: components_art_artworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_art_artworks_id_seq', 1, false);


--
-- Name: components_art_artworks_languages_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_art_artworks_languages_links_id_seq', 1, false);


--
-- Name: components_art_image_collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_art_image_collections_id_seq', 1, false);


--
-- Name: components_art_image_collections_languages_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_art_image_collections_languages_links_id_seq', 1, false);


--
-- Name: components_gft_gft_pays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_gft_gft_pays_id_seq', 1, false);


--
-- Name: components_prize_collectible_prizes_collectible_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_collectible_prizes_collectible_links_id_seq', 1, false);


--
-- Name: components_prize_collectible_prizes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_collectible_prizes_components_id_seq', 1, false);


--
-- Name: components_prize_collectible_prizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_collectible_prizes_id_seq', 1, false);


--
-- Name: components_prize_coupon_prizes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_coupon_prizes_components_id_seq', 1, false);


--
-- Name: components_prize_coupon_prizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_coupon_prizes_id_seq', 1, false);


--
-- Name: components_prize_prize_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_prize_prize_details_id_seq', 1, false);


--
-- Name: components_store_management_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_banners_id_seq', 1, false);


--
-- Name: components_store_management_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_headers_components_id_seq', 1, false);


--
-- Name: components_store_management_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_headers_id_seq', 1, false);


--
-- Name: components_store_management_tiles_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_tiles_components_id_seq', 1, false);


--
-- Name: components_store_management_tiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_tiles_id_seq', 1, false);


--
-- Name: components_store_management_tiles_internal_link_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_tiles_internal_link_links_id_seq', 1, false);


--
-- Name: components_store_management_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_management_videos_id_seq', 1, false);


--
-- Name: components_store_stores_country_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_stores_country_links_id_seq', 1, false);


--
-- Name: components_store_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_store_stores_id_seq', 2, true);


--
-- Name: components_translation_game_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_game_texts_id_seq', 1, false);


--
-- Name: components_translation_game_texts_languages_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_game_texts_languages_links_id_seq', 1, false);


--
-- Name: components_translation_terms_conditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_terms_conditions_id_seq', 1, false);


--
-- Name: components_translation_terms_conditions_language_code_li_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_terms_conditions_language_code_li_id_seq', 1, false);


--
-- Name: components_translation_terms_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_terms_lists_id_seq', 1, false);


--
-- Name: components_translation_terms_lists_languages_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_terms_lists_languages_links_id_seq', 1, false);


--
-- Name: components_translation_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_translations_id_seq', 2, true);


--
-- Name: components_translation_translations_languages_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.components_translation_translations_languages_links_id_seq', 2, true);


--
-- Name: configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.configurations_id_seq', 1, false);


--
-- Name: congratulation_screens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.congratulation_screens_id_seq', 1, false);


--
-- Name: corporate_entities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.corporate_entities_id_seq', 1, false);


--
-- Name: country_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.country_codes_id_seq', 204, true);


--
-- Name: coupon_drops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.coupon_drops_id_seq', 1, false);


--
-- Name: coupons_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.coupons_components_id_seq', 1, false);


--
-- Name: coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.coupons_id_seq', 11, true);


--
-- Name: create_pwas_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.create_pwas_components_id_seq', 1, false);


--
-- Name: create_pwas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.create_pwas_id_seq', 1, false);


--
-- Name: domains_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.domains_chains_links_id_seq', 1, true);


--
-- Name: domains_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.domains_components_id_seq', 2, true);


--
-- Name: domains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.domains_id_seq', 1, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: generate_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.generate_reports_id_seq', 1, false);


--
-- Name: gft_pays_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.gft_pays_components_id_seq', 1, false);


--
-- Name: gft_pays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.gft_pays_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: importconfigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.importconfigs_id_seq', 1, false);


--
-- Name: language_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.language_codes_id_seq', 2, true);


--
-- Name: messagings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.messagings_id_seq', 1, false);


--
-- Name: nft_collections_allowed_country_codes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.nft_collections_allowed_country_codes_links_id_seq', 1, false);


--
-- Name: nft_collections_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.nft_collections_chains_links_id_seq', 1, false);


--
-- Name: nft_collections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.nft_collections_components_id_seq', 1, false);


--
-- Name: nft_collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.nft_collections_id_seq', 1, false);


--
-- Name: pages_chains_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.pages_chains_links_id_seq', 1, false);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, false);


--
-- Name: partners_congratulation_screen_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.partners_congratulation_screen_links_id_seq', 1, false);


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.partners_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: regions_chain_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.regions_chain_links_id_seq', 2, true);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.regions_id_seq', 2, true);


--
-- Name: retail_profiles_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.retail_profiles_components_id_seq', 3, true);


--
-- Name: retail_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.retail_profiles_id_seq', 2, true);


--
-- Name: retail_profiles_regions_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.retail_profiles_regions_links_id_seq', 2, true);


--
-- Name: reward_drops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_drops_id_seq', 1, false);


--
-- Name: reward_games_chain_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_games_chain_links_id_seq', 1, false);


--
-- Name: reward_games_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_games_components_id_seq', 1, false);


--
-- Name: reward_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_games_id_seq', 1, false);


--
-- Name: reward_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_products_id_seq', 1, false);


--
-- Name: reward_subscriptions_allowed_country_codes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_subscriptions_allowed_country_codes_links_id_seq', 1, false);


--
-- Name: reward_subscriptions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_subscriptions_components_id_seq', 1, false);


--
-- Name: reward_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_subscriptions_id_seq', 1, false);


--
-- Name: reward_subscriptions_regions_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.reward_subscriptions_regions_links_id_seq', 1, false);


--
-- Name: shopper_coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shopper_coupons_id_seq', 13, true);


--
-- Name: shopper_coupons_shopper_id_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shopper_coupons_shopper_id_links_id_seq', 6, true);


--
-- Name: shoppers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shoppers_id_seq', 15, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.stores_id_seq', 1, false);


--
-- Name: stores_region_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.stores_region_links_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 81, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 186, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 60, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: subscription_drops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscription_drops_id_seq', 1, false);


--
-- Name: subscription_drops_subscription_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscription_drops_subscription_links_id_seq', 1, false);


--
-- Name: terms_of_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.terms_of_services_id_seq', 1, false);


--
-- Name: tokenized_receipts_allowed_country_codes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.tokenized_receipts_allowed_country_codes_links_id_seq', 1, false);


--
-- Name: tokenized_receipts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.tokenized_receipts_components_id_seq', 1, false);


--
-- Name: tokenized_receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.tokenized_receipts_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 88, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 88, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.up_users_id_seq', 9, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 11, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: adc_drops_collectibles_links adc_drops_collectibles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_collectibles_links
    ADD CONSTRAINT adc_drops_collectibles_links_pkey PRIMARY KEY (id);


--
-- Name: adc_drops_collectibles_links adc_drops_collectibles_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_collectibles_links
    ADD CONSTRAINT adc_drops_collectibles_links_unique UNIQUE (adc_drop_id, collectible_id);


--
-- Name: adc_drops_partner_links adc_drops_partner_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_partner_links
    ADD CONSTRAINT adc_drops_partner_links_pkey PRIMARY KEY (id);


--
-- Name: adc_drops_partner_links adc_drops_partner_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_partner_links
    ADD CONSTRAINT adc_drops_partner_links_unique UNIQUE (adc_drop_id, partner_id);


--
-- Name: adc_drops adc_drops_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops
    ADD CONSTRAINT adc_drops_pkey PRIMARY KEY (id);


--
-- Name: add_retailers add_retailers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.add_retailers
    ADD CONSTRAINT add_retailers_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: associates associates_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.associates
    ADD CONSTRAINT associates_pkey PRIMARY KEY (id);


--
-- Name: banners_chains_links banners_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_chains_links
    ADD CONSTRAINT banners_chains_links_pkey PRIMARY KEY (id);


--
-- Name: banners_chains_links banners_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_chains_links
    ADD CONSTRAINT banners_chains_links_unique UNIQUE (banner_id, chain_id);


--
-- Name: banners_components banners_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_components
    ADD CONSTRAINT banners_components_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: banners_components banners_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_components
    ADD CONSTRAINT banners_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: campaigns_campaigns_to_load_links campaigns_campaigns_to_load_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_campaigns_to_load_links
    ADD CONSTRAINT campaigns_campaigns_to_load_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_campaigns_to_load_links campaigns_campaigns_to_load_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_campaigns_to_load_links
    ADD CONSTRAINT campaigns_campaigns_to_load_links_unique UNIQUE (campaign_id, inv_campaign_id);


--
-- Name: campaigns_chains_links campaigns_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_chains_links
    ADD CONSTRAINT campaigns_chains_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_chains_links campaigns_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_chains_links
    ADD CONSTRAINT campaigns_chains_links_unique UNIQUE (campaign_id, chain_id);


--
-- Name: campaigns_collectibles_to_load_links campaigns_collectibles_to_load_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_collectibles_to_load_links
    ADD CONSTRAINT campaigns_collectibles_to_load_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_collectibles_to_load_links campaigns_collectibles_to_load_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_collectibles_to_load_links
    ADD CONSTRAINT campaigns_collectibles_to_load_links_unique UNIQUE (campaign_id, collectible_id);


--
-- Name: campaigns_components campaigns_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_components
    ADD CONSTRAINT campaigns_components_pkey PRIMARY KEY (id);


--
-- Name: campaigns_corporate_entities_links campaigns_corporate_entities_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_corporate_entities_links
    ADD CONSTRAINT campaigns_corporate_entities_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_corporate_entities_links campaigns_corporate_entities_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_corporate_entities_links
    ADD CONSTRAINT campaigns_corporate_entities_links_unique UNIQUE (campaign_id, corporate_entity_id);


--
-- Name: campaigns_list_items_links campaigns_list_items_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_list_items_links
    ADD CONSTRAINT campaigns_list_items_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_list_items_links campaigns_list_items_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_list_items_links
    ADD CONSTRAINT campaigns_list_items_links_unique UNIQUE (campaign_id, product_id);


--
-- Name: campaigns campaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (id);


--
-- Name: campaigns_regions_links campaigns_regions_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_regions_links
    ADD CONSTRAINT campaigns_regions_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_regions_links campaigns_regions_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_regions_links
    ADD CONSTRAINT campaigns_regions_links_unique UNIQUE (campaign_id, region_id);


--
-- Name: campaigns_stores_links campaigns_stores_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_stores_links
    ADD CONSTRAINT campaigns_stores_links_pkey PRIMARY KEY (id);


--
-- Name: campaigns_stores_links campaigns_stores_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_stores_links
    ADD CONSTRAINT campaigns_stores_links_unique UNIQUE (campaign_id, store_id);


--
-- Name: campaigns_components campaigns_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_components
    ADD CONSTRAINT campaigns_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: categories_components categories_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_components_pkey PRIMARY KEY (id);


--
-- Name: categories_items_links categories_items_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_items_links
    ADD CONSTRAINT categories_items_links_pkey PRIMARY KEY (id);


--
-- Name: categories_items_links categories_items_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_items_links
    ADD CONSTRAINT categories_items_links_unique UNIQUE (categorie_id, product_id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categories categories_tag_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_tag_unique UNIQUE (tag);


--
-- Name: categories_components categories_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: chains_corporate_entity_links chains_corporate_entity_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains_corporate_entity_links
    ADD CONSTRAINT chains_corporate_entity_links_pkey PRIMARY KEY (id);


--
-- Name: chains_corporate_entity_links chains_corporate_entity_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains_corporate_entity_links
    ADD CONSTRAINT chains_corporate_entity_links_unique UNIQUE (chain_id, corporate_entity_id);


--
-- Name: chains chains_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains
    ADD CONSTRAINT chains_pkey PRIMARY KEY (id);


--
-- Name: collectibles_allowed_country_codes_links collectibles_allowed_country_codes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_allowed_country_codes_links
    ADD CONSTRAINT collectibles_allowed_country_codes_links_pkey PRIMARY KEY (id);


--
-- Name: collectibles_allowed_country_codes_links collectibles_allowed_country_codes_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_allowed_country_codes_links
    ADD CONSTRAINT collectibles_allowed_country_codes_links_unique UNIQUE (collectible_id, country_code_id);


--
-- Name: collectibles_chains_links collectibles_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_chains_links
    ADD CONSTRAINT collectibles_chains_links_pkey PRIMARY KEY (id);


--
-- Name: collectibles_chains_links collectibles_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_chains_links
    ADD CONSTRAINT collectibles_chains_links_unique UNIQUE (collectible_id, chain_id);


--
-- Name: collectibles_components collectibles_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_components
    ADD CONSTRAINT collectibles_components_pkey PRIMARY KEY (id);


--
-- Name: collectibles collectibles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles
    ADD CONSTRAINT collectibles_pkey PRIMARY KEY (id);


--
-- Name: collectibles_components collectibles_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_components
    ADD CONSTRAINT collectibles_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: company_profiles_accounts_links company_profiles_accounts_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_accounts_links
    ADD CONSTRAINT company_profiles_accounts_links_pkey PRIMARY KEY (id);


--
-- Name: company_profiles_accounts_links company_profiles_accounts_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_accounts_links
    ADD CONSTRAINT company_profiles_accounts_links_unique UNIQUE (company_profile_id, account_id);


--
-- Name: company_profiles_country_links company_profiles_country_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_country_links
    ADD CONSTRAINT company_profiles_country_links_pkey PRIMARY KEY (id);


--
-- Name: company_profiles_country_links company_profiles_country_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_country_links
    ADD CONSTRAINT company_profiles_country_links_unique UNIQUE (company_profile_id, country_code_id);


--
-- Name: company_profiles_gft_pays_links company_profiles_gft_pays_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_gft_pays_links
    ADD CONSTRAINT company_profiles_gft_pays_links_pkey PRIMARY KEY (id);


--
-- Name: company_profiles_gft_pays_links company_profiles_gft_pays_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_gft_pays_links
    ADD CONSTRAINT company_profiles_gft_pays_links_unique UNIQUE (company_profile_id, gft_pay_id);


--
-- Name: company_profiles company_profiles_id_number_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles
    ADD CONSTRAINT company_profiles_id_number_unique UNIQUE (id_number);


--
-- Name: company_profiles company_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles
    ADD CONSTRAINT company_profiles_pkey PRIMARY KEY (id);


--
-- Name: components_art_artworks_languages_links components_art_artworks_languages_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks_languages_links
    ADD CONSTRAINT components_art_artworks_languages_links_pkey PRIMARY KEY (id);


--
-- Name: components_art_artworks_languages_links components_art_artworks_languages_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks_languages_links
    ADD CONSTRAINT components_art_artworks_languages_links_unique UNIQUE (artwork_id, language_code_id);


--
-- Name: components_art_artworks components_art_artworks_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks
    ADD CONSTRAINT components_art_artworks_pkey PRIMARY KEY (id);


--
-- Name: components_art_image_collections_languages_links components_art_image_collections_languages_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections_languages_links
    ADD CONSTRAINT components_art_image_collections_languages_links_pkey PRIMARY KEY (id);


--
-- Name: components_art_image_collections_languages_links components_art_image_collections_languages_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections_languages_links
    ADD CONSTRAINT components_art_image_collections_languages_links_unique UNIQUE (image_collection_id, language_code_id);


--
-- Name: components_art_image_collections components_art_image_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections
    ADD CONSTRAINT components_art_image_collections_pkey PRIMARY KEY (id);


--
-- Name: components_gft_gft_pays components_gft_gft_pays_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_gft_gft_pays
    ADD CONSTRAINT components_gft_gft_pays_pkey PRIMARY KEY (id);


--
-- Name: components_prize_collectible_prizes_collectible_links components_prize_collectible_prizes_collectible_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_collectible_links
    ADD CONSTRAINT components_prize_collectible_prizes_collectible_links_pkey PRIMARY KEY (id);


--
-- Name: components_prize_collectible_prizes_collectible_links components_prize_collectible_prizes_collectible_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_collectible_links
    ADD CONSTRAINT components_prize_collectible_prizes_collectible_links_unique UNIQUE (collectible_prize_id, collectible_id);


--
-- Name: components_prize_collectible_prizes_components components_prize_collectible_prizes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_components
    ADD CONSTRAINT components_prize_collectible_prizes_components_pkey PRIMARY KEY (id);


--
-- Name: components_prize_collectible_prizes components_prize_collectible_prizes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes
    ADD CONSTRAINT components_prize_collectible_prizes_pkey PRIMARY KEY (id);


--
-- Name: components_prize_collectible_prizes_components components_prize_collectible_prizes_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_components
    ADD CONSTRAINT components_prize_collectible_prizes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_prize_coupon_prizes_components components_prize_coupon_prizes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes_components
    ADD CONSTRAINT components_prize_coupon_prizes_components_pkey PRIMARY KEY (id);


--
-- Name: components_prize_coupon_prizes components_prize_coupon_prizes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes
    ADD CONSTRAINT components_prize_coupon_prizes_pkey PRIMARY KEY (id);


--
-- Name: components_prize_coupon_prizes_components components_prize_coupon_prizes_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes_components
    ADD CONSTRAINT components_prize_coupon_prizes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_prize_prize_details components_prize_prize_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_prize_details
    ADD CONSTRAINT components_prize_prize_details_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_banners components_store_management_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_banners
    ADD CONSTRAINT components_store_management_banners_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_headers_components components_store_management_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers_components
    ADD CONSTRAINT components_store_management_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_headers components_store_management_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers
    ADD CONSTRAINT components_store_management_headers_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_headers_components components_store_management_headers_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers_components
    ADD CONSTRAINT components_store_management_headers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_store_management_tiles_components components_store_management_tiles_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_components
    ADD CONSTRAINT components_store_management_tiles_components_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_tiles_internal_link_links components_store_management_tiles_internal_link_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_internal_link_links
    ADD CONSTRAINT components_store_management_tiles_internal_link_links_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_tiles_internal_link_links components_store_management_tiles_internal_link_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_internal_link_links
    ADD CONSTRAINT components_store_management_tiles_internal_link_links_unique UNIQUE (tile_id, page_id);


--
-- Name: components_store_management_tiles components_store_management_tiles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles
    ADD CONSTRAINT components_store_management_tiles_pkey PRIMARY KEY (id);


--
-- Name: components_store_management_tiles_components components_store_management_tiles_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_components
    ADD CONSTRAINT components_store_management_tiles_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_store_management_videos components_store_management_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_videos
    ADD CONSTRAINT components_store_management_videos_pkey PRIMARY KEY (id);


--
-- Name: components_store_stores_country_links components_store_stores_country_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores_country_links
    ADD CONSTRAINT components_store_stores_country_links_pkey PRIMARY KEY (id);


--
-- Name: components_store_stores_country_links components_store_stores_country_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores_country_links
    ADD CONSTRAINT components_store_stores_country_links_unique UNIQUE (store_id, country_code_id);


--
-- Name: components_store_stores components_store_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores
    ADD CONSTRAINT components_store_stores_pkey PRIMARY KEY (id);


--
-- Name: components_translation_game_texts_languages_links components_translation_game_texts_languages_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts_languages_links
    ADD CONSTRAINT components_translation_game_texts_languages_links_pkey PRIMARY KEY (id);


--
-- Name: components_translation_game_texts_languages_links components_translation_game_texts_languages_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts_languages_links
    ADD CONSTRAINT components_translation_game_texts_languages_links_unique UNIQUE (game_text_id, language_code_id);


--
-- Name: components_translation_game_texts components_translation_game_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts
    ADD CONSTRAINT components_translation_game_texts_pkey PRIMARY KEY (id);


--
-- Name: components_translation_terms_conditions_language_code_links components_translation_terms_conditions_language_code_link_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions_language_code_links
    ADD CONSTRAINT components_translation_terms_conditions_language_code_link_pkey PRIMARY KEY (id);


--
-- Name: components_translation_terms_conditions_language_code_links components_translation_terms_conditions_language_code_links_uni; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions_language_code_links
    ADD CONSTRAINT components_translation_terms_conditions_language_code_links_uni UNIQUE (terms_conditions_id, language_code_id);


--
-- Name: components_translation_terms_conditions components_translation_terms_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions
    ADD CONSTRAINT components_translation_terms_conditions_pkey PRIMARY KEY (id);


--
-- Name: components_translation_terms_lists_languages_links components_translation_terms_lists_languages_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists_languages_links
    ADD CONSTRAINT components_translation_terms_lists_languages_links_pkey PRIMARY KEY (id);


--
-- Name: components_translation_terms_lists_languages_links components_translation_terms_lists_languages_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists_languages_links
    ADD CONSTRAINT components_translation_terms_lists_languages_links_unique UNIQUE (terms_list_id, language_code_id);


--
-- Name: components_translation_terms_lists components_translation_terms_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists
    ADD CONSTRAINT components_translation_terms_lists_pkey PRIMARY KEY (id);


--
-- Name: components_translation_translations_languages_links components_translation_translations_languages_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations_languages_links
    ADD CONSTRAINT components_translation_translations_languages_links_pkey PRIMARY KEY (id);


--
-- Name: components_translation_translations_languages_links components_translation_translations_languages_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations_languages_links
    ADD CONSTRAINT components_translation_translations_languages_links_unique UNIQUE (translation_id, language_code_id);


--
-- Name: components_translation_translations components_translation_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations
    ADD CONSTRAINT components_translation_translations_pkey PRIMARY KEY (id);


--
-- Name: configurations configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_pkey PRIMARY KEY (id);


--
-- Name: congratulation_screens congratulation_screens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.congratulation_screens
    ADD CONSTRAINT congratulation_screens_pkey PRIMARY KEY (id);


--
-- Name: corporate_entities corporate_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.corporate_entities
    ADD CONSTRAINT corporate_entities_pkey PRIMARY KEY (id);


--
-- Name: country_codes country_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.country_codes
    ADD CONSTRAINT country_codes_pkey PRIMARY KEY (id);


--
-- Name: coupon_drops coupon_drops_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupon_drops
    ADD CONSTRAINT coupon_drops_pkey PRIMARY KEY (id);


--
-- Name: coupons_components coupons_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons_components
    ADD CONSTRAINT coupons_components_pkey PRIMARY KEY (id);


--
-- Name: coupons coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);


--
-- Name: coupons_components coupons_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons_components
    ADD CONSTRAINT coupons_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: create_pwas_components create_pwas_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas_components
    ADD CONSTRAINT create_pwas_components_pkey PRIMARY KEY (id);


--
-- Name: create_pwas create_pwas_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas
    ADD CONSTRAINT create_pwas_pkey PRIMARY KEY (id);


--
-- Name: create_pwas_components create_pwas_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas_components
    ADD CONSTRAINT create_pwas_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: domains_chains_links domains_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_chains_links
    ADD CONSTRAINT domains_chains_links_pkey PRIMARY KEY (id);


--
-- Name: domains_chains_links domains_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_chains_links
    ADD CONSTRAINT domains_chains_links_unique UNIQUE (domain_id, chain_id);


--
-- Name: domains_components domains_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_components
    ADD CONSTRAINT domains_components_pkey PRIMARY KEY (id);


--
-- Name: domains domains_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT domains_pkey PRIMARY KEY (id);


--
-- Name: domains_components domains_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_components
    ADD CONSTRAINT domains_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: generate_reports generate_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.generate_reports
    ADD CONSTRAINT generate_reports_pkey PRIMARY KEY (id);


--
-- Name: gft_pays_components gft_pays_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays_components
    ADD CONSTRAINT gft_pays_components_pkey PRIMARY KEY (id);


--
-- Name: gft_pays gft_pays_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays
    ADD CONSTRAINT gft_pays_pkey PRIMARY KEY (id);


--
-- Name: gft_pays_components gft_pays_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays_components
    ADD CONSTRAINT gft_pays_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: importconfigs importconfigs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.importconfigs
    ADD CONSTRAINT importconfigs_pkey PRIMARY KEY (id);


--
-- Name: language_codes language_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.language_codes
    ADD CONSTRAINT language_codes_pkey PRIMARY KEY (id);


--
-- Name: messagings messagings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messagings
    ADD CONSTRAINT messagings_pkey PRIMARY KEY (id);


--
-- Name: nft_collections_allowed_country_codes_links nft_collections_allowed_country_codes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_allowed_country_codes_links
    ADD CONSTRAINT nft_collections_allowed_country_codes_links_pkey PRIMARY KEY (id);


--
-- Name: nft_collections_allowed_country_codes_links nft_collections_allowed_country_codes_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_allowed_country_codes_links
    ADD CONSTRAINT nft_collections_allowed_country_codes_links_unique UNIQUE (nft_collection_id, country_code_id);


--
-- Name: nft_collections_chains_links nft_collections_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_chains_links
    ADD CONSTRAINT nft_collections_chains_links_pkey PRIMARY KEY (id);


--
-- Name: nft_collections_chains_links nft_collections_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_chains_links
    ADD CONSTRAINT nft_collections_chains_links_unique UNIQUE (nft_collection_id, chain_id);


--
-- Name: nft_collections_components nft_collections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_components
    ADD CONSTRAINT nft_collections_components_pkey PRIMARY KEY (id);


--
-- Name: nft_collections nft_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections
    ADD CONSTRAINT nft_collections_pkey PRIMARY KEY (id);


--
-- Name: nft_collections_components nft_collections_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_components
    ADD CONSTRAINT nft_collections_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: pages_chains_links pages_chains_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_chains_links
    ADD CONSTRAINT pages_chains_links_pkey PRIMARY KEY (id);


--
-- Name: pages_chains_links pages_chains_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_chains_links
    ADD CONSTRAINT pages_chains_links_unique UNIQUE (page_id, chain_id);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_components pages_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: partners_congratulation_screen_links partners_congratulation_screen_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners_congratulation_screen_links
    ADD CONSTRAINT partners_congratulation_screen_links_pkey PRIMARY KEY (id);


--
-- Name: partners_congratulation_screen_links partners_congratulation_screen_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners_congratulation_screen_links
    ADD CONSTRAINT partners_congratulation_screen_links_unique UNIQUE (partner_id, congratulation_screen_id);


--
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: regions_chain_links regions_chain_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions_chain_links
    ADD CONSTRAINT regions_chain_links_pkey PRIMARY KEY (id);


--
-- Name: regions_chain_links regions_chain_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions_chain_links
    ADD CONSTRAINT regions_chain_links_unique UNIQUE (region_id, chain_id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: retail_profiles_components retail_profiles_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_components
    ADD CONSTRAINT retail_profiles_components_pkey PRIMARY KEY (id);


--
-- Name: retail_profiles retail_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles
    ADD CONSTRAINT retail_profiles_pkey PRIMARY KEY (id);


--
-- Name: retail_profiles_regions_links retail_profiles_regions_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_regions_links
    ADD CONSTRAINT retail_profiles_regions_links_pkey PRIMARY KEY (id);


--
-- Name: retail_profiles_regions_links retail_profiles_regions_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_regions_links
    ADD CONSTRAINT retail_profiles_regions_links_unique UNIQUE (retail_profile_id, region_id);


--
-- Name: retail_profiles_components retail_profiles_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_components
    ADD CONSTRAINT retail_profiles_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: reward_drops reward_drops_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_drops
    ADD CONSTRAINT reward_drops_pkey PRIMARY KEY (id);


--
-- Name: reward_games_chain_links reward_games_chain_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_chain_links
    ADD CONSTRAINT reward_games_chain_links_pkey PRIMARY KEY (id);


--
-- Name: reward_games_chain_links reward_games_chain_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_chain_links
    ADD CONSTRAINT reward_games_chain_links_unique UNIQUE (reward_game_id, chain_id);


--
-- Name: reward_games_components reward_games_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_components
    ADD CONSTRAINT reward_games_components_pkey PRIMARY KEY (id);


--
-- Name: reward_games reward_games_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games
    ADD CONSTRAINT reward_games_pkey PRIMARY KEY (id);


--
-- Name: reward_games_components reward_games_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_components
    ADD CONSTRAINT reward_games_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: reward_products reward_products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_products
    ADD CONSTRAINT reward_products_pkey PRIMARY KEY (id);


--
-- Name: reward_subscriptions_allowed_country_codes_links reward_subscriptions_allowed_country_codes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_allowed_country_codes_links
    ADD CONSTRAINT reward_subscriptions_allowed_country_codes_links_pkey PRIMARY KEY (id);


--
-- Name: reward_subscriptions_allowed_country_codes_links reward_subscriptions_allowed_country_codes_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_allowed_country_codes_links
    ADD CONSTRAINT reward_subscriptions_allowed_country_codes_links_unique UNIQUE (reward_subscription_id, country_code_id);


--
-- Name: reward_subscriptions_components reward_subscriptions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_components
    ADD CONSTRAINT reward_subscriptions_components_pkey PRIMARY KEY (id);


--
-- Name: reward_subscriptions reward_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions
    ADD CONSTRAINT reward_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: reward_subscriptions_regions_links reward_subscriptions_regions_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_regions_links
    ADD CONSTRAINT reward_subscriptions_regions_links_pkey PRIMARY KEY (id);


--
-- Name: reward_subscriptions_regions_links reward_subscriptions_regions_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_regions_links
    ADD CONSTRAINT reward_subscriptions_regions_links_unique UNIQUE (reward_subscription_id, region_id);


--
-- Name: reward_subscriptions_components reward_subscriptions_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_components
    ADD CONSTRAINT reward_subscriptions_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: shopper_coupons shopper_coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons
    ADD CONSTRAINT shopper_coupons_pkey PRIMARY KEY (id);


--
-- Name: shopper_coupons_shopper_id_links shopper_coupons_shopper_id_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons_shopper_id_links
    ADD CONSTRAINT shopper_coupons_shopper_id_links_pkey PRIMARY KEY (id);


--
-- Name: shopper_coupons_shopper_id_links shopper_coupons_shopper_id_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons_shopper_id_links
    ADD CONSTRAINT shopper_coupons_shopper_id_links_unique UNIQUE (shopper_coupon_id, shopper_id);


--
-- Name: shoppers shoppers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shoppers
    ADD CONSTRAINT shoppers_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: stores_region_links stores_region_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores_region_links
    ADD CONSTRAINT stores_region_links_pkey PRIMARY KEY (id);


--
-- Name: stores_region_links stores_region_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores_region_links
    ADD CONSTRAINT stores_region_links_unique UNIQUE (store_id, region_id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: subscription_drops subscription_drops_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops
    ADD CONSTRAINT subscription_drops_pkey PRIMARY KEY (id);


--
-- Name: subscription_drops_subscription_links subscription_drops_subscription_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops_subscription_links
    ADD CONSTRAINT subscription_drops_subscription_links_pkey PRIMARY KEY (id);


--
-- Name: subscription_drops_subscription_links subscription_drops_subscription_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops_subscription_links
    ADD CONSTRAINT subscription_drops_subscription_links_unique UNIQUE (subscription_drop_id, reward_subscription_id);


--
-- Name: terms_of_services terms_of_services_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.terms_of_services
    ADD CONSTRAINT terms_of_services_pkey PRIMARY KEY (id);


--
-- Name: tokenized_receipts_allowed_country_codes_links tokenized_receipts_allowed_country_codes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_allowed_country_codes_links
    ADD CONSTRAINT tokenized_receipts_allowed_country_codes_links_pkey PRIMARY KEY (id);


--
-- Name: tokenized_receipts_allowed_country_codes_links tokenized_receipts_allowed_country_codes_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_allowed_country_codes_links
    ADD CONSTRAINT tokenized_receipts_allowed_country_codes_links_unique UNIQUE (tokenized_receipt_id, country_code_id);


--
-- Name: tokenized_receipts_components tokenized_receipts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_components
    ADD CONSTRAINT tokenized_receipts_components_pkey PRIMARY KEY (id);


--
-- Name: tokenized_receipts tokenized_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts
    ADD CONSTRAINT tokenized_receipts_pkey PRIMARY KEY (id);


--
-- Name: tokenized_receipts_components tokenized_receipts_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_components
    ADD CONSTRAINT tokenized_receipts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: accounts_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX accounts_created_by_id_fk ON public.accounts USING btree (created_by_id);


--
-- Name: accounts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX accounts_updated_by_id_fk ON public.accounts USING btree (updated_by_id);


--
-- Name: adc_drops_collectibles_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_collectibles_links_fk ON public.adc_drops_collectibles_links USING btree (adc_drop_id);


--
-- Name: adc_drops_collectibles_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_collectibles_links_inv_fk ON public.adc_drops_collectibles_links USING btree (collectible_id);


--
-- Name: adc_drops_collectibles_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_collectibles_links_order_fk ON public.adc_drops_collectibles_links USING btree (collectible_order);


--
-- Name: adc_drops_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_created_by_id_fk ON public.adc_drops USING btree (created_by_id);


--
-- Name: adc_drops_partner_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_partner_links_fk ON public.adc_drops_partner_links USING btree (adc_drop_id);


--
-- Name: adc_drops_partner_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_partner_links_inv_fk ON public.adc_drops_partner_links USING btree (partner_id);


--
-- Name: adc_drops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX adc_drops_updated_by_id_fk ON public.adc_drops USING btree (updated_by_id);


--
-- Name: add_retailers_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX add_retailers_created_by_id_fk ON public.add_retailers USING btree (created_by_id);


--
-- Name: add_retailers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX add_retailers_updated_by_id_fk ON public.add_retailers USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: associates_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX associates_created_by_id_fk ON public.associates USING btree (created_by_id);


--
-- Name: associates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX associates_updated_by_id_fk ON public.associates USING btree (updated_by_id);


--
-- Name: banners_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_chains_links_fk ON public.banners_chains_links USING btree (banner_id);


--
-- Name: banners_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_chains_links_inv_fk ON public.banners_chains_links USING btree (chain_id);


--
-- Name: banners_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_chains_links_order_fk ON public.banners_chains_links USING btree (chain_order);


--
-- Name: banners_chains_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_chains_links_order_inv_fk ON public.banners_chains_links USING btree (banner_order);


--
-- Name: banners_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_component_type_index ON public.banners_components USING btree (component_type);


--
-- Name: banners_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_created_by_id_fk ON public.banners USING btree (created_by_id);


--
-- Name: banners_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_entity_fk ON public.banners_components USING btree (entity_id);


--
-- Name: banners_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_field_index ON public.banners_components USING btree (field);


--
-- Name: banners_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX banners_updated_by_id_fk ON public.banners USING btree (updated_by_id);


--
-- Name: campaigns_campaigns_to_load_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_campaigns_to_load_links_fk ON public.campaigns_campaigns_to_load_links USING btree (campaign_id);


--
-- Name: campaigns_campaigns_to_load_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_campaigns_to_load_links_inv_fk ON public.campaigns_campaigns_to_load_links USING btree (inv_campaign_id);


--
-- Name: campaigns_campaigns_to_load_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_campaigns_to_load_links_order_fk ON public.campaigns_campaigns_to_load_links USING btree (campaign_order);


--
-- Name: campaigns_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_chains_links_fk ON public.campaigns_chains_links USING btree (campaign_id);


--
-- Name: campaigns_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_chains_links_inv_fk ON public.campaigns_chains_links USING btree (chain_id);


--
-- Name: campaigns_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_chains_links_order_fk ON public.campaigns_chains_links USING btree (chain_order);


--
-- Name: campaigns_collectibles_to_load_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_collectibles_to_load_links_fk ON public.campaigns_collectibles_to_load_links USING btree (campaign_id);


--
-- Name: campaigns_collectibles_to_load_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_collectibles_to_load_links_inv_fk ON public.campaigns_collectibles_to_load_links USING btree (collectible_id);


--
-- Name: campaigns_collectibles_to_load_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_collectibles_to_load_links_order_fk ON public.campaigns_collectibles_to_load_links USING btree (collectible_order);


--
-- Name: campaigns_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_component_type_index ON public.campaigns_components USING btree (component_type);


--
-- Name: campaigns_corporate_entities_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_corporate_entities_links_fk ON public.campaigns_corporate_entities_links USING btree (campaign_id);


--
-- Name: campaigns_corporate_entities_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_corporate_entities_links_inv_fk ON public.campaigns_corporate_entities_links USING btree (corporate_entity_id);


--
-- Name: campaigns_corporate_entities_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_corporate_entities_links_order_fk ON public.campaigns_corporate_entities_links USING btree (corporate_entity_order);


--
-- Name: campaigns_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_created_by_id_fk ON public.campaigns USING btree (created_by_id);


--
-- Name: campaigns_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_entity_fk ON public.campaigns_components USING btree (entity_id);


--
-- Name: campaigns_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_field_index ON public.campaigns_components USING btree (field);


--
-- Name: campaigns_list_items_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_list_items_links_fk ON public.campaigns_list_items_links USING btree (campaign_id);


--
-- Name: campaigns_list_items_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_list_items_links_inv_fk ON public.campaigns_list_items_links USING btree (product_id);


--
-- Name: campaigns_list_items_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_list_items_links_order_fk ON public.campaigns_list_items_links USING btree (product_order);


--
-- Name: campaigns_list_items_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_list_items_links_order_inv_fk ON public.campaigns_list_items_links USING btree (campaign_order);


--
-- Name: campaigns_regions_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_regions_links_fk ON public.campaigns_regions_links USING btree (campaign_id);


--
-- Name: campaigns_regions_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_regions_links_inv_fk ON public.campaigns_regions_links USING btree (region_id);


--
-- Name: campaigns_regions_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_regions_links_order_fk ON public.campaigns_regions_links USING btree (region_order);


--
-- Name: campaigns_stores_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_stores_links_fk ON public.campaigns_stores_links USING btree (campaign_id);


--
-- Name: campaigns_stores_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_stores_links_inv_fk ON public.campaigns_stores_links USING btree (store_id);


--
-- Name: campaigns_stores_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_stores_links_order_fk ON public.campaigns_stores_links USING btree (store_order);


--
-- Name: campaigns_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX campaigns_updated_by_id_fk ON public.campaigns USING btree (updated_by_id);


--
-- Name: categories_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_component_type_index ON public.categories_components USING btree (component_type);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_entity_fk ON public.categories_components USING btree (entity_id);


--
-- Name: categories_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_field_index ON public.categories_components USING btree (field);


--
-- Name: categories_items_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_items_links_fk ON public.categories_items_links USING btree (categorie_id);


--
-- Name: categories_items_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_items_links_inv_fk ON public.categories_items_links USING btree (product_id);


--
-- Name: categories_items_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_items_links_order_fk ON public.categories_items_links USING btree (product_order);


--
-- Name: categories_items_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_items_links_order_inv_fk ON public.categories_items_links USING btree (categorie_order);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: chains_corporate_entity_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX chains_corporate_entity_links_fk ON public.chains_corporate_entity_links USING btree (chain_id);


--
-- Name: chains_corporate_entity_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX chains_corporate_entity_links_inv_fk ON public.chains_corporate_entity_links USING btree (corporate_entity_id);


--
-- Name: chains_corporate_entity_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX chains_corporate_entity_links_order_inv_fk ON public.chains_corporate_entity_links USING btree (chain_order);


--
-- Name: chains_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX chains_created_by_id_fk ON public.chains USING btree (created_by_id);


--
-- Name: chains_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX chains_updated_by_id_fk ON public.chains USING btree (updated_by_id);


--
-- Name: collectibles_allowed_country_codes_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_allowed_country_codes_links_fk ON public.collectibles_allowed_country_codes_links USING btree (collectible_id);


--
-- Name: collectibles_allowed_country_codes_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_allowed_country_codes_links_inv_fk ON public.collectibles_allowed_country_codes_links USING btree (country_code_id);


--
-- Name: collectibles_allowed_country_codes_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_allowed_country_codes_links_order_fk ON public.collectibles_allowed_country_codes_links USING btree (country_code_order);


--
-- Name: collectibles_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_chains_links_fk ON public.collectibles_chains_links USING btree (collectible_id);


--
-- Name: collectibles_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_chains_links_inv_fk ON public.collectibles_chains_links USING btree (chain_id);


--
-- Name: collectibles_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_chains_links_order_fk ON public.collectibles_chains_links USING btree (chain_order);


--
-- Name: collectibles_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_component_type_index ON public.collectibles_components USING btree (component_type);


--
-- Name: collectibles_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_created_by_id_fk ON public.collectibles USING btree (created_by_id);


--
-- Name: collectibles_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_entity_fk ON public.collectibles_components USING btree (entity_id);


--
-- Name: collectibles_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_field_index ON public.collectibles_components USING btree (field);


--
-- Name: collectibles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX collectibles_updated_by_id_fk ON public.collectibles USING btree (updated_by_id);


--
-- Name: company_profiles_accounts_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_accounts_links_fk ON public.company_profiles_accounts_links USING btree (company_profile_id);


--
-- Name: company_profiles_accounts_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_accounts_links_inv_fk ON public.company_profiles_accounts_links USING btree (account_id);


--
-- Name: company_profiles_accounts_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_accounts_links_order_fk ON public.company_profiles_accounts_links USING btree (account_order);


--
-- Name: company_profiles_country_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_country_links_fk ON public.company_profiles_country_links USING btree (company_profile_id);


--
-- Name: company_profiles_country_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_country_links_inv_fk ON public.company_profiles_country_links USING btree (country_code_id);


--
-- Name: company_profiles_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_created_by_id_fk ON public.company_profiles USING btree (created_by_id);


--
-- Name: company_profiles_gft_pays_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_gft_pays_links_fk ON public.company_profiles_gft_pays_links USING btree (company_profile_id);


--
-- Name: company_profiles_gft_pays_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_gft_pays_links_inv_fk ON public.company_profiles_gft_pays_links USING btree (gft_pay_id);


--
-- Name: company_profiles_gft_pays_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_gft_pays_links_order_fk ON public.company_profiles_gft_pays_links USING btree (gft_pay_order);


--
-- Name: company_profiles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX company_profiles_updated_by_id_fk ON public.company_profiles USING btree (updated_by_id);


--
-- Name: components_art_artworks_languages_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_artworks_languages_links_fk ON public.components_art_artworks_languages_links USING btree (artwork_id);


--
-- Name: components_art_artworks_languages_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_artworks_languages_links_inv_fk ON public.components_art_artworks_languages_links USING btree (language_code_id);


--
-- Name: components_art_artworks_languages_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_artworks_languages_links_order_fk ON public.components_art_artworks_languages_links USING btree (language_code_order);


--
-- Name: components_art_image_collections_languages_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_image_collections_languages_links_fk ON public.components_art_image_collections_languages_links USING btree (image_collection_id);


--
-- Name: components_art_image_collections_languages_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_image_collections_languages_links_inv_fk ON public.components_art_image_collections_languages_links USING btree (language_code_id);


--
-- Name: components_art_image_collections_languages_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_art_image_collections_languages_links_order_fk ON public.components_art_image_collections_languages_links USING btree (language_code_order);


--
-- Name: components_prize_collectible_prizes_collectible_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_collectible_prizes_collectible_links_fk ON public.components_prize_collectible_prizes_collectible_links USING btree (collectible_prize_id);


--
-- Name: components_prize_collectible_prizes_collectible_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_collectible_prizes_collectible_links_inv_fk ON public.components_prize_collectible_prizes_collectible_links USING btree (collectible_id);


--
-- Name: components_prize_collectible_prizes_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_collectible_prizes_component_type_index ON public.components_prize_collectible_prizes_components USING btree (component_type);


--
-- Name: components_prize_collectible_prizes_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_collectible_prizes_entity_fk ON public.components_prize_collectible_prizes_components USING btree (entity_id);


--
-- Name: components_prize_collectible_prizes_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_collectible_prizes_field_index ON public.components_prize_collectible_prizes_components USING btree (field);


--
-- Name: components_prize_coupon_prizes_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_coupon_prizes_component_type_index ON public.components_prize_coupon_prizes_components USING btree (component_type);


--
-- Name: components_prize_coupon_prizes_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_coupon_prizes_entity_fk ON public.components_prize_coupon_prizes_components USING btree (entity_id);


--
-- Name: components_prize_coupon_prizes_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_prize_coupon_prizes_field_index ON public.components_prize_coupon_prizes_components USING btree (field);


--
-- Name: components_store_management_headers_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_headers_component_type_index ON public.components_store_management_headers_components USING btree (component_type);


--
-- Name: components_store_management_headers_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_headers_entity_fk ON public.components_store_management_headers_components USING btree (entity_id);


--
-- Name: components_store_management_headers_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_headers_field_index ON public.components_store_management_headers_components USING btree (field);


--
-- Name: components_store_management_tiles_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_tiles_component_type_index ON public.components_store_management_tiles_components USING btree (component_type);


--
-- Name: components_store_management_tiles_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_tiles_entity_fk ON public.components_store_management_tiles_components USING btree (entity_id);


--
-- Name: components_store_management_tiles_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_tiles_field_index ON public.components_store_management_tiles_components USING btree (field);


--
-- Name: components_store_management_tiles_internal_link_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_tiles_internal_link_links_fk ON public.components_store_management_tiles_internal_link_links USING btree (tile_id);


--
-- Name: components_store_management_tiles_internal_link_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_management_tiles_internal_link_links_inv_fk ON public.components_store_management_tiles_internal_link_links USING btree (page_id);


--
-- Name: components_store_stores_country_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_stores_country_links_fk ON public.components_store_stores_country_links USING btree (store_id);


--
-- Name: components_store_stores_country_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_store_stores_country_links_inv_fk ON public.components_store_stores_country_links USING btree (country_code_id);


--
-- Name: components_translation_game_texts_languages_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_game_texts_languages_links_fk ON public.components_translation_game_texts_languages_links USING btree (game_text_id);


--
-- Name: components_translation_game_texts_languages_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_game_texts_languages_links_inv_fk ON public.components_translation_game_texts_languages_links USING btree (language_code_id);


--
-- Name: components_translation_game_texts_languages_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_game_texts_languages_links_order_fk ON public.components_translation_game_texts_languages_links USING btree (language_code_order);


--
-- Name: components_translation_terms_conditions_language_code_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_terms_conditions_language_code_links_fk ON public.components_translation_terms_conditions_language_code_links USING btree (terms_conditions_id);


--
-- Name: components_translation_terms_conditions_language_code_links_inv; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_terms_conditions_language_code_links_inv ON public.components_translation_terms_conditions_language_code_links USING btree (language_code_id);


--
-- Name: components_translation_terms_lists_languages_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_terms_lists_languages_links_fk ON public.components_translation_terms_lists_languages_links USING btree (terms_list_id);


--
-- Name: components_translation_terms_lists_languages_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_terms_lists_languages_links_inv_fk ON public.components_translation_terms_lists_languages_links USING btree (language_code_id);


--
-- Name: components_translation_terms_lists_languages_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_terms_lists_languages_links_order_fk ON public.components_translation_terms_lists_languages_links USING btree (language_code_order);


--
-- Name: components_translation_translations_languages_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_translations_languages_links_fk ON public.components_translation_translations_languages_links USING btree (translation_id);


--
-- Name: components_translation_translations_languages_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_translations_languages_links_inv_fk ON public.components_translation_translations_languages_links USING btree (language_code_id);


--
-- Name: components_translation_translations_languages_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX components_translation_translations_languages_links_order_fk ON public.components_translation_translations_languages_links USING btree (language_code_order);


--
-- Name: configurations_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX configurations_created_by_id_fk ON public.configurations USING btree (created_by_id);


--
-- Name: configurations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX configurations_updated_by_id_fk ON public.configurations USING btree (updated_by_id);


--
-- Name: congratulation_screens_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX congratulation_screens_created_by_id_fk ON public.congratulation_screens USING btree (created_by_id);


--
-- Name: congratulation_screens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX congratulation_screens_updated_by_id_fk ON public.congratulation_screens USING btree (updated_by_id);


--
-- Name: corporate_entities_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX corporate_entities_created_by_id_fk ON public.corporate_entities USING btree (created_by_id);


--
-- Name: corporate_entities_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX corporate_entities_updated_by_id_fk ON public.corporate_entities USING btree (updated_by_id);


--
-- Name: country_codes_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX country_codes_created_by_id_fk ON public.country_codes USING btree (created_by_id);


--
-- Name: country_codes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX country_codes_updated_by_id_fk ON public.country_codes USING btree (updated_by_id);


--
-- Name: coupon_drops_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupon_drops_created_by_id_fk ON public.coupon_drops USING btree (created_by_id);


--
-- Name: coupon_drops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupon_drops_updated_by_id_fk ON public.coupon_drops USING btree (updated_by_id);


--
-- Name: coupons_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupons_component_type_index ON public.coupons_components USING btree (component_type);


--
-- Name: coupons_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupons_created_by_id_fk ON public.coupons USING btree (created_by_id);


--
-- Name: coupons_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupons_entity_fk ON public.coupons_components USING btree (entity_id);


--
-- Name: coupons_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupons_field_index ON public.coupons_components USING btree (field);


--
-- Name: coupons_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX coupons_updated_by_id_fk ON public.coupons USING btree (updated_by_id);


--
-- Name: create_pwas_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX create_pwas_component_type_index ON public.create_pwas_components USING btree (component_type);


--
-- Name: create_pwas_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX create_pwas_created_by_id_fk ON public.create_pwas USING btree (created_by_id);


--
-- Name: create_pwas_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX create_pwas_entity_fk ON public.create_pwas_components USING btree (entity_id);


--
-- Name: create_pwas_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX create_pwas_field_index ON public.create_pwas_components USING btree (field);


--
-- Name: create_pwas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX create_pwas_updated_by_id_fk ON public.create_pwas USING btree (updated_by_id);


--
-- Name: domains_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_chains_links_fk ON public.domains_chains_links USING btree (domain_id);


--
-- Name: domains_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_chains_links_inv_fk ON public.domains_chains_links USING btree (chain_id);


--
-- Name: domains_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_chains_links_order_fk ON public.domains_chains_links USING btree (chain_order);


--
-- Name: domains_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_component_type_index ON public.domains_components USING btree (component_type);


--
-- Name: domains_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_created_by_id_fk ON public.domains USING btree (created_by_id);


--
-- Name: domains_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_entity_fk ON public.domains_components USING btree (entity_id);


--
-- Name: domains_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_field_index ON public.domains_components USING btree (field);


--
-- Name: domains_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX domains_updated_by_id_fk ON public.domains USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: generate_reports_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX generate_reports_created_by_id_fk ON public.generate_reports USING btree (created_by_id);


--
-- Name: generate_reports_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX generate_reports_updated_by_id_fk ON public.generate_reports USING btree (updated_by_id);


--
-- Name: gft_pays_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX gft_pays_component_type_index ON public.gft_pays_components USING btree (component_type);


--
-- Name: gft_pays_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX gft_pays_created_by_id_fk ON public.gft_pays USING btree (created_by_id);


--
-- Name: gft_pays_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX gft_pays_entity_fk ON public.gft_pays_components USING btree (entity_id);


--
-- Name: gft_pays_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX gft_pays_field_index ON public.gft_pays_components USING btree (field);


--
-- Name: gft_pays_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX gft_pays_updated_by_id_fk ON public.gft_pays USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: importconfigs_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX importconfigs_created_by_id_fk ON public.importconfigs USING btree (created_by_id);


--
-- Name: importconfigs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX importconfigs_updated_by_id_fk ON public.importconfigs USING btree (updated_by_id);


--
-- Name: language_codes_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX language_codes_created_by_id_fk ON public.language_codes USING btree (created_by_id);


--
-- Name: language_codes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX language_codes_updated_by_id_fk ON public.language_codes USING btree (updated_by_id);


--
-- Name: messagings_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX messagings_created_by_id_fk ON public.messagings USING btree (created_by_id);


--
-- Name: messagings_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX messagings_updated_by_id_fk ON public.messagings USING btree (updated_by_id);


--
-- Name: nft_collections_allowed_country_codes_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_allowed_country_codes_links_fk ON public.nft_collections_allowed_country_codes_links USING btree (nft_collection_id);


--
-- Name: nft_collections_allowed_country_codes_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_allowed_country_codes_links_inv_fk ON public.nft_collections_allowed_country_codes_links USING btree (country_code_id);


--
-- Name: nft_collections_allowed_country_codes_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_allowed_country_codes_links_order_fk ON public.nft_collections_allowed_country_codes_links USING btree (country_code_order);


--
-- Name: nft_collections_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_chains_links_fk ON public.nft_collections_chains_links USING btree (nft_collection_id);


--
-- Name: nft_collections_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_chains_links_inv_fk ON public.nft_collections_chains_links USING btree (chain_id);


--
-- Name: nft_collections_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_chains_links_order_fk ON public.nft_collections_chains_links USING btree (chain_order);


--
-- Name: nft_collections_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_component_type_index ON public.nft_collections_components USING btree (component_type);


--
-- Name: nft_collections_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_created_by_id_fk ON public.nft_collections USING btree (created_by_id);


--
-- Name: nft_collections_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_entity_fk ON public.nft_collections_components USING btree (entity_id);


--
-- Name: nft_collections_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_field_index ON public.nft_collections_components USING btree (field);


--
-- Name: nft_collections_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX nft_collections_updated_by_id_fk ON public.nft_collections USING btree (updated_by_id);


--
-- Name: pages_chains_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_chains_links_fk ON public.pages_chains_links USING btree (page_id);


--
-- Name: pages_chains_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_chains_links_inv_fk ON public.pages_chains_links USING btree (chain_id);


--
-- Name: pages_chains_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_chains_links_order_fk ON public.pages_chains_links USING btree (chain_order);


--
-- Name: pages_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);


--
-- Name: pages_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);


--
-- Name: pages_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_field_index ON public.pages_components USING btree (field);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);


--
-- Name: partners_congratulation_screen_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX partners_congratulation_screen_links_fk ON public.partners_congratulation_screen_links USING btree (partner_id);


--
-- Name: partners_congratulation_screen_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX partners_congratulation_screen_links_inv_fk ON public.partners_congratulation_screen_links USING btree (congratulation_screen_id);


--
-- Name: partners_congratulation_screen_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX partners_congratulation_screen_links_order_inv_fk ON public.partners_congratulation_screen_links USING btree (partner_order);


--
-- Name: partners_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX partners_created_by_id_fk ON public.partners USING btree (created_by_id);


--
-- Name: partners_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX partners_updated_by_id_fk ON public.partners USING btree (updated_by_id);


--
-- Name: products_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);


--
-- Name: products_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);


--
-- Name: regions_chain_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_chain_links_fk ON public.regions_chain_links USING btree (region_id);


--
-- Name: regions_chain_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_chain_links_inv_fk ON public.regions_chain_links USING btree (chain_id);


--
-- Name: regions_chain_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_chain_links_order_inv_fk ON public.regions_chain_links USING btree (region_order);


--
-- Name: regions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_created_by_id_fk ON public.regions USING btree (created_by_id);


--
-- Name: regions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_updated_by_id_fk ON public.regions USING btree (updated_by_id);


--
-- Name: retail_profiles_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_component_type_index ON public.retail_profiles_components USING btree (component_type);


--
-- Name: retail_profiles_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_created_by_id_fk ON public.retail_profiles USING btree (created_by_id);


--
-- Name: retail_profiles_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_entity_fk ON public.retail_profiles_components USING btree (entity_id);


--
-- Name: retail_profiles_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_field_index ON public.retail_profiles_components USING btree (field);


--
-- Name: retail_profiles_regions_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_regions_links_fk ON public.retail_profiles_regions_links USING btree (retail_profile_id);


--
-- Name: retail_profiles_regions_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_regions_links_inv_fk ON public.retail_profiles_regions_links USING btree (region_id);


--
-- Name: retail_profiles_regions_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_regions_links_order_fk ON public.retail_profiles_regions_links USING btree (region_order);


--
-- Name: retail_profiles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX retail_profiles_updated_by_id_fk ON public.retail_profiles USING btree (updated_by_id);


--
-- Name: reward_drops_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_drops_created_by_id_fk ON public.reward_drops USING btree (created_by_id);


--
-- Name: reward_drops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_drops_updated_by_id_fk ON public.reward_drops USING btree (updated_by_id);


--
-- Name: reward_games_chain_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_chain_links_fk ON public.reward_games_chain_links USING btree (reward_game_id);


--
-- Name: reward_games_chain_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_chain_links_inv_fk ON public.reward_games_chain_links USING btree (chain_id);


--
-- Name: reward_games_chain_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_chain_links_order_inv_fk ON public.reward_games_chain_links USING btree (reward_game_order);


--
-- Name: reward_games_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_component_type_index ON public.reward_games_components USING btree (component_type);


--
-- Name: reward_games_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_created_by_id_fk ON public.reward_games USING btree (created_by_id);


--
-- Name: reward_games_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_entity_fk ON public.reward_games_components USING btree (entity_id);


--
-- Name: reward_games_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_field_index ON public.reward_games_components USING btree (field);


--
-- Name: reward_games_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_games_updated_by_id_fk ON public.reward_games USING btree (updated_by_id);


--
-- Name: reward_products_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_products_created_by_id_fk ON public.reward_products USING btree (created_by_id);


--
-- Name: reward_products_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_products_updated_by_id_fk ON public.reward_products USING btree (updated_by_id);


--
-- Name: reward_subscriptions_allowed_country_codes_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_allowed_country_codes_links_fk ON public.reward_subscriptions_allowed_country_codes_links USING btree (reward_subscription_id);


--
-- Name: reward_subscriptions_allowed_country_codes_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_allowed_country_codes_links_inv_fk ON public.reward_subscriptions_allowed_country_codes_links USING btree (country_code_id);


--
-- Name: reward_subscriptions_allowed_country_codes_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_allowed_country_codes_links_order_fk ON public.reward_subscriptions_allowed_country_codes_links USING btree (country_code_order);


--
-- Name: reward_subscriptions_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_component_type_index ON public.reward_subscriptions_components USING btree (component_type);


--
-- Name: reward_subscriptions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_created_by_id_fk ON public.reward_subscriptions USING btree (created_by_id);


--
-- Name: reward_subscriptions_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_entity_fk ON public.reward_subscriptions_components USING btree (entity_id);


--
-- Name: reward_subscriptions_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_field_index ON public.reward_subscriptions_components USING btree (field);


--
-- Name: reward_subscriptions_regions_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_regions_links_fk ON public.reward_subscriptions_regions_links USING btree (reward_subscription_id);


--
-- Name: reward_subscriptions_regions_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_regions_links_inv_fk ON public.reward_subscriptions_regions_links USING btree (region_id);


--
-- Name: reward_subscriptions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX reward_subscriptions_updated_by_id_fk ON public.reward_subscriptions USING btree (updated_by_id);


--
-- Name: shopper_coupons_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shopper_coupons_created_by_id_fk ON public.shopper_coupons USING btree (created_by_id);


--
-- Name: shopper_coupons_shopper_id_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shopper_coupons_shopper_id_links_fk ON public.shopper_coupons_shopper_id_links USING btree (shopper_coupon_id);


--
-- Name: shopper_coupons_shopper_id_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shopper_coupons_shopper_id_links_inv_fk ON public.shopper_coupons_shopper_id_links USING btree (shopper_id);


--
-- Name: shopper_coupons_shopper_id_links_order_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shopper_coupons_shopper_id_links_order_fk ON public.shopper_coupons_shopper_id_links USING btree (shopper_order);


--
-- Name: shopper_coupons_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shopper_coupons_updated_by_id_fk ON public.shopper_coupons USING btree (updated_by_id);


--
-- Name: shoppers_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shoppers_created_by_id_fk ON public.shoppers USING btree (created_by_id);


--
-- Name: shoppers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shoppers_updated_by_id_fk ON public.shoppers USING btree (updated_by_id);


--
-- Name: stores_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX stores_created_by_id_fk ON public.stores USING btree (created_by_id);


--
-- Name: stores_region_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX stores_region_links_fk ON public.stores_region_links USING btree (store_id);


--
-- Name: stores_region_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX stores_region_links_inv_fk ON public.stores_region_links USING btree (region_id);


--
-- Name: stores_region_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX stores_region_links_order_inv_fk ON public.stores_region_links USING btree (store_order);


--
-- Name: stores_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX stores_updated_by_id_fk ON public.stores USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: subscription_drops_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_drops_created_by_id_fk ON public.subscription_drops USING btree (created_by_id);


--
-- Name: subscription_drops_subscription_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_drops_subscription_links_fk ON public.subscription_drops_subscription_links USING btree (subscription_drop_id);


--
-- Name: subscription_drops_subscription_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_drops_subscription_links_inv_fk ON public.subscription_drops_subscription_links USING btree (reward_subscription_id);


--
-- Name: subscription_drops_subscription_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_drops_subscription_links_order_inv_fk ON public.subscription_drops_subscription_links USING btree (subscription_drop_order);


--
-- Name: subscription_drops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_drops_updated_by_id_fk ON public.subscription_drops USING btree (updated_by_id);


--
-- Name: terms_of_services_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX terms_of_services_created_by_id_fk ON public.terms_of_services USING btree (created_by_id);


--
-- Name: terms_of_services_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX terms_of_services_updated_by_id_fk ON public.terms_of_services USING btree (updated_by_id);


--
-- Name: tokenized_receipts_allowed_country_codes_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_allowed_country_codes_links_fk ON public.tokenized_receipts_allowed_country_codes_links USING btree (tokenized_receipt_id);


--
-- Name: tokenized_receipts_allowed_country_codes_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_allowed_country_codes_links_inv_fk ON public.tokenized_receipts_allowed_country_codes_links USING btree (country_code_id);


--
-- Name: tokenized_receipts_component_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_component_type_index ON public.tokenized_receipts_components USING btree (component_type);


--
-- Name: tokenized_receipts_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_created_by_id_fk ON public.tokenized_receipts USING btree (created_by_id);


--
-- Name: tokenized_receipts_entity_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_entity_fk ON public.tokenized_receipts_components USING btree (entity_id);


--
-- Name: tokenized_receipts_field_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_field_index ON public.tokenized_receipts_components USING btree (field);


--
-- Name: tokenized_receipts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX tokenized_receipts_updated_by_id_fk ON public.tokenized_receipts USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: accounts accounts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: accounts accounts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: adc_drops_collectibles_links adc_drops_collectibles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_collectibles_links
    ADD CONSTRAINT adc_drops_collectibles_links_fk FOREIGN KEY (adc_drop_id) REFERENCES public.adc_drops(id) ON DELETE CASCADE;


--
-- Name: adc_drops_collectibles_links adc_drops_collectibles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_collectibles_links
    ADD CONSTRAINT adc_drops_collectibles_links_inv_fk FOREIGN KEY (collectible_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: adc_drops adc_drops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops
    ADD CONSTRAINT adc_drops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: adc_drops_partner_links adc_drops_partner_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_partner_links
    ADD CONSTRAINT adc_drops_partner_links_fk FOREIGN KEY (adc_drop_id) REFERENCES public.adc_drops(id) ON DELETE CASCADE;


--
-- Name: adc_drops_partner_links adc_drops_partner_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops_partner_links
    ADD CONSTRAINT adc_drops_partner_links_inv_fk FOREIGN KEY (partner_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: adc_drops adc_drops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.adc_drops
    ADD CONSTRAINT adc_drops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: add_retailers add_retailers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.add_retailers
    ADD CONSTRAINT add_retailers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: add_retailers add_retailers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.add_retailers
    ADD CONSTRAINT add_retailers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: associates associates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.associates
    ADD CONSTRAINT associates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: associates associates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.associates
    ADD CONSTRAINT associates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: banners_chains_links banners_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_chains_links
    ADD CONSTRAINT banners_chains_links_fk FOREIGN KEY (banner_id) REFERENCES public.banners(id) ON DELETE CASCADE;


--
-- Name: banners_chains_links banners_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_chains_links
    ADD CONSTRAINT banners_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: banners banners_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: banners_components banners_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners_components
    ADD CONSTRAINT banners_entity_fk FOREIGN KEY (entity_id) REFERENCES public.banners(id) ON DELETE CASCADE;


--
-- Name: banners banners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: campaigns_campaigns_to_load_links campaigns_campaigns_to_load_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_campaigns_to_load_links
    ADD CONSTRAINT campaigns_campaigns_to_load_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_campaigns_to_load_links campaigns_campaigns_to_load_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_campaigns_to_load_links
    ADD CONSTRAINT campaigns_campaigns_to_load_links_inv_fk FOREIGN KEY (inv_campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_chains_links campaigns_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_chains_links
    ADD CONSTRAINT campaigns_chains_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_chains_links campaigns_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_chains_links
    ADD CONSTRAINT campaigns_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: campaigns_collectibles_to_load_links campaigns_collectibles_to_load_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_collectibles_to_load_links
    ADD CONSTRAINT campaigns_collectibles_to_load_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_collectibles_to_load_links campaigns_collectibles_to_load_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_collectibles_to_load_links
    ADD CONSTRAINT campaigns_collectibles_to_load_links_inv_fk FOREIGN KEY (collectible_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: campaigns_corporate_entities_links campaigns_corporate_entities_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_corporate_entities_links
    ADD CONSTRAINT campaigns_corporate_entities_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_corporate_entities_links campaigns_corporate_entities_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_corporate_entities_links
    ADD CONSTRAINT campaigns_corporate_entities_links_inv_fk FOREIGN KEY (corporate_entity_id) REFERENCES public.corporate_entities(id) ON DELETE CASCADE;


--
-- Name: campaigns campaigns_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: campaigns_components campaigns_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_components
    ADD CONSTRAINT campaigns_entity_fk FOREIGN KEY (entity_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_list_items_links campaigns_list_items_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_list_items_links
    ADD CONSTRAINT campaigns_list_items_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_list_items_links campaigns_list_items_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_list_items_links
    ADD CONSTRAINT campaigns_list_items_links_inv_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: campaigns_regions_links campaigns_regions_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_regions_links
    ADD CONSTRAINT campaigns_regions_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_regions_links campaigns_regions_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_regions_links
    ADD CONSTRAINT campaigns_regions_links_inv_fk FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE CASCADE;


--
-- Name: campaigns_stores_links campaigns_stores_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_stores_links
    ADD CONSTRAINT campaigns_stores_links_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;


--
-- Name: campaigns_stores_links campaigns_stores_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns_stores_links
    ADD CONSTRAINT campaigns_stores_links_inv_fk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: campaigns campaigns_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories_components categories_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_components
    ADD CONSTRAINT categories_entity_fk FOREIGN KEY (entity_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories_items_links categories_items_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_items_links
    ADD CONSTRAINT categories_items_links_fk FOREIGN KEY (categorie_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories_items_links categories_items_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories_items_links
    ADD CONSTRAINT categories_items_links_inv_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: chains_corporate_entity_links chains_corporate_entity_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains_corporate_entity_links
    ADD CONSTRAINT chains_corporate_entity_links_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: chains_corporate_entity_links chains_corporate_entity_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains_corporate_entity_links
    ADD CONSTRAINT chains_corporate_entity_links_inv_fk FOREIGN KEY (corporate_entity_id) REFERENCES public.corporate_entities(id) ON DELETE CASCADE;


--
-- Name: chains chains_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains
    ADD CONSTRAINT chains_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: chains chains_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chains
    ADD CONSTRAINT chains_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: collectibles_allowed_country_codes_links collectibles_allowed_country_codes_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_allowed_country_codes_links
    ADD CONSTRAINT collectibles_allowed_country_codes_links_fk FOREIGN KEY (collectible_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: collectibles_allowed_country_codes_links collectibles_allowed_country_codes_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_allowed_country_codes_links
    ADD CONSTRAINT collectibles_allowed_country_codes_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: collectibles_chains_links collectibles_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_chains_links
    ADD CONSTRAINT collectibles_chains_links_fk FOREIGN KEY (collectible_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: collectibles_chains_links collectibles_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_chains_links
    ADD CONSTRAINT collectibles_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: collectibles collectibles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles
    ADD CONSTRAINT collectibles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: collectibles_components collectibles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles_components
    ADD CONSTRAINT collectibles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: collectibles collectibles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.collectibles
    ADD CONSTRAINT collectibles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: company_profiles_accounts_links company_profiles_accounts_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_accounts_links
    ADD CONSTRAINT company_profiles_accounts_links_fk FOREIGN KEY (company_profile_id) REFERENCES public.company_profiles(id) ON DELETE CASCADE;


--
-- Name: company_profiles_accounts_links company_profiles_accounts_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_accounts_links
    ADD CONSTRAINT company_profiles_accounts_links_inv_fk FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: company_profiles_country_links company_profiles_country_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_country_links
    ADD CONSTRAINT company_profiles_country_links_fk FOREIGN KEY (company_profile_id) REFERENCES public.company_profiles(id) ON DELETE CASCADE;


--
-- Name: company_profiles_country_links company_profiles_country_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_country_links
    ADD CONSTRAINT company_profiles_country_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: company_profiles company_profiles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles
    ADD CONSTRAINT company_profiles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: company_profiles_gft_pays_links company_profiles_gft_pays_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_gft_pays_links
    ADD CONSTRAINT company_profiles_gft_pays_links_fk FOREIGN KEY (company_profile_id) REFERENCES public.company_profiles(id) ON DELETE CASCADE;


--
-- Name: company_profiles_gft_pays_links company_profiles_gft_pays_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles_gft_pays_links
    ADD CONSTRAINT company_profiles_gft_pays_links_inv_fk FOREIGN KEY (gft_pay_id) REFERENCES public.gft_pays(id) ON DELETE CASCADE;


--
-- Name: company_profiles company_profiles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.company_profiles
    ADD CONSTRAINT company_profiles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_art_artworks_languages_links components_art_artworks_languages_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks_languages_links
    ADD CONSTRAINT components_art_artworks_languages_links_fk FOREIGN KEY (artwork_id) REFERENCES public.components_art_artworks(id) ON DELETE CASCADE;


--
-- Name: components_art_artworks_languages_links components_art_artworks_languages_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_artworks_languages_links
    ADD CONSTRAINT components_art_artworks_languages_links_inv_fk FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: components_art_image_collections_languages_links components_art_image_collections_languages_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections_languages_links
    ADD CONSTRAINT components_art_image_collections_languages_links_fk FOREIGN KEY (image_collection_id) REFERENCES public.components_art_image_collections(id) ON DELETE CASCADE;


--
-- Name: components_art_image_collections_languages_links components_art_image_collections_languages_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_art_image_collections_languages_links
    ADD CONSTRAINT components_art_image_collections_languages_links_inv_fk FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: components_prize_collectible_prizes_collectible_links components_prize_collectible_prizes_collectible_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_collectible_links
    ADD CONSTRAINT components_prize_collectible_prizes_collectible_links_fk FOREIGN KEY (collectible_prize_id) REFERENCES public.components_prize_collectible_prizes(id) ON DELETE CASCADE;


--
-- Name: components_prize_collectible_prizes_collectible_links components_prize_collectible_prizes_collectible_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_collectible_links
    ADD CONSTRAINT components_prize_collectible_prizes_collectible_links_inv_fk FOREIGN KEY (collectible_id) REFERENCES public.collectibles(id) ON DELETE CASCADE;


--
-- Name: components_prize_collectible_prizes_components components_prize_collectible_prizes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_collectible_prizes_components
    ADD CONSTRAINT components_prize_collectible_prizes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_prize_collectible_prizes(id) ON DELETE CASCADE;


--
-- Name: components_prize_coupon_prizes_components components_prize_coupon_prizes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_prize_coupon_prizes_components
    ADD CONSTRAINT components_prize_coupon_prizes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_prize_coupon_prizes(id) ON DELETE CASCADE;


--
-- Name: components_store_management_headers_components components_store_management_headers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_headers_components
    ADD CONSTRAINT components_store_management_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_store_management_headers(id) ON DELETE CASCADE;


--
-- Name: components_store_management_tiles_components components_store_management_tiles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_components
    ADD CONSTRAINT components_store_management_tiles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_store_management_tiles(id) ON DELETE CASCADE;


--
-- Name: components_store_management_tiles_internal_link_links components_store_management_tiles_internal_link_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_internal_link_links
    ADD CONSTRAINT components_store_management_tiles_internal_link_links_fk FOREIGN KEY (tile_id) REFERENCES public.components_store_management_tiles(id) ON DELETE CASCADE;


--
-- Name: components_store_management_tiles_internal_link_links components_store_management_tiles_internal_link_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_management_tiles_internal_link_links
    ADD CONSTRAINT components_store_management_tiles_internal_link_links_inv_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: components_store_stores_country_links components_store_stores_country_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores_country_links
    ADD CONSTRAINT components_store_stores_country_links_fk FOREIGN KEY (store_id) REFERENCES public.components_store_stores(id) ON DELETE CASCADE;


--
-- Name: components_store_stores_country_links components_store_stores_country_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_store_stores_country_links
    ADD CONSTRAINT components_store_stores_country_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: components_translation_game_texts_languages_links components_translation_game_texts_languages_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts_languages_links
    ADD CONSTRAINT components_translation_game_texts_languages_links_fk FOREIGN KEY (game_text_id) REFERENCES public.components_translation_game_texts(id) ON DELETE CASCADE;


--
-- Name: components_translation_game_texts_languages_links components_translation_game_texts_languages_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_game_texts_languages_links
    ADD CONSTRAINT components_translation_game_texts_languages_links_inv_fk FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: components_translation_terms_conditions_language_code_links components_translation_terms_conditions_language_code_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions_language_code_links
    ADD CONSTRAINT components_translation_terms_conditions_language_code_links_fk FOREIGN KEY (terms_conditions_id) REFERENCES public.components_translation_terms_conditions(id) ON DELETE CASCADE;


--
-- Name: components_translation_terms_conditions_language_code_links components_translation_terms_conditions_language_code_links_inv; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_conditions_language_code_links
    ADD CONSTRAINT components_translation_terms_conditions_language_code_links_inv FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: components_translation_terms_lists_languages_links components_translation_terms_lists_languages_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists_languages_links
    ADD CONSTRAINT components_translation_terms_lists_languages_links_fk FOREIGN KEY (terms_list_id) REFERENCES public.components_translation_terms_lists(id) ON DELETE CASCADE;


--
-- Name: components_translation_terms_lists_languages_links components_translation_terms_lists_languages_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_terms_lists_languages_links
    ADD CONSTRAINT components_translation_terms_lists_languages_links_inv_fk FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: components_translation_translations_languages_links components_translation_translations_languages_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations_languages_links
    ADD CONSTRAINT components_translation_translations_languages_links_fk FOREIGN KEY (translation_id) REFERENCES public.components_translation_translations(id) ON DELETE CASCADE;


--
-- Name: components_translation_translations_languages_links components_translation_translations_languages_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.components_translation_translations_languages_links
    ADD CONSTRAINT components_translation_translations_languages_links_inv_fk FOREIGN KEY (language_code_id) REFERENCES public.language_codes(id) ON DELETE CASCADE;


--
-- Name: configurations configurations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: configurations configurations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configurations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: congratulation_screens congratulation_screens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.congratulation_screens
    ADD CONSTRAINT congratulation_screens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: congratulation_screens congratulation_screens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.congratulation_screens
    ADD CONSTRAINT congratulation_screens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: corporate_entities corporate_entities_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.corporate_entities
    ADD CONSTRAINT corporate_entities_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: corporate_entities corporate_entities_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.corporate_entities
    ADD CONSTRAINT corporate_entities_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: country_codes country_codes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.country_codes
    ADD CONSTRAINT country_codes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: country_codes country_codes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.country_codes
    ADD CONSTRAINT country_codes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coupon_drops coupon_drops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupon_drops
    ADD CONSTRAINT coupon_drops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coupon_drops coupon_drops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupon_drops
    ADD CONSTRAINT coupon_drops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coupons coupons_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coupons_components coupons_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons_components
    ADD CONSTRAINT coupons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.coupons(id) ON DELETE CASCADE;


--
-- Name: coupons coupons_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: create_pwas create_pwas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas
    ADD CONSTRAINT create_pwas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: create_pwas_components create_pwas_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas_components
    ADD CONSTRAINT create_pwas_entity_fk FOREIGN KEY (entity_id) REFERENCES public.create_pwas(id) ON DELETE CASCADE;


--
-- Name: create_pwas create_pwas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.create_pwas
    ADD CONSTRAINT create_pwas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: domains_chains_links domains_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_chains_links
    ADD CONSTRAINT domains_chains_links_fk FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON DELETE CASCADE;


--
-- Name: domains_chains_links domains_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_chains_links
    ADD CONSTRAINT domains_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: domains domains_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT domains_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: domains_components domains_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains_components
    ADD CONSTRAINT domains_entity_fk FOREIGN KEY (entity_id) REFERENCES public.domains(id) ON DELETE CASCADE;


--
-- Name: domains domains_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT domains_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: generate_reports generate_reports_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.generate_reports
    ADD CONSTRAINT generate_reports_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: generate_reports generate_reports_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.generate_reports
    ADD CONSTRAINT generate_reports_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: gft_pays gft_pays_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays
    ADD CONSTRAINT gft_pays_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: gft_pays_components gft_pays_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays_components
    ADD CONSTRAINT gft_pays_entity_fk FOREIGN KEY (entity_id) REFERENCES public.gft_pays(id) ON DELETE CASCADE;


--
-- Name: gft_pays gft_pays_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.gft_pays
    ADD CONSTRAINT gft_pays_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: importconfigs importconfigs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.importconfigs
    ADD CONSTRAINT importconfigs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: importconfigs importconfigs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.importconfigs
    ADD CONSTRAINT importconfigs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: language_codes language_codes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.language_codes
    ADD CONSTRAINT language_codes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: language_codes language_codes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.language_codes
    ADD CONSTRAINT language_codes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: messagings messagings_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messagings
    ADD CONSTRAINT messagings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: messagings messagings_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.messagings
    ADD CONSTRAINT messagings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: nft_collections_allowed_country_codes_links nft_collections_allowed_country_codes_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_allowed_country_codes_links
    ADD CONSTRAINT nft_collections_allowed_country_codes_links_fk FOREIGN KEY (nft_collection_id) REFERENCES public.nft_collections(id) ON DELETE CASCADE;


--
-- Name: nft_collections_allowed_country_codes_links nft_collections_allowed_country_codes_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_allowed_country_codes_links
    ADD CONSTRAINT nft_collections_allowed_country_codes_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: nft_collections_chains_links nft_collections_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_chains_links
    ADD CONSTRAINT nft_collections_chains_links_fk FOREIGN KEY (nft_collection_id) REFERENCES public.nft_collections(id) ON DELETE CASCADE;


--
-- Name: nft_collections_chains_links nft_collections_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_chains_links
    ADD CONSTRAINT nft_collections_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: nft_collections nft_collections_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections
    ADD CONSTRAINT nft_collections_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: nft_collections_components nft_collections_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections_components
    ADD CONSTRAINT nft_collections_entity_fk FOREIGN KEY (entity_id) REFERENCES public.nft_collections(id) ON DELETE CASCADE;


--
-- Name: nft_collections nft_collections_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nft_collections
    ADD CONSTRAINT nft_collections_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_chains_links pages_chains_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_chains_links
    ADD CONSTRAINT pages_chains_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_chains_links pages_chains_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_chains_links
    ADD CONSTRAINT pages_chains_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_components pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: partners_congratulation_screen_links partners_congratulation_screen_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners_congratulation_screen_links
    ADD CONSTRAINT partners_congratulation_screen_links_fk FOREIGN KEY (partner_id) REFERENCES public.partners(id) ON DELETE CASCADE;


--
-- Name: partners_congratulation_screen_links partners_congratulation_screen_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners_congratulation_screen_links
    ADD CONSTRAINT partners_congratulation_screen_links_inv_fk FOREIGN KEY (congratulation_screen_id) REFERENCES public.congratulation_screens(id) ON DELETE CASCADE;


--
-- Name: partners partners_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: partners partners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: products products_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: products products_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: regions_chain_links regions_chain_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions_chain_links
    ADD CONSTRAINT regions_chain_links_fk FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE CASCADE;


--
-- Name: regions_chain_links regions_chain_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions_chain_links
    ADD CONSTRAINT regions_chain_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: regions regions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: regions regions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: retail_profiles retail_profiles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles
    ADD CONSTRAINT retail_profiles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: retail_profiles_components retail_profiles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_components
    ADD CONSTRAINT retail_profiles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.retail_profiles(id) ON DELETE CASCADE;


--
-- Name: retail_profiles_regions_links retail_profiles_regions_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_regions_links
    ADD CONSTRAINT retail_profiles_regions_links_fk FOREIGN KEY (retail_profile_id) REFERENCES public.retail_profiles(id) ON DELETE CASCADE;


--
-- Name: retail_profiles_regions_links retail_profiles_regions_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles_regions_links
    ADD CONSTRAINT retail_profiles_regions_links_inv_fk FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE CASCADE;


--
-- Name: retail_profiles retail_profiles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.retail_profiles
    ADD CONSTRAINT retail_profiles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_drops reward_drops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_drops
    ADD CONSTRAINT reward_drops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_drops reward_drops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_drops
    ADD CONSTRAINT reward_drops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_games_chain_links reward_games_chain_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_chain_links
    ADD CONSTRAINT reward_games_chain_links_fk FOREIGN KEY (reward_game_id) REFERENCES public.reward_games(id) ON DELETE CASCADE;


--
-- Name: reward_games_chain_links reward_games_chain_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_chain_links
    ADD CONSTRAINT reward_games_chain_links_inv_fk FOREIGN KEY (chain_id) REFERENCES public.chains(id) ON DELETE CASCADE;


--
-- Name: reward_games reward_games_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games
    ADD CONSTRAINT reward_games_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_games_components reward_games_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games_components
    ADD CONSTRAINT reward_games_entity_fk FOREIGN KEY (entity_id) REFERENCES public.reward_games(id) ON DELETE CASCADE;


--
-- Name: reward_games reward_games_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_games
    ADD CONSTRAINT reward_games_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_products reward_products_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_products
    ADD CONSTRAINT reward_products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_products reward_products_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_products
    ADD CONSTRAINT reward_products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_subscriptions_allowed_country_codes_links reward_subscriptions_allowed_country_codes_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_allowed_country_codes_links
    ADD CONSTRAINT reward_subscriptions_allowed_country_codes_links_fk FOREIGN KEY (reward_subscription_id) REFERENCES public.reward_subscriptions(id) ON DELETE CASCADE;


--
-- Name: reward_subscriptions_allowed_country_codes_links reward_subscriptions_allowed_country_codes_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_allowed_country_codes_links
    ADD CONSTRAINT reward_subscriptions_allowed_country_codes_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: reward_subscriptions reward_subscriptions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions
    ADD CONSTRAINT reward_subscriptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reward_subscriptions_components reward_subscriptions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_components
    ADD CONSTRAINT reward_subscriptions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.reward_subscriptions(id) ON DELETE CASCADE;


--
-- Name: reward_subscriptions_regions_links reward_subscriptions_regions_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_regions_links
    ADD CONSTRAINT reward_subscriptions_regions_links_fk FOREIGN KEY (reward_subscription_id) REFERENCES public.reward_subscriptions(id) ON DELETE CASCADE;


--
-- Name: reward_subscriptions_regions_links reward_subscriptions_regions_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions_regions_links
    ADD CONSTRAINT reward_subscriptions_regions_links_inv_fk FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE CASCADE;


--
-- Name: reward_subscriptions reward_subscriptions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.reward_subscriptions
    ADD CONSTRAINT reward_subscriptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shopper_coupons shopper_coupons_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons
    ADD CONSTRAINT shopper_coupons_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shopper_coupons_shopper_id_links shopper_coupons_shopper_id_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons_shopper_id_links
    ADD CONSTRAINT shopper_coupons_shopper_id_links_fk FOREIGN KEY (shopper_coupon_id) REFERENCES public.shopper_coupons(id) ON DELETE CASCADE;


--
-- Name: shopper_coupons_shopper_id_links shopper_coupons_shopper_id_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons_shopper_id_links
    ADD CONSTRAINT shopper_coupons_shopper_id_links_inv_fk FOREIGN KEY (shopper_id) REFERENCES public.shoppers(id) ON DELETE CASCADE;


--
-- Name: shopper_coupons shopper_coupons_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shopper_coupons
    ADD CONSTRAINT shopper_coupons_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shoppers shoppers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shoppers
    ADD CONSTRAINT shoppers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shoppers shoppers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shoppers
    ADD CONSTRAINT shoppers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores stores_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores_region_links stores_region_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores_region_links
    ADD CONSTRAINT stores_region_links_fk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: stores_region_links stores_region_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores_region_links
    ADD CONSTRAINT stores_region_links_inv_fk FOREIGN KEY (region_id) REFERENCES public.regions(id) ON DELETE CASCADE;


--
-- Name: stores stores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subscription_drops subscription_drops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops
    ADD CONSTRAINT subscription_drops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subscription_drops_subscription_links subscription_drops_subscription_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops_subscription_links
    ADD CONSTRAINT subscription_drops_subscription_links_fk FOREIGN KEY (subscription_drop_id) REFERENCES public.subscription_drops(id) ON DELETE CASCADE;


--
-- Name: subscription_drops_subscription_links subscription_drops_subscription_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops_subscription_links
    ADD CONSTRAINT subscription_drops_subscription_links_inv_fk FOREIGN KEY (reward_subscription_id) REFERENCES public.reward_subscriptions(id) ON DELETE CASCADE;


--
-- Name: subscription_drops subscription_drops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_drops
    ADD CONSTRAINT subscription_drops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: terms_of_services terms_of_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.terms_of_services
    ADD CONSTRAINT terms_of_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: terms_of_services terms_of_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.terms_of_services
    ADD CONSTRAINT terms_of_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tokenized_receipts_allowed_country_codes_links tokenized_receipts_allowed_country_codes_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_allowed_country_codes_links
    ADD CONSTRAINT tokenized_receipts_allowed_country_codes_links_fk FOREIGN KEY (tokenized_receipt_id) REFERENCES public.tokenized_receipts(id) ON DELETE CASCADE;


--
-- Name: tokenized_receipts_allowed_country_codes_links tokenized_receipts_allowed_country_codes_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_allowed_country_codes_links
    ADD CONSTRAINT tokenized_receipts_allowed_country_codes_links_inv_fk FOREIGN KEY (country_code_id) REFERENCES public.country_codes(id) ON DELETE CASCADE;


--
-- Name: tokenized_receipts tokenized_receipts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts
    ADD CONSTRAINT tokenized_receipts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tokenized_receipts_components tokenized_receipts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts_components
    ADD CONSTRAINT tokenized_receipts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.tokenized_receipts(id) ON DELETE CASCADE;


--
-- Name: tokenized_receipts tokenized_receipts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tokenized_receipts
    ADD CONSTRAINT tokenized_receipts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

