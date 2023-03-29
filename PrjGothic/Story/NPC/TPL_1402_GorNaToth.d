
instance TPL_1402_GorNaToth(Npc_Default)
{
	name[0] = "��� �� ���";
	npcType = npctype_main;
	guild = GIL_TPL;
	level = 21;
	voice = 11;
	id = 1402;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 292;
	attribute[ATR_HITPOINTS] = 292;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Psionic",86,1,tpl_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	EquipItem(self,ItMw_1H_Sword_Long_01);
	daily_routine = Rtn_start_1402;
};


func void Rtn_start_1402()
{
	TA_Sleep(1,0,5,0,"PSI_33_HUT_IN");
	TA_Boss(5,0,1,0,"PSI_MEETING_BRIDGE_MOVEMENT");
};

func void rtn_train_1402()
{
	TA_Sleep(1,0,5,0,"PSI_33_HUT_IN");
	TA_PracticeSword(5,0,1,0,"PSI_PATH_6_8");
};

