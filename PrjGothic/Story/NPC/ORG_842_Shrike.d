
instance ORG_842_Shrike(Npc_Default)
{
	name[0] = "�����";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 6;
	voice = 7;
	id = 842;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Thief",9,1,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,2);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFo_Potion_Health_01,2);
	CreateInvItem(self,ItFoLoaf);
	EquipItem(self,ItMw_1H_Mace_02);
	EquipItem(self,ItRw_Bow_Small_02);
	CreateInvItems(self,ItAmArrow,20);
	daily_routine = Rtn_PreStart_842;
};


func void Rtn_PreStart_842()
{
	TA_Sleep(23,30,8,0,"NC_HUT01_IN");
	TA_RepairHut(8,0,23,30,"NC_HUT01_OUT");
};

func void Rtn_Start_842()
{
	TA_Sleep(23,30,8,0,"NC_HUT18_IN");
	TA_Smoke(8,0,19,30,"NC_PATH09");
	TA_StandAround(19,30,23,30,"NC_TAVERN_MORDRAG_SHRIKE");
};

