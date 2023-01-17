INSERT INTO Warenkorb (Zwischenpreis)
VALUES (100.00);
INSERT INTO Warenkorb (Zwischenpreis)
VALUES (50.00);
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
    );
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
VALUES (12345, 'City1', 'Street1', '1', 'Country1');
INSERT INTO Adressen (PLZ, Ort, StrassenName, HausNr, Land)
VALUES (67890, 'City2', 'Street2', '2', 'Country2');
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
        'Product1',
        'Electronics',
        99.99,
        'This is a description of product 1',
        'product1.jpg',
        10,
        TRUE
    );
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
        'Product2',
        'Clothing',
        49.99,
        'This is a description of product 2',
        'product2.jpg',
        5,
        TRUE
    );
INSERT INTO Bestellungsstatus (StatusBezeichnung)
VALUES ('In Bearbeitung');
INSERT INTO Bestellungsstatus (StatusBezeichnung)
VALUES ('Versendet');
INSERT INTO Rabattcodes (Code, Wert)
VALUES ('SUMMER20', 20);
INSERT INTO Rabattcodes (Code, Wert)
VALUES ('WINTER10', 10);
INSERT INTO Versandarten (Lieferant)
VALUES ('UPS');
INSERT INTO Versandarten (Lieferant)
VALUES ('FedEx');
INSERT INTO Zahlungsmethoden (Anbieter, Gebuehr)
VALUES ('PayPal', 1.00);
INSERT INTO Zahlungsmethoden (Anbieter, Gebuehr)
VALUES ('Credit Card', 2.50);
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
VALUES (100, 1, 1, 1, 1, 1, 1, 1);
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
VALUES (75.00, 2, 2, 2, 2, 2, 2, 2);