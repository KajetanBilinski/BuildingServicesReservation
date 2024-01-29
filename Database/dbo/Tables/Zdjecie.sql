CREATE TABLE [dbo].[Zdjecie] (
    [idZdjecie]     INT           NOT NULL,
    [NazwaPliku]    VARCHAR (200) NOT NULL,
    [idUslugodawca] INT           NOT NULL,
    CONSTRAINT [Zdjecie_pk] PRIMARY KEY CLUSTERED ([idZdjecie] ASC),
    CONSTRAINT [Zdjecie_Uslugodawca] FOREIGN KEY ([idUslugodawca]) REFERENCES [dbo].[Uslugodawca] ([idUslugodawca])
);

