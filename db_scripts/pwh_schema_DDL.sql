USE [PW_Schema_v_28_02]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActId] [varchar](255) NOT NULL,
	[ActName] [varchar](255) NULL,
	[ActType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity_Fact]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity_Fact](
	[ActInsId] [int] NOT NULL,
	[Act_id] [varchar](255) NOT NULL,
	[PrInsId] [int] NOT NULL,
	[ConcreteProcess_PId] [varchar](255) NOT NULL,
	[StartTime_id] [int] NOT NULL,
	[Participant_id] [varchar](255) NOT NULL,
	[Geolocation_id] [int] NOT NULL,
	[ActInsName] [varchar](255) NULL,
	[Duration] [float] NULL,
	[ActInsExeTime(s)] [real] NULL,
	[ActInsStartTime_TS] [varchar](255) NULL,
	[ActInsEndTime_TS] [varchar](255) NULL,
	[ActInsStartTime_Round] [datetime] NULL,
	[ActInsEndTime_Round] [datetime] NULL,
	[EndTime_id] [int] NULL,
 CONSTRAINT [PK__StepInst__E136662CDCE68736] PRIMARY KEY CLUSTERED 
(
	[ActInsId] ASC,
	[Act_id] ASC,
	[PrInsId] ASC,
	[ConcreteProcess_PId] ASC,
	[StartTime_id] ASC,
	[Participant_id] ASC,
	[Geolocation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity_Specialization]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity_Specialization](
	[Activity_ActId] [varchar](255) NOT NULL,
	[GenericActivity_ActId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ActId] ASC,
	[GenericActivity_ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date_2]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date_2](
	[PK_Date] [datetime] NOT NULL,
	[Date_Name] [nvarchar](50) NULL,
	[Year] [datetime] NULL,
	[Year_Name] [nvarchar](50) NULL,
	[Quarter] [datetime] NULL,
	[Quarter_Name] [nvarchar](50) NULL,
	[Month] [datetime] NULL,
	[Month_Name] [nvarchar](50) NULL,
	[Week] [datetime] NULL,
	[Week_Name] [nvarchar](50) NULL,
	[Day_Of_Year] [int] NULL,
	[Day_Of_Year_Name] [nvarchar](50) NULL,
	[Day_Of_Quarter] [int] NULL,
	[Day_Of_Quarter_Name] [nvarchar](50) NULL,
	[Day_Of_Month] [int] NULL,
	[Day_Of_Month_Name] [nvarchar](50) NULL,
	[Day_Of_Week] [int] NULL,
	[Day_Of_Week_Name] [nvarchar](50) NULL,
	[Week_Of_Year] [int] NULL,
	[Week_Of_Year_Name] [nvarchar](50) NULL,
	[Month_Of_Year] [int] NULL,
	[Month_Of_Year_Name] [nvarchar](50) NULL,
	[Month_Of_Quarter] [int] NULL,
	[Month_Of_Quarter_Name] [nvarchar](50) NULL,
	[Quarter_Of_Year] [int] NULL,
	[Quarter_Of_Year_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Date_2] PRIMARY KEY CLUSTERED 
(
	[PK_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geolocation]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geolocation](
	[Geolocation_id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[Branch] [varchar](255) NULL,
	[SuperOU_id] [int] NULL,
	[SuperOUName] [varchar](255) NULL,
	[OU_id] [int] NULL,
	[OUName] [varchar](255) NULL,
 CONSTRAINT [PK_Geolocation] PRIMARY KEY CLUSTERED 
(
	[Geolocation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[Participant_id] [varchar](255) NOT NULL,
	[UserRole] [varchar](255) NOT NULL,
	[ParticipantName] [varchar](255) NULL,
	[User] [varchar](255) NULL,
	[Role] [varchar](255) NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[Participant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[PId] [varchar](255) NOT NULL,
	[PName] [varchar](50) NULL,
	[PType] [varchar](50) NULL,
	[PKind] [varchar](50) NULL,
	[PCreated] [datetime] NULL,
	[PIsExecutable] [varchar](50) NULL,
	[SubprocessId] [varchar](255) NULL,
	[PVariant] [varchar](50) NULL,
 CONSTRAINT [PK__Process__C57755409D20F51F] PRIMARY KEY CLUSTERED 
(
	[PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_ Fact]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_ Fact](
	[PrInsId] [int] NOT NULL,
	[ConcreteProcess_PId] [varchar](255) NOT NULL,
	[PrInsName] [varchar](255) NULL,
	[PrInsStartTime] [datetime2](7) NULL,
	[PrInsEndTime] [datetime2](7) NULL,
	[PrInsCycleTime(s)] [real] NULL,
	[PrInsCycleTime_converted] [varchar](50) NULL,
 CONSTRAINT [PK__ProcessI__BA0117E270140972] PRIMARY KEY CLUSTERED 
(
	[PrInsId] ASC,
	[ConcreteProcess_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_Specialization]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_Specialization](
	[Process_PId] [varchar](255) NOT NULL,
	[GenericProcess_PId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Process_PId] ASC,
	[GenericProcess_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_Variant]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_Variant](
	[Step_id] [varchar](255) NOT NULL,
	[Activity_id] [varchar](255) NOT NULL,
	[GenericProcess_Pr_id] [varchar](255) NOT NULL,
	[lvl] [int] NULL,
	[H_level] [int] NULL,
 CONSTRAINT [PK_Process_Pattern_Fact] PRIMARY KEY CLUSTERED 
(
	[Step_id] ASC,
	[Activity_id] ASC,
	[GenericProcess_Pr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 16/03/2020 17:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Time_id] [int] NOT NULL,
	[FullDateTime] [datetime] NULL,
	[Min] [int] NULL,
	[Hour] [int] NULL,
	[FullDate] [datetime] NULL,
 CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED 
(
	[Time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activity_Fact]  WITH NOCHECK ADD  CONSTRAINT [FK_Activity_Instances_Fact_DimTime2] FOREIGN KEY([StartTime_id])
REFERENCES [dbo].[Time] ([Time_id])
GO
ALTER TABLE [dbo].[Activity_Fact] NOCHECK CONSTRAINT [FK_Activity_Instances_Fact_DimTime2]
GO
ALTER TABLE [dbo].[Activity_Fact]  WITH NOCHECK ADD  CONSTRAINT [FK_Activity_Instances_Fact_Geolocation] FOREIGN KEY([Geolocation_id])
REFERENCES [dbo].[Geolocation] ([Geolocation_id])
GO
ALTER TABLE [dbo].[Activity_Fact] NOCHECK CONSTRAINT [FK_Activity_Instances_Fact_Geolocation]
GO
ALTER TABLE [dbo].[Activity_Fact]  WITH NOCHECK ADD  CONSTRAINT [FK_Activity_Instances_Fact_Participant] FOREIGN KEY([Participant_id])
REFERENCES [dbo].[Participant] ([Participant_id])
GO
ALTER TABLE [dbo].[Activity_Fact] NOCHECK CONSTRAINT [FK_Activity_Instances_Fact_Participant]
GO
ALTER TABLE [dbo].[Activity_Fact]  WITH NOCHECK ADD  CONSTRAINT [FK_StepInstance_ProcessInstance] FOREIGN KEY([PrInsId], [ConcreteProcess_PId])
REFERENCES [dbo].[Process_ Fact] ([PrInsId], [ConcreteProcess_PId])
GO
ALTER TABLE [dbo].[Activity_Fact] NOCHECK CONSTRAINT [FK_StepInstance_ProcessInstance]
GO
ALTER TABLE [dbo].[Activity_Fact]  WITH NOCHECK ADD  CONSTRAINT [st_ins_of] FOREIGN KEY([Act_id])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Activity_Fact] NOCHECK CONSTRAINT [st_ins_of]
GO
ALTER TABLE [dbo].[Activity_Specialization]  WITH NOCHECK ADD  CONSTRAINT [a_is_specialization_of_ga] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Activity_Specialization] NOCHECK CONSTRAINT [a_is_specialization_of_ga]
GO
ALTER TABLE [dbo].[Activity_Specialization]  WITH NOCHECK ADD  CONSTRAINT [ga_is_generalization_of_a] FOREIGN KEY([GenericActivity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Activity_Specialization] NOCHECK CONSTRAINT [ga_is_generalization_of_a]
GO
ALTER TABLE [dbo].[Process]  WITH NOCHECK ADD  CONSTRAINT [FKProcess292479] FOREIGN KEY([SubprocessId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Process] NOCHECK CONSTRAINT [FKProcess292479]
GO
ALTER TABLE [dbo].[Process_ Fact]  WITH NOCHECK ADD  CONSTRAINT [has_pr_inst] FOREIGN KEY([ConcreteProcess_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Process_ Fact] NOCHECK CONSTRAINT [has_pr_inst]
GO
ALTER TABLE [dbo].[Process_Specialization]  WITH NOCHECK ADD  CONSTRAINT [gp_is_generalization_of_p] FOREIGN KEY([GenericProcess_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Process_Specialization] NOCHECK CONSTRAINT [gp_is_generalization_of_p]
GO
ALTER TABLE [dbo].[Process_Specialization]  WITH NOCHECK ADD  CONSTRAINT [p_is_specialization_of_gp] FOREIGN KEY([Process_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Process_Specialization] NOCHECK CONSTRAINT [p_is_specialization_of_gp]
GO
ALTER TABLE [dbo].[Process_Variant]  WITH NOCHECK ADD  CONSTRAINT [FK_Process_Pattern_Fact_Activity] FOREIGN KEY([Activity_id])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Process_Variant] NOCHECK CONSTRAINT [FK_Process_Pattern_Fact_Activity]
GO
ALTER TABLE [dbo].[Process_Variant]  WITH NOCHECK ADD  CONSTRAINT [FK_Process_Pattern_Fact_Process] FOREIGN KEY([GenericProcess_Pr_id])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Process_Variant] NOCHECK CONSTRAINT [FK_Process_Pattern_Fact_Process]
GO
ALTER TABLE [dbo].[Process_Variant]  WITH NOCHECK ADD  CONSTRAINT [FK_Process_Pattern_Fact_Process_Pattern_Fact] FOREIGN KEY([Step_id])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Process_Variant] NOCHECK CONSTRAINT [FK_Process_Pattern_Fact_Process_Pattern_Fact]
GO
ALTER TABLE [dbo].[Time]  WITH CHECK ADD  CONSTRAINT [FK_Time_Date_2] FOREIGN KEY([FullDate])
REFERENCES [dbo].[Date_2] ([PK_Date])
GO
ALTER TABLE [dbo].[Time] CHECK CONSTRAINT [FK_Time_Date_2]
GO
ALTER TABLE [dbo].[Time]  WITH CHECK ADD  CONSTRAINT [FK_Time_Time] FOREIGN KEY([Time_id])
REFERENCES [dbo].[Time] ([Time_id])
GO
ALTER TABLE [dbo].[Time] CHECK CONSTRAINT [FK_Time_Time]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Week' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Week_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Week'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Week' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Week'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Week_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Week_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Day_Of_Week_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Week_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Week_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Week_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2', @level2type=N'CONSTRAINT',@level2name=N'PK_Date_2'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Date_2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'09f01ec8-9d06-45e7-8c75-71e06ea33187' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date_2'
GO
