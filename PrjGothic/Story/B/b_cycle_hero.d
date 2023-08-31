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
func void PC_WeaponHand_Handler(var C_Item _itm)
{
	if(
		PC_IsAllowedToChange_EquipedWeaponHand_Melee
	&&	!(PC_WeaponHand == Item_GetWeaponHand(_itm))
	)
	{
//		Print("Switch Hand");
		PC_IsAllowedToChange_EquipedWeaponHand_Melee = FALSE;
		if(Item_GetWeaponHand(_itm) == PC_WeaponHandOne)
		{
			_itm.flags = _itm.flags - ITEM_SWD;
			_itm.flags = _itm.flags + ITEM_2HD_SWD;
		}
		else
		{
			_itm.flags = _itm.flags - ITEM_2HD_SWD;
			_itm.flags = _itm.flags + ITEM_SWD;
		};
	};
};
func void PC_Mana()
{
	if(Npc_GetMana(hero) <= getPercentFromInteger(Npc_GetManaMax(hero),10))
	{
		return;
	};
	if(
		Npc_GetMagCircle(hero) == 0
	)
	{
		Npc_DecreaseMana(hero,1);
	}
	else if(!(getCurDayMinutes() % Npc_GetMagCircle(hero)))
	{
		Npc_DecreaseMana(hero,1);
	};
};
func void b_cycle_hero()
{
//	PrintSIS("Dist to SPWN_PLANT_PSI_02 ",Npc_IsOnFP(hero,"SPWN_PLANT_PSI_02"),"");
//	PrintSIS("Dist to PATH_TAKE_HERB_07 ",Npc_GetDistToWP(hero,"PATH_TAKE_HERB_07"),"");
//	Print("20210717");
	hero_OrePicking();
	hero_TakeItem();
	PC_WeaponHand_Handler(PC_EquipedWeapon_Melee);
	Npc_RescaleCriticalChance(hero);
	PC_Mana();


	PrintScreenSIS("BodyState hero: ",Npc_GetBodyState(hero),"",0,20,1);
	if(Npc_GetTarget(hero))
	{
		PrintScreenSIS("Dist to target: ",Npc_GetDistToPlayer(other),"",0,22,1);
	};
	if(Npc_GetBodyState(hero) == BS_HIT)
	{
		if(Npc_GetTarget(hero))
		{
			Print("Hero hit someone..");
			if(getCurDayMinutes() % 2)
			{

			};
		}
		else
		{
			if(
				quest_Blade_SwordsSkills_Counter < 10
			&&	questTaken_Blade_SwordsSkills
			&&	Npc_IsInFightMode(hero,FMODE_MELEE)
			)
			{
				quest_Blade_SwordsSkills_Counter +=1;
			};
		};
	};
//	itmmm = Npc_GetEquippedMeleeWeapon(hero);
//	Print(itmmm.name);
//	Print(Npc_GetDetectedMob(hero));
};
