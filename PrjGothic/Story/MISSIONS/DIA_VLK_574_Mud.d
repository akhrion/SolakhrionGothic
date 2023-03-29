
var int Mud_Nerve;
const int NerveSec = 30;
var int Mud_NerveRealized;

instance DIA_Mud_Exit(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Exit_Condition;
	information = DIA_Mud_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Mud_Exit_Condition()
{
	return 1;
};

func void DIA_Mud_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Mud_FirstEXIT(C_Info)
{
	npc = VLK_574_Mud;
	nr = 1;
	condition = DIA_Mud_FirstEXIT_Condition;
	information = DIA_Mud_FirstEXIT_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Mud_FirstEXIT_Condition()
{
	if(Npc_GetDistToNpc(self,hero) < 400)
	{
		return 1;
	};
};

func void DIA_Mud_FirstEXIT_Info()
{
	AI_Output(self,other,"DIA_Mud_FirstEXIT_07_00");	//��! ������� �����, �? � ���� �� ���� �� �����.
	AI_Output(self,other,"DIA_Mud_FirstEXIT_07_01");	//�� �� ������, ���� � �������� � ����� �������? ���� �� ������ ����� ����, ��?
	Info_ClearChoices(DIA_Mud_FirstEXIT);
	Info_AddChoice(DIA_Mud_FirstEXIT,"�� ��������� �� ���!",DIA_Mud_FirstEXIT_Verpiss);
	Info_AddChoice(DIA_Mud_FirstEXIT,"��� ������. ������!",DIA_Mud_FirstEXIT_Komm);
};

func void DIA_Mud_FirstEXIT_Verpiss()
{
	AI_Output(other,self,"DIA_Mud_FirstEXIT_Verpiss_15_00");	//�� ��������� �� ���!
	AI_Output(self,other,"DIA_Mud_FirstEXIT_Verpiss_07_01");	//�, �������, �� ������� �� � ����. ��, �����, ����� �����, ���� � ����� � �����...
	Info_ClearChoices(DIA_Mud_FirstEXIT);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"FOLLOW");
};

func void DIA_Mud_FirstEXIT_Komm()
{
	AI_Output(other,self,"DIA_Mud_FirstEXIT_Komm_15_00");	//��� ������. ������!
	AI_Output(self,other,"DIA_Mud_FirstEXIT_Komm_07_01");	//��� ������! �� ������ ������� ���������� �� ������.
	Info_ClearChoices(DIA_Mud_FirstEXIT);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"FOLLOW");
};


instance DIA_Mud_ShutUp(C_Info)
{
	npc = VLK_574_Mud;
	nr = 3;
	condition = DIA_Mud_ShutUp_Condition;
	information = DIA_Mud_ShutUp_Info;
	permanent = 1;
	description = "�� ������ ���� ������� ���������?";
};


func int DIA_Mud_ShutUp_Condition()
{
	if((Mud_NerveRealized == TRUE) && (MUD_HIT == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_ShutUp_Info()
{
	AI_Output(other,self,"DIA_Mud_ShutUp_15_00");	//�� ������ ���� ������� ���������?
	AI_Output(self,other,"DIA_Mud_ShutUp_07_01");	//��� �������.
	Npc_SetRefuseTalk(self,300);
};


instance DIA_Mud_GetLost(C_Info)
{
	npc = VLK_574_Mud;
	nr = 2;
	condition = DIA_Mud_GetLost_Condition;
	information = DIA_Mud_GetLost_Info;
	permanent = 1;
	description = "���� �� ����!";
};


func int DIA_Mud_GetLost_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Mud_FirstEXIT) && !Npc_KnowsInfo(hero,DIA_Mud_Defeated))
	{
		return 1;
	};
};

func void DIA_Mud_GetLost_Info()
{
	AI_Output(other,self,"DIA_Mud_GetLost_15_00");	//���� �� ����!
	AI_Output(self,other,"DIA_Mud_GetLost_07_01");	//������ ������ ����? �������... ��, � ���� ���-������ ����������, ���� ���...
};


instance DIA_Mud_Defeated(C_Info)
{
	npc = VLK_574_Mud;
	nr = 1;
	condition = DIA_Mud_Defeated_Condition;
	information = DIA_Mud_Defeated_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Mud_Defeated_Condition()
{
	if(((self.aivar[AIV_WASDEFEATEDBYSC] == TRUE) || (MUD_HIT == TRUE)) && Npc_CanSeeNpcFreeLOS(self,hero) && (Npc_GetDistToNpc(self,hero) < 1400))
	{
		return 1;
	};
};

func void DIA_Mud_Defeated_Info()
{
	AI_Output(self,other,"DIA_Mud_GetLost_07_00");	//��, �� �� ������ ����! �� ���?
	AI_Output(other,self,"DIA_Mud_GetLost_15_01");	//���� �� �� ���� �� ���������, � ����� ���� ��� �������!
	AI_Output(self,other,"DIA_Mud_GetLost_07_02");	//�� �� ������������! ���� �� ������� �� ���, � ���� ������ �� ����.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};


instance DIA_Mud_Nerve_0(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_0_Condition;
	information = DIA_Mud_Nerve_0_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_0_Condition()
{
	if((Mud_Nerve == 0) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_0_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_0_07_00");	//�����, ���� �� ����? ��� ��� �������? ������, � ����� ��������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 1;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_1(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_1_Condition;
	information = DIA_Mud_Nerve_1_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_1_Condition()
{
	if((Mud_Nerve == 1) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_1_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_1_07_00");	//� �� ���� ���� ������, �� ��������. � ������ �������� � ����� �������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 2;
	Mud_NerveRealized = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_2(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_2_Condition;
	information = DIA_Mud_Nerve_2_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_2_Condition()
{
	if((Mud_Nerve == 2) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_2_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_2_07_00");	//�������, �� ������, ���� �� ����. � ���� ���� �����-�� ����, ��?
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 3;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_3(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_3_Condition;
	information = DIA_Mud_Nerve_3_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_3_Condition()
{
	if((Mud_Nerve == 3) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_3_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_3_07_00");	//������ ����� ����� ��������? ��� �� ������ ����������? � ����?
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 4;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_4(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_4_Condition;
	information = DIA_Mud_Nerve_4_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_4_Condition()
{
	if((Mud_Nerve == 4) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_4_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_4_07_00");	//���� �� �������, ��� �� ����� �������? �� ���� ��� � �� ������, ���� �������������...
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 5;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_5(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_5_Condition;
	information = DIA_Mud_Nerve_5_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_5_Condition()
{
	if((Mud_Nerve == 5) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_5_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_5_07_00");	//� ����� ��� ���������. ��� ������, ��� �� ���� ���� � �����. �����, ��� ����� ���� ������ ����-������ ������?
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 6;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_6(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_6_Condition;
	information = DIA_Mud_Nerve_6_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_6_Condition()
{
	if((Mud_Nerve == 6) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_6_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_6_07_00");	//� ��� ��� ������ � ����. �� ���� ������� ������, ������? �� ���� ��� �������? � ��� �� �������? ������ ���������� � ����, � �� ������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 7;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_7(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_7_Condition;
	information = DIA_Mud_Nerve_7_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_7_Condition()
{
	if((Mud_Nerve == 7) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_7_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_7_07_00");	//�����, � �� ��� ���� ���� ���������? ���� ���� �������� ��������? ��, �� ��� �� �����. ��-�� ����� � � ����� ����.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 8;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_8(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_8_Condition;
	information = DIA_Mud_Nerve_8_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_8_Condition()
{
	if((Mud_Nerve == 8) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_8_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_8_07_00");	//� ������� ���� ����, ������� ������ ��������� ���� ������. ��� ������� ���� �� ������ ������, ��������� �������. � ��������� ��� � ����� ��, ��� �� ��� ����. ��� ��, �������, ��������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 9;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_9(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_9_Condition;
	information = DIA_Mud_Nerve_9_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_9_Condition()
{
	if((Mud_Nerve == 9) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_9_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_9_07_00");	//��� ���������� �� ������ ������ ��� ���� ��������, ���� � ����� ��, ��� ������ � ���� ���� ��������. �� ��� �� ������ �������� � �����. ��� ����� ������. �������� ��� ��� ���� �������, �� ������ ��� ������ ��������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 10;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_10(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_10_Condition;
	information = DIA_Mud_Nerve_10_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_10_Condition()
{
	if((Mud_Nerve == 10) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_10_Info()
{
	if((hero.guild != GIL_STT) && (hero.guild != GIL_GRD) && (hero.guild != GIL_KDF))
	{
		AI_Output(self,other,"DIA_Mud_Nerve_10_07_00");	//������, ���? � ������ ����. � �����, ��� ���� ����� ��������. ����� ���� ������ � ������, � �� ������ �������� ���� ������ ����.
	}
	else
	{
		AI_Output(self,other,"SVM_7_Strange");	//���� �� �� ����? ����������! ��� ����� ����� ����?!
	};
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 11;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_11(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_11_Condition;
	information = DIA_Mud_Nerve_11_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_11_Condition()
{
	if((Mud_Nerve == 11) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_11_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_11_07_00");	//������ ������� ���� ������������. �� ���� �����, ��� ��, �� ���� �� ������������� � ������������, �����? ��� ������, ��� �� ��� ����, � ������, ��� ���� �������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 12;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_12(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_12_Condition;
	information = DIA_Mud_Nerve_12_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_12_Condition()
{
	if((Mud_Nerve == 12) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_12_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_12_07_00");	//�� ��� ������ ����. �� ����� ����� �� ����� �� ���� �������������. ��� ��������� ����. �������, ��� �� ����� �� �������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 13;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_13(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_13_Condition;
	information = DIA_Mud_Nerve_13_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_13_Condition()
{
	if((Mud_Nerve == 13) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_13_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_13_07_00");	//������, �� ��� ��� ����� �����. ����� ����� �������� �����-������ ����� ������ � ������� ���������?
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 14;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_14(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_14_Condition;
	information = DIA_Mud_Nerve_14_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_14_Condition()
{
	if((Mud_Nerve == 14) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_14_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_14_07_00");	//�� ������� ��� �������� �����. � ���� ���� ������� �� ���� �������� �����. �� � �������� �� ����. ��� �������� �� ������ �������� � ������. � ������, ��� �� ���� ������ �� ����.
	AI_Output(other,self,"DIA_Mud_Nerve_14_15_01");	//�����, �� ����.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 15;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_15(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_15_Condition;
	information = DIA_Mud_Nerve_15_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_15_Condition()
{
	if((Mud_Nerve == 15) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_15_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_15_07_00");	//� ��� �� ��� �� �����? ��������, ���� ���� ������ �������� ����� ��������, ������� ���� ��������. ��� �� ��������. �� ��� ��� �����-������? �������, ��� �� ��� �����.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 16;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_16(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_16_Condition;
	information = DIA_Mud_Nerve_16_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_16_Condition()
{
	if((Mud_Nerve == 16) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_16_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_16_07_00");	//� ��� ������������. � ������ ���� ����� ������ � ��������� ����, ������� ���� �� ������ ������������, ���� �� �� ���� �������, ��� �������� �������� �������. ��� ������� ��� ��� ������ �� ��������. ��� ������ ���������� �� ���.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 17;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_17(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_17_Condition;
	information = DIA_Mud_Nerve_17_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_17_Condition()
{
	if((Mud_Nerve == 17) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_17_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_17_07_00");	//���������, ���� ���-������ �� �������� ���� ������ ���� ������ ���? ��� �������, �� ������, ���� ����� �� �� ������ ���������, ��?
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 18;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_18(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_18_Condition;
	information = DIA_Mud_Nerve_18_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_18_Condition()
{
	if((Mud_Nerve == 18) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_18_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_18_07_00");	//������, ����� �� � �����, �� ������� ������ �������, ��� ������� ���� �����. ��� ��� ��������� ��� �� ���� ��� �����. ����� ������ ��������� ������� �� ���� ��� ���, � ��...
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 19;
	AI_StopProcessInfos(self);
};


instance DIA_Mud_Nerve_19(C_Info)
{
	npc = VLK_574_Mud;
	nr = 999;
	condition = DIA_Mud_Nerve_19_Condition;
	information = DIA_Mud_Nerve_19_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Mud_Nerve_19_Condition()
{
	if((Mud_Nerve == 19) && (Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,hero) < 400) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Mud_Nerve_19_Info()
{
	AI_Output(self,other,"DIA_Mud_Nerve_19_07_00");	//������ �� ����������. �� ������ ���� ��������� ������ ������. �� �� ������ � ��� ����� ����������� � ��������. � ���, ������� ����, �� ����� ��������.
	Npc_SetRefuseTalk(self,NerveSec);
	Mud_Nerve = 0;
	AI_StopProcessInfos(self);
};

