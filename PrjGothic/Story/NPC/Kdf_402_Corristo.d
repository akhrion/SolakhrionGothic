
instance Kdf_402_Corristo(Npc_Default)
{
	name[0] = "��������";
	npcType = npctype_main;
	guild = GIL_KDF;
	level = 30;
	voice = 14;
	id = 402;

	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",84,1,kdf_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,4);
	EquipItem(self,itarrune_2_2_fireball);
	CreateInvItems(self,ItFo_Potion_Health_02,2);
	CreateInvItems(self,ItFo_Potion_Mana_02,2);
	EquipItem(self,Schutzring_Magie2_Fire2);
	daily_routine = Rtn_start_402;
};


func void Rtn_start_402()
{
	TA_Stay(19,5,6,55,"OCC_CHAPEL_PULPIT");
	TA_ReadBook(6,55,19,5,"OCC_CHAPEL_UPSTAIRS_RIGHT");
};

func void Rtn_KDFRITUAL_402()
{
	TA_Position(8,0,20,0,"OCC_CHAPEL_UPSTAIRS");
	TA_Position(20,0,8,0,"OCC_CHAPEL_UPSTAIRS");
};

func void Rtn_WAITFORSC_402()
{
	TA_Position(8,0,20,0,"OCC_CHAPEL_HALL");
	TA_Position(20,0,8,0,"OCC_CHAPEL_HALL");
};

func void rtn_dead_402()
{
	TA_Stay(8,0,20,0,"OCC_CELLAR_BAN_ROOM_MAG3");
	TA_Stay(20,0,8,0,"OCC_CELLAR_BAN_ROOM_MAG3");
};

