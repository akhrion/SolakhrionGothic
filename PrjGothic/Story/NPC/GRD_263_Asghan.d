
instance GRD_263_Asghan(Npc_Default)
{
	name[0] = "������";
	npcType = npctype_main;
	guild = GIL_GRD;
	level = 20;
	voice = 6;
	id = 263;

	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 280;
	attribute[ATR_HITPOINTS] = 280;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_FatBald",15,1,grd_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_03);
	EquipItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoMutton);
	CreateInvItems(self,ItMiNugget,20);
	CreateInvItem(self,ItFo_Potion_Health_01);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_263;
	Npc_SetPermAttitude(self,ATT_NEUTRAL);
};


func void Rtn_start_263()
{
	TA_Stay(0,0,12,0,"OM_CAVE3_21");
	TA_Stay(12,0,24,0,"OM_CAVE3_21");
};

func void Rtn_opengate_263()
{
	TA_Stay(0,0,12,0,"OM_CAVE3_18");
	TA_Stay(12,0,24,0,"OM_CAVE3_18");
};

