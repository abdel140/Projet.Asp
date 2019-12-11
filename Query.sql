CREATE TABLE [dbo].[Utilisateur]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nom] NCHAR(50) NULL, 
    [Prenom] NCHAR(50) NULL, 
    [EMail] NCHAR(50) NULL, 
    [MotDePasse] NCHAR(200) NULL, 
    [CreeLe] DATETIME NULL DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE [dbo].[Photo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Titre] NCHAR(50) NULL, 
    [Url] NCHAR(256) NULL, 
    [UserId] INT NOT NULL,
	CONSTRAINT fk_user FOREIGN KEY (UserId) 
    REFERENCES Utilisateur(Id)
)

SET IDENTITY_INSERT [dbo].[Utilisateur] ON
INSERT INTO [dbo].[Utilisateur] ([Id], [Nom], [Prenom], [EMail], [MotDePasse], [CreeLe]) VALUES (1, N'Labasse                                           ', N'Sylvain                                           ', N'labasse@gmail.com                                 ', NULL, N'2019-11-26 22:02:17')
SET IDENTITY_INSERT [dbo].[Utilisateur] OFF

SET IDENTITY_INSERT [dbo].[Photo] ON
INSERT INTO [dbo].[Photo] ([Id], [Titre], [Url], [UserId]) VALUES (1, N'Chat 1                                            ', N'cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__340.jpg                                                                                                                                                                                                     ', 1)
INSERT INTO [dbo].[Photo] ([Id], [Titre], [Url], [UserId]) VALUES (2, N'Chat 2                                            ', N'cdn.pixabay.com/photo/2019/11/08/11/56/cat-4611189__340.jpg                                                                                                                                                                                                     ', 1)
INSERT INTO [dbo].[Photo] ([Id], [Titre], [Url], [UserId]) VALUES (3, N'Chat 3                                            ', N'cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262__340.jpg                                                                                                                                                                                                      ', 1)
SET IDENTITY_INSERT [dbo].[Photo] OFF

