
CREATE SEQUENCE public.member_id_seq;

CREATE TABLE public.member (
                id INTEGER NOT NULL DEFAULT nextval('public.member_id_seq'),
                firstname VARCHAR NOT NULL,
                lastname VARCHAR NOT NULL,
                login VARCHAR NOT NULL,
                password VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                phone VARCHAR NOT NULL,
                CONSTRAINT member_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.member_id_seq OWNED BY public.member.id;

CREATE SEQUENCE public.author_id_seq;

CREATE TABLE public.author (
                id INTEGER NOT NULL DEFAULT nextval('public.author_id_seq'),
                firstname VARCHAR NOT NULL,
                lastname VARCHAR NOT NULL,
                CONSTRAINT author_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;

CREATE SEQUENCE public.category_id_seq;

CREATE TABLE public.category (
                id INTEGER NOT NULL DEFAULT nextval('public.category_id_seq'),
                title VARCHAR NOT NULL,
                CONSTRAINT category_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;

CREATE SEQUENCE public.book_id_seq;

CREATE TABLE public.book (
                id INTEGER NOT NULL DEFAULT nextval('public.book_id_seq'),
                title VARCHAR NOT NULL,
                publication_date DATE NOT NULL,
                copies INTEGER NOT NULL,
                category_id INTEGER NOT NULL,
                author_id INTEGER NOT NULL,
                CONSTRAINT book_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;

CREATE SEQUENCE public.loan_id_seq;

CREATE TABLE public.loan (
                id INTEGER NOT NULL DEFAULT nextval('public.loan_id_seq'),
                date_begin DATE NOT NULL,
                date_end DATE NOT NULL,
                date_return DATE NOT NULL,
                extended BOOLEAN NOT NULL,
                returned BOOLEAN NOT NULL,
                member_id INTEGER NOT NULL,
                book_id INTEGER NOT NULL,
                CONSTRAINT loan_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.loan_id_seq OWNED BY public.loan.id;

ALTER TABLE public.loan ADD CONSTRAINT user_loan_fk
FOREIGN KEY (member_id)
REFERENCES public.member (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.book ADD CONSTRAINT author_book_fk
FOREIGN KEY (author_id)
REFERENCES public.author (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.book ADD CONSTRAINT category_book_fk
FOREIGN KEY (category_id)
REFERENCES public.category (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.loan ADD CONSTRAINT book_loan_fk
FOREIGN KEY (book_id)
REFERENCES public.book (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;