
instance STT_301_Ian(Npc_Default)
{
	name[0] = "��";
	npcType = npctype_main;
	guild = GIL_STT;
	level = 13;

	voice = 13;
	id = 301;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 196;
	attribute[ATR_HITPOINTS] = 196;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,2,"Hum_Head_Pony",14,1,stt_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,2);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	EquipItem(self,ItMw_1H_Sword_04);
	EquipItem(self,ItRw_Bow_Small_04);
	CreateInvItems(self,ItAmArrow,25);
	CreateInvItem(self,TheList);
	daily_routine = Rtn_start_301;
};


func void Rtn_start_301()
{
	TA_StandAround(8,0,10,0,"OM_CAVE1_47_IAN");
	TA_StandAround(10,0,12,0,"OM_CAVE1_45");
	TA_StandAround(12,0,14,0,"OM_CAVE1_47_IAN");
	TA_StandAround(14,0,16,0,"OM_CAVE1_45");
	TA_StandAround(16,0,18,0,"OM_CAVE1_47_IAN");
	TA_StandAround(18,0,20,0,"OM_CAVE1_45");
	TA_StandAround(20,0,22,0,"OM_CAVE1_47_IAN");
	TA_StandAround(0,0,2,0,"OM_CAVE1_45");
	TA_StandAround(2,0,6,0,"OM_CAVE1_47_IAN");
	TA_StandAround(6,0,8,0,"OM_CAVE1_45");
};

func void Rtn_Kapitel2_301()
{
	TA_StandAround(8,0,18,0,"OM_CAVE3_19");
	TA_StandAround(18,0,8,0,"OM_CAVE3_19");
};

