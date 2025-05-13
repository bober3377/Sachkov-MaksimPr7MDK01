--
-- ���� ������������ � ������� SQLiteStudio v3.4.4 � �� ��� 13 15:17:45 2025
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: Gruppa
CREATE TABLE IF NOT EXISTS Gruppa (
    IdGruppa INTEGER PRIMARY KEY AUTOINCREMENT
                     UNIQUE
                     NOT NULL,
    Gruppa   TEXT    NOT NULL
);

INSERT INTO Gruppa (
                       IdGruppa,
                       Gruppa
                   )
                   VALUES (
                       1,
                       '���-�-�-111'
                   );

INSERT INTO Gruppa (
                       IdGruppa,
                       Gruppa
                   )
                   VALUES (
                       2,
                       '���-�-�-121'
                   );

INSERT INTO Gruppa (
                       IdGruppa,
                       Gruppa
                   )
                   VALUES (
                       3,
                       '���-�-�-111'
                   );

INSERT INTO Gruppa (
                       IdGruppa,
                       Gruppa
                   )
                   VALUES (
                       4,
                       '���-�-�-121'
                   );


-- �������: Prepodovatel
CREATE TABLE IF NOT EXISTS Prepodovatel (
    IdPrepodavatel INTEGER PRIMARY KEY AUTOINCREMENT
                           UNIQUE
                           NOT NULL,
    Gruppa         TEXT    REFERENCES Gruppa (IdGruppa) ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION,
    FIO            INTEGER,
    Kyrs           INTEGER,
    Zadolznosti    INTEGER NOT NULL
);

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             1,
                             '2',
                             '������ �.�.',
                             3,
                             2
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             2,
                             '1',
                             '������ �.�.',
                             4,
                             1
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             3,
                             '3',
                             '������� �.�.',
                             4,
                             0
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             4,
                             '4',
                             '�������� �.�.',
                             3,
                             1
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             5,
                             '1',
                             '������ �.�',
                             2,
                             3
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             6,
                             '1',
                             '����� �.�',
                             2,
                             0
                         );

INSERT INTO Prepodovatel (
                             IdPrepodavatel,
                             Gruppa,
                             FIO,
                             Kyrs,
                             Zadolznosti
                         )
                         VALUES (
                             7,
                             '3',
                             '�������� �.�',
                             3,
                             1
                         );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
