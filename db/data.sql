INSERT INTO public.author
	(id, firstname, lastname)
VALUES 
	(1, 'Haruki', 'Murakami'),
	(2, 'Marcel', 'Proust'),
	(3, 'Risa', 'Wataya'),
	(4, 'Léon', 'Tolstoï'),
	(5, 'Fiodor', 'Dostoïevski'),
	(6, 'Isaac', 'Asimov'),
	(7, 'John Ronald Reuel', 'Tolkien');

INSERT INTO public.category
	(id, title)
VALUES 
	(1, 'Polar - Thriller'),
	(2, 'Fantaisie - Science-Fiction'),
	(3, 'Histoire'),
	(4, 'Manga'),
	(5, 'Poésie - Théâtre'),
	(6, 'Sciences'),
	(7, 'Littérature classique'),
	(8, 'Art - Musique'),
	(9, 'Littérature internationale');

INSERT INTO public.book
	(id, title, publication_date, copies, category_id, author_id)
VALUES 
	(1, '1Q84 Tome 1', '2009-01-01', 3, 9, 1),
	(2, '1Q84 Tome 2', '2009-01-01', 3, 9, 1),
	(3, '1Q84 Tome 3', '2010-01-01', 3, 9, 1),
	(4, 'Pauvre chose', '2011-01-01', 1, 9, 3),
	(5, 'Guerre et Paix 1', '1865-01-01', 2, 7, 4),
	(6, 'Guerre et Paix 2', '1865-01-01', 2, 7, 4),
	(7, 'Le Seigneur des Anneaux : Le communauté de l`anneau', '1865-01-01', 2, 2, 7),
	(8, 'Fondation', '1951-01-01', 8, 2, 6);
	
INSERT INTO public.member
	(id, firstname, lastname, login, password, email, phone)
VALUES 
	(1, 'John', 'Doe', 'jdoe', '$2a$04$7fQIIE3egr4HIWCN0n5V9uTsSJxQKIDJ6r0QO11ELnwoiOdlquDx.', 'atelier.java.test@gmail.com', '0123456789'),
	(2, 'Barack', 'Obama', 'bobama', '$2a$04$zQ.8U1N3ExvyjPNkYrolv.4E3fvVBVTzJVQNUYehgPzTbnalA6i6e', 'atelier.java.test@gmail.com', '0123456789'),
	(3, 'Admin', 'Root', 'admin', '$2a$04$1gORAyfrEZ3Wze6gq70QJu75chOwQ6Fxh8n3Cj/KBEZaugK9VdsdK', 'atelier.java.test@gmail.com', '0123456789');

INSERT INTO public.loan
	(id, date_begin, date_end, date_return, extended, returned, member_id, book_id)
VALUES 
	(1, '2018-11-17', '2018-12-17', '2018-12-17', false, false, 1, 1),
	(2, '2018-10-25', '2018-11-25', '2018-12-17', false, false, 2, 2);
