
instance GRD_288_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	guild = GIL_GRD;
	npcType = npctype_guard;
	level = 20;
	voice = 5;
	id = 288;
	attribute[ATR_STRENGTH] = 65;
	attribute[ATR_DEXTERITY] = 60;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 280;
	attribute[ATR_HITPOINTS] = 280;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Hum_Head_Psionic",2,1,grd_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_RANGED;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	EquipItem(self,ItMw_1H_Sword_03);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoMutton);
	CreateInvItems(self,ItMiNugget,20);
	CreateInvItem(self,ItFo_Potion_Health_01);
	CreateInvItem(self,ItLsTorch);
	EquipItem(self,ItRw_Crossbow_01);
	daily_routine = Rtn_FMstart_288;
};


func void Rtn_FMstart_288()
{
	TA_GuardPalisade(0,0,13,0,"FM_111");
	TA_GuardPalisade(13,0,0,0,"FM_111");
};

