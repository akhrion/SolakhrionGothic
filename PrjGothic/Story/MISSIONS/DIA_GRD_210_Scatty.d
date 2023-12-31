
instance DIA_Scatty_Exit(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 999;
	condition = DIA_Scatty_Exit_Condition;
	information = DIA_Scatty_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Scatty_Exit_Condition()
{
	return 1;
};

func void DIA_Scatty_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Scatty_WhatDoYouDo(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_WhatDoYouDo_Condition;
	information = DIA_Scatty_WhatDoYouDo_Info;
	permanent = 0;
	description = "��� �� ����� �������?";
};


func int DIA_Scatty_WhatDoYouDo_Condition()
{
	return 1;
};

func void DIA_Scatty_WhatDoYouDo_Info()
{
	AI_Output(other,self,"DIA_Scatty_WhatDoYouDo_15_00");	//��� �� ����� �������?
	AI_Output(self,other,"DIA_Scatty_WhatDoYouDo_01_01");	//� ������� �� ��� �� �����: ��������� ������, ������� ������, ��, ��� ���-�� �����.
};


var int Scatty_ChargeKirgo;
var int Scatty_ChargeKharim;
var int Scatty_ChargeGorHanis;

instance DIA_Scatty_JoinOC(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_JoinOC_Condition;
	information = DIA_Scatty_JoinOC_Info;
	permanent = 0;
	description = "� ���� �������������� � ����� ������. �� ������ ��� ������?";
};


func int DIA_Scatty_JoinOC_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Scatty_WhatDoYouDo) && (Npc_GetTrueGuild(hero) == GIL_None))
	{
		return 1;
	};
};

func void DIA_Scatty_JoinOC_Info()
{
	var C_Npc Kirgo;
	var C_Npc Kharim;
	var C_Npc GorHanis;
	AI_Output(other,self,"DIA_Scatty_JoinOC_15_00");	//� ���� �������������� � ����� ������. �� ������ ��� ������?
	AI_Output(self,other,"DIA_Scatty_JoinOC_01_01");	//���� �� ������� ������� ����, ��, ����� ����, ������.
	AI_Output(self,other,"DIA_Scatty_JoinOC_01_02");	//� ���� �� ����� ����������� ������ ����� ���� �������.
	AI_Output(self,other,"DIA_Scatty_JoinOC_01_03");	//������ ����-������ �� ��� �� ���, � � ��������, ��� �� ���� ��������. ��, � ��� ������, ����� �� � ���� ������.
	Scatty_ChargeKirgo = LOG_RUNNING;
	Scatty_ChargeKharim = LOG_RUNNING;
	Scatty_ChargeGorHanis = LOG_RUNNING;
	Kirgo = Hlp_GetNpc(GRD_251_Kirgo);
	Kirgo.aivar[AIV_WASDEFEATEDBYSC] = FALSE;
	Kirgo.aivar[AIV_HASDEFEATEDSC] = FALSE;
	Kharim = Hlp_GetNpc(Sld_729_Kharim);
	Kharim.aivar[AIV_WASDEFEATEDBYSC] = FALSE;
	Kharim.aivar[AIV_HASDEFEATEDSC] = FALSE;
	GorHanis = Hlp_GetNpc(Tpl_1422_GorHanis);
	GorHanis.aivar[AIV_WASDEFEATEDBYSC] = FALSE;
	GorHanis.aivar[AIV_HASDEFEATEDSC] = FALSE;
	Log_CreateTopic(CH1_JoinOC,LOG_MISSION);
	Log_SetTopicStatus(CH1_JoinOC,LOG_RUNNING);
	B_LogEntry(CH1_JoinOC,"������, ������������� ���� �� �����, ����� �������, ���� � ������ ������ �� ������.");
};


instance DIA_Scatty_KirgoSuccess(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_KirgoSuccess_Condition;
	information = DIA_Scatty_KirgoSuccess_Info;
	permanent = 0;
	description = "� �������� � �����!";
};


func int DIA_Scatty_KirgoSuccess_Condition()
{
	var C_Npc Kirgo;
	Kirgo = Hlp_GetNpc(GRD_251_Kirgo);
	if((Scatty_ChargeKirgo == LOG_RUNNING) && (Kirgo_Charged == TRUE) && ((Kirgo.aivar[AIV_WASDEFEATEDBYSC] == TRUE) || (Kirgo.aivar[AIV_HASDEFEATEDSC] == TRUE)) && (Kapitel == 1))
	{
		return 1;
	};
};

func void DIA_Scatty_KirgoSuccess_Info()
{
	var C_Npc Kirgo;
	Kirgo = Hlp_GetNpc(GRD_251_Kirgo);
	AI_Output(other,self,"DIA_Scatty_KirgoSuccess_15_00");	//� �������� � �����!
	if(Kirgo.aivar[AIV_HASDEFEATEDSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KirgoSuccess_01_01");	//� �� ������ ��� ����� ��� ������?!
		AI_Output(self,other,"DIA_Scatty_KirgoSuccess_01_02");	//�����, �� ��� ������, ��� ���� ���� �� �������...
		Scatty_ChargeKirgo = LOG_FAILED;
		B_LogEntry(CH1_JoinOC,"��� ��������� � ��� � ����� �� �������� ��� ������������ ������.");
	}
	else if(Kirgo.aivar[AIV_WASDEFEATEDBYSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KirgoSuccess_01_03");	//�� ������� ���! ������� ��� �������! �� ������������� ������ ����!
		Scatty_ChargeKirgo = LOG_SUCCESS;
		B_LogEntry(CH1_JoinOC,"������ ��� ������� ����� �������� � ��� � �����.");
		B_GiveXP(XP_kirgovictory);
	};
	Npc_ExchangeRoutine(Kirgo,"START");
};


instance DIA_Scatty_KHARIMSuccess(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_KHARIMSuccess_Condition;
	information = DIA_Scatty_KHARIMSuccess_Info;
	permanent = 0;
	description = "� �������� � �������!";
};


func int DIA_Scatty_KHARIMSuccess_Condition()
{
	var C_Npc Kharim;
	Kharim = Hlp_GetNpc(Sld_729_Kharim);
	if((Scatty_ChargeKharim == LOG_RUNNING) && (Kharim_Charged == TRUE) && ((Kharim.aivar[AIV_WASDEFEATEDBYSC] == TRUE) || (Kharim.aivar[AIV_HASDEFEATEDSC] == TRUE)) && (Kapitel == 1))
	{
		return 1;
	};
};

func void DIA_Scatty_KHARIMSuccess_Info()
{
	var C_Npc Kharim;
	Kharim = Hlp_GetNpc(Sld_729_Kharim);
	AI_Output(other,self,"DIA_Scatty_KHARIMSuccess_15_00");	//� �������� � �������!
	if(Kharim.aivar[AIV_HASDEFEATEDSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_01");	//��, ��� �� � �� ���� �����!
		if(Npc_GetTrueGuild(hero) == GIL_None)
		{
			AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_02");	//������, ��� �� ������ ������ ����� ����������! � ������� �� ���� ���� ������� �� ������ ������.
			AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_03");	//��� �������, �� ���� ��� �������. ����� �������, ��� ��, ��� ��� ����������!
		};
		Scatty_ChargeKharim = LOG_FAILED;
		B_GiveXP(XP_Kharimlost);
		B_LogEntry(CH1_JoinOC,"� �������� ��� � �������! ��� �������� ���������� ������, � ��� ������ ������� - �� �����.");
	}
	else if(Kharim.aivar[AIV_WASDEFEATEDBYSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_04");	//�� ������� ���! ����������, � �� ���� ������ �� ������. �� �������� ����� �� ����� ������� ������.
		AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_05");	//�� ������������� ������ ����!
		Scatty_ChargeKharim = LOG_SUCCESS;
		B_LogEntry(CH1_JoinOC,"� ������� ������, ��� ����� �������! ������ ��� ���������.");
		B_GiveXP(XP_kharimvictory);
	};
	Npc_ExchangeRoutine(Kharim,"START");
};


instance DIA_Scatty_OtherCamps(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_OtherCamps_Condition;
	information = DIA_Scatty_OtherCamps_Info;
	permanent = 0;
	description = "������ �� ���� �� ������� � ������ ������ ��������� �����?";
};


func int DIA_Scatty_OtherCamps_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Scatty_WhatDoYouDo))
	{
		return 1;
	};
};

func void DIA_Scatty_OtherCamps_Info()
{
	AI_Output(other,self,"DIA_Scatty_OtherCamps_15_00");	//� �����, ��� ��������� ����� ������ �� ������� � ������ ������ �� ����� ���������. ������ �� ��� ��������� �����?
	AI_Output(self,other,"DIA_Scatty_OtherCamps_01_01");	//��� ������: ��� � ������ �� ����� ������������ ���, � �������� ����� ������� ������ � ������������� �������� ����������, ��� ���� ����� ���� ������� �� ������ ������.
	AI_Output(self,other,"DIA_Scatty_OtherCamps_01_02");	//������ ���� ���� ������ ������ ������, ����� ������� ���-������ �� ���.
	AI_Output(self,other,"DIA_Scatty_OtherCamps_01_03");	//����� ��� �� �������� ���� �� ������ ������, �� ���� ���� ����...
};


instance DIA_Scatty_WannaFight(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = DIA_Scatty_WannaFight_Condition;
	information = DIA_Scatty_WannaFight_Info;
	permanent = 0;
	description = "� ���� ��������� �� �����!";
};


func int DIA_Scatty_WannaFight_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Scatty_WhatDoYouDo) && (Npc_GetTrueGuild(hero) == GIL_None))
	{
		return 1;
	};
};

func void DIA_Scatty_WannaFight_Info()
{
	AI_Output(other,self,"DIA_Scatty_WannaFight_15_00");	//� ���� ��������� �� �����!
	AI_Output(self,other,"DIA_Scatty_WannaFight_01_01");	//�� ��� �� ������� �� � ���� �� �������, ������� � �� ������� ���� �������� �� �����!
	AI_Output(self,other,"DIA_Scatty_WannaFight_01_02");	//����� �� ������� ������ ����� ������������ �����-��������!
};


instance DIA_Scatty_TRAIN(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 10;
	condition = DIA_Scatty_TRAIN_Condition;
	information = DIA_Scatty_TRAIN_Info;
	permanent = 1;
	description = "� �� ���������� ������?";
};


func int DIA_Scatty_TRAIN_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Scatty_WhatDoYouDo) && (Npc_GetTalentSkill(hero,NPC_TALENT_1H) < 2) && ((KIRGO_KILLED == FALSE) && (GORHANIS_KILLED == FALSE) && (KHARIM_KILLED == FALSE)))
	{
		return 1;
	};
};

func void DIA_Scatty_TRAIN_Info()
{
	if(log_scattytrain == FALSE)
	{
		Log_CreateTopic(GE_TeacherOC,LOG_NOTE);
		B_LogEntry(GE_TeacherOC,"������, ������������� ���� �� �����, ����� ������� ���� ���������� � ���������� �����.");
		log_scattytrain = TRUE;
	};
	AI_Output(other,self,"DIA_Scatty_TRAIN_15_00");	//� �� ���������� ������?
	AI_Output(self,other,"DIA_Scatty_TRAIN_01_01");	//�������, �� � ����� ��� �� ���� �����������. ���� ������, ����� � ���� ����������, �������� ���������.
	Info_ClearChoices(DIA_Scatty_TRAIN);
	Info_AddChoice(DIA_Scatty_TRAIN,DIALOG_BACK,DIA_Scatty_TRAIN_BACK);
	if(Npc_GetTalentSkill(hero,NPC_TALENT_1H) == 1)
	{
		Info_AddChoice(DIA_Scatty_TRAIN,B_BuildLearnString(NAME_Learn1h_2,LPCOST_TALENT_1H_2,150),DIA_Scatty_TRAIN_2h);
	};
	if(Npc_GetTalentSkill(hero,NPC_TALENT_1H) == 0)
	{
		Info_AddChoice(DIA_Scatty_TRAIN,B_BuildLearnString(NAME_Learn1h_1,LPCOST_TALENT_1H_1,50),DIA_Scatty_TRAIN_1h);
	};
};

func void DIA_Scatty_TRAIN_BACK()
{
	Info_ClearChoices(DIA_Scatty_TRAIN);
};

func void DIA_Scatty_TRAIN_1h()
{
	AI_Output(other,self,"DIA_Scatty_TRAIN_1h_15_00");	//� ����� �� ��������� ����� ������� ���������� �����.
	if(Npc_HasItems(other,ItMiNugget) >= 50)
	{
		if(B_GiveSkill(other,NPC_TALENT_1H,1,LPCOST_TALENT_1H_1))
		{
			b_printtrademsg1("������ ����: 50");
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_01");	//������� �����! ����� �������� ������� ������� ���, �� ������ ��������� ��������� ������� ������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_02");	//������� �������������, ������ ��������� ����� ��������� ������� ������� ���� ����� ������. ��� �������� ��������, ������� ����� �������� ���� � ����������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_03");	//����� ��� ����� �����. ������ ������� ����� � �� ����� ��� ����������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_04");	//�� ������ ��������� ����������� ��� ��� ����� ������ ����, � ����� ��� �������� ����� ����������� � ���������� ������ ����. ��� �������� �������� �����.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_05");	//���� �� ������ ��������� ���� �������, �� ������� ��������� ����� ���. �� ����� �������, ���� �������� ������ �������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_06");	//��, ���� ��� ���-���: ��������� ����� ������� ������� ����������� ����������. �� ��� �������, ������� � ���� �� ��� ����� ������ �� �������� ����.
			AI_Output(self,other,"DIA_Scatty_TRAIN_1h_01_07");	//�� ������ ���������� ������� ���� ������������������ � �������� ��� ������ ����� ������.
			B_GiveInvItems(other,self,ItMiNugget,50);
			Info_AddChoice(DIA_Scatty_TRAIN,B_BuildLearnString(NAME_Learn1h_2,LPCOST_TALENT_1H_2,150),DIA_Scatty_TRAIN_2h);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Scatty_TRAIN_1h_NoOre_01_00");	//����� ���� ������������!
	};
};

func void DIA_Scatty_TRAIN_2h()
{
	AI_Output(other,self,"DIA_Scatty_TRAIN_2h_15_01");	//����� ���� ����� ������� ���������� �����.
	if(Npc_HasItems(other,ItMiNugget) >= 150)
	{
		if(B_GiveSkill(other,NPC_TALENT_1H,2,LPCOST_TALENT_1H_2))
		{
			b_printtrademsg1("������ ����: 150");
			AI_Output(self,other,"DIA_Scatty_TRAIN_2h_Info_01_02");	//�� ��� ������� ��������� ������������� � �������� ���� �������. ���� �� ������ ������� ��� ������� ����, �� ������� ������� ������� ���� � ���� ������ ����.
			AI_Output(self,other,"DIA_Scatty_TRAIN_2h_Info_01_03");	//�������, ��� � ������� � ������� �������? ��������� ��� �� ���� � ���������� - ������ ������������ �������� ������������ ����. ���� �� ����� ������� ��� �����, ������ ��������. ��� �������� ���������� � ���� ���� ����������� ������� ����� ������� �������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_2h_Info_01_04");	//����� ���������� � ������ ���� ������ ������.
			AI_Output(self,other,"DIA_Scatty_TRAIN_2h_Info_01_05");	//� ������� � �������� ������. �� ������� ��� ����, ��� ���������� �������� � ������. � ������ ��� � �� ������� � �����������.
			B_GiveInvItems(other,self,ItMiNugget,150);
			Info_ClearChoices(DIA_Scatty_TRAIN);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Scatty_TRAIN_2h_NoOre_01_00");	//�������, ����� � ���� ����� ������ ����!
	};
};


instance DIA_SCATTY_GORHANISSUCCESS(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = dia_scatty_gorhanissuccess_condition;
	information = dia_scatty_gorhanissuccess_info;
	permanent = 0;
	important = 1;
};


func int dia_scatty_gorhanissuccess_condition()
{
	var C_Npc hanis;
	hanis = Hlp_GetNpc(Tpl_1422_GorHanis);
	if((HANIS_CHARGED == TRUE) && ((hanis.aivar[AIV_WASDEFEATEDBYSC] == TRUE) || (hanis.aivar[AIV_HASDEFEATEDSC] == TRUE)))
	{
		return 1;
	};
};

func void dia_scatty_gorhanissuccess_info()
{
	var C_Npc hanis;
	hanis = Hlp_GetNpc(Tpl_1422_GorHanis);
	if(hanis.aivar[AIV_HASDEFEATEDSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KirgoSuccess_01_01");	//� �� ������ ��� ����� ��� ������?!
		AI_StopProcessInfos(self);
	}
	else if(hanis.aivar[AIV_WASDEFEATEDBYSC] == TRUE)
	{
		AI_Output(self,other,"DIA_Scatty_KHARIMSuccess_01_04");	//�� ������� ���! ����������, � �� ���� ������ �� ������. �� �������� ����� �� ����� ������� ������.
		B_GiveXP(300);
	};
	Npc_ExchangeRoutine(hanis,"START");
};


instance DIA_SCATTY_WTF(C_Info)
{
	npc = GRD_210_Scatty;
	nr = 1;
	condition = dia_scatty_wtf_condition;
	information = dia_scatty_wtf_info;
	permanent = 0;
	important = 1;
};


func int dia_scatty_wtf_condition()
{
	if((Kapitel < 4) && (((HANIS_CHARGED_END == TRUE) && Npc_IsDead(Tpl_1422_GorHanis)) || ((KIRGO_CHARGED_END == TRUE) && Npc_IsDead(GRD_251_Kirgo)) || ((KHARIM_CHARGED_END == TRUE) && Npc_IsDead(Sld_729_Kharim))))
	{
		return 1;
	};
};

func void dia_scatty_wtf_info()
{
	AI_Output(self,other,"SVM_1_HeKilledHim");	//����� �� ���� ���? ������ ���� �� ����!
	B_LogEntry(CH1_JoinOC,"������ � ������, ������ ��� � ���� ������ �� ��� ������.");
	Scatty_ChargeGorHanis = LOG_FAILED;
	Scatty_ChargeKirgo = LOG_FAILED;
	Scatty_ChargeKharim = LOG_FAILED;
	if(Npc_IsDead(Tpl_1422_GorHanis))
	{
		GORHANIS_KILLED = TRUE;
		B_ExchangeRoutine(GRD_251_Kirgo,"nopractice");
		B_ExchangeRoutine(Sld_729_Kharim,"nopractice");
	};
	if(Npc_IsDead(GRD_251_Kirgo))
	{
		KIRGO_KILLED = TRUE;
		B_ExchangeRoutine(Sld_729_Kharim,"nopractice");
		B_ExchangeRoutine(Tpl_1422_GorHanis,"nopractice");
	};
	if(Npc_IsDead(Sld_729_Kharim))
	{
		KHARIM_KILLED = TRUE;
		B_ExchangeRoutine(GRD_251_Kirgo,"nopractice");
		B_ExchangeRoutine(Tpl_1422_GorHanis,"nopractice");
	};
	B_ExchangeRoutine(VLK_513_Buddler,"noarena");
	B_ExchangeRoutine(VLK_514_Buddler,"noarena");
	B_ExchangeRoutine(VLK_515_Buddler,"noarena");
	B_ExchangeRoutine(VLK_530_Guy,"noarena");
	B_ExchangeRoutine(STT_306_Schatten,"noarena");
	B_ExchangeRoutine(STT_316_Schatten,"noarena");
	B_ExchangeRoutine(STT_328_Schatten,"noarena");
	AI_StopProcessInfos(self);
};

