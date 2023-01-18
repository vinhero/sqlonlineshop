INSERT INTO Warenkorb (Zwischenpreis)
VALUES (100.00),
    (50.00);
INSERT INTO Benutzer (
        BenutzerName,
        Email,
        Passwort,
        Vorname,
        Nachname,
        Geburtsdatum,
        LetzterLogin,
        WarenkorbID
    )
VALUES (
        'user1',
        'user1@example.com',
        'password123',
        'John',
        'Doe',
        '1970-01-01',
        '2022-12-31',
        1
    ),
    (
        'user2',
        'user2@example.com',
        'password456',
        'Jane',
        'Smith',
        '1980-02-15',
        '2022-11-15',
        2
    );
INSERT INTO Adressen (PLZ, Ort, StrassenName, HausNr, Land)
VALUES (12345, 'City1', 'Street1', '1', 'Country1'),
    (67890, 'City2', 'Street2', '2', 'Country2');
INSERT INTO Produkte (
        ProduktName,
        ProduktArt,
        ProduktPreis,
        ProduktBeschreibung,
        BildPath,
        AnzahlLagernd,
        Verfuegbarkeit
    )
VALUES (
        'Wide Phone',
        'Smartphone',
        999.98,
        'A wide Version of the normal IPhone.. so like a IPad.. but as a Phone.',
        '../assets/iphone.webp',
        10,
        TRUE
    ),
    (
        'Motorola',
        'Foldable Phone',
        5599.99,
        'A foldable Phone to look like a rich Nerd.',
        '../assets/Motorola.jpg',
        3,
        TRUE
    ),
    (
        'Nokia',
        'A Brick',
        599.99,
        'Speaks for itself.',
        '../assets/Nokia.jpg',
        0,
        FALSE
    );
INSERT INTO Bestellungsstatus (StatusBezeichnung)
VALUES ('In Bearbeitung'),
    ('Versendet');
INSERT INTO Rabattcodes (Code, Wert)
VALUES ('SUMMER20', 20),
    ('WINTER10', 10);
INSERT INTO Versandarten (Lieferant)
VALUES ('UPS'),
    ('FedEx');
INSERT INTO Zahlungsmethoden (Anbieter, Gebuehr)
VALUES ('PayPal', 1.00),
    ('Credit Card', 2.50);
INSERT INTO Bestellungen (
        Gesamtpreis,
        BestellungStatusID,
        RabattcodeID,
        VersandArtID,
        ZahlungsmethodeID,
        BestellungsadresseID,
        LieferadresseID,
        WarenkorbID
    )
VALUES (100, 1, 1, 1, 1, 1, 1, 1),
    (75.00, 2, 2, 2, 2, 2, 2, 2);
INSERT INTO Versandlaender (Landname, Landkuerzel)
VALUES ('Deutschland', 'DE'),
    ('Österreich', 'AUT'),
    ('Schweiz', 'CHE');
INSERT INTO `warenkorb_produkte` (`WarenkorbID`, `ProduktID`, `Anzahl`)
VALUES ('1', '1', '2'),
    ('1', '2', '3'),
    ('2', '1', '1');