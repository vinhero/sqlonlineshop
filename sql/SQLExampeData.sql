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
        'JohnDoe',
        'johndoe@email.com',
        'password123',
        'John',
        'Doe',
        '1990-01-01',
        '2022-01-01',
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
        'JaneDoe',
        'janedoe@email.com',
        'password456',
        'Jane',
        'Doe',
        '1995-01-01',
        '2022-01-01',
        2
    );
INSERT INTO Adressen (PLZ, Ort, StrassenName, HausNr, Land)
VALUES (12345, 'New York', 'Main St', '1', 'USA');
INSERT INTO Adressen (PLZ, Ort, StrassenName, HausNr, Land)
VALUES (67890, 'Los Angeles', 'Sunset Blvd', '2', 'USA');
INSERT INTO Produkte (
        ProduktName,
        ProduktArt,
        ProduktPreis,
        ProduktBeschreibung,
        AnzahlLagernd,
        Verfuegbarkeit
    )
VALUES (
        'Shoe',
        'Footwear',
        50.00,
        'A comfortable shoe',
        10,
        1
    );
INSERT INTO Produkte (
        ProduktName,
        ProduktArt,
        ProduktPreis,
        ProduktBeschreibung,
        AnzahlLagernd,
        Verfuegbarkeit
    )
VALUES (
        'Hat',
        'Accessories',
        20.00,
        'A stylish hat',
        5,
        1
    );
INSERT INTO Rechnungen (
        Gesamtpreis,
        RechnungStatus,
        Rabattcode,
        VersandArt,
        Zahlungsmethode,
        RechnungsadresseID,
        LieferadresseID,
        WarenkorbID
    )
VALUES (100.00, 1, 1, 1, 1, 1, 2, 1);
INSERT INTO Rechnungen (
        Gesamtpreis,
        RechnungStatus,
        VersandArt,
        Zahlungsmethode,
        RechnungsadresseID,
        LieferadresseID,
        WarenkorbID
    )
VALUES (50.00, 'Cancelled', 2, 2, 2, 2, 2);
INSERT INTO Rechnungsstatus (StatusBezeichnung)
VALUES ('Completed');
INSERT INTO Rechnungsstatus (StatusBezeichnung)
VALUES ('Cancelled');
INSERT INTO Rabattcodes (Code, Wert)
VALUES ('SALE20', 20);
INSERT INTO Versandarten (Lieferant)
VALUES ('FedEx');
INSERT INTO Versandarten (Lieferant)
VALUES ('UPS');
INSERT INTO Zahlungsmethoden (Anbieter, Gebuehr)
VALUES ('Visa', 2.00);
INSERT INTO Zahlungsmethoden (Anbieter, Gebuehr)
VALUES ('MasterCard', 3.00);
INSERT INTO Versandlaender (Landname, Landkuerzel)
VALUES ('Deutschland', 'DE');
INSERT INTO Versandlaender (Landname, Landkuerzel)
VALUES ('Austria', 'AUT');
INSERT INTO Versandlaender (Landname, Landkuerzel)
VALUES ('Schweiz', 'CHE');