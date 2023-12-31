
instance VLK_538_Huno(Npc_Default)
{
	name[0] = "����";
	npcType = npctype_main;
	guild = GIL_VLK;
	level = 12;
	voice = 9;
	id = 538;

	attribute[ATR_STRENGTH] = 55;
	attribute[ATR_DEXTERITY] = 15;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 184;
	attribute[ATR_HITPOINTS] = 184;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	Mdl_SetVisualBody(self,"hum_Body_CookSmith",2,1,"Hum_Head_Bald",71,4,-1);
	B_Scale(self);
	Mdl_SetModelFatness(self,1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,ItMw_1H_Sword_Short_05);
	CreateInvItems(self,ItMiSwordraw,10);
	CreateInvItem(self,ItMiHammer);
	CreateInvItem(self,ItMw_1H_Sledgehammer_01);
	daily_routine = Rtn_start_538;
};


func void Rtn_start_538()
{
	TA_Sleep(22,0,8,0,"OCR_HUT_35");
	TA_Smith_Fire(8,0,8,10,"OCR_HUT_34");
	TA_Smith_Anvil(8,10,8,20,"OCR_HUT_34");
	TA_Smith_Fire(8,20,8,30,"OCR_HUT_34");
	TA_Smith_Anvil(8,30,8,40,"OCR_HUT_34");
	TA_Smith_Cool(8,40,8,50,"OCR_HUT_34");
	TA_Smith_Anvil(8,50,9,0,"OCR_HUT_34");
	TA_Smith_Fire(9,0,9,10,"OCR_HUT_34");
	TA_Smith_Anvil(9,10,9,20,"OCR_HUT_34");
	TA_Smith_Fire(9,20,9,30,"OCR_HUT_34");
	TA_Smith_Anvil(9,30,9,40,"OCR_HUT_34");
	TA_Smith_Cool(9,40,9,50,"OCR_HUT_34");
	TA_Smith_Anvil(9,50,10,0,"OCR_HUT_34");
	TA_Smith_Fire(10,0,10,10,"OCR_HUT_34");
	TA_Smith_Anvil(10,10,10,20,"OCR_HUT_34");
	TA_Smith_Fire(10,20,10,30,"OCR_HUT_34");
	TA_Smith_Anvil(10,30,10,40,"OCR_HUT_34");
	TA_Smith_Cool(10,40,10,50,"OCR_HUT_34");
	TA_Smith_Anvil(10,50,11,0,"OCR_HUT_34");
	TA_Smith_Fire(11,0,11,10,"OCR_HUT_34");
	TA_Smith_Anvil(11,10,11,20,"OCR_HUT_34");
	TA_Smith_Fire(11,20,11,30,"OCR_HUT_34");
	TA_Smith_Anvil(11,30,11,40,"OCR_HUT_34");
	TA_Smith_Cool(11,40,11,50,"OCR_HUT_34");
	TA_Smith_Anvil(11,50,12,0,"OCR_HUT_34");
	TA_Smith_Fire(12,0,12,10,"OCR_HUT_34");
	TA_Smith_Anvil(12,10,12,20,"OCR_HUT_34");
	TA_Smith_Fire(12,20,12,30,"OCR_HUT_34");
	TA_Smith_Anvil(12,30,12,40,"OCR_HUT_34");
	TA_Smith_Cool(12,40,12,50,"OCR_HUT_34");
	TA_Smith_Anvil(12,50,13,0,"OCR_HUT_34");
	TA_Smith_Fire(13,0,13,10,"OCR_HUT_34");
	TA_Smith_Anvil(13,10,13,20,"OCR_HUT_34");
	TA_Smith_Fire(13,20,13,30,"OCR_HUT_34");
	TA_Smith_Anvil(13,30,13,40,"OCR_HUT_34");
	TA_Smith_Cool(13,40,13,50,"OCR_HUT_34");
	TA_Smith_Anvil(13,50,14,0,"OCR_HUT_34");
	TA_Smith_Fire(14,0,14,10,"OCR_HUT_34");
	TA_Smith_Anvil(14,10,14,20,"OCR_HUT_34");
	TA_Smith_Fire(14,20,14,30,"OCR_HUT_34");
	TA_Smith_Anvil(14,30,14,40,"OCR_HUT_34");
	TA_Smith_Cool(14,40,14,50,"OCR_HUT_34");
	TA_Smith_Anvil(14,50,15,0,"OCR_HUT_34");
	TA_Smith_Fire(15,0,15,10,"OCR_HUT_34");
	TA_Smith_Anvil(15,10,15,20,"OCR_HUT_34");
	TA_Smith_Fire(15,20,15,30,"OCR_HUT_34");
	TA_Smith_Anvil(15,30,15,40,"OCR_HUT_34");
	TA_Smith_Cool(15,40,15,50,"OCR_HUT_34");
	TA_Smith_Anvil(15,50,16,0,"OCR_HUT_34");
	TA_Smith_Fire(16,0,16,10,"OCR_HUT_34");
	TA_Smith_Anvil(16,10,16,20,"OCR_HUT_34");
	TA_Smith_Fire(16,20,16,30,"OCR_HUT_34");
	TA_Smith_Anvil(16,30,16,40,"OCR_HUT_34");
	TA_Smith_Cool(16,40,16,50,"OCR_HUT_34");
	TA_Smith_Anvil(16,50,17,0,"OCR_HUT_34");
	TA_Smith_Fire(17,0,17,10,"OCR_HUT_34");
	TA_Smith_Anvil(17,10,17,20,"OCR_HUT_34");
	TA_Smith_Fire(17,20,17,30,"OCR_HUT_34");
	TA_Smith_Anvil(17,30,17,40,"OCR_HUT_34");
	TA_Smith_Cool(17,40,17,50,"OCR_HUT_34");
	TA_Smith_Anvil(17,50,18,0,"OCR_HUT_34");
	TA_Smith_Fire(18,0,18,10,"OCR_HUT_34");
	TA_Smith_Anvil(18,10,18,20,"OCR_HUT_34");
	TA_Smith_Fire(18,20,18,30,"OCR_HUT_34");
	TA_Smith_Anvil(18,30,18,40,"OCR_HUT_34");
	TA_Smith_Cool(18,40,18,50,"OCR_HUT_34");
	TA_Smith_Anvil(18,50,19,0,"OCR_HUT_34");
	TA_Smith_Fire(19,0,19,10,"OCR_HUT_34");
	TA_Smith_Anvil(19,10,19,20,"OCR_HUT_34");
	TA_Smith_Fire(19,20,19,30,"OCR_HUT_34");
	TA_Smith_Anvil(19,30,19,40,"OCR_HUT_34");
	TA_Smith_Cool(19,40,19,50,"OCR_HUT_34");
	TA_Smith_Anvil(19,50,20,0,"OCR_HUT_34");
	TA_Smith_Fire(20,0,20,10,"OCR_HUT_34");
	TA_Smith_Anvil(20,10,20,20,"OCR_HUT_34");
	TA_Smith_Fire(20,20,20,30,"OCR_HUT_34");
	TA_Smith_Anvil(20,30,20,40,"OCR_HUT_34");
	TA_Smith_Cool(20,40,20,50,"OCR_HUT_34");
	TA_Smith_Anvil(20,50,21,0,"OCR_HUT_34");
	TA_Smith_Fire(21,0,21,10,"OCR_HUT_34");
	TA_Smith_Anvil(21,10,21,20,"OCR_HUT_34");
	TA_Smith_Fire(21,20,21,30,"OCR_HUT_34");
	TA_Smith_Anvil(21,30,21,40,"OCR_HUT_34");
	TA_Smith_Cool(21,40,21,50,"OCR_HUT_34");
	TA_Smith_Anvil(21,50,22,0,"OCR_HUT_34");
};

func void rtn_flee_538()
{
	TA_Stay(23,0,7,45,"WP_INTRO01");
	TA_Stay(7,45,23,0,"WP_INTRO01");
};

