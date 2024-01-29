CREATE TABLE [dbo].[User] (
    [idUser]         INT          NOT NULL,
    [Login]          VARCHAR (50) NOT NULL,
    [Haslo]          VARCHAR (50) NOT NULL,
    [Rola]           VARCHAR (50) NOT NULL,
    [idUslugodawca]  INT          NULL,
    [idUslugobiorca] INT          NULL,
    CONSTRAINT [User_pk] PRIMARY KEY CLUSTERED ([idUser] ASC),
    CONSTRAINT [User_Uslugobiorca] FOREIGN KEY ([idUslugobiorca]) REFERENCES [dbo].[Uslugobiorca] ([idUslugobiorca]),
    CONSTRAINT [User_Uslugodawca] FOREIGN KEY ([idUslugodawca]) REFERENCES [dbo].[Uslugodawca] ([idUslugodawca])
);

