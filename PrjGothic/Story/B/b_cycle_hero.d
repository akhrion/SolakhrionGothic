func void hero_OrePicking()
{
	if(C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT))
	{
		if(Wld_GetMobState(hero,"ORE"))
		{
			if(!Hlp_Random(10))
			{
				Print(_STR_MESSAGE_OREPICKED);
				CreateInvItem(hero,ItMiNugget);
			};
		};
	};
};
func void hero_TakeItem()
{
	if(Npc_HasItems(hero,ItMi_Plants_Swampherb_01) > PC_Has_Swampherb)
	{
		if(!Npc_GetTarget(hero))
		{
			Print("Hero take Swampherb");
			SPWN_Cur_Swampherb_01 -= Npc_HasItems(hero,ItMi_Plants_Swampherb_01) - PC_Has_Swampherb;
			PC_Has_Swampherb = Npc_HasItems(hero,ItMi_Plants_Swampherb_01);
		};
	};
	if(Npc_HasItems(hero,ItMi_Plants_Swampherb_01) < PC_Has_Swampherb)
	{
		Print("Hero lose Swampherb");
		PC_Has_Swampherb = Npc_HasItems(hero,ItMi_Plants_Swampherb_01);
	};
	if(C_BodyStateContains(hero,BS_TAKEITEM))
	{
	};
};
func void b_cycle_hero()
{
//	PrintSIS("Dist to SPWN_PLANT_PSI_02 ",Npc_IsOnFP(hero,"SPWN_PLANT_PSI_02"),"");
//	PrintSIS("Dist to PATH_TAKE_HERB_07 ",Npc_GetDistToWP(hero,"PATH_TAKE_HERB_07"),"");
//	Print("20210717");
	hero_OrePicking();
	hero_TakeItem();
};
