
func void B_Give_FiskChapter1Weapons()
{
	var C_Npc npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	CreateInvItems(npc,ItKeLockpick,10);
	CreateInvItem(npc,ItMw_1H_Sword_Old_01);
	CreateInvItem(npc,ItMw_1H_Sword_Short_01);
	CreateInvItem(npc,ItMw_1H_Sword_Short_02);
	CreateInvItem(npc,ItMw_1H_Sword_Short_03);
	CreateInvItem(npc,ItMw_1H_Sword_Short_04);
	CreateInvItem(npc,ItMw_1H_Sword_Short_05);
	CreateInvItems(npc,ItMiNugget,200);
};

func void B_Give_FiskChapter2Weapons()
{
	var C_Npc npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	CreateInvItems(npc,ItKeLockpick,20);
	CreateInvItem(npc,ItMw_1H_Sword_01);
	CreateInvItem(npc,ItMw_1H_Sword_02);
	CreateInvItem(npc,ItMw_1H_Sword_03);
	CreateInvItem(npc,ItMw_1H_Sword_04);
	CreateInvItems(npc,ItMiNugget,400);
};

func void B_Give_FiskChapter3Weapons()
{
	var C_Npc npc;
	npc = Hlp_GetNpc(Stt_311_Fisk);
	CreateInvItems(npc,ItKeLockpick,30);
	CreateInvItem(npc,ItMw_1H_Sword_Long_01);
	CreateInvItem(npc,ItMw_1H_Sword_Long_02);
	CreateInvItem(npc,ItMw_1H_Sword_Long_03);
	CreateInvItem(npc,ItMw_1H_Sword_Broad_01);
	CreateInvItems(npc,ItMiNugget,500);
};

