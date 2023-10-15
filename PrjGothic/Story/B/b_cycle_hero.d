func void PC_Forging_Furnace()
{
	if(
		C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT)
	&&	self.aivar[AIV_INVINCIBLE] == FALSE
	)
	{
		Print(ConcatStrings("Furnace ",IntToString(PC_Forging_IncandescenceTime)));
		
	};
};
func void PC_Forging_Anvil()
{};
func void PC_Forging_Quenching()
{};
func void PC_Forging_Sharpening()
{};
func void PC_Forging()
{
	PC_Forging_Furnace();
	PC_Forging_Anvil();
	PC_Forging_Quenching();
	PC_Forging_Sharpening();
};
func void hero_OrePicking()
{
	return;
	var string pcMOB;
	pcMOB = Npc_GetDetectedMob(hero);
	Print(pcMOB);
	
	Print(IntToString(Wld_GetMobState(hero,pcMOB)));
	
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
func void PC_DropItem()
{
	if(C_BodyStateContains(hero,BS_INVENTORY))
	{
		if(PC_DropCursedRing)
		{
			PC_DropCursedRing = false;
			Wld_RemoveItem(CursedRing_01);
			EquipItem(hero,CursedRing_01);
		};
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
func void PC_Limitedbag()
{
	if(Npc_GetInvItemBySlot(hero,INV_FOOD,2))
	{
		item.flags = item.flags | (1 << 26);
		AI_Wait(hero,1);
		AI_DropItem(hero,Hlp_GetInstanceID(item));
		AI_OutputSVM_Overlay(hero,NULL,"$INVFULL");
	};
};

func void PC_SitCampfire_algo001()
{
	if(!(getTimestamp()%1))
	{
		if(!(Npc_GetHP(hero) % 5))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
		}
		else if(!(Npc_GetHP(hero) % 4))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
		}
		else if(!(Npc_GetHP(hero) % 3))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,10);
		}
		else if(!(Npc_GetHP(hero) % 2))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,25);
		}
		else if(!(Npc_GetHP(hero) % 1))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,50);
		};
	};
};
func void PC_SitCampfire_algo002()
{
	if(!(getTimestamp()%1))
	{
		if(!(Npc_GetHP(hero) % 5))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,56);
		}
		else if(!(Npc_GetHP(hero) % 4))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,29);
		}
		else if(!(Npc_GetHP(hero) % 3))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,10);
		}
		else if(!(Npc_GetHP(hero) % 2))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
		}
		else if(!(Npc_GetHP(hero) % 1))
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,2);
		};
	};
};
func void PC_SitCampfire()
{
//	if(Npc_IsOnFP(hero,"FP_CAMPFIRE_A_OW_OC_NC_AMBIENTNSC3"))
	if(Wld_IsFPAvailable(hero,"FP_CAMPFIRE"))
	{
		if(Npc_GetHP(hero) < Npc_GetHPMax(hero))
		{
			PC_SitCampfire_algo002();
		};
	};
};
func void PC_Test()
{
	Print(FloatToString(Focus_Ranged.npc_range2));
	if(
		hero.level == 10
	&&	FloatToInt(Focus_Ranged.npc_range2) != 1000
	)
	{
		Focus_Ranged.npc_range2 = 1000000;
	};
	if(
		hero.level == 20
	&&	FloatToInt(Focus_Ranged.npc_range2) != 2000
	)
	{
		Focus_Ranged.npc_range2 = 2000000;
	};
	if(
		hero.level == 30
	&&	FloatToInt(Focus_Ranged.npc_range2) != 3000
	)
	{
		Focus_Ranged.npc_range2 = 3000000;
	};
};

func void b_cycle_hero()
{
	if(!Hlp_IsValidNpc(hero)){return;};
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
PC_Limitedbag();
PC_DropItem();
PC_Forging();
PC_SitCampfire();





PC_Test();
//	itmmm = Npc_GetEquippedMeleeWeapon(hero);
//	Print(itmmm.name);
//	Print(Npc_GetDetectedMob(hero));
};
