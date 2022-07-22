USE [BuildingPermit_dB]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActId] [varchar](255) NOT NULL,
	[ActName] [varchar](255) NULL,
	[ActType] [varchar](255) NULL,
	[Act_TotalTime] [real] NULL,
	[Act_MinDuration] [real] NULL,
	[Act_MaxDuration] [real] NULL,
	[Act_AvgDuration] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity_GenericActivity]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity_GenericActivity](
	[Activity_ActId] [varchar](255) NOT NULL,
	[GenericActivity_Activity_ActId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ActId] ASC,
	[GenericActivity_Activity_ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityInstance]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityInstance](
	[ActInsId] [int] NOT NULL,
	[ActInsName] [varchar](255) NULL,
	[ActInsExeTime] [real] NULL,
	[Activity_ActId] [varchar](255) NULL,
 CONSTRAINT [PK__Activity__8DD49D1F31DDACF7] PRIMARY KEY CLUSTERED 
(
	[ActInsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CEInstance]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEInstance](
	[CEInsId] [varchar](255) NOT NULL,
	[CEInsName] [varchar](255) NULL,
	[CECondValue] [real] NULL,
	[ControlElement_CEId] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CEInsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcreteProcess]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcreteProcess](
	[CP_AverageDureation] [real] NULL,
	[CP_MinDuration] [real] NULL,
	[CP_MaxDuration] [real] NULL,
	[CP_AvgWaitingTime] [real] NULL,
	[Process_PId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Process_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlElement]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControlElement](
	[CEId] [varchar](255) NOT NULL,
	[CEType] [varchar](100) NULL,
	[CEName] [varchar](255) NULL,
	[Immediate] [bit] NULL,
	[Condition] [bit] NULL,
	[LoopCondition] [bit] NULL,
	[LoopMaximum] [bit] NULL,
	[GatewayDirection] [varchar](100) NULL,
	[CEKind] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CEId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElementaryActivity]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementaryActivity](
	[ActTypeEA] [varchar](100) NULL,
	[ActName] [varchar](255) NULL,
	[Activity_ActId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](255) NULL,
	[EventType] [varchar](50) NULL,
	[EventTimestamp] [varchar](255) NULL,
	[StepInstance_StepInsId] [int] NOT NULL,
 CONSTRAINT [PK__Event__7944C810DAAF39E8_1] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericActivity]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericActivity](
	[ActTypeGA] [varchar](50) NULL,
	[Activity_ActId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericProcess]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericProcess](
	[GP_AverageDuration] [real] NULL,
	[GP_MinDuration] [real] NULL,
	[GP_MaxDuration] [real] NULL,
	[GP_AvgWaitingTime] [real] NULL,
	[Process_PId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Process_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportFiles]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportFiles](
	[col1] [xml] NULL,
	[NAME_FILE] [varchar](255) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportLogFiles]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportLogFiles](
	[col1] [xml] NULL,
	[NAME_FILE] [varchar](255) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ImportLogFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OU]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OU](
	[OUId] [int] IDENTITY(1,1) NOT NULL,
	[OUName] [varchar](255) NULL,
	[OU_HId] [int] NULL,
 CONSTRAINT [PK__OU__A86120C276D009E0] PRIMARY KEY CLUSTERED 
(
	[OUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ParticipantId] [varchar](255) NOT NULL,
	[ParticipantType] [varchar](255) NULL,
	[ParticipantName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParticipantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process]    Script Date: 15/03/2020 11:49:34 ******/
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
/****** Object:  Table [dbo].[Process_GenericProcess]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_GenericProcess](
	[Process_PId] [varchar](255) NOT NULL,
	[GenericProcess_Process_PId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Process_PId] ASC,
	[GenericProcess_Process_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessInstance]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessInstance](
	[PrInsId] [int] NOT NULL,
	[ConcreteProcess_Process_PId] [varchar](255) NOT NULL,
	[PrInsName] [varchar](255) NULL,
	[SubPrIns_Included] [varchar](10) NULL,
	[PrIns_Status] [varchar](1) NULL,
	[PrIns_Procedure] [varchar](255) NULL,
	[PrIns_ConceptProcedure] [varchar](255) NULL,
	[PrIns_Parts] [varchar](255) NULL,
	[PrIns_LastPhase] [varchar](255) NULL,
	[PrIns_TermName] [varchar](255) NULL,
	[PrInsStartTime] [datetime2](7) NULL,
	[PrInsEndTime] [datetime2](7) NULL,
	[PrInsCycleTime_dd] [int] NULL,
	[PrInsCycleTime_hh] [bigint] NULL,
	[PrIns_RequestComplete] [bit] NULL,
	[PrIns_ResponsibleParticipant] [varchar](255) NULL,
 CONSTRAINT [PK__ProcessI__BA0117E270140972] PRIMARY KEY CLUSTERED 
(
	[PrInsId] ASC,
	[ConcreteProcess_Process_PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleName] [varchar](255) NULL,
	[Participant_ParticipantId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Participant_ParticipantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Step]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Step](
	[StepId] [varchar](255) NOT NULL,
	[StepName] [varchar](100) NULL,
	[ControlElement_CEId] [varchar](255) NULL,
	[Activity_ActId] [varchar](255) NULL,
	[Process_PId] [varchar](255) NOT NULL,
	[Step_renamed] [varchar](255) NULL,
	[isGeneric] [bit] NULL,
	[Participant_Id] [varchar](255) NULL,
 CONSTRAINT [PK__Step__2434335762CD03F6] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StepInstance]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StepInstance](
	[StepInsId] [int] IDENTITY(1,1) NOT NULL,
	[StepInsName] [varchar](255) NULL,
	[StepInsExeTime] [real] NULL,
	[Step_StepId] [varchar](255) NOT NULL,
	[ProcessInstance_PrInsId] [int] NOT NULL,
	[ActivityInstance_ActInsId] [int] NULL,
	[CEInstance_CEInsId] [varchar](255) NULL,
	[ConcreteProcess_PId] [varchar](255) NULL,
	[User_Participant_Id] [varchar](255) NULL,
	[MonitoringParticipant] [varchar](255) NULL,
	[Question] [varchar](255) NULL,
	[QuestionCode] [varchar](255) NULL,
	[QuestionAnswer] [varchar](255) NULL,
	[StepAct_Code_Name] [varchar](255) NULL,
	[StepAct_PlannedTime] [varchar](255) NULL,
	[StepAct_StartTime] [varchar](255) NULL,
	[StepAct_DueDate] [varchar](255) NULL,
	[StepAct_DateFinished] [varchar](255) NULL,
 CONSTRAINT [PK__StepInst__E136662CDCE68736] PRIMARY KEY CLUSTERED 
(
	[StepInsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transition]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transition](
	[TransId] [varchar](255) NOT NULL,
	[TransitionName] [varchar](100) NULL,
	[SourceRefStepId] [varchar](255) NOT NULL,
	[TargetRefStepId] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Transiti__9E5DDB3CB73078FD] PRIMARY KEY CLUSTERED 
(
	[TransId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[e-mail] [varchar](255) NULL,
	[TelephoneNr] [varchar](50) NULL,
	[Participant_ParticipantId] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Participant_ParticipantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 15/03/2020 11:49:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [varchar](255) NULL,
	[OU_OUId] [int] NULL,
	[User_Participant_ParticipantId] [varchar](255) NULL,
	[Role_Participant_ParticipantId] [varchar](255) NULL,
 CONSTRAINT [PK__UserRole__3D978A350C315E8A] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Step] ADD  CONSTRAINT [DF_Step_isGeneric]  DEFAULT ((0)) FOR [isGeneric]
GO
ALTER TABLE [dbo].[Activity_GenericActivity]  WITH NOCHECK ADD  CONSTRAINT [a_is_specialization_of_ga] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Activity_GenericActivity] NOCHECK CONSTRAINT [a_is_specialization_of_ga]
GO
ALTER TABLE [dbo].[Activity_GenericActivity]  WITH NOCHECK ADD  CONSTRAINT [ga_is_generalization_of_a] FOREIGN KEY([GenericActivity_Activity_ActId])
REFERENCES [dbo].[GenericActivity] ([Activity_ActId])
GO
ALTER TABLE [dbo].[Activity_GenericActivity] NOCHECK CONSTRAINT [ga_is_generalization_of_a]
GO
ALTER TABLE [dbo].[ActivityInstance]  WITH CHECK ADD  CONSTRAINT [a_instance_of] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[ActivityInstance] CHECK CONSTRAINT [a_instance_of]
GO
ALTER TABLE [dbo].[CEInstance]  WITH NOCHECK ADD  CONSTRAINT [FKCEInstance766875] FOREIGN KEY([ControlElement_CEId])
REFERENCES [dbo].[ControlElement] ([CEId])
GO
ALTER TABLE [dbo].[CEInstance] NOCHECK CONSTRAINT [FKCEInstance766875]
GO
ALTER TABLE [dbo].[ConcreteProcess]  WITH NOCHECK ADD  CONSTRAINT [FKConcretePr73246] FOREIGN KEY([Process_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[ConcreteProcess] NOCHECK CONSTRAINT [FKConcretePr73246]
GO
ALTER TABLE [dbo].[ElementaryActivity]  WITH NOCHECK ADD  CONSTRAINT [FKElementary814134] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[ElementaryActivity] NOCHECK CONSTRAINT [FKElementary814134]
GO
ALTER TABLE [dbo].[Event]  WITH NOCHECK ADD  CONSTRAINT [FK_Event_StepInstance1] FOREIGN KEY([StepInstance_StepInsId])
REFERENCES [dbo].[StepInstance] ([StepInsId])
GO
ALTER TABLE [dbo].[Event] NOCHECK CONSTRAINT [FK_Event_StepInstance1]
GO
ALTER TABLE [dbo].[GenericActivity]  WITH NOCHECK ADD  CONSTRAINT [FKGenericAct8794] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[GenericActivity] NOCHECK CONSTRAINT [FKGenericAct8794]
GO
ALTER TABLE [dbo].[GenericProcess]  WITH NOCHECK ADD  CONSTRAINT [FKGenericPro387154] FOREIGN KEY([Process_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[GenericProcess] NOCHECK CONSTRAINT [FKGenericPro387154]
GO
ALTER TABLE [dbo].[OU]  WITH NOCHECK ADD  CONSTRAINT [FK_OU_OU] FOREIGN KEY([OU_HId])
REFERENCES [dbo].[OU] ([OUId])
GO
ALTER TABLE [dbo].[OU] NOCHECK CONSTRAINT [FK_OU_OU]
GO
ALTER TABLE [dbo].[Process]  WITH NOCHECK ADD  CONSTRAINT [FKProcess292479] FOREIGN KEY([SubprocessId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Process] NOCHECK CONSTRAINT [FKProcess292479]
GO
ALTER TABLE [dbo].[Process_GenericProcess]  WITH NOCHECK ADD  CONSTRAINT [gp_is_generalization_of_p] FOREIGN KEY([GenericProcess_Process_PId])
REFERENCES [dbo].[GenericProcess] ([Process_PId])
GO
ALTER TABLE [dbo].[Process_GenericProcess] NOCHECK CONSTRAINT [gp_is_generalization_of_p]
GO
ALTER TABLE [dbo].[Process_GenericProcess]  WITH NOCHECK ADD  CONSTRAINT [p_is_specialization_of_gp] FOREIGN KEY([Process_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Process_GenericProcess] NOCHECK CONSTRAINT [p_is_specialization_of_gp]
GO
ALTER TABLE [dbo].[ProcessInstance]  WITH CHECK ADD  CONSTRAINT [has_pr_inst] FOREIGN KEY([ConcreteProcess_Process_PId])
REFERENCES [dbo].[ConcreteProcess] ([Process_PId])
GO
ALTER TABLE [dbo].[ProcessInstance] CHECK CONSTRAINT [has_pr_inst]
GO
ALTER TABLE [dbo].[Role]  WITH NOCHECK ADD  CONSTRAINT [FKRole484586] FOREIGN KEY([Participant_ParticipantId])
REFERENCES [dbo].[Participant] ([ParticipantId])
GO
ALTER TABLE [dbo].[Role] NOCHECK CONSTRAINT [FKRole484586]
GO
ALTER TABLE [dbo].[Step]  WITH NOCHECK ADD  CONSTRAINT [contains] FOREIGN KEY([Process_PId])
REFERENCES [dbo].[Process] ([PId])
GO
ALTER TABLE [dbo].[Step] NOCHECK CONSTRAINT [contains]
GO
ALTER TABLE [dbo].[Step]  WITH NOCHECK ADD  CONSTRAINT [FK_Step_Participant] FOREIGN KEY([Participant_Id])
REFERENCES [dbo].[Participant] ([ParticipantId])
GO
ALTER TABLE [dbo].[Step] NOCHECK CONSTRAINT [FK_Step_Participant]
GO
ALTER TABLE [dbo].[Step]  WITH NOCHECK ADD  CONSTRAINT [step_is_a] FOREIGN KEY([Activity_ActId])
REFERENCES [dbo].[Activity] ([ActId])
GO
ALTER TABLE [dbo].[Step] NOCHECK CONSTRAINT [step_is_a]
GO
ALTER TABLE [dbo].[Step]  WITH NOCHECK ADD  CONSTRAINT [step_is_ce] FOREIGN KEY([ControlElement_CEId])
REFERENCES [dbo].[ControlElement] ([CEId])
GO
ALTER TABLE [dbo].[Step] NOCHECK CONSTRAINT [step_is_ce]
GO
ALTER TABLE [dbo].[StepInstance]  WITH CHECK ADD  CONSTRAINT [FK_StepInstance_Participant] FOREIGN KEY([User_Participant_Id])
REFERENCES [dbo].[User] ([Participant_ParticipantId])
GO
ALTER TABLE [dbo].[StepInstance] CHECK CONSTRAINT [FK_StepInstance_Participant]
GO
ALTER TABLE [dbo].[StepInstance]  WITH CHECK ADD  CONSTRAINT [FK_StepInstance_ProcessInstance] FOREIGN KEY([ProcessInstance_PrInsId], [ConcreteProcess_PId])
REFERENCES [dbo].[ProcessInstance] ([PrInsId], [ConcreteProcess_Process_PId])
GO
ALTER TABLE [dbo].[StepInstance] CHECK CONSTRAINT [FK_StepInstance_ProcessInstance]
GO
ALTER TABLE [dbo].[StepInstance]  WITH CHECK ADD  CONSTRAINT [is_act_inst] FOREIGN KEY([ActivityInstance_ActInsId])
REFERENCES [dbo].[ActivityInstance] ([ActInsId])
GO
ALTER TABLE [dbo].[StepInstance] CHECK CONSTRAINT [is_act_inst]
GO
ALTER TABLE [dbo].[StepInstance]  WITH CHECK ADD  CONSTRAINT [is_ce_inst] FOREIGN KEY([CEInstance_CEInsId])
REFERENCES [dbo].[CEInstance] ([CEInsId])
GO
ALTER TABLE [dbo].[StepInstance] CHECK CONSTRAINT [is_ce_inst]
GO
ALTER TABLE [dbo].[StepInstance]  WITH CHECK ADD  CONSTRAINT [st_ins_of] FOREIGN KEY([Step_StepId])
REFERENCES [dbo].[Step] ([StepId])
GO
ALTER TABLE [dbo].[StepInstance] CHECK CONSTRAINT [st_ins_of]
GO
ALTER TABLE [dbo].[Transition]  WITH NOCHECK ADD  CONSTRAINT [from] FOREIGN KEY([SourceRefStepId])
REFERENCES [dbo].[Step] ([StepId])
GO
ALTER TABLE [dbo].[Transition] NOCHECK CONSTRAINT [from]
GO
ALTER TABLE [dbo].[Transition]  WITH NOCHECK ADD  CONSTRAINT [to] FOREIGN KEY([TargetRefStepId])
REFERENCES [dbo].[Step] ([StepId])
GO
ALTER TABLE [dbo].[Transition] NOCHECK CONSTRAINT [to]
GO
ALTER TABLE [dbo].[User]  WITH NOCHECK ADD  CONSTRAINT [FKUser577599] FOREIGN KEY([Participant_ParticipantId])
REFERENCES [dbo].[Participant] ([ParticipantId])
GO
ALTER TABLE [dbo].[User] NOCHECK CONSTRAINT [FKUser577599]
GO
ALTER TABLE [dbo].[UserRole]  WITH NOCHECK ADD  CONSTRAINT [belongs] FOREIGN KEY([OU_OUId])
REFERENCES [dbo].[OU] ([OUId])
GO
ALTER TABLE [dbo].[UserRole] NOCHECK CONSTRAINT [belongs]
GO
ALTER TABLE [dbo].[UserRole]  WITH NOCHECK ADD  CONSTRAINT [has_role] FOREIGN KEY([Role_Participant_ParticipantId])
REFERENCES [dbo].[Role] ([Participant_ParticipantId])
GO
ALTER TABLE [dbo].[UserRole] NOCHECK CONSTRAINT [has_role]
GO
ALTER TABLE [dbo].[UserRole]  WITH NOCHECK ADD  CONSTRAINT [has_user] FOREIGN KEY([User_Participant_ParticipantId])
REFERENCES [dbo].[User] ([Participant_ParticipantId])
GO
ALTER TABLE [dbo].[UserRole] NOCHECK CONSTRAINT [has_user]
GO
