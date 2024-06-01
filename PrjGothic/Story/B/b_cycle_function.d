func void b_cycle02_function_om()
{
	b_cycle02_hero();
	B_Cycle_NPC();
	Wld_SendTrigger("CYCLE02_TRIGGER_OM");
};
func void b_cycle_function_om()
{
	// if(!Npc_IsDead(hero))
	if(!Hlp_IsValidNpc(hero))// ?? ERROR ??
	{
		if(
			Npc_IsMining(hero)
		){
			Print("hero mining Old Mine");
			Print(Npc_GetDetectedMob(hero));
		};
	};
	Wld_SendTrigger("CYCLE_TRIGGER_OM");
};
func void b_cycle60_function_om()
{
	Wld_SendTrigger("CYCLE60_TRIGGER_OM");
};

func void b_cycle02_function()
{
	b_cycle02_hero();
	B_Cycle_NPC();
	Wld_SendTrigger("CYCLE02_TRIGGER");
};
func void b_cycle_function()
{
	PrintScreen("test branch",2,10,_STR_FONT_ONSCREEN,1);
	var C_Npc Kirgo;
	var C_Npc Kharim;
	var C_Npc GorHanis;
	Kirgo = Hlp_GetNpc(GRD_251_Kirgo);
	Kharim = Hlp_GetNpc(Sld_729_Kharim);
	GorHanis = Hlp_GetNpc(Tpl_1422_GorHanis);
	if(Kapitel < 4)
	{
		if(Wld_IsTime(20,18,20,18))
		{
			Kharim.attribute[ATR_HITPOINTS] = 172;
			Kharim.attribute[ATR_HITPOINTS_MAX] = 172;
		};
		if(Wld_IsTime(21,38,21,38))
		{
			Kirgo.attribute[ATR_HITPOINTS] = 160;
			Kirgo.attribute[ATR_HITPOINTS_MAX] = 160;
		};
		if(Wld_IsTime(22,58,22,58))
		{
			Kharim.attribute[ATR_HITPOINTS] = 172;
			Kharim.attribute[ATR_HITPOINTS_MAX] = 172;
			GorHanis.attribute[ATR_HITPOINTS] = 280;
			GorHanis.attribute[ATR_HITPOINTS_MAX] = 280;
		};
	};
	if((RUSSOBITMFIXV13 == FALSE) && Npc_KnowsInfo(hero,Info_Diego_Gamestart))
	{
		PrintScreen("Загруженное сохранение не поддерживается!",50,43,"font_old_10_white.tga",2);
		PrintScreen("Пожалуйста, начните новую игру.",50,40,"font_old_10_white.tga",2);
	};
	if(RIDDLE1INSERT == TRUE)
	{
		Wld_InsertItem(theriddle2,"FP_RIDD_2");
		RIDDLE1INSERT = FALSE;
	};
	if(RIDDLE2INSERT == TRUE)
	{
		Wld_InsertItem(theriddle3,"FP_SLEEP_OW_BLOODFLY_01_02");
		RIDDLE2INSERT = FALSE;
	};
	if(RIDDLE3INSERT == TRUE)
	{
		Wld_InsertItem(theriddle4,"FP_SLEEP_OW_LURKER_NC_LAKE_02");
		RIDDLE3INSERT = FALSE;
	};
	if(RIDDLE4INSERT == TRUE)
	{
		Wld_InsertItem(theriddle5,"FP_RIDD_4");
		RIDDLE4INSERT = FALSE;
	};


	// if(!Hlp_IsValidNpc(hero))
	if(!Npc_IsDead(hero))
	{
		PrintScreenSIS("Wld_IsFPAvailable: ",Wld_IsFPAvailable(hero,"FP_ROAM_OW_MEATBUG_03_03"),"",50,52,1);
		b_cycle_hero();
		SpawnPlants();
		if(
			Npc_IsMining(hero)
		){
			Print("hero mining on Surface");
			Print(Npc_GetDetectedMob(hero));
		};
	};
	Wld_SendTrigger("CYCLE_TRIGGER");
};
func void b_cycle60_function()
{
	b_cycle60_hero();
	Wld_SendTrigger("CYCLE60_TRIGGER");
};
