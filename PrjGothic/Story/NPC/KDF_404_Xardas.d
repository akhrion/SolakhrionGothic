
instance KDF_404_Xardas(Npc_Default)
{
	name[0] = "�������";
	npcType = npctype_friend;
	guild = GIL_DMB;
	level = 50;
	voice = 14;
	id = 404;

	attribute[ATR_STRENGTH] = 1;
	attribute[ATR_DEXTERITY] = 1;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",82,1,dmb_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	EquipItem(self,itarrune_2_2_fireball);
	daily_routine = Rtn_start_404;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
};


func void Rtn_start_404()
{
	TA_ReadBook_Xardas(6,0,8,0,"DT_E3_07");
	TA_ReadBook_Xardas(8,0,6,0,"DT_E3_07");
};

func void Rtn_Study_404()
{
	TA_ReadBook_Xardas(6,0,9,0,"DT_E3_07");
	TA_ReadBook_Xardas(9,0,10,0,"DT_E3_05");
	TA_ReadBook_Xardas(10,0,11,0,"DT_E3_07");
	TA_ReadBook_Xardas(11,0,13,0,"DT_E3_04");
	TA_ReadBook_Xardas(13,0,15,0,"DT_E3_07");
	TA_ReadBook_Xardas(15,0,17,0,"DT_E3_05");
	TA_ReadBook_Xardas(17,0,21,0,"DT_E3_07");
	TA_ReadBook_Xardas(21,0,6,0,"DT_E3_04");
};

