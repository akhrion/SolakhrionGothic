
instance SLD_704_Blade(Npc_Default)
{
	name[0] = "�����";
	npcType = npctype_ambient;
	guild = GIL_SLD;
	level = 18;
	voice = 11;
	id = 704;
	attribute[ATR_STRENGTH] = 90;
	attribute[ATR_DEXTERITY] = 70;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 256;
	attribute[ATR_HITPOINTS] = 256;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Pony",47,2,sld_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,ItMw_1H_Mace_War_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,22);
	CreateInvItems(self,ItFoLoaf,5);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,18);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_02,5);
	daily_routine = Rtn_start_704;
};


func void Rtn_start_704()
{
	TA_Sleep(23,0,7,30,"NC_HUT10_IN");
	TA_Smalltalk(7,30,23,0,"NC_HUT09_OUT");
};

func void rtn_fmtaken_704()
{
	TA_Smalltalk(23,0,7,30,"OW_PATH_069");
	TA_Smalltalk(7,30,23,0,"OW_PATH_069");
};

instance Blade_SwordsSkills(C_Info)
{
	npc = SLD_704_Blade;
	condition = Blade_SwordsSkills_Condition;
	information = Blade_SwordsSkills_Info;
	important = 1;
	permanent = 0;
};
func int Blade_SwordsSkills_Condition()
{
	if(
		quest_Blade_SwordsSkills_Counter >=10
	&&	(
			Npc_GetTalentSkill(hero,NPC_TALENT_1H) > 0
		||	Npc_GetTalentSkill(hero,NPC_TALENT_2H) > 0
		)
	)
	{
		return TRUE;
	};
	return false;
};
func void Blade_SwordsSkills_Info()
{
	AI_Output(self,other,"Blade_SwordsSkills_Info_NULL_01");	//��, ���� ������ ��������� � �����, �� ������.
	AI_Output(self,other,"Blade_SwordsSkills_Info_NULL_02");	//��������� � �������, ����� ��� ���� ������� �������.
	AI_StopProcessInfos(self);
};
