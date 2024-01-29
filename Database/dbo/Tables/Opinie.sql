CREATE TABLE [dbo].[Opinie] (
    [idOpinia]       INT           NOT NULL,
    [Opis]           VARCHAR (500) NOT NULL,
    [Ocena]          INT           NOT NULL,
    [dUslugodawca]   INT           NOT NULL,
    [idUslugobiorca] INT           NOT NULL,
    CONSTRAINT [Opinie_pk] PRIMARY KEY CLUSTERED ([idOpinia] ASC),
    CONSTRAINT [Opinie_Uslugobiorca] FOREIGN KEY ([idUslugobiorca]) REFERENCES [dbo].[Uslugobiorca] ([idUslugobiorca]),
    CONSTRAINT [Opinie_Uslugodawca] FOREIGN KEY ([dUslugodawca]) REFERENCES [dbo].[Uslugodawca] ([idUslugodawca])
);

