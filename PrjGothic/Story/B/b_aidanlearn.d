
func void b_aidanlearn()
{
	if((Knows_GetTeeth == FALSE) || (Knows_GetFur == FALSE) || (Knows_GetClaws == FALSE) || (Knows_GetHide == FALSE))
	{
		Info_ClearChoices(Org_859_Aidan_Creatures);
		Info_AddChoice(Org_859_Aidan_Creatures,DIALOG_BACK,Org_859_Aidan_Creatures_BACK);
		if(Knows_GetTeeth == FALSE)
		{
			if(DIFF_HARD == TRUE)
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ������ (2 ���� ��������, 50 ����)",Org_859_Aidan_Creatures_Zahn);
			}
			else
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ������ (1 ���� ��������, 50 ����)",Org_859_Aidan_Creatures_Zahn);
			};
		};
		if(Knows_GetFur == FALSE)
		{
			if(DIFF_HARD == TRUE)
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ���� (2 ���� ��������, 100 ����)",Org_859_Aidan_Creatures_Fell);
			}
			else
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ���� (1 ���� ��������, 100 ����)",Org_859_Aidan_Creatures_Fell);
			};
		};
		if(Knows_GetClaws == FALSE)
		{
			if(DIFF_HARD == TRUE)
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ������ (2 ���� ��������, 50 ����)",Org_859_Aidan_Creatures_Kralle);
			}
			else
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ������ (1 ���� ��������, 50 ����)",Org_859_Aidan_Creatures_Kralle);
			};
		};
		if(Knows_GetHide == FALSE)
		{
			if(DIFF_HARD == TRUE)
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ���� �������� (2 ���� ��������, 100 ����)",Org_859_Aidan_Creatures_Haut);
			}
			else
			{
				Info_AddChoice(Org_859_Aidan_Creatures,"������ ���� �������� (1 ���� ��������, 100 ����)",Org_859_Aidan_Creatures_Haut);
			};
		};
	}
	else
	{
		AI_Output(self,other,"SVM_13_NoLearnOverMax");	//�� ��� ������ ��� �����. ���� ����� ��������� ����-������ ���.
		AIDAN_CAN_LEARN = FALSE;
	};
};


instance DIA_Aidan_Exit(C_Info)
{
	npc = ORG_859_Aidan;
	nr = 999;
	condition = DIA_Aidan_Exit_Condition;
	information = DIA_Aidan_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Aidan_Exit_Condition()
{
	return 1;
};

func void DIA_Aidan_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Aidan_Hello(C_Info)
{
	npc = ORG_859_Aidan;
	nr = 1;
	condition = DIA_Aidan_Hello_Condition;
	information = DIA_Aidan_Hello_Info;
	permanent = 0;
	description = "��� �� ����� �������?";
};


func int DIA_Aidan_Hello_Condition()
{
	return 1;
};

func void DIA_Aidan_Hello_Info()
{
	AI_Output(other,self,"DIA_Aidan_Hello_15_00");	//��� �� ����� �������?
	AI_Output(self,other,"DIA_Aidan_Hello_13_01");	//� �������. ������� ����� � �����, ��� � ����.
	AI_Output(other,self,"DIA_Aidan_Hello_15_02");	//�� ��� ������ ������?
	AI_Output(self,other,"DIA_Aidan_Hello_13_03");	//��, ����� ������� ������������, ���� �����, ��� ����������� ������.
	AIDAN_CAN_LEARN = TRUE;
	if((Knows_GetTeeth == FALSE) || (Knows_GetFur == FALSE) || (Knows_GetClaws == FALSE) || (Knows_GetHide == FALSE))
	{
		Log_CreateTopic(GE_TeacherOW,LOG_NOTE);
		B_LogEntry(GE_TeacherOW,"�����, �������, ������� ����� ������ � ����� ��������, ����� ������� ���� ����������� ������.");
	};
};


instance Org_859_Aidan_Creatures(C_Info)
{
	npc = ORG_859_Aidan;
	nr = 990;
	condition = Org_859_Aidan_Creatures_Condition;
	information = Org_859_Aidan_Creatures_Info;
	permanent = 1;
	description = DIALOG_LEARN;
};


func int Org_859_Aidan_Creatures_Condition()
{
	if(AIDAN_CAN_LEARN == TRUE)
	{
		return 1;
	};
};

func void Org_859_Aidan_Creatures_Info()
{
	AI_Output(other,self,"Org_859_Aidan_Creatures_15_00");	//� ���� ��������� ��������� ����������� ������.
	if((Knows_GetTeeth == FALSE) || (Knows_GetFur == FALSE) || (Knows_GetClaws == FALSE) || (Knows_GetHide == FALSE))
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_13_01");	//� ���� �� ������ ���������?
	};
	b_aidanlearn();
};

func void Org_859_Aidan_Creatures_BACK()
{
	Info_ClearChoices(Org_859_Aidan_Creatures);
};

func void Org_859_Aidan_Creatures_Zahn()
{
	AI_Output(other,self,"Org_859_Aidan_Creatures_Zahn_15_00");	//��� �������� �����?
	if(Npc_HasItems(other,ItMiNugget) >= 50)
	{
		if(((DIFF_HARD == TRUE) && (other.lp >= 2)) || ((DIFF_HARD == FALSE) && (other.lp >= 1)))
		{
			b_printtrademsg1("������ ����: 50");
			if(DIFF_HARD == TRUE)
			{
				other.lp = other.lp - 2;
			}
			else
			{
				other.lp = other.lp - 1;
			};
			B_GiveInvItems(other,self,ItMiNugget,50);
			AI_Output(self,other,"Org_859_Aidan_Creatures_Zahn_13_01");	//�� ������ ������� �� ���, ����� ����� �� ���������. ����� ����� ��������, ��������� ����� ������ ���.
			AI_Output(self,other,"Org_859_Aidan_Creatures_Zahn_13_02");	//����� ����� ��������� ����� ������, ������� � ����������.
			b_learn_trophies_teeth();
		}
		else
		{
			AI_Output(self,other,"SVM_13_NoLearnNoPoints");	//� �� ���� ������� ����. � ���� ������������ �����.
			PrintScreen("������������ ����� ��������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		};
	}
	else
	{
		AI_Output(self,other,"SVM_13_ShitNoOre");	//�� � ���� �� ������ ��� ����!
	};
	if((Knows_GetTeeth == TRUE) && (Knows_GetFur == TRUE) && (Knows_GetClaws == TRUE) && (Knows_GetHide == TRUE))
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_TaughtAll_13_00");	//� ������ ���� �����, ��� ���� ���.
		Info_ClearChoices(Org_859_Aidan_Creatures);
		AIDAN_CAN_LEARN = FALSE;
	}
	else
	{
		b_aidanlearn();
	};
};

func void Org_859_Aidan_Creatures_Fell()
{
	AI_Output(other,self,"Org_859_Aidan_Creatures_Fell_15_00");	//��� ������� �����?
	if(Npc_HasItems(other,ItMiNugget) >= 100)
	{
		if(((DIFF_HARD == TRUE) && (other.lp >= 2)) || ((DIFF_HARD == FALSE) && (other.lp >= 1)))
		{
			b_printtrademsg1("������ ����: 100");
			if(DIFF_HARD == TRUE)
			{
				other.lp = other.lp - 2;
			}
			else
			{
				other.lp = other.lp - 1;
			};
			B_GiveInvItems(other,self,ItMiNugget,100);
			AI_Output(self,other,"Org_859_Aidan_Creatures_Fell_13_01");	//����� �����, ��� �������� ����������� ���� ������� � ������. ����� ����� ������ �������, ������� ������� �� ��������� �� ��� ������.
			AI_Output(self,other,"Org_859_Aidan_Creatures_Fell_13_02");	//�� ���� ������ � ���������� ���� ������� ������. � ��������� � ���� ������ ������ ������������, ������� �� ��� ���� ����� �� ������ ��� ���.
			b_learn_trophies_fur();
		}
		else
		{
			AI_Output(self,other,"Org_859_Aidan_Creatures_KEINE_LP_13_00");	//�� ������ �������� ������ �����, ������ ��� ����-�� ������� � ����.
			PrintScreen("������������ ����� ��������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		};
	}
	else
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_KEIN_ERZ_13_00");	//������� ������� ���. ��� ���������, ����� ���� ����.
	};
	if((Knows_GetTeeth == TRUE) && (Knows_GetFur == TRUE) && (Knows_GetClaws == TRUE) && (Knows_GetHide == TRUE))
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_TaughtAll_13_00");	//� ������ ���� �����, ��� ���� ���.
		Info_ClearChoices(Org_859_Aidan_Creatures);
		AIDAN_CAN_LEARN = FALSE;
	}
	else
	{
		b_aidanlearn();
	};
};

func void Org_859_Aidan_Creatures_Kralle()
{
	AI_Output(other,self,"Org_859_Aidan_Creatures_Kralle_15_00");	//����� ���� �������� �����.
	if(Npc_HasItems(other,ItMiNugget) >= 50)
	{
		if(((DIFF_HARD == TRUE) && (other.lp >= 2)) || ((DIFF_HARD == FALSE) && (other.lp >= 1)))
		{
			b_printtrademsg1("������ ����: 50");
			if(DIFF_HARD == TRUE)
			{
				other.lp = other.lp - 2;
			}
			else
			{
				other.lp = other.lp - 1;
			};
			B_GiveInvItems(other,self,ItMiNugget,50);
			AI_Output(self,other,"Org_859_Aidan_Creatures_Kralle_13_01");	//��� �����, ��� ������� �� ������ ������. ����� �������� ������ ������, �� ��� ���� �� �������� ��� ��������� � �� �������� �����.
			AI_Output(self,other,"Org_859_Aidan_Creatures_Kralle_13_02");	//�������, ��������� ����� ����� ������ �� � ������� �����. ������ � ���� ���� ����� ������.
			b_learn_trophies_claws();
		}
		else
		{
			AI_Output(self,other,"SVM_13_NoLearnNoPoints");	//� �� ���� ������� ����. � ���� ������������ �����.
			PrintScreen("������������ ����� ��������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		};
	}
	else
	{
		AI_Output(self,other,"SVM_13_ShitNoOre");	//�� � ���� �� ������ ��� ����!
	};
	if((Knows_GetTeeth == TRUE) && (Knows_GetFur == TRUE) && (Knows_GetClaws == TRUE) && (Knows_GetHide == TRUE))
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_TaughtAll_13_00");	//� ������ ���� �����, ��� ���� ���.
		Info_ClearChoices(Org_859_Aidan_Creatures);
		AIDAN_CAN_LEARN = FALSE;
	}
	else
	{
		b_aidanlearn();
	};
};

func void Org_859_Aidan_Creatures_Haut()
{
	AI_Output(other,self,"Org_859_Aidan_Creatures_Haut_15_00");	//��� ��� ����� �����, ����� �������� ����� ��������?
	if(Npc_HasItems(other,ItMiNugget) >= 100)
	{
		if(((DIFF_HARD == TRUE) && (other.lp >= 2)) || ((DIFF_HARD == FALSE) && (other.lp >= 1)))
		{
			b_printtrademsg1("������ ����: 100");
			if(DIFF_HARD == TRUE)
			{
				other.lp = other.lp - 2;
			}
			else
			{
				other.lp = other.lp - 1;
			};
			B_GiveInvItems(other,self,ItMiNugget,100);
			AI_Output(self,other,"Org_859_Aidan_Creatures_Haut_13_01");	//��� ����� �������� �� ������ ��������, � ���� ����� � ����������.
			AI_Output(self,other,"Org_859_Aidan_Creatures_Haut_13_02");	//���� �� ��������� ����� �� �����, �� �� ������� ����� �� �����. ������ �� ������� ����� ����������� � ���� �������.
			b_learn_trophies_reptilefur();
		}
		else
		{
			AI_Output(self,other,"Org_859_Aidan_Creatures_KEINE_LP_13_00");	//�� ������ �������� ������ �����, ������ ��� ����-�� ������� � ����.
			PrintScreen("������������ ����� ��������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
		};
	}
	else
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_KEIN_ERZ_13_00");	//������� ������� ���. ��� ���������, ����� ���� ����.
	};
	if((Knows_GetTeeth == TRUE) && (Knows_GetFur == TRUE) && (Knows_GetClaws == TRUE) && (Knows_GetHide == TRUE))
	{
		AI_Output(self,other,"Org_859_Aidan_Creatures_TaughtAll_13_00");	//� ������ ���� �����, ��� ���� ���.
		Info_ClearChoices(Org_859_Aidan_Creatures);
		AIDAN_CAN_LEARN = FALSE;
	}
	else
	{
		b_aidanlearn();
	};
};

