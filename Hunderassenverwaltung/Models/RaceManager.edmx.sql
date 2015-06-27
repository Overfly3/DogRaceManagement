
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/27/2015 23:48:05
-- Generated from EDMX file: C:\Users\Alex\Documents\GitHub\DogRaceManagement\Hunderassenverwaltung\Models\RaceManager.edmx
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

IF OBJECT_ID(N'[dbo].[FK_RacesFurrs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSet] DROP CONSTRAINT [FK_RacesFurrs];
GO
IF OBJECT_ID(N'[dbo].[FK_RacesGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RacesSet] DROP CONSTRAINT [FK_RacesGroups];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CharacteristicsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacteristicsSet];
GO
IF OBJECT_ID(N'[dbo].[FurrsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FurrsSet];
GO
IF OBJECT_ID(N'[dbo].[GroupsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupsSet];
GO
IF OBJECT_ID(N'[dbo].[RacesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RacesSet];
GO
IF OBJECT_ID(N'[dbo].[SocialUsagesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialUsagesSet];
GO
IF OBJECT_ID(N'[dbo].[WorkUsagesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkUsagesSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

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
    [MaximumWithers] smallint  NOT NULL,
    [History] nvarchar(max)  NOT NULL,
    [GeneralInformation] nvarchar(max)  NOT NULL,
    [PayAttentionTo] nvarchar(max)  NOT NULL,
    [Picture] varbinary(max)  NOT NULL,
    [Furrs_Id] int  NOT NULL,
    [Groups_Id] int  NOT NULL,
    [Country] varchar(max)  NOT NULL,
    [CharacteristicsSetId] int  NOT NULL,
    [SocialUsagesSetId] int  NOT NULL,
    [WorkUsagesSetId] int  NOT NULL
);
GO

-- Creating table 'SocialUsagesSet'
CREATE TABLE [dbo].[SocialUsagesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'WorkUsagesSet'
CREATE TABLE [dbo].[WorkUsagesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

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

-- Creating primary key on [Id] in table 'WorkUsagesSet'
ALTER TABLE [dbo].[WorkUsagesSet]
ADD CONSTRAINT [PK_WorkUsagesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

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

-- Creating foreign key on [CharacteristicsSetId] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [FK_CharacteristicsSetRacesSet]
    FOREIGN KEY ([CharacteristicsSetId])
    REFERENCES [dbo].[CharacteristicsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacteristicsSetRacesSet'
CREATE INDEX [IX_FK_CharacteristicsSetRacesSet]
ON [dbo].[RacesSet]
    ([CharacteristicsSetId]);
GO

-- Creating foreign key on [SocialUsagesSetId] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [FK_SocialUsagesSetRacesSet]
    FOREIGN KEY ([SocialUsagesSetId])
    REFERENCES [dbo].[SocialUsagesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SocialUsagesSetRacesSet'
CREATE INDEX [IX_FK_SocialUsagesSetRacesSet]
ON [dbo].[RacesSet]
    ([SocialUsagesSetId]);
GO

-- Creating foreign key on [WorkUsagesSetId] in table 'RacesSet'
ALTER TABLE [dbo].[RacesSet]
ADD CONSTRAINT [FK_WorkUsagesSetRacesSet]
    FOREIGN KEY ([WorkUsagesSetId])
    REFERENCES [dbo].[WorkUsagesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_WorkUsagesSetRacesSet'
CREATE INDEX [IX_FK_WorkUsagesSetRacesSet]
ON [dbo].[RacesSet]
    ([WorkUsagesSetId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------