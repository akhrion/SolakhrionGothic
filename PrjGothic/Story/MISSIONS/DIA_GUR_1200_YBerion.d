
instance Info_Yberion_EXIT(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 999;
	condition = Info_Yberion_EXIT_Condition;
	information = Info_Yberion_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Yberion_EXIT_Condition()
{
	return 1;
};

func void Info_Yberion_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_YBerion_Wache(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = DIA_YBerion_Wache_Condition;
	information = DIA_YBerion_Wache_Info;
	permanent = 1;
	important = 1;
};


func int DIA_YBerion_Wache_Condition()
{
	if(Kapitel == 1)
	{
		return 1;
	};
};

func void DIA_YBerion_Wache_Info()
{
	AI_Output(self,other,"DIA_YBerion_Wache_12_00");	//��� �� ����� ��������? ��� ���� �������? ������!
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
	Npc_SetPermAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
};


instance DIA_YBerion_Kennen(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = DIA_YBerion_Kennen_Condition;
	information = DIA_YBerion_Kennen_Info;
	permanent = 0;
	description = "����������� ����, ������� �������!";
};


func int DIA_YBerion_Kennen_Condition()
{
	if(Kapitel == 2)
	{
		return 1;
	};
};

func void DIA_YBerion_Kennen_Info()
{
	AI_Output(other,self,"DIA_YBerion_Kennen_15_00");	//����������� ����, ������� �������!
	AI_Output(self,other,"DIA_YBerion_Kennen_12_01");	//�! � ���� ����!
	AI_Output(other,self,"DIA_YBerion_Kennen_15_02");	//��� ����������. �� ��� �� ���� �� �����������.
	AI_Output(self,other,"DIA_YBerion_Kennen_12_03");	//� ����� ��... ������. ��� ���� �����?
};


instance Info_YBerion_BringFocus(C_Info)
{
	npc = GUR_1200_YBerion;
	condition = Info_YBerion_BringFocus_Condition;
	information = Info_YBerion_BringFocus_Info;
	permanent = 1;
	description = "� ������, ��� �� ������ ���-�� �����.";
};


func int Info_YBerion_BringFocus_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_YBerion_Kennen) && (Npc_GetTrueGuild(hero) != GIL_None) && (YBerion_BringFocus != LOG_RUNNING) && (YBerion_BringFocus != LOG_SUCCESS))
	{
		return 1;
	};
};

func void Info_YBerion_BringFocus_Info()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_Info_15_01");	//� ������, ��� �� ������ ���-�� �����.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_02");	//��� � ����. ��� ����� ���������� ������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_03");	//�� ��� ��������� �� ��� ����������, ������, �� �� ��� ��� �� ��������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info_12_04");	//�����, �� ������� ��������, ��� � ��� ���������?
	Info_ClearChoices(Info_YBerion_BringFocus);
	Info_AddChoice(Info_YBerion_BringFocus,DIALOG_BACK,Info_YBerion_BringFocus_BACK);
	Info_AddChoice(Info_YBerion_BringFocus,"� ����� ��� ������!",Info_YBerion_BringFocus_OK);
	Info_AddChoice(Info_YBerion_BringFocus,"��� � ������ ��� ������?",Info_YBerion_BringFocus_WO);
	Info_AddChoice(Info_YBerion_BringFocus,"������ ���� ������ ��� �����?",Info_YBerion_BringFocus_FOKUS);
};

func void Info_YBerion_BringFocus_BACK()
{
	Info_ClearChoices(Info_YBerion_BringFocus);
};

func void Info_YBerion_BringFocus_OK()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_OK_15_01");	//� ����� ��� ������!
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_OK_12_02");	//��� �����. �� ��� ��������, ��� ������ ���� ������.
	b_printtrademsg1("�������� ����� ��������.");
	B_Story_BringFirstFocus();
	B_LogEntry(CH2_Focus,"������� ������ ���������� ������ �� ��������. �� �� �� ��� ��� �� ��������. ���� ��� ��� �����, �� ������� ������� ���� � �������.");
};

func void Info_YBerion_BringFocus_WO()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_WO_15_01");	//��� � ������ ��� ������?
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_WO_12_02");	//������ �������� �� ������, ������� ������� � ������ ����� �����. ������ ����� ���, �� ��� ����. ��� � ������ ���� ������.
};

func void Info_YBerion_BringFocus_FOKUS()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_FOKUS_15_01");	//������ ���� ������ ��� �����?
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_02");	//� ��� ������� �����, ��������� ��������������� ���� ����.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_03");	//�� ���� �� ���� ������, ������������ � ���������� �������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_04");	//��� ������� �������, ��� ���� ����� ����� ������� ���.
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_FOKUS_15_05");	//���������� �������!
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_FOKUS_12_06");	//��� ������� - ��� �������� �������. � � ������� ������� �� ������ �������� ���!
};


instance Info_YBerion_BringFocus_RUNNING(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_BringFocus_RUNNING_Condition;
	information = Info_YBerion_BringFocus_RUNNING_Info;
	permanent = 1;
	description = "� ��� ��� �� ����� ������.";
};


func int Info_YBerion_BringFocus_RUNNING_Condition()
{
	if((YBerion_BringFocus == LOG_RUNNING) && !Npc_HasItems(hero,Focus_1))
	{
		return TRUE;
	};
};

func void Info_YBerion_BringFocus_RUNNING_Info()
{
	AI_Output(other,self,"Info_YBerion_BringFocus_RUNNING_15_01");	//� ��� ��� �� ����� ������.
	AI_Output(self,other,"Info_YBerion_BringFocus_RUNNING_12_02");	//��������� ������! ������ ������� ����.
};


instance Info_YBerion_BringFocus_Success(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_BringFocus_Success_Condition;
	information = Info_YBerion_BringFocus_Success_Info;
	permanent = 0;
	description = "� ����� ������.";
};


func int Info_YBerion_BringFocus_Success_Condition()
{
	if((YBerion_BringFocus == LOG_RUNNING) && Npc_HasItems(hero,Focus_1))
	{
		return 1;
	};
};

func void Info_YBerion_BringFocus_Success_Info()
{
	var C_Npc nyras;
	AI_Output(other,self,"Info_YBerion_BringFocus_Success_15_01");	//� ����� ������.
	AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_02");	//������������! �� ����� ������ ����� ���.
	AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_03");	//������ ��� ������ ��� ������. �� �����, ��� � ��� ������.
	if(Kalom_TalkedTo == FALSE)
	{
		AI_Output(other,self,"Info_YBerion_BringFocus_Success_15_04");	//��� � ���� ����� ����� ��� ������?
		AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_05");	//�� ����� ��� ����� �������� � ����� ����������� �� ������ ������.
		AI_Output(self,other,"Info_YBerion_BringFocus_Success_12_06");	//� ����� � ������ ������ ���� ������. ������ �� �������� �������� �� ����������� �����.
		B_LogEntry(CH2_Focus,"������� ������� ��� ������� ������ ��� ������, ������ �� ����. �� ��������� �������� � ����� �����������.");
	}
	else
	{
		B_LogEntry(CH2_Focus,"������� ������� ��� ������� ������ ��� ������. ��� '�������' ����� ��������� ����� ���������� �������� ��������.");
	};
	TPL_1406_Templer.aivar[AIV_PASSGATE] = TRUE;
	YBerion_BringFocus = LOG_SUCCESS;
	B_GiveXP(XP_BringFocusToYBerion);
	nyras = Hlp_GetNpc(Nov_1303_Nyras);
	if(!Npc_IsDead(nyras))
	{
		B_ExchangeRoutine(nyras,"hide");
		Npc_ChangeAttribute(nyras,ATR_HITPOINTS,100);
	};
};


instance Info_YBerion_NYRAS(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 1;
	condition = Info_YBerion_NYRAS_Condition;
	information = Info_YBerion_NYRAS_Info;
	permanent = 0;
	description = "��������� ����� ����� � ���!";
};


func int Info_YBerion_NYRAS_Condition()
{
	if(Npc_KnowsInfo(hero,Nov_1303_Nyras_LEAVE))
	{
		return 1;
	};
};

func void Info_YBerion_NYRAS_Info()
{
	AI_Output(other,self,"Info_YBerion_NYRAS_15_01");	//��������� ����� ����� � ���!
	AI_Output(other,self,"Info_YBerion_NYRAS_15_02");	//�� ������, ����� ������ ������ ��� � ������ ��� ����� ������������ ������!
	AI_Output(other,self,"Info_YBerion_NYRAS_15_03");	//����� �� ����� �� ���� � ������� �����!
	AI_Output(self,other,"Info_YBerion_NYRAS_12_04");	//���������� ������� ������� ������ ��� ������ ����������.
	AI_Output(self,other,"Info_YBerion_NYRAS_12_05");	//���� ��, ����, ����� ������ ��� ��������� ������ ������� ��� ���� ����, ��� ��������� ��� �������� ����� ����������� �������.
};


instance GUR_1200_Yberion_EARN(C_Info)
{
	npc = GUR_1200_YBerion;
	condition = GUR_1200_Yberion_EARN_Condition;
	information = GUR_1200_Yberion_EARN_Info;
	important = 0;
	permanent = 0;
	description = "� � �� �������� �������?";
};


func int GUR_1200_Yberion_EARN_Condition()
{
	if((YBerion_BringFocus == LOG_SUCCESS) && (Npc_GetTrueGuild(hero) != GIL_NOV) && (Npc_GetTrueGuild(hero) != GIL_TPL) && C_IsChapter(2))
	{
		return 1;
	};
};

func void GUR_1200_Yberion_EARN_Info()
{
	AI_Output(other,self,"GUR_1200_Yberion_EARN_Info_15_01");	//� � �� �������� �������?
	AI_Output(self,other,"GUR_1200_Yberion_EARN_Info_12_02");	//��� � ����, �� �� �� ������ ��������, �� � ������� ����.
	AI_Output(self,other,"GUR_1200_Yberion_EARN_Info_12_03");	//������ ���� ������ � ������������� �� ���� ������.
	b_printtrademsg1("������� ������ �������.");
	CreateInvItem(self,Schutzamulett_Feuer);
	B_GiveInvItems(self,hero,Schutzamulett_Feuer,1);
};


instance YBERION_STEALKEY(C_Info)
{
	npc = GUR_1200_YBerion;
	nr = 990;
	condition = yberion_stealkey_condition;
	information = yberion_stealkey_info;
	important = 0;
	permanent = 0;
	description = "(������� ����)";
};


func int yberion_stealkey_condition()
{
	if(Npc_HasItems(self,itke_yberion) && (Npc_GetTalentSkill(hero,NPC_TALENT_PICKPOCKET) == 2) && (Npc_GetTalentSkill(hero,NPC_TALENT_SNEAK) == 1))
	{
		return TRUE;
	};
};

func void yberion_stealkey_info()
{
	AI_GotoNpc(other,self);
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_00");	//��� ��, ���� ������?
	AI_Output(self,other,"DIA_Skip_First_Gomez_12_02");	//�������� ������, ���� � �� ����������!
	PrintScreen("������� ����.",-1,_YPOS_MESSAGE_TAKEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_TAKEN);
	YBERION_KEY_STOLEN = TRUE;
	CreateInvItem(hero,itke_yberion);
	Npc_RemoveInvItem(self,itke_yberion);
	AI_StopProcessInfos(self);
};

