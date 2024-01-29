CREATE TABLE [dbo].[Uslugodawca] (
    [idUslugodawca] INT           NOT NULL,
    [Nazwa]         VARCHAR (100) NOT NULL,
    [NIP]           VARCHAR (20)  NOT NULL,
    CONSTRAINT [Uslugodawca_pk] PRIMARY KEY CLUSTERED ([idUslugodawca] ASC)
);

