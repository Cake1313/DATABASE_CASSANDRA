
CREATE TABLE public.dish
(
    dishname character varying COLLATE pg_catalog."default" NOT NULL,
    calories_amount integer NOT NULL,
    CONSTRAINT dish_pkey PRIMARY KEY (dishname)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.dish
    OWNER to postgres;

CREATE TABLE public.type
(
    typename character varying(80) COLLATE pg_catalog."default" NOT NULL,
    dishname_fk character varying COLLATE pg_catalog."default",
    id integer NOT NULL,
    CONSTRAINT id_pkey PRIMARY KEY (id),
    CONSTRAINT dishame_fk FOREIGN KEY (dishname_fk)
        REFERENCES public.dish (dishname) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.type
    OWNER to postgres;


CREATE INDEX fki_dishname_fkey
    ON public.type USING btree
    (dishname_fk COLLATE pg_catalog."default")
    TABLESPACE pg_default;


CREATE TABLE public.receipt
(
    receipt_content text COLLATE pg_catalog."default" NOT NULL,
    dishname_fk character varying COLLATE pg_catalog."default",
    CONSTRAINT dishname_fk FOREIGN KEY (dishname_fk)
        REFERENCES public.dish (dishname) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.receipt
    OWNER to postgres;



CREATE INDEX fki_dishname_fk
    ON public.receipt USING btree
    (dishname_fk COLLATE pg_catalog."default")
    TABLESPACE pg_default;
