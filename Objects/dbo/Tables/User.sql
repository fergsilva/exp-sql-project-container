CREATE TABLE [dbo].[User]
(
  [id] INT NOT NULL PRIMARY KEY,
  [name] VARCHAR(50) NOT NULL,
  [is_active] BIT NOT NULL DEFAULT(1),
  [aud_created_at] DATETIME2 NOT NULL DEFAULT(GETDATE()),
  [aud_created_by] INT DEFAULT(DATABASE_PRINCIPAL_ID()),
  [aud_updated_at] DATETIME2,
  [aud_updated_by] INT
)