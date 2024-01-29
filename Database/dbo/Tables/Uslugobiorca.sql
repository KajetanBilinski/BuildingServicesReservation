CREATE TABLE [dbo].[Uslugobiorca] (
    [idUslugobiorca] INT          NOT NULL,
    [Imie]           VARCHAR (50) NOT NULL,
    [Nazwisko]       VARCHAR (50) NOT NULL,
    CONSTRAINT [Uslugobiorca_pk] PRIMARY KEY CLUSTERED ([idUslugobiorca] ASC)
);

