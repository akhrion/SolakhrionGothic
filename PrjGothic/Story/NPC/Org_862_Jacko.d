
instance Org_862_Jacko(Npc_Default)
{
	name[0] = "�����";
	npcType = npctype_main;
	guild = GIL_ORG;
	level = 8;
	voice = 6;
	id = 862;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 136;
	attribute[ATR_HITPOINTS] = 136;
	aivar[43] = TRUE;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",37,2,org_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	CreateInvItems(self,ItKeLockpick,1);
	CreateInvItems(self,ItMiNugget,20);
	CreateInvItems(self,ItLsTorch,1);
	EquipItem(self,ItMw_1H_Mace_03);
	EquipItem(self,ItRw_Bow_Small_03);
	CreateInvItems(self,ItAmArrow,20);
	daily_routine = Rtn_start_862;
};


func void Rtn_start_862()
{
	TA_Guard(20,0,8,0,"LOCATION_23_CAVE_1_IN");
	TA_Guard(8,0,20,0,"LOCATION_23_CAVE_1_IN");
};

func void Rtn_arbeitslos_862()
{
	TA_StandAround(20,0,8,0,"LOCATION_11_08");
	TA_StandAround(8,0,20,0,"LOCATION_11_08");
};

