instance SLD_711_Cara(Npc_Default)
{
	name[0] = "Кара";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 11;
	voice = 18;
	id = 711;

	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 140;
	attribute[ATR_HITPOINTS] = 140;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Bab_Head_Hair1",2,DEFAULT,sld_armor_m);
    Npc_SetWidth(self,0.8);
    Mdl_SetModelFatness(self,-1);

	// Mdl_SetVisualBody(self,"hum_body_Naked0",0,0,"Bab_Head_Hair1",4,DEFAULT,kdw_armor_l);
    // HumanVisual_SetMageWomen(self);

	// Mdl_SetVisualBody(self,"Bab_body_Naked0",1,2,"Bab_Head_Hair1",4,DEFAULT,-1);
	aivar[AIV_IMPORTANT] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);

	EquipItem(self,ItMw_1H_Sword_Long_05);
    CreateInvItems(self,ItFoMutton,4);
    CreateInvItems(self,ItMiNugget,40);
    CreateInvItems(self,ItFo_Potion_Health_02,2);
    CreateInvItem(self,ItWr_Book_Circle_02);

	daily_routine = Rtn_start_711;

};

func void Rtn_start_711()
{
	TA_Sleep(1,0,7,0,"NC_SMALL_CAVE_CENTER");
	TA_WashSelf(7,0,7,35,"NC_WASH_03");
    TA_CookForMe(7,35,8,0,"NC_HUT03_OUT");
	TA_StandAround(8,0,10,5,"NC_WATERFALL_BOTTOM");
	TA_PracticeSword(10,5,15,55,"NC_WATERFALL_TOP01");
	TA_WashSelf(15,55,16,15,"NC_WASH_03");

    TA_CookForMe(16,15,18,0,"NC_PATH59");
    TA_SitAround(18,0,21,00,"NC_LO_11");
	TA_ReadBookSelf(21,0,1,0,"NC_LO_11");
};
