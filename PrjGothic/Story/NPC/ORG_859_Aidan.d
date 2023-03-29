
instance ORG_859_Aidan(Npc_Default)
{
	name[0] = "�����";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 15;
	voice = 13;
	id = 859;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 192;
	attribute[ATR_HITPOINTS] = 192;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Thief",9,1,org_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,1);
	CreateInvItems(self,ItMiNugget,13);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFoBooze,3);
	CreateInvItems(self,ItLsTorch,2);
	CreateInvItems(self,ItFo_Potion_Health_01,1);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItFoMutton);
	CreateInvItem(self,ItAt_Teeth_01);
	CreateInvItem(self,ItFoBooze);
	EquipItem(self,ItMw_1H_Mace_03);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	daily_routine = Rtn_start_859;
	aivar[AIV_ITEMSCHWEIN] = TRUE;
};


func void Rtn_start_859()
{
	TA_StandAround(7,0,16,0,"OW_WOODRUIN_WOLF_SPAWN");
	TA_PracticeBow(16,0,21,0,"OW_WOODRUIN_WOLF_SPAWN");
	TA_SitCampfire(21,0,23,0,"OW_WOODRUIN_WOLF_SPAWN");
	TA_Sleep(23,0,7,0,"OW_WOODRUIN_WOLF_SPAWN");
};

