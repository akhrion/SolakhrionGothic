
instance EBR_109_Syra(Npc_Default)
{
	name[0] = "����";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 18;
	id = 109;

	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"Babe.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",1,1,"Bab_Head_Hair1",1,DEFAULT,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMiBrush);
	CreateInvItem(self,ItMiWedel);
	daily_routine = Rtn_start_109;
};


func void Rtn_start_109()
{
	TA_Babe_Sweep(22,0,6,0,"OCC_BARONS_LEFT_ROOM");
	TA_Babe_Sweep(6,0,16,0,"OCC_BARONS_RIGHT_ROOM_TABLE");
	TA_Babe_Dance(16,0,22,0,"OCC_BARONS_DANCE");
};

func void rtn_flee_109()
{
	TA_Stay(0,0,12,0,"WP_INTRO01");
	TA_Stay(12,0,24,0,"WP_INTRO01");
};

