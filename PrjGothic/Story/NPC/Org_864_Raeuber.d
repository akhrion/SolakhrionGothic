
instance Org_864_Raeuber(Npc_Default)
{
	name[0] = NAME_Raeuber;
	npcType = npctype_main;
	guild = GIL_None;
	level = 12;
	voice = 14;
	id = 864;
	attribute[ATR_STRENGTH] = 60;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 184;
	attribute[ATR_HITPOINTS] = 184;
	aivar[43] = TRUE;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Thief",9,1,org2l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItMiNugget,2);
	CreateInvItems(self,ItLsTorch,2);
	CreateInvItems(self,ItFo_Potion_Health_01,1);
	CreateInvItem(self,ItFoLoaf);
	EquipItem(self,ItMw_1H_Mace_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	daily_routine = Rtn_start_864;
};


func void Rtn_start_864()
{
	TA_StandAround(8,0,23,0,"LOCATION_11_14");
	TA_Sleep(23,0,8,0,"LOCATION_11_12_03");
};


instance INFO_RAEUBER4_EXIT(C_Info)
{
	npc = Org_864_Raeuber;
	nr = 999;
	condition = info_raeubers_exit_condition;
	information = info_raeubers_exit_info;
	permanent = 1;
	description = DIALOG_ENDE;
};

instance ORG_864_RAEUBER_ALERT(C_Info)
{
	npc = Org_864_Raeuber;
	nr = 1;
	condition = org_864_raeuber_alert_condition;
	information = org_864_raeuber_alert_info;
	permanent = 0;
	important = 1;
};


func int org_864_raeuber_alert_condition()
{
	if(!Npc_KnowsInfo(hero,info_org2_join))
	{
		return 1;
	};
};

func void org_864_raeuber_alert_info()
{
	AI_Output(self,hero,"SVM_14_YouViolatedForbiddenTerritory");	//��� �� ����� ��������?
	AI_Output(self,hero,"SVM_14_IntruderAlert");	//�����!
	b_setorg2hostile();
	AI_StopProcessInfos(self);
	if(QUENTIN_GANG_QUEST_STARTED == LOG_RUNNING)
	{
		QUENTIN_GANG_QUEST_STARTED = LOG_FAILED;
		Log_SetTopicStatus(QUENTIN_GANG,LOG_FAILED);
		B_LogEntry(QUENTIN_GANG,"� ����� ������ ���������� ��������, ������� ���������� � �����. ��� ����� �� ������ ���, ��� � ����������: ��� ����� ����������� �� ����.");
	};
};

