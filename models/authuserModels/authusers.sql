-- Table: public.authusers

-- DROP TABLE IF EXISTS public.authusers;

CREATE TABLE IF NOT EXISTS public.authusers
(
    userid uuid NOT NULL,
	accessfailedcount integer NOT NULL DEFAULT 0,
	email character(255) COLLATE pg_catalog."default" NOT NULL,
	firstname character(255) COLLATE pg_catalog."default" NOT NULL,
	lastname character(255) COLLATE pg_catalog."default" NOT NULL,
	middlename character(255) COLLATE pg_catalog."default" NOT NULL,
	timezone character(255) COLLATE pg_catalog."default" NOT NULL,
	emailconfirmed boolean NOT NULL DEFAULT false,
	lastlogintime timestamp with time zone NOT NULL,
	lockoutenabled boolean NOT NULL DEFAULT false,
	lockoutend timestamp with time zone NOT NULL,
	passwordhash character(255) COLLATE pg_catalog."default" NOT NULL,
	phonenumber character(255) COLLATE pg_catalog."default" NOT NULL,
	phonenumberconfirmed boolean NOT NULL DEFAULT false,
	registrationdate timestamp with time zone NOT NULL,
	lastloginfailedtime timestamp with time zone NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT authusers_pkey PRIMARY KEY (userid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.authusers
    OWNER to postgres;