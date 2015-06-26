
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/25/2015 20:57:38
-- Generated from EDMX file: C:\Users\Alex\Documents\Visual Studio 2013\Projects\Hunderassenverwaltung\DogRaceManagement\Hunderassenverwaltung\Models\RaceManager.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Hunderassenverwaltung];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesCharacteristics_Characteristics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesCharacteristics] DROP CONSTRAINT [FK_RacesCharacteristics_Characteristics];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesCharacteristics_Races]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesCharacteristics] DROP CONSTRAINT [FK_RacesCharacteristics_Races];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesFurrs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSet] DROP CONSTRAINT [FK_RacesFurrs];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSet] DROP CONSTRAINT [FK_RacesGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesSocialUsages_Races]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSocialUsages] DROP CONSTRAINT [FK_RacesSocialUsages_Races];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesSocialUsages_SocialUsages]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSocialUsages] DROP CONSTRAINT [FK_RacesSocialUsages_SocialUsages];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesWorkUsages_Races]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesWorkUsages] DROP CONSTRAINT [FK_RacesWorkUsages_Races];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesWorkUsages_WorkUsages]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesWorkUsages] DROP CONSTRAINT [FK_RacesWorkUsages_WorkUsages];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[CharacteristicsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacteristicsSet];
GO
IF OBJECT_ID(N'[dbo].[FurrsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FurrsSet];
GO
IF OBJECT_ID(N'[dbo].[GroupsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupsSet];
GO
IF OBJECT_ID(N'[dbo].[RacesCharacteristics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RacesCharacteristics];
GO
IF OBJECT_ID(N'[dbo].[RacesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RacesSet];
GO
IF OBJECT_ID(N'[dbo].[RacesSocialUsages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RacesSocialUsages];
GO
IF OBJECT_ID(N'[dbo].[RacesWorkUsages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RacesWorkUsages];
GO
IF OBJECT_ID(N'[dbo].[SocialUsagesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialUsagesSet];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[WorkUsagesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkUsagesSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL,
    [User_Id] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [UserId] nvarchar(128)  NOT NULL,
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [UserName] nvarchar(max)  NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NULL,
    [Prename] nvarchar(max)  NULL,
    [Address] nvarchar(max)  NULL,
    [Zip] nvarchar(max)  NULL,
    [City] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Discriminator] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'CharacteristicsSet'
CREATE TABLE [dbo].[CharacteristicsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FurrsSet'
CREATE TABLE [dbo].[FurrsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GroupsSet'
CREATE TABLE [dbo].[GroupsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RacesSet'
CREATE TABLE [dbo].[RacesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [MinimumAge] smallint  NOT NULL,
    [MaximumAge] smallint  NOT NULL,
    [MinimumWeight] smallint  NOT NULL,
    [MaximumWeight] smallint  NOT NULL,
    [MinimumWithers] smallint  NOT NULL,
    [MaximumWithers] nvarchar(max)  NOT NULL,
    [History] nvarchar(max)  NOT NULL,
    [GeneralInformation] nvarchar(max)  NOT NULL,
    [PayAttentionTo] nvarchar(max)  NOT NULL,
    [Picture] varbinary(max)  NOT NULL,
    [Furrs_Id] int  NOT NULL,
    [Groups_Id] int  NOT NULL,
    [Country] varchar(max)  NOT NULL
);
GO

-- Creating table 'SocialUsagesSet'
CREATE TABLE [dbo].[SocialUsagesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'WorkUsagesSet'
CREATE TABLE [dbo].[WorkUsagesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'C__MigrationHistory1Set'
CREATE TABLE [dbo].[C__MigrationHistory1Set] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'RacesCharacteristics'
CREATE TABLE [dbo].[RacesCharacteristics] (
    [CharacteristicsSet_Id] int  NOT NULL,
    [RacesSet_Id] int  NOT NULL
);
GO

-- Creating table 'RacesSocialUsages'
CREATE TABLE [dbo].[RacesSocialUsages] (
    [RacesSet_Id] int  NOT NULL,
    [SocialUsagesSet_Id] int  NOT NULL
);
GO

-- Creating table 'RacesWorkUsages'
CREATE TABLE [dbo].[RacesWorkUsages] (
    [RacesSet_Id] int  NOT NULL,
    [WorkUsagesSet_Id] int  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles1'
CREATE TABLE [dbo].[AspNetUserRoles1] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId], [LoginProvider], [ProviderKey] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [ProviderKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CharacteristicsSet'
ALTER TABLE [dbo].[CharacteristicsSet]
ADD CONSTRAINT [PK_CharacteristicsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FurrsSet'
ALTER TABLE [dbo].[FurrsSet]
ADD CONSTRAINT [PK_FurrsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GroupsSet'
ALTER TABLE [dbo].[GroupsSet]
ADD CONSTRAINT [PK_GroupsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [PK_RacesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialUsagesSet'
ALTER TABLE [dbo].[SocialUsagesSet]
ADD CONSTRAINT [PK_SocialUsagesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkUsagesSet'
ALTER TABLE [dbo].[WorkUsagesSet]
ADD CONSTRAINT [PK_WorkUsagesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory1Set'
ALTER TABLE [dbo].[C__MigrationHistory1Set]
ADD CONSTRAINT [PK_C__MigrationHistory1Set]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [CharacteristicsSet_Id], [RacesSet_Id] in table 'RacesCharacteristics'
ALTER TABLE [dbo].[RacesCharacteristics]
ADD CONSTRAINT [PK_RacesCharacteristics]
    PRIMARY KEY CLUSTERED ([CharacteristicsSet_Id], [RacesSet_Id] ASC);
GO

-- Creating primary key on [RacesSet_Id], [SocialUsagesSet_Id] in table 'RacesSocialUsages'
ALTER TABLE [dbo].[RacesSocialUsages]
ADD CONSTRAINT [PK_RacesSocialUsages]
    PRIMARY KEY CLUSTERED ([RacesSet_Id], [SocialUsagesSet_Id] ASC);
GO

-- Creating primary key on [RacesSet_Id], [WorkUsagesSet_Id] in table 'RacesWorkUsages'
ALTER TABLE [dbo].[RacesWorkUsages]
ADD CONSTRAINT [PK_RacesWorkUsages]
    PRIMARY KEY CLUSTERED ([RacesSet_Id], [WorkUsagesSet_Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles1'
ALTER TABLE [dbo].[AspNetUserRoles1]
ADD CONSTRAINT [PK_AspNetUserRoles1]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_User_Id]
ON [dbo].[AspNetUserClaims]
    ([User_Id]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Furrs_Id] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [FK_RacesFurrs]
    FOREIGN KEY ([Furrs_Id])
    REFERENCES [dbo].[FurrsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RacesFurrs'
CREATE INDEX [IX_FK_RacesFurrs]
ON [dbo].[RacesSet]
    ([Furrs_Id]);
GO

-- Creating foreign key on [Groups_Id] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [FK_RacesGroups]
    FOREIGN KEY ([Groups_Id])
    REFERENCES [dbo].[GroupsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RacesGroups'
CREATE INDEX [IX_FK_RacesGroups]
ON [dbo].[RacesSet]
    ([Groups_Id]);
GO

-- Creating foreign key on [CharacteristicsSet_Id] in table 'RacesCharacteristics'
ALTER TABLE [dbo].[RacesCharacteristics]
ADD CONSTRAINT [FK_RacesCharacteristics_CharacteristicsSet]
    FOREIGN KEY ([CharacteristicsSet_Id])
    REFERENCES [dbo].[CharacteristicsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RacesSet_Id] in table 'RacesCharacteristics'
ALTER TABLE [dbo].[RacesCharacteristics]
ADD CONSTRAINT [FK_RacesCharacteristics_RacesSet]
    FOREIGN KEY ([RacesSet_Id])
    REFERENCES [dbo].[RacesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RacesCharacteristics_RacesSet'
CREATE INDEX [IX_FK_RacesCharacteristics_RacesSet]
ON [dbo].[RacesCharacteristics]
    ([RacesSet_Id]);
GO

-- Creating foreign key on [RacesSet_Id] in table 'RacesSocialUsages'
ALTER TABLE [dbo].[RacesSocialUsages]
ADD CONSTRAINT [FK_RacesSocialUsages_RacesSet]
    FOREIGN KEY ([RacesSet_Id])
    REFERENCES [dbo].[RacesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SocialUsagesSet_Id] in table 'RacesSocialUsages'
ALTER TABLE [dbo].[RacesSocialUsages]
ADD CONSTRAINT [FK_RacesSocialUsages_SocialUsagesSet]
    FOREIGN KEY ([SocialUsagesSet_Id])
    REFERENCES [dbo].[SocialUsagesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RacesSocialUsages_SocialUsagesSet'
CREATE INDEX [IX_FK_RacesSocialUsages_SocialUsagesSet]
ON [dbo].[RacesSocialUsages]
    ([SocialUsagesSet_Id]);
GO

-- Creating foreign key on [RacesSet_Id] in table 'RacesWorkUsages'
ALTER TABLE [dbo].[RacesWorkUsages]
ADD CONSTRAINT [FK_RacesWorkUsages_RacesSet]
    FOREIGN KEY ([RacesSet_Id])
    REFERENCES [dbo].[RacesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [WorkUsagesSet_Id] in table 'RacesWorkUsages'
ALTER TABLE [dbo].[RacesWorkUsages]
ADD CONSTRAINT [FK_RacesWorkUsages_WorkUsagesSet]
    FOREIGN KEY ([WorkUsagesSet_Id])
    REFERENCES [dbo].[WorkUsagesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RacesWorkUsages_WorkUsagesSet'
CREATE INDEX [IX_FK_RacesWorkUsages_WorkUsagesSet]
ON [dbo].[RacesWorkUsages]
    ([WorkUsagesSet_Id]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles1'
ALTER TABLE [dbo].[AspNetUserRoles1]
ADD CONSTRAINT [FK_AspNetUserRoles1_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles1'
ALTER TABLE [dbo].[AspNetUserRoles1]
ADD CONSTRAINT [FK_AspNetUserRoles1_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles1_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles1_AspNetUsers]
ON [dbo].[AspNetUserRoles1]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------