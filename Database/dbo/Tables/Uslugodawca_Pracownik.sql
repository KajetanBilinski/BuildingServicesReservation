CREATE TABLE [dbo].[Uslugodawca_Pracownik] (
    [idUslugodawca_Pracownik] INT           NOT NULL,
    [Stanowisko]              VARCHAR (150) NOT NULL,
    [idPracownik]             INT           NOT NULL,
    [idUslugodawca]           INT           NOT NULL,
    CONSTRAINT [Uslugodawca_Pracownik_pk] PRIMARY KEY CLUSTERED ([idUslugodawca_Pracownik] ASC),
    CONSTRAINT [Uslugodawca_Pracownik_Pracownik] FOREIGN KEY ([idPracownik]) REFERENCES [dbo].[Pracownik] ([idPracownik]),
    CONSTRAINT [Uslugodawca_Pracownik_Uslugodawca] FOREIGN KEY ([idUslugodawca]) REFERENCES [dbo].[Uslugodawca] ([idUslugodawca])
);

