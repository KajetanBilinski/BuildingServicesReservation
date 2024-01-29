CREATE TABLE [dbo].[Pracownik] (
    [idPracownik] INT          NOT NULL,
    [Imie]        VARCHAR (50) NOT NULL,
    [Nazwisko]    VARCHAR (50) NOT NULL,
    CONSTRAINT [Pracownik_pk] PRIMARY KEY CLUSTERED ([idPracownik] ASC)
);

