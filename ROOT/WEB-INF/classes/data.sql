use quiz4;

-- Pitanje 1. Razred 1.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Sta predstavlja digitalni zapis?', 1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('zapis pomocu reci', 'Digitalni zapis je zapis pomocu niza brojeva, a kod analognog zapisa se kontinualne promene signala zamenjuju kreiranjem odgovarajucih kontinualnih promena medijuma.', 1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('zapis pomocu niza brojeva', NULL, 0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('zapis pomocu signala ', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID,AnswerID)
VALUES(1, 1), (1,2), (1,3);

-- Pitanje 2. Razred 1.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Na koji nacin se predstavlja tekst u racunaru?', 1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('kao niz karaktera', 'U računaru postoji kodna tabela u kojoj je za svaki karakter upisan odgovarajući binarni kod (broj). Tekst, odnosno niz karaktera, se dakle u memoriji računara pamti kao niz binarnih brojeva odgovarajućih svakom karakteru teksta',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('kao karakter', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('kao skup informacija', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID,AnswerID)
VALUES(2, 4), (2,5), (2,6);

-- Pitanje 3. Razred 1.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Od koliko karaktera se sastoji ASCII tabela?',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('256', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('128', 'Sastoji se od 128 karaktera i za  svaki se koristi po 1 bajt.',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('127', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(3, 7), (3,8),(3,9);

-- Pitanje 4. Razred 1.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Koji od navedenih komponenti predstavlja I/O uredjaj?',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Modem', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Tastatura', 'Tastatura /KEYBOARD/ je ulazni uređaj i koristi se za upis pojedinačnih znakova u računar, najčešće teksta, dok je monitor izlazni uredjaj a modem izlazno-ulazni uredjaj.',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Monitor', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(4, 10), (4,11),(4,12);

-- Pitanje 5. Razred 1.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Šta znači skraćenica PC?','PC (Personal Computer) ili na srpskom jeziku lični računar (računar nekog pojedinca).',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Personalni računar', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Mainframe računar za jednog korisnika',NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Računar', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(5, 13), (5,14),(5,15);


-- Pitanje 1. Razred 2.

INSERT INTO quiz4.question
(Content, Category)
VALUES('JPG, TIF, GIF I PNG predstavljaju?', 2);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('formate video zapisa', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('formate audio zapisa', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('formate zapisa slika', 'JPG je najzastupljeniji format slike, dok se PNG sve vise koristi zbog mogucnosti da belezi sliku u true-color paleti.
',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(6, 16), (6,17), (6,18);

-- Pitanje 2. Razred 2.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Sta je rezolucija?', 2);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Rezolucija predstavlja ostrinu slike', 'Rezolucija se prvenstveno koristi kako bi bila definisana jasnoća, to jest oštrina neke slike. Takođe se primenjuje onda kada je potrebno opisati osobine određenog štampača ili monitora, te kod definisanja rastera, to jest rasterske grafike
',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Rezolucija predstavlja sirinu slike', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Rezolucija predstavlja duzinu slike', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(7, 19), (7,20), (7,21);

-- Pitanje 3. Razred 2.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Sta je to racunarstvo u oblaku?', 2);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Podaci koji se korisniku isporucuju putem diska', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Podaci koji se korisniku isporucuju putem usb-a', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Podaci koji se korisniku isporucuju putem interneta', 'Računarstvo u Oblaku je oblast računarstva u kojoj se informatičke usluge (npr. servisi, hardverski resursi, softver, baze podataka, dokumenti, slike, video, informacije...) isporučuju potrošačima putem Interneta',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(8, 22), (8,23),(8,24);

-- Pitanje 4. Razred 2.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Linux je:', 2);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Komponenta Window operativnih sistema', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Mašinski programski jezik', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Operativni sistem', ' Linux je operativni sistem za računare i njegovo jezgro. Jedan je od najpoznatijih primera slobodnog softvera i razvoja putem otvorenog koda. Za razliku od drugih operativnih sistema (kao na primer Windowsa i Mac OSa) njegov kod je dostupan javnosti i svako ima pravo da ga slobodno koristi, menja i redistributira.',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(9, 25), (9,26),(9,27);

-- Pitanje 5. Razred 2.

INSERT INTO quiz4.question
(Content, Category)
VALUES('HTML je skaćenica od:', 2);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Hibrid Text Multi Language', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Hyper Text Multi Language', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Hyper Text Markup Language', 'Takozvani jezik za označavanje hiper tekstova, to jest HTML (Hyper Text Markup Language) se na prvom mestu koristi kada je potrebno kreirati određenu web stranicu uz primenu različitih editora.',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(10, 28), (10,29),(10,30);

-- Pitanje 1. Razred 3.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Ko je razvio programski jezik Pascal?', 3);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Blez Paskal', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Niklaus Virt', 'Paskal (engl. Pascal) je imperativni programski jezik, koji je 1970. godine razvio Niklaus Virt, kao jezik pogodan za učenje strukturnog programiranja. Imenovan je po čuvenom francuskom matematičaru i filozofu Blezu Paskalu',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Bil Gejts', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(11, 31),(11,32),(11,33);

-- Pitanje 2. Razred 3.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Koliko naredbi za opis ciklusa postoji u Pascalu?', 3);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('dve', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('tri', 'U pascalu za opis ciklusa postoje tri naredbe a to su: WHILE,FOR i REPEAT',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('cetiri', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(12, 34), (12,35),(12,36);

-- Pitanje 3. Razred 3.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Redni broj ItemIndexa kod radio button-a pocinje od', 3);


INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('0', 'ItemIndex odredjuje index trenutno aktivnog radio dugmeta u okrivu grupe.
',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('1', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('-1', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(14, 37), (14,38),(14,39);

-- Pitanje 4. Razred 3.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Koja vrsta štampača koristi mastilo?', 3);


INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Ink-jet', ' Glavna razlika između inkjet i laserskih štampača ogleda se u vrsti materijala koji se koriste za štampanje - inkjet štampači koriste ketridže sa tintom (mastilom), dok laserski štampači koriste tonere koji sadrže prah.',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Matrični', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Termalni', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(15, 40), (15,41),(15,42);

-- Pitanje 5. Razred 3.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Koliko parica sadrži UTP kabl?', 3);


INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('4', ' UTP kabl koji
obično srećemo primenjen u računarskim mrežama je sastavljen od četiri para žica (parica)
unutar gumenog omotača.',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('2', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('4', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(16, 43), (16,44),(16,45);




-- Pitanje 1. Razred 4.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Koliko najmanje racunara cini racunarsku mrezu?', 4);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('dva ili vise', 'Za svaku mrezu neophodna su najmanje dva racunara kao i mrezna kartica na svakom od njih, medijum za komunikaciju, pasivna i aktivna mrezna oprema kao i operativni sistemi koji podrzavaju rad sa mrezama.' ,1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('tri ili vise', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('100 ili vise', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(17, 46), (17, 47), (17, 48);

-- Pitanje 2. Razred 4.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Sta odredjuje da li je mreza LAN,  MAN ili WAN?', 4);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('broj racunara', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('udaljenost racunara', 'LAN je lokalna racunarska mreza(jedna kancelarija,zgrada..) dok je WAN mreza sirokog podrucja koja se prostire na vise geografskih lokacija a MAN uglavnom obuhvata vece oblasti najcesce na nivou grada' ,1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('broj servera', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(18, 49),(18,50),(18,51);

-- Pitanje 3. za Razred 4.

INSERT INTO quiz4.question
(Content, Category)
VALUES('Koliko bitova koristi IP verzija 4 (IPv4) za adresu?', 4);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('16', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('32', 'IPv4 koristi 32 bita za svoje Internet adrese. To znači da podržava 2^32 IP adresa, što je ukupno – 4.29 milijardi.',1);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('64', NULL,0);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(19, 52), (19,53),(19,54);

-- Pitanje 4. Razred 4.
INSERT INTO quiz4.question
(Content, Category)
VALUES('Koliko žica sadrži UTP kabl?', 4);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('1', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('5', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('8', 'UTP kabl je sastavljen od cetiri para zica(parica) unutar gumenog omotaca',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(20, 55),(20,56),(20,57);

-- Pitanje 5. Razred 4.
INSERT INTO quiz4.question
(Content, Category)
VALUES('ROM je skraćenica od?', 4);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Read Only Memory', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Read On-line Memory', NULL,0);

INSERT INTO quiz4.answer
(Content, Description, Correct)
VALUES('Random Only Memory', 'ROM je skraćenica od Read Only Memory što bi u prevodu značilo memorija samo za čitanje. ROM je najmanja memorija, tvornički upisana i njen sadržaj se ne može mijenjati niti izbrisati.',1);

INSERT INTO quiz4.questionanswer
(QuestionID, AnswerID)
VALUES(21, 58),(21,59),(21,60);