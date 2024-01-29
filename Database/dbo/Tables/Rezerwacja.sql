CREATE TABLE [dbo].[Rezerwacja] (
    [idRezerwacja]   INT             NOT NULL,
    [DataOd]         DATE            NOT NULL,
    [DataDo]         DATE            NOT NULL,
    [Koszt]          NUMERIC (10, 2) NOT NULL,
    [idUslugobiorca] INT             NOT NULL,
    [idOferta]       INT             NOT NULL,
    CONSTRAINT [Rezerwacja_pk] PRIMARY KEY CLUSTERED ([idRezerwacja] ASC),
    CONSTRAINT [Rezerwacja_Oferta] FOREIGN KEY ([idOferta]) REFERENCES [dbo].[Oferta] ([idOferta]),
    CONSTRAINT [Rezerwacja_Uslugobiorca] FOREIGN KEY ([idUslugobiorca]) REFERENCES [dbo].[Uslugobiorca] ([idUslugobiorca])
);

