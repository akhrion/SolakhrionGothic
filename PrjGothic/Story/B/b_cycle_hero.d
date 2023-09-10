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
func void PC_Torch()
{
	if(Npc_HasItems(hero,ItLsTorchburning))
	{
		//если долго горит, то сгорел

		//зажег факел или подобрал факел имея в руках зажженный
		if(PC_HasTorchs != Npc_HasItems(hero,ItLsTorch))
		{
			PC_HasTorchs = Npc_HasItems(hero,ItLsTorch);
			if(PC_IsTorchBurning == false)
			{
				EquipItem(hero,ItLsTorchBurning);
				PC_IsTorchBurning = true;
			};
		};
	}
	else if(PC_IsTorchBurning)
	{
		if(PC_HasTorchs != Npc_HasItems(hero,ItLsTorch))
		{
			//факел вернут в инвентарь.. нужно его сжечь
			PC_IsTorchBurning = false;
			Npc_RemoveInvItem(hero,ItLsTorch);
			CreateInvItem(hero,ItLsTorchburned);
		}
		else
		{
			//факел был сброшен на землю..
		};
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
var int test;var int testt;
test = 30;testt = 30;
test = test|1;
testt = testt&2;
	PrintScreenSIS("test ",test," ",0,26,1);
	PrintScreenSIS("testt ",testt," ",0,28,1);
	PrintScreenSIS("16 ",(test & (4|16))," ",0,30,1);
	PrintScreenSIS("15 ",(test & (4|15))," ",0,32,1);
	PrintScreenSIS("14 ",(test & (4|14))," ",0,34,1);


PrintScreenSIS("30 ",(1<<30)," ",0,40,1);
PrintScreenSIS("31 ",(1<<31)," ",0,42,1);
PrintScreenSIS("32 ",(1<<32)," ",0,44,1);
PrintScreenSIS("33 ",(1<<33)," ",0,46,1);
PrintScreenSIS("34 ",(1<<34)," ",0,48,1);

item = Npc_GetReadiedWeapon(hero);
if(Npc_HasReadiedWeapon_2HD_Staff(hero))
{
	PrintSIS("У ГГ в руках ",0," посох");
}
else if(Npc_HasReadiedWeapon_Club(hero))
{
	PrintSIS("У ГГ в руках ",0," дубина");
}
else if(Npc_HasReadiedWeapon_Swd(hero))
{
	PrintSIS("У ГГ в руках ",0," меч");
}
else if(Npc_HasReadiedWeapon_Axe(hero))
{
	PrintSIS("У ГГ в руках ",0," топор");
}
else if(Npc_HasReadiedWeapon_2HD_Axe(hero))
{
	PrintSIS("У ГГ в руках ",0," двуручный топор");
}
else if(Npc_HasReadiedWeapon_2HD_Swd(hero))
{
	PrintSIS("У ГГ в руках ",0," двуручный меч");
}
else
{};


PC_Torch();



//	itmmm = Npc_GetEquippedMeleeWeapon(hero);
//	Print(itmmm.name);
//	Print(Npc_GetDetectedMob(hero));
};
