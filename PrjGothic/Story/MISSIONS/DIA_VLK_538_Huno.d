
instance DIA_Huno_Exit(C_Info)
{
	npc = VLK_538_Huno;
	nr = 999;
	condition = DIA_Huno_Exit_Condition;
	information = DIA_Huno_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Huno_Exit_Condition()
{
	return 1;
};

func void DIA_Huno_Exit_Info()
{
	if(Npc_HasItems(self,ItMiSwordraw) < 5)
	{
		CreateInvItems(self,ItMiSwordraw,5);
	};
	if(Npc_HasItems(self,ItMiSwordbladehot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordbladehot,Npc_HasItems(self,ItMiSwordbladehot));
	};
	if(Npc_HasItems(self,ItMiSwordrawhot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordrawhot,Npc_HasItems(self,ItMiSwordrawhot));
	};
	if(Npc_HasItems(self,ItMiSwordblade) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordblade,Npc_HasItems(self,ItMiSwordblade));
	};
	if(Npc_HasItems(self,goldensword))
	{
		Npc_RemoveInvItem(self,goldensword);
	};
	AI_StopProcessInfos(self);
};


instance DIA_Huno_YouKnowYourJob(C_Info)
{
	npc = VLK_538_Huno;
	nr = 2;
	condition = DIA_Huno_YouKnowYourJob_Condition;
	information = DIA_Huno_YouKnowYourJob_Info;
	permanent = 0;
	important = 0;
	description = "� � ���� ������� ����������, ��� � ����.";
};


func int DIA_Huno_YouKnowYourJob_Condition()
{
	return TRUE;
};

func void DIA_Huno_YouKnowYourJob_Info()
{
	AI_Output(other,self,"DIA_Huno_YouKnowYourJob_15_00");	//� � ���� ������� ����������, ��� � ����.
	AI_Output(self,other,"DIA_Huno_YouKnowYourJob_09_01");	//�� ��, ����������� � ��� �� ��������.
	AI_Output(self,other,"DIA_Huno_YouKnowYourJob_09_02");	//�� ���� ������� � ��������, �� �� ����. ����� ����� �� ����� ���������� ��� ������, � ������ ������� ���� ���� ������ �.
};


instance DIA_Huno_HowLong(C_Info)
{
	npc = VLK_538_Huno;
	nr = 2;
	condition = DIA_Huno_HowLong_Condition;
	information = DIA_Huno_HowLong_Info;
	permanent = 0;
	important = 0;
	description = "����� ������� ������ �� ���� ���?";
};


func int DIA_Huno_HowLong_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Huno_YouKnowYourJob))
	{
		return TRUE;
	};
};

func void DIA_Huno_HowLong_Info()
{
	AI_Output(other,self,"DIA_Huno_HowLong_15_00");	//����� ������� ������ �� ���� ���?
	AI_Output(self,other,"DIA_Huno_HowLong_09_01");	//��� ������� �� ����. ������� ��� � ���� �������� ����� ������. �� � ������ �������� �� �������.
	AI_Output(self,other,"DIA_Huno_HowLong_09_02");	//����, �������, ��� ������ ����� �������� ��������.
	AI_Output(self,other,"DIA_Huno_HowLong_09_03");	//� ��� �����, ��� �������, ���������� ����� ������ ����.
	AI_Output(other,self,"DIA_Huno_HowLong_15_04");	//������? ������ ������� ����?
	AI_Output(self,other,"DIA_Huno_HowLong_09_05");	//�� ���, ��� ��� ��������. �� ��������� ��� �� �������� ��� 150 ������ ����.
	AI_Output(self,other,"DIA_Huno_HowLong_09_06");	//��� ������� �� ������� ���, � � ����������� � ������� ������� ��������, � ��� ����� ��������.
	AI_Output(self,other,"DIA_Huno_HowLong_09_07");	//��, ��� �������, �� ���� �� ��������!
};


instance DIA_Huno_HowsYourBusiness(C_Info)
{
	npc = VLK_538_Huno;
	nr = 2;
	condition = DIA_Huno_HowsYourBusiness_Condition;
	information = DIA_Huno_HowsYourBusiness_Info;
	permanent = 1;
	important = 0;
	description = "��, ������, ��� ����?";
};


func int DIA_Huno_HowsYourBusiness_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Huno_YouKnowYourJob) && (HUNO_GOLDENSWORD == FALSE) && (Kapitel < 4))
	{
		return TRUE;
	};
};

func void DIA_Huno_HowsYourBusiness_Info()
{
	AI_Output(other,self,"DIA_Huno_HowsYourBusiness_15_00");	//��, ������, ��� ����?
	AI_Output(self,other,"DIA_Huno_HowsYourBusiness_09_01");	//� ����� �� ������ ��� �����?
	AI_Output(other,self,"DIA_Huno_HowsYourBusiness_15_02");	//����� ����, � ������ ���� ���-������.
	AI_Output(self,other,"DIA_Huno_HowsYourBusiness_09_03");	//������? � ��� �� ���?
	if(Npc_HasItems(hero,goldensword))
	{
		AI_UnequipWeapons(other);
		AI_Output(other,self,"Info_Xardas_LOADSWORD_15_01");	//� ����� ���� ����� �������� ���.
		b_printtrademsg1("����� ������� ���.");
		CreateInvItem(self,goldensword);
		AI_EquipBestMeleeWeapon(self);
		AI_ReadyMeleeWeapon(self);
		AI_PlayAni(self,"T_URISELINSPECT");
		AI_RemoveWeapon(self);
		AI_UnequipWeapons(self);
		AI_Output(self,other,"Info_Wolf_MCPLATESENOUGH_09_04");	//�� ����. � �� ������� ��� �� ����������� ����� ��������.
		AI_Output(self,other,"SVM_9_NotNow");	//���, �� ������.
		b_printtrademsg2("������� ������� ���.");
		HUNO_GOLDENSWORD = TRUE;
	}
	else
	{
		AI_Output(other,self,"DIA_Huno_HowsYourBusiness_15_04");	//� ��� �� �����.
		AI_Output(self,other,"DIA_Huno_HowsYourBusiness_09_05");	//������� �� ���, ����� ���� ������������� ���-������ �����������, � �� ������� ���� �� ��������.
	};
};


var int Huno_LearnSmith;

instance DIA_Huno_LEARNSMITH(C_Info)
{
	npc = VLK_538_Huno;
	nr = 2;
	condition = DIA_Huno_LEARNSMITH_Condition;
	information = DIA_Huno_LEARNSMITH_Info;
	permanent = 0;
	important = 0;
	description = "� ����� �� ����������� ���������� � ���� � �������.";
};


func int DIA_Huno_LEARNSMITH_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Huno_YouKnowYourJob))
	{
		return TRUE;
	};
};

func void DIA_Huno_LEARNSMITH_Info()
{
	AI_Output(other,self,"DIA_Huno_LEARNSMITH_15_00");	//� ����� �� ����������� ���������� � ���� � �������.
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_01");	//���, ���... ������ � ������� ���� � ���� ��� ����� �� ��������� �������� ������� ������!
	AI_Output(other,self,"DIA_Huno_LEARNSMITH_15_02");	//��� ��� ����� ������?
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_03");	//��� �, ������ ��������� � ������� �� ��� �����.
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_04");	//����������� �������� ��������� ������ �� ���������� � ��������� ���.
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_05");	//����� �� ����� �����, ��� ����� ��������, ������� � ����� � �����.
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_06");	//����� ����������� ������ ����� ����� �������� �� ��������� �����.
	AI_Output(other,self,"DIA_Huno_LEARNSMITH_15_07");	//� ��� �����.
	AI_Output(self,other,"DIA_Huno_LEARNSMITH_09_08");	//�� ��� ���������� � ���� ������ �� ������. ���� ������, ������ ������ �� � ����.
	if(Npc_HasItems(self,ItMiSwordraw) < 5)
	{
		CreateInvItems(self,ItMiSwordraw,5);
	};
	if(Npc_HasItems(self,ItMiSwordbladehot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordbladehot,Npc_HasItems(self,ItMiSwordbladehot));
	};
	if(Npc_HasItems(self,ItMiSwordrawhot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordrawhot,Npc_HasItems(self,ItMiSwordrawhot));
	};
	if(Npc_HasItems(self,ItMiSwordblade) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordblade,Npc_HasItems(self,ItMiSwordblade));
	};
	if(Npc_HasItems(self,goldensword))
	{
		Npc_RemoveInvItem(self,goldensword);
	};
	Huno_LearnSmith = TRUE;
};


instance DIA_Huno_BUYSMITH(C_Info)
{
	npc = VLK_538_Huno;
	nr = 2;
	condition = DIA_Huno_BUYSMITH_Condition;
	information = DIA_Huno_BUYSMITH_Info;
	permanent = 1;
	important = 0;
	description = "� ���� ������ � ���� ���������.";
	trade = 1;
};


func int DIA_Huno_BUYSMITH_Condition()
{
	if((Huno_LearnSmith == TRUE) && (Kapitel < 4))
	{
		return TRUE;
	};
};

func void DIA_Huno_BUYSMITH_Info()
{
	if(Npc_HasItems(self,ItMiSwordraw) < 5)
	{
		CreateInvItems(self,ItMiSwordraw,5);
	};
	if(Npc_HasItems(self,ItMiSwordbladehot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordbladehot,Npc_HasItems(self,ItMiSwordbladehot));
	};
	if(Npc_HasItems(self,ItMiSwordrawhot) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordrawhot,Npc_HasItems(self,ItMiSwordrawhot));
	};
	if(Npc_HasItems(self,ItMiSwordblade) >= 1)
	{
		Npc_RemoveInvItems(self,ItMiSwordblade,Npc_HasItems(self,ItMiSwordblade));
	};
	if(Npc_HasItems(self,goldensword))
	{
		Npc_RemoveInvItem(self,goldensword);
	};
	if(!Npc_HasItems(self,ItMw_1H_Sledgehammer_01) && !Npc_HasItems(other,ItMw_1H_Sledgehammer_01))
	{
		CreateInvItem(self,ItMw_1H_Sledgehammer_01);
	};
	AI_Output(other,self,"DIA_Huno_BUYSMITH_15_00");	//� ���� ������ � ���� ���������.
};

