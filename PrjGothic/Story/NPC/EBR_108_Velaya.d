
instance EBR_108_Velaya(Npc_Default)
{
	name[0] = "������";
	npcType = npctype_main;
	guild = GIL_BAB;
	level = 1;
	voice = 16;
	id = 108;

	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	Mdl_SetVisual(self,"BABE.MDS");
	Mdl_SetVisualBody(self,"Bab_body_Naked0",0,1,"Bab_Head_Hair1",0,DEFAULT,BAB_ARMOR_BIKINI);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_COWARD;
	CreateInvItem(self,ItMiBrush);
	CreateInvItem(self,ItMiWedel);
	daily_routine = Rtn_start_108;
};


func void Rtn_start_108()
{
	TA_Babe_Sleep(1,0,10,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_BACK");
	TA_Babe_SitAround(10,0,11,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Bathing_Babe(11,0,14,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Babe_SitAround(14,0,16,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Bathing_Babe(16,0,19,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
	TA_Babe_SitAround(19,0,1,0,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_FRONT");
};

func void rtn_flee_108()
{
	TA_Stay(0,0,12,0,"WP_INTRO01");
	TA_Stay(12,0,24,0,"WP_INTRO01");
};

