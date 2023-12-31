
instance Info_Saturas_EXIT(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 999;
	condition = Info_Saturas_EXIT_Condition;
	information = Info_Saturas_EXIT_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Saturas_EXIT_Condition()
{
	return 1;
};

func void Info_Saturas_EXIT_Info()
{
	AI_Output(self,other,"Info_Saturas_EXIT_14_01");	//�������, � ���� ��� ���������!
	AI_StopProcessInfos(self);
};


instance Info_Saturas_Intruder(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 1;
	condition = Info_Saturas_Intruder_Condition;
	information = Info_Saturas_Intruder_Info;
	permanent = 1;
	important = 1;
};


func int Info_Saturas_Intruder_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (Kapitel < 3))
	{
		return 1;
	};
};

func void Info_Saturas_Intruder_Info()
{
	AI_Output(self,other,"Info_Saturas_Intruder_14_00");	//��� �� ����� �������? ���� ���� ������! �����!
	AI_StopProcessInfos(self);
};


instance Info_Saturas_NEWS(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_NEWS_Condition;
	information = Info_Saturas_NEWS_Info;
	permanent = 0;
	important = 0;
	description = "� ���� ���� ������ ������� �� ������ ��������!";
};


func int Info_Saturas_NEWS_Condition()
{
	if((CorAngar_SendToNC == TRUE) && Npc_KnowsInfo(hero,Info_Cronos_SLEEPER))
	{
		return TRUE;
	};
};

func void Info_Saturas_NEWS_Info()
{
	AI_Output(other,self,"Info_Saturas_NEWS_15_01");	//� ���� ���� ������ ������� �� ������ ��������!
	AI_Output(self,other,"Info_Saturas_NEWS_14_02");	//���� ���� ��� ������ ��� ���������� �� ������� �� ����, ������, ��������� ���-�� ������������� ������!
};


instance Info_Saturas_YBERION(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_YBERION_Condition;
	information = Info_Saturas_YBERION_Info;
	permanent = 0;
	important = 0;
	description = "���� �������� ������� ���� ���������. ��� �������� �������.";
};


func int Info_Saturas_YBERION_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_NEWS))
	{
		return TRUE;
	};
};

func void Info_Saturas_YBERION_Info()
{
	AI_Output(other,self,"Info_Cronos_YBERION_15_03");	//���� �������� ������� ���� ���������. ��� �������� �������.
	AI_Output(other,self,"Info_Cronos_YBERION_15_04");	//�� ���������� ���������� ����� ��������� �� ��������. �� ����� �� ��������.
	if(YBERION_DIED == TRUE)
	{
		AI_Output(other,self,"Info_Saturas_YBERION_15_01");	//������� ����! ��� ��������� ����� ������� ��������� ������ �������!
		AI_Output(self,other,"Info_Saturas_YBERION_14_02");	//��� ������ ������� �� ���� ���������.
	};
	AI_Output(self,other,"Info_Saturas_YBERION_14_03");	//��� �� ��������� ��������? �� ���� �� �������� ����������� ��� �����?
	AI_Output(other,self,"Info_Saturas_YBERION_15_04");	//���! ��� ����� ���������� �� ��������. �� ���� � ����� ���������� ������� � ���� ���������� ����.
	AI_Output(self,other,"Info_Saturas_YBERION_14_05");	//��� �������! �� �� ������ ��� ����� ���������� ��������!
	AI_Output(other,self,"Info_Saturas_YBERION_15_06");	//��� ������� ������� ���� � ���, ��� ��� ��������, ������ ������� ����� �����. �� �������� ���� �������.
	AI_Output(other,self,"Info_Saturas_YBERION_15_07");	//���� �� ���� ��������� ����� ����, ������ ��� ������� �������, ���� ����� ���� � ���� ��� �����.
	AI_Output(other,self,"Info_Saturas_YBERION_15_08");	//��� ����� ��� ������������ ����, ������� �� ��������� �� ����� ���� � �������, �������� �� ��� �������� �������. ������� �� ������� �������� ������.
	if(YBERION_DIED == TRUE)
	{
		AI_Output(self,other,"Info_Saturas_YBERION_14_09");	//��� ����! ��� �, � �����, ��� � �������. ��� ����� ������� �������, �������, �� �������.
		AI_Output(self,other,"Info_Saturas_YBERION_14_10");	//���� ����-������ � ������� �������� �������� � �������� ����� ����� �������� ����������, �� ������ ���.
		B_LogEntry(CH3_EscapePlanNC,"� ������� �������� � �������� � �������� ������. �� ����������� ����, ��� ������ �������� ����� ����������� ��� �����, � �� ��� �����.");
	}
	else
	{
		AI_Output(self,other,"SVM_14_HeyHeyHey");	//��.
		B_ExchangeRoutine(GUR_1204_BaalNamib,"yberion");
		B_ExchangeRoutine(Gur_1207_Natalia,"wash");
		B_ExchangeRoutine(Gur_1205_Chani,"wash");
		B_LogEntry(CH3_EscapePlanNC,"� ������� �������� � �������� � �������� ������.");
	};
	B_ExchangeRoutine(GUR_1202_CorAngar,"guru");
};


instance Info_Saturas_BOOK(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_BOOK_Condition;
	information = Info_Saturas_BOOK_Info;
	permanent = 0;
	important = 0;
	description = "� ���� ���� ��������...";
};


func int Info_Saturas_BOOK_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_YBERION) && Npc_HasItems(hero,ItWrFokusbuch))
	{
		return TRUE;
	};
};

func void Info_Saturas_BOOK_Info()
{
	AI_Output(other,self,"Info_Saturas_BOOK_15_01");	//� ���� ���� ��������...
	AI_Output(other,self,"Info_Saturas_BOOK_15_02");	//������� ����������� ��� ��� ����, ����� �������� ������.
	b_printtrademsg1("����� ��������.");
	AI_Output(self,other,"Info_Saturas_BOOK_14_03");	//����� ������. ��� ����������� ��� �����, ����� �������� ��� ���� ������-��������.
	AI_Output(self,other,"Info_Saturas_BOOK_14_04");	//� ������ ��!
	Npc_RemoveInvItem(hero,ItWrFokusbuch);
	B_GiveXP(XP_DeliverBookToSaturas);
};


instance Info_Saturas_FOCUS(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_FOCUS_Condition;
	information = Info_Saturas_FOCUS_Info;
	permanent = 0;
	important = 0;
	description = "� ���� ���� ���� ������...";
};


func int Info_Saturas_FOCUS_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_YBERION) && Npc_HasItems(hero,Focus_1))
	{
		return TRUE;
	};
};

func void Info_Saturas_FOCUS_Info()
{
	AI_Output(other,self,"Info_Saturas_FOCUS_15_01");	//� ���� ���� ���� ������...
	AI_Output(self,other,"Info_Saturas_FOCUS_14_02");	//� ���� ���� ����, � ������� �������� �� �������� ���� �����.
	AI_Output(self,other,"Info_Saturas_FOCUS_14_03");	//��� ���� �� ������-��������, ������� ����� ������� ���������� ������.
	AI_Output(self,other,"Info_Saturas_FOCUS_14_04");	//���� ���������� ��� ���� ������, �� �� ������ ������� ��� ���������� �����.
	AI_Output(other,self,"Info_Saturas_FOCUS_15_05");	//�� ��� ����� ��� ����������� ��� ���� ���������� ����!
	AI_Output(self,other,"Info_Saturas_FOCUS_14_06");	//�� ����. ������ � ���� ����� �� �������� ����, � �� �������� �� ������ � ����� �� �����-�� ����������.
	AI_Output(self,other,"Info_Saturas_FOCUS_14_07");	//��� �� ��� ������, ������ ����� ���� �������� ������� ���������� �������. ���� ������� ���� ���� ������ ������� �� ��, ����� ��������� ������.
	AI_Output(other,self,"Info_Saturas_FOCUS_15_08");	//�������, ��� ����� ������.
	AI_Output(self,other,"Info_Saturas_FOCUS_14_09");	//��� ����� �� ������� �����, � ����������. �� ������� ������ ��, ��� ����� ���������� �������. ��� ����� �� �� ������������ ������� ������.
	AI_Output(other,self,"Info_Saturas_FOCUS_15_10");	//���, ������ ������. �������, �� ������� ��� ����� �� �������.
	b_printtrademsg1("����� ������.");
	Npc_RemoveInvItem(hero,Focus_1);
	B_GiveXP(XP_DeliverFocusToSaturas);
};


instance Info_Saturas_WHATNOW(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_WHATNOW_Condition;
	information = Info_Saturas_WHATNOW_Info;
	permanent = 0;
	important = 0;
	description = "�� ����������� ������ � �������� ����� ������?";
};


func int Info_Saturas_WHATNOW_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_FOCUS) && Npc_KnowsInfo(hero,Info_Saturas_BOOK))
	{
		return TRUE;
	};
};

func void Info_Saturas_WHATNOW_Info()
{
	AI_Output(other,self,"Info_Saturas_WHATNOW_15_01");	//�� ����������� ������ � �������� ����� ������?
	AI_Output(self,other,"Info_Saturas_WHATNOW_14_03");	//�� ����� ��� ������. ��� ����� ��������� �����-�������.
	AI_Output(self,other,"Info_Saturas_WHATNOW_14_04");	//� ���������, �� � ��� ��� ���.
};


instance Info_Saturas_OFFER(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_OFFER_Condition;
	information = Info_Saturas_OFFER_Info;
	permanent = 0;
	important = 0;
	description = "� ������ ���� ����� ��� ������ �����.";
};


func int Info_Saturas_OFFER_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_WHATNOW))
	{
		return TRUE;
	};
};

func void Info_Saturas_OFFER_Info()
{
	AI_Output(other,self,"Info_Saturas_OFFER_15_01");	//� ������ ���� ����� ��� ������ �����.
	AI_Output(other,self,"Info_Saturas_OFFER_15_02");	//���� � � ��� ���� ��������� ������.
	AI_Output(self,other,"Info_Saturas_OFFER_14_03");	//�� ������ �����, ��� ��� ������ ����� � ��������, � ��������.
	AI_Output(self,other,"Info_Saturas_OFFER_14_04");	//� ��� ��� ���� ��������� �� ������ ������� ������ ����������, � �� ����� ���� ���� � ������ �� ������ ��������.
	AI_Output(self,other,"Info_Saturas_OFFER_14_05");	//���� �������� ���������� ������ �� ���� ����.
	AI_Output(other,self,"Info_Saturas_OFFER_15_06");	//��� �... ��������. � ��� ������ ������ ��� ���.
	AI_Output(self,other,"Info_Saturas_OFFER_14_07");	//���� ����������� ���������, �� ���-��� ���� ��� �� ����� �����������.
	AI_Output(self,other,"Info_Saturas_OFFER_14_08");	//������ ��� �����. ��� �������� ������, ������� �� ��� ����� ����� �����, � ������� ������������� ������� �� ����, ��� �� ������� ���� ������.
	b_printtrademsg1("�������� ����� ��������.");
	AI_Output(self,other,"Info_Saturas_OFFER_14_09");	//���� ����������� ��� ����������, ��� ������� ������� ��������� � ������.
	b_printtrademsg2("������� ������ ������������.");
	AI_Output(self,other,"Info_Saturas_OFFER_14_10");	//� ���: �������� � ���������. �� ������� ��� ��� �����.
	AI_Output(self,other,"Info_Saturas_OFFER_14_11");	//��� ��� �� ������� �� ������� ������.
	B_Story_BringFoci();
};

func void B_DeliverFocus()
{
	if(Saturas_BringFoci == 1)
	{
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_01");	//��, ������� ������! �� ������.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_02");	//�� ����� ����� ��� ��� �����.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_03");	//��� � ��������� �� ���������.
		Saturas_BringFoci = 2;
		B_GiveXP(XP_DeliverSecondFocus);
	}
	else if(Saturas_BringFoci == 2)
	{
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_04");	//������, ��� ��� ������ ������.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_05");	//����� �� ������ ����������� ��� ����.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_06");	//����� ��� ������ � ������� ��� ��� ��� �����.
		Saturas_BringFoci = 3;
		B_GiveXP(XP_DeliverThirdFocus);
	}
	else if(Saturas_BringFoci == 3)
	{
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_07");	//����������! � ��� ���� ����� ������ �����!
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_08");	//��� �� ������� ����� ������. ����� �� ����� ����, �� ������ ���������� � ����.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_09");	//�� ������ ��� ���������� ������. �� ����� ��� ��������� ������, � �� ������ ������������ �� ���� ������.
		Saturas_BringFoci = 4;
		B_GiveXP(XP_DeliverFourthFocus);
	}
	else if(Saturas_BringFoci == 4)
	{
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_10");	//�������! � ��� ���� ��� ���� ������!
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_11");	//��� ������ � ���������� ����� ����� �����. �� ������������ ��� ������ �������������.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_12");	//����� � ��������. �������, ��� ������� ����� ���� �� ��������� � ���, ��� �� ������ ��� ���, �� ��� ���� �����.
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_13");	//������ ���� ����� ���� ������. �� ���������� ���� ��������� �������.
		Saturas_BringFoci = 5;
		B_GiveXP(XP_DeliverFifthFocus);
		B_LogEntry(CH3_BringFoci,"��� ������� ����� ��� ������ �������. ������� �������, ��� �������. ��, �� ���� ��� ��� ������� ������� ���-�� ������������� ��������...");
		B_LogEntry(CH3_BringFoci,"� ������� � �������� ���� ��� ���� ��������� ������� �� ��, ��� � ����� �������. ��� ����� ����������� � ����.");
		Log_SetTopicStatus(CH3_MonasteryRuin,LOG_SUCCESS);
		Log_SetTopicStatus(CH3_Stonehenge,LOG_SUCCESS);
		Log_SetTopicStatus(CH3_Fortress,LOG_SUCCESS);
		Log_SetTopicStatus(CH3_TrollCanyon,LOG_SUCCESS);
	};
	if(!Npc_HasItems(hero,ItArScrollTeleport2) && (Saturas_BringFoci < 5) && (KDW_TP_USED == TRUE))
	{
		AI_Output(self,other,"Info_Saturas_BRINGFOCUS_14_14");	//�� �������� ���������� ������������, ��� � ����. ������ ��� ����, ����� ����������.
		KDW_TP_USED = FALSE;
		b_printtrademsg2("������� ������ ������������.");
		CreateInvItem(hero,ItArScrollTeleport2);
	};
};


instance Info_Saturas_BRINGFOCUS2(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_BRINGFOCUS2_Condition;
	information = Info_Saturas_BRINGFOCUS2_Info;
	permanent = 0;
	important = 0;
	description = "� ����� ������ � ������ �������!";
};


func int Info_Saturas_BRINGFOCUS2_Condition()
{
	if(Npc_HasItems(hero,Focus_2) && (Saturas_BringFoci > 0))
	{
		return TRUE;
	};
};

func void Info_Saturas_BRINGFOCUS2_Info()
{
	AI_Output(other,self,"Info_Saturas_BRINGFOCUS2_15_01");	//� ����� ������ � ������ �������!
	b_printtrademsg1("����� ������.");
	B_LogEntry(CH3_TrollCanyon,"� ����� �������� ������ �� ������ ������.");
	Log_SetTopicStatus(CH3_TrollCanyon,LOG_SUCCESS);
	Npc_RemoveInvItem(hero,Focus_2);
	B_DeliverFocus();
};


instance Info_Saturas_BRINGFOCUS3(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_BRINGFOCUS3_Condition;
	information = Info_Saturas_BRINGFOCUS3_Info;
	permanent = 0;
	important = 0;
	description = "� ������ ����� � ����� ���� �� ��������.";
};


func int Info_Saturas_BRINGFOCUS3_Condition()
{
	if(Npc_HasItems(hero,Focus_3) && (Saturas_BringFoci > 0))
	{
		return TRUE;
	};
};

func void Info_Saturas_BRINGFOCUS3_Info()
{
	AI_Output(other,self,"Info_Saturas_BRINGFOCUS3_15_01");	//� ������ ����� � ����� ���� �� ��������.
	b_printtrademsg1("����� ������.");
	B_LogEntry(CH3_Fortress,"������ � �������� ���� ������ �� ������� �����.");
	Log_SetTopicStatus(CH3_Fortress,LOG_SUCCESS);
	Npc_RemoveInvItem(hero,Focus_3);
	B_DeliverFocus();
};


instance Info_Saturas_BRINGFOCUS4(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_BRINGFOCUS4_Condition;
	information = Info_Saturas_BRINGFOCUS4_Info;
	permanent = 0;
	important = 0;
	description = "� ����� ���� �� �������� � ����������� ���������!";
};


func int Info_Saturas_BRINGFOCUS4_Condition()
{
	if(Npc_HasItems(hero,Focus_4) && (Saturas_BringFoci > 0))
	{
		return TRUE;
	};
};

func void Info_Saturas_BRINGFOCUS4_Info()
{
	AI_Output(other,self,"Info_Saturas_BRINGFOCUS4_15_01");	//� ����� ���� �� �������� � ����������� ���������!
	b_printtrademsg1("����� ������.");
	AI_Output(other,self,"Info_Saturas_BRINGFOCUS4_15_02");	//��� � �������� �������� �����, � �� ����� ��� � �������.
	B_LogEntry(CH3_MonasteryRuin,"��� ������� �������� �������� ������ �� �������� ���������.");
	Log_SetTopicStatus(CH3_MonasteryRuin,LOG_SUCCESS);
	Npc_RemoveInvItem(hero,Focus_4);
	B_DeliverFocus();
};


instance Info_Saturas_BRINGFOCUS5(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_BRINGFOCUS5_Condition;
	information = Info_Saturas_BRINGFOCUS5_Info;
	permanent = 0;
	important = 0;
	description = "� ����� ������ � �������� ��� �������� �������!";
};


func int Info_Saturas_BRINGFOCUS5_Condition()
{
	if(Npc_HasItems(hero,Focus_5) && (Saturas_BringFoci > 0))
	{
		return TRUE;
	};
};

func void Info_Saturas_BRINGFOCUS5_Info()
{
	AI_Output(other,self,"Info_Saturas_BRINGFOCUS5_15_01");	//� ����� ������ � �������� ��� �������� �������!
	b_printtrademsg1("����� ������.");
	B_LogEntry(CH3_Stonehenge,"� ������ �������� ������ �� ������ ��� ������ ������.");
	Log_SetTopicStatus(CH3_Stonehenge,LOG_SUCCESS);
	Npc_RemoveInvItem(hero,Focus_5);
	B_DeliverFocus();
};


instance Info_Saturas_ALLFOCI(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_ALLFOCI_Condition;
	information = Info_Saturas_ALLFOCI_Info;
	permanent = 0;
	important = 0;
	description = "������ �� ����� �������� ������ ����?";
};


func int Info_Saturas_ALLFOCI_Condition()
{
	if((Saturas_BringFoci == 5) && (Kapitel < 4))
	{
		return TRUE;
	};
};

func void Info_Saturas_ALLFOCI_Info()
{
	AI_Output(other,self,"Info_Saturas_ALLFOCI_15_01");	//������ �� ����� �������� ������ ����?
	AI_Output(self,other,"Info_Saturas_ALLFOCI_14_02");	//������ � ��� ���� ��� �����������, ����� ����������� ����������.
	AI_Output(self,other,"Info_Saturas_ALLFOCI_14_03");	//������ ��� ������ ��� �������� ����������� ������.
	AI_Output(self,other,"Info_Saturas_ALLFOCI_14_04");	//����� ��������� ��� �������� ������� ����, ���� �����, ����� ����� ���� ������������.
	AI_Output(other,self,"Info_Saturas_ALLFOCI_15_05");	//��� �� ����� ����� �������?
	AI_Output(self,other,"Info_Saturas_ALLFOCI_14_06");	//�� ��� ������ ��� ��� ����� �����, � �� � ����� ����� �����...
	AI_Output(self,other,"Info_Saturas_ALLFOCI_14_07");	//... �� ���� �� ����������� �� ��� �����������, �� ������� ���� ������� ���� �������.
};


instance Info_Saturas_FAVOR(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_FAVOR_Condition;
	information = Info_Saturas_FAVOR_Info;
	permanent = 0;
	important = 0;
	description = "�� ����� �����������?";
};


func int Info_Saturas_FAVOR_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_ALLFOCI))
	{
		return TRUE;
	};
};

func void Info_Saturas_FAVOR_Info()
{
	AI_Output(other,self,"Info_Saturas_FAVOR_15_01");	//�� ����� �����������?
	AI_Output(self,other,"Info_Saturas_FAVOR_14_02");	//����� � ������ ������ � ��������� ��������� ��������� ����� ����� ���� ������ ���.
	AI_Output(other,self,"Info_Saturas_FAVOR_15_03");	//����� ����� ����? �� �����, ��� ��� ���������� � ����� ������������.
	AI_Output(other,self,"Info_Saturas_FAVOR_15_04");	//���� ������ ����� ��������, ��� ������� ���� ����� ������.
	AI_Output(self,other,"Info_Saturas_FAVOR_14_05");	//������ �� ���� ������� � ��������� ���� ��������� ��� ������. � ���� ���� �������� �� ���� �������.
	AI_Output(self,other,"Info_Saturas_FAVOR_14_06");	//����� ����� ����, ��� �� ��� ��� ������ �� ������ ������ �������, ����� �� ������ ������� ���������� ���������.
};


instance Info_Saturas_ACCEPT(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_ACCEPT_Condition;
	information = Info_Saturas_ACCEPT_Info;
	permanent = 0;
	important = 0;
	description = "��� �, � ��������� ��������� ����� ����.";
};


func int Info_Saturas_ACCEPT_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_FAVOR))
	{
		return TRUE;
	};
};

func void Info_Saturas_ACCEPT_Info()
{
	AI_Output(other,self,"Info_Saturas_ACCEPT_15_01");	//��� �, � ��������� ��������� ����� ����.
	AI_Output(other,self,"Info_Saturas_ACCEPT_15_02");	//�� � ������ �� ������. ��-�����, ��� ����� ����������.
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_03");	//��� �� ��������. ���� ���� �� ������� ��� �������, �� ��������� ��� ����...
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_04");	//���� ����...
	AI_Output(other,self,"Info_Saturas_ACCEPT_15_05");	//... ���� ���?
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_06");	//�������! �� ������ ��������� ��.
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_07");	//������ ��� ����. ������� �� ��������, ���������� ���� ����� ����. ��� ���� ������ �������.
	b_printtrademsg1("�������� ���� ������������ � ����� ����.");
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_08");	//���� ������� ��� ����������� �� ���, ����� ������.
	AI_Output(self,other,"Info_Saturas_ACCEPT_14_09");	//�����, ��� ����� ������� ��������������� ����� ������.
	B_Kapitelwechsel(4);
};


instance Info_Saturas_AMBUSH(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_AMBUSH_Condition;
	information = Info_Saturas_AMBUSH_Info;
	permanent = 0;
	important = 1;
};


func int Info_Saturas_AMBUSH_Condition()
{
	if(FMTaken && !FindXardas)
	{
		return TRUE;
	};
};

func void Info_Saturas_AMBUSH_Info()
{
	var C_Npc gorn;
	gorn = Hlp_GetNpc(PC_Fighter);
	AI_TurnToNPC(gorn,hero);
	AI_Output(self,hero,"Info_Saturas_AMBUSH_14_01");	//������, ��� �� ��������. ��� �������� ������� ���������!
	AI_Output(hero,self,"Info_Saturas_AMBUSH_15_02");	//��-��, � �������� �������, ��� ���������. ��������� ����� ���� ��������� ����������� ������� ������. ����� �� �����, ��� ��� ������� � ������...
	AI_Output(self,hero,"Info_Saturas_AMBUSH_14_03");	//�������... � ������... ��, �������... �� ����� ��� ��� � ������ ������!
	AI_Output(self,hero,"Info_Saturas_AMBUSH_14_04");	//����� ����� ����� ���� ������ ����.
	AI_Output(self,hero,"Info_Saturas_AMBUSH_14_05");	//������ ����� ������� �� ���� ���? ������ �� ������� ��������� �� ��� ��� ���� �����?
	AI_Output(self,hero,"Info_Saturas_AMBUSH_14_06");	//�� �� ������ ��������, ��� ��� �������� ����� ������� ����� � �������!
};


instance Info_Saturas_COLLAPSE(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_COLLAPSE_Condition;
	information = Info_Saturas_COLLAPSE_Info;
	permanent = 0;
	important = 0;
	description = "������ ����� ����������, ����� ���� ��� �� ������ ����!";
};


func int Info_Saturas_COLLAPSE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_AMBUSH))
	{
		return TRUE;
	};
};

func void Info_Saturas_COLLAPSE_Info()
{
	AI_Output(hero,self,"Info_Saturas_COLLAPSE_15_01");	//������ ����� ����������, ����� ���� ��� �� ������ ����!
	AI_Output(self,hero,"Info_Saturas_COLLAPSE_14_02");	//... ����������... �������... ����� ��� �������.
	AI_Output(self,hero,"Info_Saturas_COLLAPSE_14_03");	//����� ������� ���� ����� � ���� ������� �������. ��� ��� ������ ������, ��� ��� ������ �� �������� �� ���.
};


instance Info_Saturas_MURDER(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_MURDER_Condition;
	information = Info_Saturas_MURDER_Info;
	permanent = 0;
	important = 0;
	description = "����� ���� ���� ����� ����� ����!";
};


func int Info_Saturas_MURDER_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_AMBUSH))
	{
		return TRUE;
	};
};

func void Info_Saturas_MURDER_Info()
{
	AI_Output(hero,self,"Info_Saturas_MURDER_15_01");	//����� ���� ���� ����� ����� ����!
	AI_Output(self,hero,"Info_Saturas_MURDER_14_02");	//���� ����?! �� �����? ����� �� ��� ������?
	AI_Output(hero,self,"Info_Saturas_MURDER_15_03");	//��� �� ���������� ������ � ��������� ������ ��������� �� ��������� �����.
	AI_Output(self,hero,"Info_Saturas_MURDER_14_04");	//������, �� ��������. ���������� ������� ������ ���� ����� ������ � ����� �� ���������� �����. � ��� ����� �����.
	AI_Output(self,hero,"Info_Saturas_MURDER_14_05");	//�������� �� ��, ��� �� ������ ��� ��������� �����, � ��������� ����.
	B_GiveXP(XP_ReportToSaturas);
	B_LogEntry(CH4_Firemages,"������� ��� ��������� ���� ���������� � ��������� �������� � ������ ������. ��� ����� ������ � ��� ������ ���������� �������... ��� �, ��� ������ �� �������� ������������ �� ������� ����� ����.");
	Log_SetTopicStatus(CH4_Firemages,LOG_SUCCESS);
};


instance KDW_600_Saturas_NOMOREOC(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = KDW_600_Saturas_NOMOREOC_Condition;
	information = KDW_600_Saturas_NOMOREOC_Info;
	important = 0;
	permanent = 0;
	description = "���� ������� �� ������� ������ �� ��, ��� � ����� ���!";
};


func int KDW_600_Saturas_NOMOREOC_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_MURDER) && (OC_BANNED == TRUE) && ((oldHeroGuild == GIL_GRD) || (oldHeroGuild == GIL_KDF) || (oldHeroGuild == GIL_STT)))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_NOMOREOC_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_NOMOREOC_Info_15_01");	//���� ������� �� ������� ������ �� ��, ��� � ����� ���!
	AI_Output(self,other,"KDW_600_Saturas_NOMOREOC_Info_14_02");	//������� �� ������� ������, ��������?
	AI_Output(self,other,"KDW_600_Saturas_NOMOREOC_Info_14_03");	//�� � �������� ������ ����!
	Log_CreateTopic(CH4_BannedFromOC,LOG_MISSION);
	Log_SetTopicStatus(CH4_BannedFromOC,LOG_RUNNING);
	B_LogEntry(CH4_BannedFromOC,"����� ���� ��� ���� �������� �� ������� ������, ������� ��������� ���� �������������� � ������ ������.");
};


instance KDW_600_Saturas_GOTOLEE(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = KDW_600_Saturas_GOTOLEE_Condition;
	information = KDW_600_Saturas_GOTOLEE_Info;
	important = 0;
	permanent = 0;
	description = "������ �� ���, ��� �� ������� ���� � ��������?";
};


func int KDW_600_Saturas_GOTOLEE_Condition()
{
	if(((oldHeroGuild == GIL_GRD) || (oldHeroGuild == GIL_STT)) && Npc_KnowsInfo(hero,KDW_600_Saturas_NOMOREOC))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_GOTOLEE_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_GOTOLEE_Info_15_01");	//������ �� ���, ��� �� ������� ���� � ��������?
	AI_Output(self,other,"KDW_600_Saturas_GOTOLEE_Info_14_02");	//�� ���� ����� ���������� � ��. ������� �� ���, ����� ���� ������ ����� �����.
	B_LogEntry(CH4_BannedFromOC,"��, ����� ���������, ����� ���������� �� ����. ����� ��������� � ��� � ������ ��������� � ��������.");
};


instance KDW_600_Saturas_OATH(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = KDW_600_Saturas_OATH_Condition;
	information = KDW_600_Saturas_OATH_Info;
	important = 0;
	permanent = 0;
	description = "������ �� ���, ��� � ���� ������ � ������� ����� ����� ����?";
};


func int KDW_600_Saturas_OATH_Condition()
{
	if((oldHeroGuild == GIL_KDF) && Npc_KnowsInfo(hero,KDW_600_Saturas_NOMOREOC))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_OATH_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_OATH_Info_15_01");	//������ �� ���, ��� � ���� ������ � ������� ����� ����� ����?
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_02");	//���. ������� �� ������ �������� ������ ����.
	AI_Output(other,self,"KDW_600_Saturas_OATH_Info_15_03");	//�� � ��� �������� ������� ����!
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_04");	//��...
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_05");	//���� ������ ���� �� ����� ��������!
	AI_Output(other,self,"KDW_600_Saturas_OATH_Info_15_06");	//��... � �� �������...
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_07");	//� ������� ������ �� ��������� ����� � ������� ����� ���� ������!
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_08");	//���� ���� � ������ ���� ����� ���������� ����!
	B_LogEntry(CH4_BannedFromOC,"������� ��������� ��� �������� � ���� ����� ����. ��� ���� ��� ������ ���� �� ����� ��������.");
};


instance KDW_600_Saturas_KDWAUFNAHME(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = KDW_600_Saturas_KDWAUFNAHME_Condition;
	information = KDW_600_Saturas_KDWAUFNAHME_Info;
	important = 0;
	permanent = 0;
	description = "� ����� �������� ������.";
};


func int KDW_600_Saturas_KDWAUFNAHME_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_OATH))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KDWAUFNAHME_Info()
{
	AI_GotoNpc(hero,self);
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_01");	//� ����� �������� ������.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_02");	//��������� ����, ����������� �������� ������������� ����!
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_03");	//�������� �� ���� ����� ������:
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_04");	//������� ����������� �����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_05");	//������� ����������� �����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_06");	//... � ����� ��������� ����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_07");	//... � ����� ��������� ����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_08");	//...��� ������ � �������� ��� ����� ������� ���� ������ � �� ��������� �����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_09");	//...��� ������ � ������� ��� ����� ������� ���� ������ � �� ��������� �����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_10");	//...�� ��� ���, ���� ��� ������� ���� �� ������� ����� � �������� ������� � �� �������� �������� ���� �����.
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_11");	//...�� ��� ���, ���� ��� ������� ���� �� ������� ����� � �������� ������� � �� �������� �������� ���� �����.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_12");	//��� ������ ��������� � ���� ���� ���� � ������������� ����.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_13");	//��������� ��, ��� �� ���� ���� ������������. ������ ���� ����� ����� ������ ����������� ������.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_14");	//������ ��� ������� � ���� ��� � ���� ����� �� ��������� ����� � � ��������.
	b_printtrademsg1("�������� ������ ���� ����.");
	CreateInvItem(hero,kdw_armor_l);
	Snd_Play("MFX_Heal_Cast");
	Npc_SetTrueGuild(hero,GIL_KDW);
	hero.guild = GIL_KDW;
	B_LogEntry(CH4_BannedFromOC,"�� ������ ���� � ���� ����� ����. ������ � ���������� ���� ���������� ������ ������������.");
	Log_SetTopicStatus(CH4_BannedFromOC,LOG_SUCCESS);
	if(DIFF_HARD == FALSE)
	{
		FREELEARN_NC = TRUE;
	};
	AI_StopProcessInfos(self);
};


instance KDW_600_Saturas_LESSON(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_LESSON_Condition;
	information = KDW_600_Saturas_LESSON_Info;
	important = 0;
	permanent = 0;
	description = "�� ������ ����� ���� ��������?";
};


func int KDW_600_Saturas_LESSON_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_KDW)
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_LESSON_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_LESSON_Info_15_01");	//�� ������ ����� ���� ��������?
	if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) <= 3)
	{
		AI_Output(self,other,"KDW_600_Saturas_LESSON_Info_14_02");	//���� ��� ������� ����� ���������. ������� �� ���, ����� ������ �����.
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 4)
	{
		AI_Output(self,other,"KDW_600_Saturas_LESSON_Info_14_03");	//� ���� ��������� ���� � ��� ���� �����, ������� ���� ��� ����������, �� ������ �����, ����� �� ������ �����.
	};
	Log_CreateTopic(GE_TeacherNC,LOG_NOTE);
	B_LogEntry(GE_TeacherNC,"�������, ����� ����� ����, ����� ��������� ���� � ����� ������ �����. � ����� ����� ��� � ����������� �� ������ ������ ������ ������.");
};


instance KDW_600_Saturas_KREIS1(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_KREIS1_Condition;
	information = KDW_600_Saturas_KREIS1_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_1,LPCOST_TALENT_MAGE_1,0);
};


func int KDW_600_Saturas_KREIS1_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_LESSON) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 0) && (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KREIS1_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_KREIS1_Info_15_01");	//� ����� �������� � ������ ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,1,LPCOST_TALENT_MAGE_1))
	{
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_02");	//���������� � ������ ���� ����� ���� ���� ������ ������������ ���������� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_03");	//������ ���� �������� � ���� ���� ���������� ����������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_04");	//��������� ���� ���������� ����, �� ������� ��������� ��� ����������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_05");	//�� � ������� �� ���������� �������, ������� ������ ���� ���� ����� ������� ���������, ���������� ���� ����� ������ ����� � �����, � ��� �� ��������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_06");	//������ ���� �������� ���������� ���������� ����, ������� ����� ���� ������������� � ����� �����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_07");	//��� � ��� ������, ��� ��������� ���������� ���� ��� ������ ����� ������������� ���� ���������� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_08");	//������ ������� ������ ����� ������� ���� ������ ����� ������� ���������� ���.
		AI_Output(self,other,"KDW_600_Saturas_KREIS1_Info_14_09");	//��������� ���� ���, �� ������� ������, ����� ����� ��������� ���.
		KDW_600_Saturas_KREIS1.permanent = 0;
	};
};


instance KDW_600_Saturas_KREIS2(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_KREIS2_Condition;
	information = KDW_600_Saturas_KREIS2_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_2,LPCOST_TALENT_MAGE_2,0);
};


func int KDW_600_Saturas_KREIS2_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_LESSON) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 1) && (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KREIS2_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_KREIS2_Info_15_01");	//� ����� � ���������� �� ������ ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,2,LPCOST_TALENT_MAGE_2))
	{
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_02");	//�� ��� �������� ������ ���������� ���. ������ ����� �������� ���� ������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_03");	//������ ���� ����� ���� ���� ����������� ������ ������� ������ ����������, �� ����� �������, �� ������� �������� �������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_04");	//�� ���� ��������� ��� ������� ���������, ����� ������� �������� ����� �����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_05");	//�� ��� ������, ��� ������ ������������ ����� ����, ���� �� ��� ������ ����� ������ ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_06");	//�� ��� ������� ������, � �� �� ������ ��������. ���� ���� ����, ������� ����� ��������� ������ � ����������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_07");	//�������� ��� ���������� �� ���� �����, ����� ��� ������������� ����������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS2_Info_14_08");	//����������� ����� �� ���, ��� ���������� ������, � ����� �� ������� ������� ���� ���.
		KDW_600_Saturas_KREIS2.permanent = 0;
	};
};


instance KDW_600_Saturas_KREIS3(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_KREIS3_Condition;
	information = KDW_600_Saturas_KREIS3_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_3,LPCOST_TALENT_MAGE_3,0);
};


func int KDW_600_Saturas_KREIS3_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_LESSON) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 2) && (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KREIS3_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_KREIS3_Info_15_01");	//� ����� �������� ������ �������� �����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,3,LPCOST_TALENT_MAGE_3))
	{
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_02");	//������ ���� - ����� ������ ����� ����, ������� �������� ������ ���. ��� ����������� ����������� ���� �����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_03");	//�� ��� �� �������� ���� �������� �����. �� ��� ������ ������ ���������� ���.
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_04");	//��� ������ ������ ������� ��� ����������� �����������������. �������, ������ ��� ������������ �� ��� ���� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_05");	//�� ������ ������ �� ��� �� ������, �� ���� ����� ������ ���� �������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_06");	//���� �� ������ �����, �� ������ ��������� ��� �� ����������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS3_Info_14_07");	//������ ���� ����, � �� �������� ���� ����� �������.
		KDW_600_Saturas_KREIS3.permanent = 0;
	};
};


instance KDW_600_Saturas_KREIS4(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_KREIS4_Condition;
	information = KDW_600_Saturas_KREIS4_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_4,LPCOST_TALENT_MAGE_4,0);
};


func int KDW_600_Saturas_KREIS4_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_LESSON) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 3) && (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KREIS4_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_KREIS4_Info_15_01");	//� ����� �������� � ��������� ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,4,LPCOST_TALENT_MAGE_4))
	{
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_02");	//���� ��� ������� ������ ���� ������ �����. ������ ����� ������� �� �����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_03");	//����� ���� ������� � �����. ������ ���� �������� ��� �������� ���������� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_04");	//����� ����, ������� �������� � ������� ������. ������ ���������� ���������� �������� � ������ ������. ��� �� ���������� ������� ����� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_05");	//��� ����, ������� �� ������ ������������, ��������� ���� ������ � ������� � ���������� ����� ������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_07");	//������ �����, � �� �������� ����� ����� ����.
		KDW_600_Saturas_KREIS4.permanent = 0;
	};
};


instance KDW_600_Saturas_KREIS5(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_KREIS5_Condition;
	information = KDW_600_Saturas_KREIS5_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_LearnMage_5,LPCOST_TALENT_MAGE_5,0);
};


func int KDW_600_Saturas_KREIS5_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_LESSON) && (Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 4) && (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_KREIS5_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_KREIS5_Info_15_01");	//� ����� �������� � ����� ����.
	if(B_GiveSkill(other,NPC_TALENT_MAGE,5,LPCOST_TALENT_MAGE_5))
	{
		AI_Output(self,other,"KDW_600_Saturas_KREIS5_Info_14_02");	//�� ����� ���. � ������ ���� �������� ����� ������ �����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS5_Info_14_03");	//����������� � ������ ������ ����� ����� ������ ���������� ��� �������� �����, ������� ����� � ����������� ������.
		AI_Output(self,other,"KDW_600_Saturas_KREIS5_Info_14_04");	//�� ����� ������� ����������� ������ ����� �������� ����� ������. ���� �� ������� ��� ����, � ����� ����� �������� �������� ������� �������������� ���.
		AI_Output(self,other,"KDW_600_Saturas_KREIS5_Info_14_05");	//��������� �� ������ � ������ ����������� ���������, ���� ��� ���� ���� ����� ����.
		AI_Output(self,other,"KDW_600_Saturas_KREIS4_Info_14_06");	//������ �� ������ ���, ��� ���� � ���.
		AI_Output(self,other,"KDW_600_Saturas_KREIS5_Info_14_06");	//����� ������� ����������, � �� �������� ���� �������� ����.
		KDW_600_Saturas_KREIS5.permanent = 0;
	};
};


var int kdw_armor_h_was_bought;

instance KDW_600_Saturas_HEAVYARMOR(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = KDW_600_Saturas_HEAVYARMOR_Condition;
	information = KDW_600_Saturas_HEAVYARMOR_Info;
	important = 0;
	permanent = 1;
	description = B_BuildBuyArmorString("������� ���������� ����, ������: 70/10/45/20",VALUE_KDW_ARMOR_H);
};


func int KDW_600_Saturas_HEAVYARMOR_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_KDW) && (KDW_ARMOR_H_WAS_BOUGHT != 1))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_HEAVYARMOR_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_HEAVYARMOR_Info_15_01");	//� ���� ������ ������� ��������� ����� ����.
	if(Kapitel < 5)
	{
		AI_Output(self,other,"KDW_600_Saturas_HEAVYARMOR_Info_14_02");	//�� ��� �� ������ ������ ����� ���������. ����� ��� �� ������.
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) < 5)
	{
		AI_Output(self,other,"KDF_402_Corristo_WANNBEKDF_Info_14_04");	//�� ������ ��� ������� ����. ������� �� ���, ����� ������ ����� ������.
		PrintScreen("�������: 5 ���� �����.",-1,_YPOS_MESSAGE_Joincamp,"font_old_10_white.tga",_TIME_MESSAGE_Joincamp);
	}
	else if(Npc_HasItems(hero,ItMiNugget) < VALUE_KDW_ARMOR_H)
	{
		AI_Output(self,other,"KDW_600_Saturas_HEAVYARMOR_Info_14_03");	//���� �� ������� ����.
	}
	else
	{
		b_printtrademsg1("������ ����: 2600");
		AI_Output(self,other,"KDW_600_Saturas_HEAVYARMOR_Info_14_04");	//� ����, ��� �� ��� ������� ������ ��������� ���������� ���� ����� ����.
		b_printtrademsg2("�������� ������� ������ ���� ����.");
		Npc_RemoveInvItems(hero,ItMiNugget,VALUE_KDW_ARMOR_H);
		CreateInvItems(hero,kdw_armor_h,1);
		KDW_ARMOR_H_WAS_BOUGHT = 1;
	};
};


instance Info_Saturas_NOWSLD(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_NOWSLD_Condition;
	information = Info_Saturas_NOWSLD_Info;
	permanent = 0;
	important = 0;
	description = "�� ������ ���� � ��������.";
};


func int Info_Saturas_NOWSLD_Condition()
{
	if(Npc_KnowsInfo(hero,Sld_700_Lee_CHANGESIDE))
	{
		return TRUE;
	};
};

func void Info_Saturas_NOWSLD_Info()
{
	AI_Output(hero,self,"Info_Saturas_NOWSLD_15_01");	//�� ������ ���� � ��������.
	AI_Output(self,hero,"Info_Saturas_NOWSLD_14_02");	//������. ������ �� ���� �� ���, �� ������������ ������ ������.
	AI_Output(self,hero,"Info_Saturas_NOWSLD_14_03");	//����� ����������!
	B_LogEntry(CH4_BannedFromOC,"������� ��������� ���� � ���, ��� � ���� ���������.");
	Log_SetTopicStatus(CH4_BannedFromOC,LOG_SUCCESS);
};


instance Info_Saturas_XARDAS(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDAS_Condition;
	information = Info_Saturas_XARDAS_Info;
	permanent = 0;
	important = 0;
	description = "��������� ���� � ����� ����, �� ������, ��� ���� ����... ���-��.";
};


func int Info_Saturas_XARDAS_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_COLLAPSE) && Npc_KnowsInfo(hero,Info_Saturas_MURDER))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDAS_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDAS_15_01");	//����� �� �������� ���� � ����� ����, �� ������, ��� ���� ��� ����... ���-��.
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_02");	//��, � ��������, ��� ��� �� �������� ���� �� ��� ����... ���������� � ����... �� ��� ������������ ���...
	AI_Output(hero,self,"Info_Saturas_XARDAS_15_03");	//� ���� ����������?
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_04");	//������, � ����� ����!
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_05");	//����� ��� �����...
	AI_Output(hero,self,"Info_Saturas_XARDAS_15_06");	//����������, ��� �����������!
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_07");	//�� ������ ����! ��� ��, ���������� �����, ������ ��������� ������, �� ���� ���� ��������� � ��������� ����������� ���.
	AI_Output(hero,self,"Info_Saturas_XARDAS_15_08");	//�����������? � ������ �����, ��� ��� ���� ������ ����������!
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_09");	//����������� �����, ��������� � ������� ����� �������� �������, ������ ����� �����.
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_10");	//��� ����������� ��� ��� ����� �������������. ��� ���� ��� �� ����, ��� �� ����������� �� ����� ���� � ����.
	AI_Output(self,hero,"Info_Saturas_XARDAS_14_11");	//�� ������� �� ������� ������ ������, ������� ����� ��� ������������ � �������.
};


instance Info_Saturas_XARDASWHO(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASWHO_Condition;
	information = Info_Saturas_XARDASWHO_Info;
	permanent = 0;
	important = 0;
	description = "� ��� ����� ����� ������������ ����?";
};


func int Info_Saturas_XARDASWHO_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDAS))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASWHO_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASWHO_15_01");	//� ��� ����� ����� ������������ ����?
	AI_Output(self,hero,"Info_Saturas_XARDASWHO_14_02");	//��� ����� �������. ������ ��� ���� ��� ������, ��� ��� ��� �� �������.
	AI_Output(self,hero,"Info_Saturas_XARDASWHO_14_03");	//� ��, ��� ������, �������� ��� ����������� �������, �����������!
};


instance Info_Saturas_XARDASWHY(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASWHY_Condition;
	information = Info_Saturas_XARDASWHY_Info;
	permanent = 0;
	important = 0;
	description = "������ �� ���� �� ������� ������?";
};


func int Info_Saturas_XARDASWHY_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDAS))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASWHY_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASWHY_15_01");	//������ �� ���� �� ������� ������?
	AI_Output(self,hero,"Info_Saturas_XARDASWHY_14_02");	//�� ���� ������� ����������, ����������� ������ � ������ ������ ��� ����������� ����������.
	AI_Output(self,hero,"Info_Saturas_XARDASWHY_14_03");	//��� ����� �� ����������� ������, � �� ������ ���. ������ ���� ����������� �� ���� � ������ �� ���������� �� ��� ������.
	AI_Output(hero,self,"Info_Saturas_XARDASWHY_15_04");	//� ��� ���� �����?
	AI_Output(self,hero,"Info_Saturas_XARDASWHY_14_05");	//� ������� �� ������ ������� �� ��� ������ �������� � ���� �� ������, ����� �������� ���������.
};


instance Info_Saturas_XARDASWHERE(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASWHERE_Condition;
	information = Info_Saturas_XARDASWHERE_Info;
	permanent = 0;
	important = 0;
	description = "� ��� �� ����� ������?";
};


func int Info_Saturas_XARDASWHERE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDAS))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASWHERE_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASWHERE_15_01");	//� ��� �� ����� ������?
	AI_Output(self,hero,"Info_Saturas_XARDASWHERE_14_02");	//�� ����� � ��������� � �����, ������� �� ����� �����.
	AI_Output(self,hero,"Info_Saturas_XARDASWHERE_14_03");	//�� ����� ��������� �� ��� �������.
};


instance Info_Saturas_XARDASHELP(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASHELP_Condition;
	information = Info_Saturas_XARDASHELP_Info;
	permanent = 0;
	important = 0;
	description = "� ����� �������� � ������� ��� � ������!";
};


func int Info_Saturas_XARDASHELP_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDASWHO) && Npc_KnowsInfo(hero,Info_Saturas_XARDASWHY) && Npc_KnowsInfo(hero,Info_Saturas_XARDASWHERE))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASHELP_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASHELP_15_01");	//� ����� �������� � ������� ��� � ������!
	AI_Output(self,hero,"Info_Saturas_XARDASHELP_14_02");	//������ ������ �� ������ ������ ���.
	AI_Output(self,hero,"Info_Saturas_XARDASHELP_14_03");	//�� ���� �� �� �����, ��� ��� �������, ��� ������ �� �������...
	AI_Output(hero,self,"Info_Saturas_XARDASHELP_15_04");	//�������!
	AI_Output(self,hero,"Info_Saturas_XARDASHELP_14_05");	//�� ���� ��� ���� ��������...
	B_Story_FindXardas();
};


instance Info_Saturas_XARDASPROBLEM(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASPROBLEM_Condition;
	information = Info_Saturas_XARDASPROBLEM_Info;
	permanent = 0;
	important = 0;
	description = "��������?";
};


func int Info_Saturas_XARDASPROBLEM_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDASHELP))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASPROBLEM_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASPROBLEM_15_01");	//��������?
	AI_Output(self,hero,"Info_Saturas_XARDASPROBLEM_14_02");	//��. �� ����� ��� �������� ��������� � ���������, �� ��� ��� �� ���� �� �������.
	AI_Output(self,hero,"Info_Saturas_XARDASPROBLEM_14_03");	//��� �������, ��� �� �����, ����� ��� �������� � �����.
	AI_Output(hero,self,"Info_Saturas_XARDASPROBLEM_15_04");	//��� �� ������ � ����?
	AI_Output(self,hero,"Info_Saturas_XARDASPROBLEM_14_05");	//����� �� ����� ������ �� �������� �� ��� �����.
	AI_Output(self,hero,"Info_Saturas_XARDASPROBLEM_14_06");	//�� ������ ������, ��� ����� ������ ���� ��� ������� ��������.
	AI_Output(hero,self,"Info_Saturas_XARDASPROBLEM_15_07");	//��� ���������� � ����������!
	B_LogEntry(CH4_FindXardas,"������� ������ ���, ��� �������� �������� ���������� ��������.");
};


instance Info_Saturas_XARDASGO(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = Info_Saturas_XARDASGO_Condition;
	information = Info_Saturas_XARDASGO_Info;
	permanent = 0;
	important = 0;
	description = "� ��� �� ��� ������ ���� ���?";
};


func int Info_Saturas_XARDASGO_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Saturas_XARDASPROBLEM))
	{
		return TRUE;
	};
};

func void Info_Saturas_XARDASGO_Info()
{
	AI_Output(hero,self,"Info_Saturas_XARDASGO_15_01");	//� ��� �� ��� ������ ���� ���?
	AI_Output(self,hero,"Info_Saturas_XARDASGO_14_02");	//� �� ������ ����, ���� �� ��� ����!
	AI_Output(self,hero,"Info_Saturas_XARDASGO_14_03");	//��� �����, ����� ����� �� ��� � ����� ����������.
	AI_Output(self,hero,"Info_Saturas_XARDASGO_14_04");	//����� ����, � ������ ������ ���� ���-�� � ���� � ��������� �������, ����������� ������.
	AI_Output(hero,self,"Info_Saturas_XARDASGO_15_05");	//� ��������� ��� ����������. � �� ��������...
	AI_Output(hero,self,"Info_Saturas_XARDASGO_15_06");	//� ��� �������!
	B_LogEntry(CH4_FindXardas,"� ���������� ����� ���� ���� �����, � ������� ����������� ���������� ��������. ��� ������� ������������ � ����.");
};


instance KDW_600_Saturas_TIMESUP(C_Info)
{
	npc = Kdw_600_Saturas;
	condition = KDW_600_Saturas_TIMESUP_Condition;
	information = KDW_600_Saturas_TIMESUP_Info;
	important = 1;
	permanent = 0;
};


func int KDW_600_Saturas_TIMESUP_Condition()
{
	if((FindOrcShaman == LOG_RUNNING) || (FindOrcShaman == LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void KDW_600_Saturas_TIMESUP_Info()
{
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_00");	//�� ������� � ���������?
	Info_ClearChoices(KDW_600_Saturas_TIMESUP);
	Info_AddChoice(KDW_600_Saturas_TIMESUP,"��...",KDW_600_Saturas_TIMESUP_JA1);
	Info_AddChoice(KDW_600_Saturas_TIMESUP,"���...",KDW_600_Saturas_TIMESUP_JA2);
	Info_AddChoice(KDW_600_Saturas_TIMESUP,"��� ������ �� ���, ��� �� �������...",KDW_600_Saturas_TIMESUP_JA3);
};

func void KDW_600_Saturas_TIMESUP_JA1()
{
	AI_Output(other,self,"KDW_600_Saturas_TIMESUP_Info_15_01");	//��...
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_02");	//��?.. �� ���?
};

func void KDW_600_Saturas_TIMESUP_JA2()
{
	AI_Output(other,self,"KDW_600_Saturas_TIMESUP_Info_15_05");	//���...
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_06");	//������?
	AI_Output(other,self,"KDW_600_Saturas_TIMESUP_Info_15_07");	//� ���� �� ���� ����� ��� �����...
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_08");	//���� ���� ����� ��� � �������� ������!
	B_Story_CancelFindXardas();
	AI_StopProcessInfos(self);
};

func void KDW_600_Saturas_TIMESUP_JA3()
{
	AI_Output(other,self,"KDW_600_Saturas_TIMESUP_Info_15_09");	//��� ������ �� ���, ��� �� �������...
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_10");	//��� �� ������ � ����? �� ������ ����� ������ �������� ��� �������� ����.
	AI_Output(other,self,"KDW_600_Saturas_TIMESUP_Info_15_11");	//������ ����... �... ��� ��� ����� �������!
	AI_Output(self,other,"KDW_600_Saturas_TIMESUP_Info_14_12");	//����� ��������, �� ������ ������ ���!
	B_Story_CancelFindXardas();
	AI_StopProcessInfos(self);
};


instance KDW_600_Saturas_HogeAUFNAHME(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 10;
	condition = KDW_600_Saturas_HogeAUFNAHME_Condition;
	information = KDW_600_Saturas_HogeAUFNAHME_Info;
	permanent = 0;
	description = "�������� ������, ��� � ��� ����� ������ ������� ���� ����.";
};


func int KDW_600_Saturas_HogeAUFNAHME_Condition()
{
	if(Npc_KnowsInfo(hero,info_nefarius_ocnews2))
	{
		return 1;
	};
};

func void KDW_600_Saturas_HogeAUFNAHME_Info()
{
	AI_Output(other,self,"KDW_600_Saturas_HogeAUFNAHME_15_00");	//�������� ������, ��� � ��� ����� ������ ������� ���� ����.
	AI_Output(self,other,"KDW_600_Saturas_NOMOREOC_Info_14_03");	//�� � �������� ������ ����!
	AI_Output(other,self,"KDW_600_Saturas_OATH_Info_15_01");	//������ �� ���, ��� � ���� ������ � ������� ����� ����� ����?
	AI_Output(self,other,"KDW_600_Saturas_OATH_Info_14_02");	//���. ������� �� ������ �������� ������ ����.
};


instance KDW_600_Saturas_HogeAUFNAHMETeil2(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 10;
	condition = KDW_600_Saturas_HogeAUFNAHMETeil2_Condition;
	information = KDW_600_Saturas_HogeAUFNAHMETeil2_Info;
	permanent = 0;
	description = "� ����� �������� ������.";
};


func int KDW_600_Saturas_HogeAUFNAHMETeil2_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_600_Saturas_HogeAUFNAHME) && (Npc_GetTrueGuild(hero) == GIL_SLD))
	{
		return 1;
	};
};

func void KDW_600_Saturas_HogeAUFNAHMETeil2_Info()
{
	AI_GotoNpc(hero,self);
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_01");	//� ����� �������� ������.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_03");	//�������� �� ���� ����� ������:
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_04");	//������� ����������� �����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_05");	//������� ����������� �����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_06");	//... � ����� ��������� ����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_07");	//... � ����� ��������� ����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_08");	//...��� ������ � �������� ��� ����� ������� ���� ������ � �� ��������� �����...
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_09");	//...��� ������ � ������� ��� ����� ������� ���� ������ � �� ��������� �����...
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_10");	//...�� ��� ���, ���� ��� ������� ���� �� ������� ����� � �������� ������� � �� �������� �������� ���� �����.
	AI_Output(other,self,"KDW_600_Saturas_KDWAUFNAHME_Info_15_11");	//...�� ��� ���, ���� ��� ������� ���� �� ������� ����� � �������� ������� � �� �������� �������� ���� �����.
	AI_Output(self,other,"KDW_600_Saturas_KDWAUFNAHME_Info_14_14");	//������ ��� ������� � ���� ��� � ���� ����� �� ��������� ����� � � ��������.
	b_printtrademsg1("�������� ������ ���� ����.");
	CreateInvItem(hero,kdw_armor_l);
	Snd_Play("MFX_Heal_Cast");
	Npc_SetTrueGuild(hero,GIL_KDW);
	hero.guild = GIL_KDW;
	Log_CreateTopic(CH4_SldToKdW,LOG_NOTE);
	B_LogEntry(CH4_SldToKdW,"������� ������ ���� � ���� ����� ����.");
	AI_StopProcessInfos(self);
};


instance KDW_600_SATURAS_NOLESSON(C_Info)
{
	npc = Kdw_600_Saturas;
	nr = 100;
	condition = kdw_600_saturas_nolesson_condition;
	information = kdw_600_saturas_nolesson_info;
	important = 0;
	permanent = 0;
	description = "����� ���� ������������ ����� ���.";
};


func int kdw_600_saturas_nolesson_condition()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) >= 5)
	{
		return TRUE;
	};
};

func void kdw_600_saturas_nolesson_info()
{
	AI_Output(other,self,"Gur_1208_BaalCadar_FIRSTTEST_Info_15_01");	//����� ���� ������������ ����� ���.
	AI_Output(self,other,"KDW_600_Saturas_LESSON_Info_14_04");	//�� ��� �������� � ����� ���� �����! ���� ������ �����.
	AI_Output(self,other,"KDW_600_Saturas_LESSON_Info_14_05");	//� �� ����� ������ ������� ����.
};

