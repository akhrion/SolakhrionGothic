
instance Sld_709_Cord(Npc_Default)
{
	name[0] = "����";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 18;
	voice = 14;
	id = 709;
	attribute[ATR_STRENGTH] = 90;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 256;
	attribute[ATR_HITPOINTS] = 256;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",104,1,sld_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,Cords_Spalter);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,23);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFoLoaf,7);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,15);
	CreateInvItems(self,ItFoBooze,5);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_02,8);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	daily_routine = Rtn_start_709;
};


func void Rtn_start_709()
{
	TA_Sleep(21,0,7,0,"NC_HUT09_IN");
	TA_Boss(7,0,21,0,"NC_WATERFALL_TOP01_MOVEMENT");
};

func void Rtn_FMTaken_709()
{
	TA_Stay(0,0,23,0,"OW_PATH_075");
	TA_Stay(23,0,24,0,"OW_PATH_075");
};

func void rtn_fmtakenback_709()
{
	TA_StayNeutral(5,0,17,0,"FMC_HUT10_OUT");
	TA_StayNeutral(17,0,5,0,"FMC_HUT10_OUT");
};

