
instance ORG_818_Ratford(Npc_Default)
{
	name[0] = "�������";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 9;
	voice = 7;
	id = 818;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 150;
	attribute[ATR_HITPOINTS] = 150;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Fighter",9,3,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,2);
	CreateInvItems(self,ItMiNugget,17);
	CreateInvItems(self,ItFoRice,6);
	CreateInvItems(self,ItFoBooze,2);
	CreateInvItems(self,ItLsTorch,3);
	CreateInvItems(self,ItFo_Potion_Health_01,3);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItFoLoaf);
	CreateInvItem(self,ItAt_Claws_01);
	EquipItem(self,ItMw_1H_Mace_03);
	EquipItem(self,ItRw_Bow_Small_04);
	CreateInvItems(self,ItAmArrow,40);
	daily_routine = Rtn_Start_818;
};


func void Rtn_Start_818()
{
	TA_Smalltalk(5,0,23,0,"OW_PATH_1_5_A");
	TA_SitCampfire(23,0,1,0,"OW_PATH_1_5_C");
	TA_Boss(1,0,5,0,"OW_PATH_1_5_C");
};

func void rtn_fmtaken_818()
{
	TA_SitCampfire(7,0,18,0,"RND_CH4_01");
	TA_Guard(18,0,7,0,"RND_CH4_02");
};

