
var int highpriest5ishostile;

instance Info_HighPriest5(C_Info)
{
	npc = ORC_Priest_5;
	nr = 1;
	condition = Info_HighPriest5_Condition;
	information = Info_HighPriest5_Info;
	important = 1;
};


func int Info_HighPriest5_Condition()
{
	return TRUE;
};

func void Info_HighPriest5_Info()
{
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,other);
	if(Npc_HasItems(hero,Mythrilklinge02) || Npc_HasItems(hero,itarrune_6_6_urizielrune))
	{
		AI_Output(self,other,"Info_HighPriest5_17_04");	//� ���� ���� ������!
		AI_Output(self,other,"Info_HighPriest5_17_05");	//� ��������� ����!
		AI_StopProcessInfos(self);
		self.npcType = npctype_main;
		Npc_SetAttitude(self,ATT_HOSTILE);
		Npc_SetTempAttitude(self,ATT_HOSTILE);
		HIGHPRIEST5ISHOSTILE = 1;
	}
	else
	{
		AI_Output(self,other,"Info_HighPriest5_17_02");	//����� �� ����� ��������� ��� ����� ����������!
		AI_Output(other,self,"Info_HighPriest5_15_03");	//����������, ���� ����������� ������ ����� ���������!
		AI_Output(self,other,"Info_HighPriest5_17_01");	//����� ������!
		AI_StopProcessInfos(self);
		B_Story_EncounteredHighPriest();
	};
};


instance Info_HighPriest5FAILED(C_Info)
{
	npc = ORC_Priest_5;
	nr = 2;
	condition = Info_HighPriest5FAILED_Condition;
	information = Info_HighPriest5FAILED_Info;
	important = 1;
};


func int Info_HighPriest5FAILED_Condition()
{
	if(Npc_KnowsInfo(hero,Info_HighPriest5) && (self.aivar[AIV_MISSION1] >= HighPriest_MaxHit) && !Npc_HasItems(hero,Mythrilklinge02) && !Npc_HasItems(hero,itarrune_6_6_urizielrune))
	{
		return TRUE;
	};
};

func void Info_HighPriest5FAILED_Info()
{
	AI_Output(other,self,"Info_HighPriest5FAILED_15_01");	//������ ����! �� ��� �� ��������! ����� �����-�� ������ ��������...
	AI_Output(self,other,"Info_HighPriest5FAILED_17_02");	//������ �� ������!
	AI_Output(other,self,"Info_HighPriest5FAILED_15_03");	//���� ������� ������!
	AI_RemoveWeapon(other);
	AI_TurnAway(other,self);
	self.npcType = npctype_main;
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	HIGHPRIEST5ISHOSTILE = 1;
	B_LogEntry(CH4_EnterTemple,"��� � ����-������-������, � ���� �� �����, �� �� ������, ��� ���������. �� ������� ������� ��, � ��� ������ �� �������� ��� �����. ��� ����� ������ ������!");
	B_GiveXP(XP_RetreatFromLastPriest);
	AI_StopProcessInfos(self);
};


instance INFO_HIGHPRIEST5_2(C_Info)
{
	npc = ORC_Priest_5;
	nr = 1;
	condition = info_highpriest5_2_condition;
	information = info_highpriest5_2_info;
	permanent = 0;
	important = 1;
};


func int info_highpriest5_2_condition()
{
	if(Npc_KnowsInfo(hero,Info_HighPriest5) && (EncounteredHighPriest == TRUE) && !Npc_KnowsInfo(hero,Info_HighPriest5FAILED) && (Npc_HasItems(hero,Mythrilklinge02) || Npc_HasItems(hero,itarrune_6_6_urizielrune)))
	{
		return TRUE;
	};
};

func void info_highpriest5_2_info()
{
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"Info_HighPriest5_17_04");	//� ���� ���� ������!
	AI_Output(self,other,"Info_HighPriest5_17_05");	//� ��������� ����!
	AI_StopProcessInfos(self);
	self.npcType = npctype_main;
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	HIGHPRIEST5ISHOSTILE = 1;
};

