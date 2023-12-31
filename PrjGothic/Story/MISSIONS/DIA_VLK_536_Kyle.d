
instance DIA_Kyle_Exit(C_Info)
{
	npc = VLK_536_Kyle;
	nr = 999;
	condition = DIA_Kyle_Exit_Condition;
	information = DIA_Kyle_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Kyle_Exit_Condition()
{
	return 1;
};

func void DIA_Kyle_Exit_Info()
{
	Npc_SetRefuseTalk(self,120);
	AI_StopProcessInfos(self);
};


instance DIA_Kyle_HutRage(C_Info)
{
	npc = VLK_536_Kyle;
	nr = 2;
	condition = DIA_Kyle_HutRage_Condition;
	information = DIA_Kyle_HutRage_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Kyle_HutRage_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (Npc_GetDistToNpc(self,other) <= ZivilAnquatschDist) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void DIA_Kyle_HutRage_Info()
{
	AI_Output(self,other,"DIA_Kyle_HutRage_10_00");	//������� ����� ���������: ��� ��� �� ��������� ����!
};


instance DIA_Kyle_Problem(C_Info)
{
	npc = VLK_536_Kyle;
	nr = 2;
	condition = DIA_Kyle_Problem_Condition;
	information = DIA_Kyle_Problem_Info;
	permanent = 1;
	description = "� ���� �����-�� ��������?";
};


func int DIA_Kyle_Problem_Condition()
{
	return 1;
};

func void DIA_Kyle_Problem_Info()
{
	AI_Output(other,self,"DIA_Kyle_Problem_15_00");	//� ���� �����-�� ��������?
	AI_Output(self,other,"DIA_Kyle_Problem_10_01");	//������ ���� � �����! ����� �� ��� ��� ���� ���� ������� ��������!
	AI_Output(self,other,"DIA_Kyle_Problem_10_02");	//��� �������� � ����, ����� � ����� ��������� ���� ���.
	AI_Output(self,other,"DIA_Kyle_Problem_10_03");	//��� ���������� ��� �� ������� ��� ������ � ������.
	AI_Output(self,other,"DIA_Kyle_Problem_10_04");	//�� ����� �� ������ ������. � � ��� �� �������� ��� ������ �� ���� ������.
	AI_Output(self,other,"DIA_Kyle_Problem_10_05");	//� ����� � ����� ��������� ���� ������ �� �����, � ���� ��������� ������ �����.
	AI_Output(self,other,"DIA_Kyle_Problem_10_06");	//���������! � �� ��������! �� ���� ����������� ���� �� ������, ��� � �� ��������!
	AI_Output(self,other,"DIA_Kyle_Problem_10_07");	//� ������ ��� ��� ������ ����� ����� ��� ���.
};

