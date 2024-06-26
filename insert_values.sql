INSERT INTO specijalnost (idspec, nazivspec, opisspec) VALUES (1, 'Katarakt hirurgija', 'Uklanjanje katarakte.');
INSERT INTO specijalnost (idspec, nazivspec, opisspec) VALUES (2, 'Glaukom', 'Dijagnostika i lečenje glaukoma.');
       INSERT INTO specijalnost (idspec, nazivspec, opisspec) VALUES (3, 'Retina', 'Lečenje bolesti mrežnjače.');
       INSERT INTO specijalnost (idspec, nazivspec, opisspec) VALUES (4, 'Dečija oftalmologija', 'Očne bolesti kod dece.');
       INSERT INTO specijalnost (idspec, nazivspec, opisspec) VALUES (5, 'Refraktivna hirurgija', 'Operacije korekcije vida.');

INSERT INTO tip_pregleda (idtp, nazivtip, opistp, trajanjetp) VALUES (1, 'Osnovni pregled vida', 'Test oštrine i refrakcije.', 30);
INSERT INTO tip_pregleda (idtp, nazivtip, opistp, trajanjetp) VALUES (2, 'Pregled očnog pritiska', 'Merenje intraokularnog pritiska.', 15);
INSERT INTO tip_pregleda (idtp, nazivtip, opistp, trajanjetp) VALUES (3, 'Fundoskopski pregled', 'Detaljan pregled zadnjeg segmenta.', 45);
INSERT INTO tip_pregleda (idtp, nazivtip, opistp, trajanjetp) VALUES (4, 'Pregled na suvoću oka', 'Evaluacija sindroma suvog oka.', 20);
 INSERT INTO tip_pregleda (idtp, nazivtip, opistp, trajanjetp) VALUES (5, 'Kontaktna sočiva - fiting', 'Prilagođavanje kontaktnih sočiva.', 30);

INSERT INTO ordinacija (idoft, nazivoft, adresaoft)
VALUES (1, 'Primarijus', 'Ulica Zdravlja 10');


INSERT INTO objekat (idoft, idobj, nazivobj, idrad, adresaobj) VALUES (1, 1, 'Objekat 1', NULL, 'Trg Slobode 5');
INSERT INTO objekat (idoft, idobj, nazivobj, idrad, adresaobj) VALUES (1, 2, 'Objekat 2', NULL, 'Ulica Vuka Karadžića 10');


INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES
(1, 'Slit-lampa');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (2, 'Autorefraktometar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (3, 'Tonometar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (4, 'Keratometar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (5, 'Oftalmoskop');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (6, 'Perimetar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES  (7, 'Pahimetar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (8, 'Biometar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (9, 'Topograf');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (10, 'Fundus kamera');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (11, 'OCT');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (12, 'Refraktometar');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (13, 'Biomikroskop');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (14, 'Punktoinj. laser');
INSERT INTO tip_uredjaja (idtipu, naztipu) VALUES (15, 'Abberometar');

INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES
(1, 1, 1, DATE '2020-01-01', 'administrator', 'Marko', 'Marković', DATE '1980-01-01', 'marko.markovic@example.com', 'password123', 'muski');

-- Lekari
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 2, DATE '2020-02-01', 'lekar', 'Jelena', 'Jovanović', DATE '1985-02-01', 'jelena.jovanovic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 3, DATE '2020-02-02', 'lekar', 'Milan', 'Milić', DATE '1986-03-03', 'milan.milic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 4, DATE '2020-02-03', 'lekar', 'Ivana', 'Ivić', DATE '1987-04-04', 'ivana.ivic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 5, DATE '2020-02-04', 'lekar', 'Stefan', 'Stefanović', DATE '1988-05-05', 'stefan.stefanovic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 6, DATE '2020-02-05', 'lekar', 'Ana', 'Ankić', DATE '1989-06-06', 'ana.ankic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 7, DATE '2020-02-06', 'lekar', 'Nikola', 'Nikolić', DATE '1990-07-07', 'nikola.nikolic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 8, DATE '2020-02-07', 'lekar', 'Marija', 'Marić', DATE '1991-08-08', 'marija.maric@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 9, DATE '2020-02-08', 'lekar', 'Petar', 'Petrović', DATE '1992-09-09', 'petar.petrovic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 10, DATE '2020-02-09', 'lekar', 'Jovana', 'Jovanović', DATE '1993-10-10', 'jovana.jovanovic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 11, DATE '2020-02-10', 'lekar', 'Filip', 'Filipović', DATE '1994-11-11', 'filip.filipovic@example.com', 'password123', 'muski');

-- Medicinske sestre
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 12, DATE '2020-03-01', 'medicinskasestra', 'Ana', 'Anić', DATE '1990-03-01', 'ana.anic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 13, DATE '2020-03-02', 'medicinskasestra', 'Luka', 'Lukić', DATE '1991-04-02', 'luka.lukic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 14, DATE '2020-03-03', 'medicinskasestra', 'Jelena', 'Jelić', DATE '1992-05-03', 'jelena.jelic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 15, DATE '2020-03-04', 'medicinskasestra', 'Maja', 'Majić', DATE '1993-06-04', 'maja.majic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 16, DATE '2020-03-05', 'medicinskasestra', 'Nenad', 'Nenić', DATE '1994-07-05', 'nenad.nenic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 17, DATE '2020-03-06', 'medicinskasestra', 'Ivana', 'Ivić', DATE '1995-08-06', 'ivana.ivic2@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 18, DATE '2020-03-07', 'medicinskasestra', 'Miloš', 'Milić', DATE '1996-09-07', 'milos.milic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 19, DATE '2020-03-08', 'medicinskasestra', 'Sanja', 'Sanić', DATE '1997-10-08', 'sanja.sanic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 20, DATE '2020-03-09', 'medicinskasestra', 'Dejan', 'Denić', DATE '1998-11-09', 'dejan.denic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 21, DATE '2020-03-10', 'medicinskasestra', 'Milica', 'Milić', DATE '1999-12-10', 'milica.milic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 22, DATE '2020-03-11', 'medicinskasestra', 'Vladimir', 'Vladimić', DATE '2000-01-11', 'vladimir.vladimic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 1, 23, DATE '2020-03-12', 'medicinskasestra', 'Tamara', 'Tamić', DATE '2001-02-12', 'tamara.tamic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 24, DATE '2020-03-13', 'medicinskasestra', 'Saša', 'Savić', DATE '2002-03-13', 'sasa.savic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 25, DATE '2020-03-14', 'medicinskasestra', 'Dragana', 'Dragić', DATE '2003-04-14', 'dragana.dragic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 26, DATE '2020-03-15', 'medicinskasestra', 'Goran', 'Gorić', DATE '2004-05-15', 'goran.goric@example.com', 'password123', 'muski');

-- Još lekara
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 27, DATE '2020-02-11', 'lekar', 'Katarina', 'Katnić', DATE '1994-11-12', 'katarina.katnic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 28, DATE '2020-02-12', 'lekar', 'Aleksandar', 'Aleksić', DATE '1995-12-13', 'aleksandar.aleksic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 29, DATE '2020-02-13', 'lekar', 'Teodora', 'Tešić', DATE '1996-01-14', 'teodora.tesic@example.com', 'password123', 'zenski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 30, DATE '2020-02-14', 'lekar', 'Darko', 'Darković', DATE '1997-02-15', 'darko.darkovic@example.com', 'password123', 'muski');
INSERT INTO radnik (idoft, idobj, idrad, datzap, tiprad, imerad, prezrad, datrodjrad, emailrad, lozrad, pol) VALUES (1, 2, 31, DATE '2020-02-15', 'lekar', 'Sonja', 'Sonić', DATE '1998-03-16', 'sonja.sonic@example.com', 'password123', 'zenski');

INSERT INTO lekar (idrad, idspec) VALUES 
(2, 1);
INSERT INTO lekar (idrad, idspec) VALUES (3, 2);
INSERT INTO lekar (idrad, idspec) VALUES (4, 3);
INSERT INTO lekar (idrad, idspec) VALUES (5, 4);
INSERT INTO lekar (idrad, idspec) VALUES (6, 5);
INSERT INTO lekar (idrad, idspec) VALUES (7, 4);
INSERT INTO lekar (idrad, idspec) VALUES (8, 3);
INSERT INTO lekar (idrad, idspec) VALUES (9, 2);
INSERT INTO lekar (idrad, idspec) VALUES (10, 1);
INSERT INTO lekar (idrad, idspec) VALUES (11, 2);
INSERT INTO lekar (idrad, idspec) VALUES (27, 3);
INSERT INTO lekar (idrad, idspec) VALUES (28, 4);
INSERT INTO lekar (idrad, idspec) VALUES (29, 5);
INSERT INTO lekar (idrad, idspec) VALUES (30, 3);
INSERT INTO lekar (idrad, idspec) VALUES (31, 4);


INSERT INTO med_sestra (idrad) VALUES 
(12);
INSERT INTO med_sestra (idrad) VALUES (13);
INSERT INTO med_sestra (idrad) VALUES (14);
INSERT INTO med_sestra (idrad) VALUES (15);
INSERT INTO med_sestra (idrad) VALUES (16);
INSERT INTO med_sestra (idrad) VALUES (17);
INSERT INTO med_sestra (idrad) VALUES (18);
INSERT INTO med_sestra (idrad) VALUES (19);
INSERT INTO med_sestra (idrad) VALUES (20);
INSERT INTO med_sestra (idrad) VALUES (21);
INSERT INTO med_sestra (idrad) VALUES (22);
INSERT INTO med_sestra (idrad) VALUES (23);
INSERT INTO med_sestra (idrad) VALUES (24);
INSERT INTO med_sestra (idrad) VALUES (25);
INSERT INTO med_sestra (idrad) VALUES (26);

INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES (1, 'Ivan', 'Petrović', TO_DATE('1980-01-15', 'YYYY-MM-DD'), 'ivan.p@example.com', 'lozinka1', 'muski');
 INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES       (2, 'Ana', 'Jovanović', TO_DATE('1992-05-20', 'YYYY-MM-DD'), 'ana.j@example.com', 'lozinka2', 'zenski');
 INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES       (3, 'Marko', 'Marković', TO_DATE('1985-07-30', 'YYYY-MM-DD'), 'marko.m@example.com', 'lozinka3', 'muski');
 INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES       (4, 'Jelena', 'Nikolić', TO_DATE('1990-12-10', 'YYYY-MM-DD'), 'jelena.n@example.com', 'lozinka4', 'zenski');
 INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES       (5, 'Petar', 'Petrović', TO_DATE('1982-09-25', 'YYYY-MM-DD'), 'petar.p@example.com', 'lozinka5', 'muski');
  INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES      (6, 'Marija', 'Ilić', TO_DATE('1995-03-15', 'YYYY-MM-DD'), 'marija.i@example.com', 'lozinka6', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (7, 'Nikola', 'Kostić', TO_DATE('1987-11-22', 'YYYY-MM-DD'), 'nikola.k@example.com', 'lozinka7', 'muski');
  INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES      (8, 'Milica', 'Stojanović', TO_DATE('1991-06-14', 'YYYY-MM-DD'), 'milica.s@example.com', 'lozinka8', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (9, 'Milan', 'Lukić', TO_DATE('1983-02-17', 'YYYY-MM-DD'), 'milan.l@example.com', 'lozinka9', 'muski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (10, 'Ivana', 'Janković', TO_DATE('1988-10-05', 'YYYY-MM-DD'), 'ivana.j@example.com', 'lozinka10', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (11, 'Aleksandar', 'Matić', TO_DATE('1986-08-19', 'YYYY-MM-DD'), 'aleksandar.m@example.com', 'lozinka11', 'muski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (12, 'Dragana', 'Dimitrijević', TO_DATE('1993-04-21', 'YYYY-MM-DD'), 'dragana.d@example.com', 'lozinka12', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (13, 'Dušan', 'Živković', TO_DATE('1984-12-03', 'YYYY-MM-DD'), 'dusan.z@example.com', 'lozinka13', 'muski');
  INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES      (14, 'Sara', 'Milenković', TO_DATE('1996-01-28', 'YYYY-MM-DD'), 'sara.m@example.com', 'lozinka14', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (15, 'Nenad', 'Mitrović', TO_DATE('1989-07-07', 'YYYY-MM-DD'), 'nenad.m@example.com', 'lozinka15', 'muski');
    INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES    (16, 'Maja', 'Đorđević', TO_DATE('1994-11-18', 'YYYY-MM-DD'), 'maja.d@example.com', 'lozinka16', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (17, 'Filip', 'Pavlović', TO_DATE('1981-09-10', 'YYYY-MM-DD'), 'filip.p@example.com', 'lozinka17', 'muski');
  INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES      (18, 'Jovana', 'Ristić', TO_DATE('1990-06-01', 'YYYY-MM-DD'), 'jovana.r@example.com', 'lozinka18', 'zenski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (19, 'Vladimir', 'Stefanović', TO_DATE('1983-03-12', 'YYYY-MM-DD'), 'vladimir.s@example.com', 'lozinka19', 'muski');
   INSERT INTO pacijent (idpac, imepac, prezpac, datrodjpac, emailpac, lozpac, pol)
VALUES     (20, 'Katarina', 'Aleksić', TO_DATE('1992-12-30', 'YYYY-MM-DD'), 'katarina.a@example.com', 'lozinka20', 'zenski');


INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES 
(1, 'Marija', 'Petrović', 1, 'majka');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (2, 'Petar', 'Jovanović', 2, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (3, 'Luka', 'Marković', 3, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (4, 'Jovan', 'Nikolić', 4, 'otac');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (5, NULL, NULL, 1, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (6, 'Ivan', 'Ilić', 6, 'otac');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (7, 'Milena', 'Kostić', 7, 'majka');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (8, 'Stefan', 'Stojanović', 8, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (9, 'Nikola', 'Lukić', 9, 'otac');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (10, 'Maja', 'Janković', 10, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (11, 'Tijana', 'Matić', 11, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (12, 'Miloš', 'Dimitrijević', 12, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (13, 'Jovana', 'Živković', 2, 'majka');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (14, NULL, NULL, 14, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (15, 'Nikola', 'Mitrović', 15, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (16, 'Ana', 'Đorđević', 16, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (17, 'Filip', 'Pavlović', 12, 'otac');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (18, NULL, NULL, 18, NULL);
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (19, 'Dejan', 'Stefanović', 19, 'otac');
INSERT INTO clan_porodice (idcp, imeclana, prezclana, idpac, srodstvo) VALUES (20, 'Milica', 'Aleksić', 20, NULL);

INSERT INTO lek (idlek, nazlek, sastav)
VALUES (1, 'Paracetamol', 'Paracetamol 500mg tablete');
    INSERT INTO lek (idlek, nazlek, sastav)
VALUES    (2, 'Amoksicilin', 'Amoksicilin 500mg kapsule');
    INSERT INTO lek (idlek, nazlek, sastav)
VALUES    (3, 'Ibuprofen', 'Ibuprofen 400mg tablete');
   INSERT INTO lek (idlek, nazlek, sastav)
VALUES     (4, 'Omeprazol', 'Omeprazol 20mg kapsule');
  INSERT INTO lek (idlek, nazlek, sastav)
VALUES      (5, 'Loratadin', 'Loratadin 10mg tablete');

INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES (1, 1, 2, '1 tableta ujutru i 1 tableta uveče');
 INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES       (2, 2, 1, '2 kapsule svakog jutra');
  INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES      (3, 3, 2, '1 tableta posle svakog obroka');
  INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES      (4, 4, 2, '1 kapsula pre svakog obroka');
  INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES      (5, 5, 1, '1 tableta pre spavanja');
  INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES      (1, 6, 3, '1 tableta svakih 8 sati');
  INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES      (2, 7, 1, '1 kapsula ujutru posle doručka');
    INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES    (3, 8, 2, '1 tableta ujutru i 1 tableta uveče posle večere');
    INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES    (4, 9, 1, '1 kapsula ujutru pre doručka');
   INSERT INTO doza (idlek, iddoze, brdan, klkputa)
VALUES     (5, 10, 3, '1 tableta svakih 6 sati');


INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES 
(1, TO_DATE('2024-01-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (2, TO_DATE('2024-01-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 2, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (3, TO_DATE('2024-01-20 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 3, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (4, TO_DATE('2024-01-25 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 4, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (5, TO_DATE('2024-02-01 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 5, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (6, TO_DATE('2024-02-05 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 6, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (7, TO_DATE('2024-02-10 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 7, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (8, TO_DATE('2024-02-15 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 8, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (9, TO_DATE('2024-02-20 12:10:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 9, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (10, TO_DATE('2024-02-25 13:25:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 10, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (11, TO_DATE('2024-03-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 11, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (12, TO_DATE('2024-03-05 14:50:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 12, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (13, TO_DATE('2024-03-10 10:20:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 13, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (14, TO_DATE('2024-03-15 11:40:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 14, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (15, TO_DATE('2024-03-20 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 15, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (16, TO_DATE('2024-03-25 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 16, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (17, TO_DATE('2024-03-30 13:10:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 17, 'zakazan');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (18, TO_DATE('2024-04-05 10:55:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 18, 'ND');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (19, TO_DATE('2024-04-10 12:25:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 19, 'obavljen');
INSERT INTO pregled (idpreg, datpreg, idtp, idpac, statuspreg) VALUES (20, TO_DATE('2024-04-15 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 20, 'zakazan');

INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES 
(1, TO_DATE('2024-01-11', 'YYYY-MM-DD'), 1, 1, '20/20', '20/20', '14', '14', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (2, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 2, 2, '20/30', '20/30', '16', '16', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Blag', 'Blag', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (3, TO_DATE('2024-01-21', 'YYYY-MM-DD'), 3, 3, '20/25', '20/25', '15', '15', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (4, TO_DATE('2024-01-26', 'YYYY-MM-DD'), 4, 4, '20/40', '20/40', '18', '18', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Blag', 'Blag', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES(5, TO_DATE('2024-02-02', 'YYYY-MM-DD'), 5, 5, '20/20', '20/20', '14', '14', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (6, TO_DATE('2024-02-06', 'YYYY-MM-DD'), 6, 6, '20/25', '20/25', '15', '15', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (7, TO_DATE('2024-02-11', 'YYYY-MM-DD'), 7, 7, '20/30', '20/30', '16', '16', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Blag', 'Blag', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (8, TO_DATE('2024-02-16', 'YYYY-MM-DD'), 8, 8, '20/40', '20/40', '18', '18', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Blag', 'Blag', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (9, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 9, 9, '20/20', '20/20', '14', '14', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');
INSERT INTO izvestaj (idizv, datizv, idpreg, idpac, visus_l, visus_d, pritisak_l, pritisak_d, predseg_l, predseg_d, zadseg_l, zadseg_d, kolvid_l, kolvid_d, skijasko_l, skijasko_d, shiremr_l, shiremr_d, strabo_l, strabo_d, gonioskop_l, gonioskop_d, vidpolj_l, vidpolj_d) VALUES (10, TO_DATE('2024-02-26', 'YYYY-MM-DD'), 10, 10, '20/25', '20/25', '15', '15', 'Normalan', 'Normalan', 'Bistar', 'Bistar', 'Normalan', 'Normalan', 'Nema', 'Nema', 'Dilatiran', 'Dilatiran', 'Nema', 'Nema', 'Otvoren', 'Otvoren', 'Puno', 'Puno');

INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES 
('Pušenje', 'Polen', 'Bol u očima', 1);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Alkohol', 'Nema', 'Povremeni bol', 2);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Pušenje, Alkohol', 'Praši', 'Zamagljen vid', 3);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Nema', 'Mačke', 'Bol u očima', 4);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Pušenje', 'Nema', 'Umor očiju', 5);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Alkohol', 'Polen', 'Zamagljen vid', 6);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Pušenje, Alkohol', 'Nema', 'Bol u očima', 7);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Nema', 'Praši', 'Umor očiju', 8);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Pušenje', 'Mačke', 'Povremeni bol', 9);
INSERT INTO anamneza (stetnenavike, alergije, razdolaska, idizv) VALUES ('Alkohol', 'Polen', 'Zamagljen vid', 10);

INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES 
('A001', 'Glaukom', 'Očne bolesti', 'Povišen očni pritisak', 1);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A002', 'Katarakta', 'Očne bolesti', 'Zamućenje sočiva', 2);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A003', 'Makularna deg.', 'Očne bolesti', 'Oštećenje makule', 3);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A004', 'Keratitis', 'Očne bolesti', 'Upala rožnjače', 4);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A005', 'Konjunktivitis', 'Očne bolesti', 'Upala konjunktive', 5);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A006', 'Astigmatizam', 'Refrakcione greške', 'Nepravilna zakrivljenost rožnjače', 6);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A007', 'Miopija', 'Refrakcione greške', 'Kratkovidost', 7);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A008', 'Hipermetropija', 'Refrakcione greške', 'Dalekovidost', 8);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A009', 'Retinitis', 'Očne bolesti', 'Upala mrežnjače', 9);
INSERT INTO bolest (sifrabol, nazivbol, klasbol, opisbol, idizv) VALUES ('A010', 'Blefaritis', 'Očne bolesti', 'Upala kapaka', 10);

INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES 
('A001', 1, 1, 'Glaukom - povišenog očni pritisak');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A002', 2, 2, 'Katarakte - zamućenje sočiva');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A003', 3, 3, 'Makularna degeneracije - oštećenje makule');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A004', 4, 4, 'Keratitisa - upala rožnjače');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A005', 5, 5, 'Konjunktivitisa - upala konjunktive');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A006', 6, 6, 'Astigmatizma - nepravilna zakrivljenost rožnjače');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A007', 7, 7, 'Miopija (kratkovidost)');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A008', 8, 8, 'Hipermetropije (dalekovidost)');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A009', 9, 9, 'Retinitisa - upala mrežnjače');
INSERT INTO dijagnoza (sifrabol, idpreg, idpac, opisdij) VALUES ('A010', 10, 10, 'Blefaritisa - upala kapaka');

INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES 
('A001', 1, 1);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A002', 2, 2);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A003', 3, 3);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A004', 4, 4);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A005', 5, 5);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A006', 6, 6);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A007', 7, 7);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A008', 8, 8);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A009', 9, 9);
INSERT INTO terapija (sifrabol, idpreg, idpac) VALUES ('A010', 10, 10);

INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES 
(1,1, 'A001', 1, 1);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (2,2, 'A002', 2, 2);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (3,3, 'A003', 3, 3);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (4,4, 'A004', 4, 4);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (5,5, 'A005', 5, 5);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (1,6, 'A006', 6, 6);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (2,7, 'A007', 7, 7);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (3,8, 'A008', 8, 8);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (4,9, 'A009', 9, 9);
INSERT INTO terapija_doza (idlek, iddoze, sifrabol, idpreg, idpac) VALUES (5,10, 'A010', 10, 10);

INSERT INTO cenovnik (datpoc, datzav, iznos, idtp) VALUES 
(TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 30, 1);
INSERT INTO cenovnik (datpoc, datzav, iznos, idtp) VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 15, 2);
INSERT INTO cenovnik (datpoc, datzav, iznos, idtp) VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 45, 3);
INSERT INTO cenovnik (datpoc, datzav, iznos, idtp) VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 20, 4);
INSERT INTO cenovnik (datpoc, datzav, iznos, idtp) VALUES (TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 30, 5);



INSERT INTO lek_anamneza (idlek, idizv) VALUES 
(1, 1);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (1, 4);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (1, 7);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (2, 2);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (2, 9);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (3, 3);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (3, 6);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (3, 10);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (4, 5);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (4, 8); 
INSERT INTO lek_anamneza (idlek, idizv) VALUES (5, 1);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (5, 6);
INSERT INTO lek_anamneza (idlek, idizv) VALUES (5, 10);

INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES 
(1, 1, 1, 1, 1, 'laboratorija');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (2, 2, 2, 1, 1, 'specpregled');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (3, 3, 3, 1, 1, 'staclecenje');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (4, 4, 4, 1, 1, 'laboratorija');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (5, 5, 5, 1, 1, 'specpregled');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (6, 6, 6, 1, 1, 'staclecenje');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (7, 7, 7, 1, 1, 'laboratorija');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (8, 8, 8, 1, 1, 'specpregled');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (9, 9, 9, 1, 1, 'staclecenje');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (10, 10, 10, 1, 1, 'laboratorija');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (11, 11, 11, 1, 1, 'specpregled');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (12, 12, 12, 1, 1, 'staclecenje');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (13, 13, 13, 1, 1, 'laboratorija');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (14, 14, 14, 1, 1, 'specpregled');
INSERT INTO uput (iduput, idpreg, idpac, idoft, idobj, tipuputa) VALUES (15, 15, 15, 1, 1, 'staclecenje');

INSERT INTO laboratorija (iduput) VALUES 
(1);
INSERT INTO laboratorija (iduput) VALUES (4);
INSERT INTO laboratorija (iduput) VALUES (7);
INSERT INTO laboratorija (iduput) VALUES (10);
INSERT INTO laboratorija (iduput) VALUES (13);

INSERT INTO spec_pregled (iduput, idspec) VALUES 
(2, 1);
INSERT INTO spec_pregled (iduput, idspec) VALUES (5, 2);
INSERT INTO spec_pregled (iduput, idspec) VALUES (8, 3);
INSERT INTO spec_pregled (iduput, idspec) VALUES (11, 4);
INSERT INTO spec_pregled (iduput, idspec) VALUES (14, 5);

INSERT INTO stac_lecenje (iduput, razlog) VALUES 
(3, 'Hronični problemi sa vidom');
INSERT INTO stac_lecenje (iduput, razlog) VALUES (6, 'Akutni problemi sa vidom');
INSERT INTO stac_lecenje (iduput, razlog) VALUES (9, 'Postoperativna nega');
INSERT INTO stac_lecenje (iduput, razlog) VALUES (12, 'Dugotrajna terapija');
INSERT INTO stac_lecenje (iduput, razlog) VALUES (15, 'Potreba za intenzivnom negom');

INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES 
(1, 1, 1, 'Analizator vidnog polja', 6);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 1, 2, 'Optička koherentna tomografija', 11);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 1, 3, 'Mikroskop sa podeljenim svetlom', 1);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 1, 4, 'Fundus kamera', 10);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 2, 5, 'Autorefraktometar', 2);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 2, 6, 'Topograf', 9);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 1, 7, 'Keratometar', 4);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 2, 8, 'Tonometar', 3);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 1, 9, 'Pahimetar', 7);
INSERT INTO uredjaj (idoft, idobj, iduredj, nazivuredj, idtipu) VALUES (1, 2, 10, 'Biomikroskop', 13);


INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES 
('A001', 1, 1, 1);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A002', 2, 2, 2);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A003', 3, 3, 3);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A004', 4, 4, 4);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A006', 6, 6, 6);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A007', 7, 7, 7);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A008', 8, 8, 8);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A009', 9, 9, 9);
INSERT INTO je_imao (sifrabol, idcp, idpac, idizv) VALUES ('A010', 10, 10, 10);


INSERT INTO tipu_lab (idtipu, iduput) VALUES (4, 4);
INSERT INTO tipu_lab (idtipu, iduput) VALUES (7, 7);

INSERT INTO bira_se (idrad, idpreg, idpac) VALUES 
(2, 1, 1);
INSERT INTO bira_se (idrad, idpreg, idpac) VALUES (3, 2, 2);
INSERT INTO bira_se (idrad, idpreg, idpac) VALUES (4, 3, 3);
INSERT INTO bira_se (idrad, idpreg, idpac) VALUES (5, 4, 4);
INSERT INTO bira_se (idrad, idpreg, idpac) VALUES (6, 5, 5);