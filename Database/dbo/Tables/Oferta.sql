CREATE TABLE [dbo].[Oferta] (
    [idOferta]      INT           NOT NULL,
    [Nazwa]         VARCHAR (150) NOT NULL,
    [Opis]          VARCHAR (500) NOT NULL,
    [idUslugodawca] INT           NOT NULL,
    CONSTRAINT [Oferta_pk] PRIMARY KEY CLUSTERED ([idOferta] ASC),
    CONSTRAINT [Oferta_Uslugodawca] FOREIGN KEY ([idUslugodawca]) REFERENCES [dbo].[Uslugodawca] ([idUslugodawca])
);

