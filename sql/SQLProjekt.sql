-- Datenbank wird erstellt
CREATE DATABASE SQLProject;
-- Die Datenbank wird ausgewählt
USE SQLProject;
-- Die Tabellen werden erstellt:
-- Warenkorb
CREATE TABLE Warenkorb (
    WbID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Zwischenpreis FLOAT(10, 2) DEFAULT 0.00
);
-- Benutzer
CREATE TABLE Benutzer (
    BrID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BenutzerName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Passwort VARCHAR(255) NOT NULL,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    Geburtsdatum DATE NOT NULL,
    LetzterLogin DATE NOT NULL,
    Erstellungsdatum DATE DEFAULT CURRENT_TIMESTAMP,
    WarenkorbID INT(11),
    FOREIGN KEY (WarenkorbID) REFERENCES Warenkorb(WbID)
);
-- Adressen
CREATE TABLE Adressen (
    AeID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PLZ INT(10) NOT NULL,
    Ort VARCHAR(255) NOT NULL,
    StrassenName VARCHAR(255) NOT NULL,
    HausNr VARCHAR(10) NOT NULL,
    Land VARCHAR(255) NOT NULL
);
-- Produkte
CREATE TABLE Produkte (
    PrID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ProduktName VARCHAR(255) NOT NULL,
    ProduktArt VARCHAR(255) NOT NULL,
    ProduktPreis FLOAT(10, 2) NOT NULL,
    ProduktBeschreibung TEXT,
    BildPath VARCHAR(255),
    AnzahlLagernd INT(11) DEFAULT 0,
    Verfuegbarkeit BOOLEAN DEFAULT FALSE
);
CREATE TABLE Bestellungsstatus (
    StID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StatusBezeichnung VARCHAR(255) NOT NULL
);
-- Bestellungen & Bestellungsinhalte
CREATE TABLE Rabattcodes (
    RtID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Code VARCHAR(255) NOT NULL,
    Wert INT(11) DEFAULT 0
);
CREATE TABLE Versandarten (
    VtID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Lieferant VARCHAR(255) NOT NULL
);
CREATE TABLE Zahlungsmethoden (
    ZeID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Anbieter VARCHAR(255) NOT NULL,
    Gebuehr FLOAT(10, 2)
);
CREATE TABLE Bestellungen (
    BnID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Gesamtpreis FLOAT(10, 2) DEFAULT 0.00,
    BestellungStatusID INT(11) NOT NULL,
    RabattcodeID INT(11) NOT NULL,
    VersandArtID INT(11) NOT NULL,
    ZahlungsmethodeID INT(11) NOT NULL,
    BestellungsadresseID INT(11) NOT NULL,
    LieferadresseID INT(11) NOT NULL,
    WarenkorbID INT(11) NOT NULL,
    FOREIGN KEY (BestellungStatusID) REFERENCES Bestellungsstatus(StID),
    FOREIGN KEY (RabattcodeID) REFERENCES Rabattcodes(RtID),
    FOREIGN KEY (VersandArtID) REFERENCES Versandarten(VtID),
    FOREIGN KEY (ZahlungsmethodeID) REFERENCES Zahlungsmethoden(ZeID),
    FOREIGN KEY (BestellungsadresseID) REFERENCES Adressen(AeID),
    FOREIGN KEY (LieferadresseID) REFERENCES Adressen(AeID),
    FOREIGN KEY (WarenkorbID) REFERENCES Warenkorb(WbID)
);
-- Versandländer
CREATE TABLE Versandlaender (
    LdID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Landname VARCHAR(255) NOT NULL,
    Landkuerzel VARCHAR(255) NOT NULL
);
-- Verbindungstabelle Benutzer <--> Adressen
CREATE TABLE Benutzer_Adressen (
    BenutzerID INT(11) NOT NULL,
    AdresseID INT(11) NOT NULL,
    PRIMARY KEY (BenutzerID, AdresseID),
    FOREIGN KEY (BenutzerID) REFERENCES Benutzer(BrID),
    FOREIGN KEY (AdresseID) REFERENCES Adressen(AeID)
);
-- Verbindungstabelle Warenkorb <--> Produkte
CREATE TABLE Warenkorb_Produkte (
    WarenkorbID INT(11) NOT NULL,
    ProduktID INT(11) NOT NULL,
    Anzahl INT(2) DEFAULT 1,
    PRIMARY KEY (WarenkorbID, ProduktID),
    FOREIGN KEY (WarenkorbID) REFERENCES Warenkorb(WbID),
    FOREIGN KEY (ProduktID) REFERENCES Produkte(PrID)
);