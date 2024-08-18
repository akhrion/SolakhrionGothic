func int PC_GetMovementSpeed()
{
	var string lastNearWP;
	var int lastWPDist;
	var int curWPDist;
	var int passedDist;

	curWPDist = Npc_GetDistToWP(hero,lastNearWP);
	passedDist = abs(curWPDist - lastWPDist);
	PC_MovementSpeed = passedDist / IRL_COEFFICIENT_MOVEMENTSPEED;
	if(!Hlp_StrCmp(Npc_GetNearestWP(hero),lastNearWP))
	{
		lastNearWP = Npc_GetNearestWP(hero);
		lastWPDist = Npc_GetDistToWP(hero,lastNearWP);
	}
	else
	{
		lastWPDist = curWPDist;
	};

	return abs(PC_MovementSpeed) / IRL_COEFFICIENT_MOVEMENTSPEED;
};
func void PC_Stamina_f()
{
	return;
	if(PC_Stamina < 1)
	{
		AI_Wait(hero,1);
	};
	if(PC_Stamina < 100)
	{
		if(Npc_GetBodyState(hero) == BS_STAND)
		{
			PC_Stamina += 10;
		};
		if(
			!(hero.aivar[AIV_FREEMAN] & AIV_FREEMAN_RUNHEAVY)
		&&	PC_Stamina < 90)
		{
			Print("AIV_FREEMAN_RUNHEAVY");
			hero.aivar[AIV_FREEMAN] = hero.aivar[AIV_FREEMAN] | AIV_FREEMAN_RUNHEAVY;
			Mdl_ApplyOverlayMds(hero,"humans_runheavy.mds");
			if(hero.aivar[AIV_FREEMAN] & AIV_FREEMAN_RUNNORMAL)
			{
				hero.aivar[AIV_FREEMAN] = hero.aivar[AIV_FREEMAN] - AIV_FREEMAN_RUNNORMAL;
				Mdl_RemoveOverlayMds(hero,"HUMANS_RUNNORMAL.MDS");
			};
		};
		PC_Stamina += 1;
	};
	if(
		!(hero.aivar[AIV_FREEMAN] & AIV_FREEMAN_RUNNORMAL)
	&&	PC_Stamina > 90)
	{
		Print("AIV_FREEMAN_RUNNORMAL");
		hero.aivar[AIV_FREEMAN] = hero.aivar[AIV_FREEMAN] | AIV_FREEMAN_RUNNORMAL;
		Mdl_ApplyOverlayMds(hero,"HUMANS_RUNNORMAL.MDS");
		if(hero.aivar[AIV_FREEMAN] & AIV_FREEMAN_RUNHEAVY)
		{
			hero.aivar[AIV_FREEMAN] = hero.aivar[AIV_FREEMAN] - AIV_FREEMAN_RUNHEAVY;
			Mdl_RemoveOverlayMds(hero,"humans_runheavy.mds");
			Mdl_ApplyOverlayMds(hero,"HUMANS_1HST1_x3.MDS");
		};
	};

	if(Npc_GetBodyState(hero) == BS_RUN)
	// if(PC_GetMovementSpeed() > MAXWALKINGSPEED)
	{
		PC_Stamina -= 3;
	};
};
func void PC_Forging_Furnace()
{
	if(
		C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT)
	&&	self.aivar[AIV_INVINCIBLE] == FALSE
	)
	{
		Print(ConcatStrings("Furnace ",IntToString(PC_Forging_Incandescence_TimeLasted)));
		
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
func void PC_Partymember_Demon_Invoked_Count_Info()
{
	if(!PC_Knowledge_Demon_Info)
	{
		msgI(PC_Knowledge_Demon_InfoDelay,0,72,1);
		if(PC_Knowledge_Demon_InfoDelay < PC_KNOWLEDGE_DEMON_INFODELAY_CONST)
		{
			PC_Knowledge_Demon_InfoDelay += 1;
		}
		else
		{
			PC_Knowledge_Demon_Info = true;
			Log_CreateTopic(GE_MEETINGWITHDEMONS,LOG_NOTE);
			B_LogEntry(GE_MEETINGWITHDEMONS,GE_MEETINGWITHDEMONS_01);				
		};
	};
};
func void PC_Mana_PartymemberInvoked()
{
	if(!PC_PartymemberInvoked){return;};
	if(PC_Partymember_Demon_Invoked_Count)
	{
		// Npc_DecreaseMana(hero,PC_Mana_Sustain_Demon * PC_Partymember_Demon_Invoked_Count);akharase
		// if(Npc_GetMana(hero) < PC_Mana_Sustain_Demon * PC_Partymember_Demon_Invoked_Count)
		// {
		// 	PC_Partymember_Demon_Invoked_Count_Info();
		// };
	};
};
func void PC_HP()
{
	if(PC_HpWasChanged())
	{
		PC_ATR_HP = Npc_GetHP(hero);
	};
};
func void PC_Mana()
{
	// PC_Mana_PartymemberInvoked();
	return;//akherase
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
func void NPC_Dodge(var C_Npc npc)
{
	PrintScreen(getConcatSI("immortal flag: ",npc.flags),2,OVERLAY_TARGET_ISIMMORTAL_Y,_STR_FONT_ONSCREEN,1);
	PrintScreen(getConcatSI("ability dodge: ",npc.aivar[AIV_ABILITY]),2,OVERLAY_BODYSTATE_AIV_ABILITY_Y,_STR_FONT_ONSCREEN,1);
	PrintScreen(getConcatSI("Npc_GetBodyState(npc): ",Npc_GetBodyState(npc)),2,OVERLAY_BODYSTATE_HERO_Y,_STR_FONT_ONSCREEN,1);
	PrintScreen(getConcatSI("Npc_GetBodyState(npc) & BS_STAND: ",Npc_GetBodyState(npc) & (BS_STAND)),2,OVERLAY_BODYSTATE_HERO_AND_Y,_STR_FONT_ONSCREEN,1);
	PrintScreen(getConcatSI("npc.aivar[AIV_ABILITY] & AIV_ABILITY_DODGE: ",npc.aivar[AIV_ABILITY] & AIV_ABILITY_DODGE),2,OVERLAY_BODYSTATE_DODGE_Y,_STR_FONT_ONSCREEN,1);

	if(isFlagsContainCategorie(npc.flags, NPC_FLAG_IMMORTAL))
	{
		npc.flags = npc.flags - NPC_FLAG_IMMORTAL;
	};
	if(
		isFlagsContainCategorie(Npc_GetBodyState(npc), BS_STAND)
	&	isFlagsContainCategorie(npc.aivar[AIV_ABILITY], AIV_ABILITY_DODGE)
	)
	{
		npc.aivar[AIV_ABILITY] = npc.aivar[AIV_ABILITY] - AIV_ABILITY_DODGE;
	};
	if(
		Npc_GetTarget(npc)
	&	!isFlagsContainCategorie(npc.aivar[AIV_ABILITY], AIV_ABILITY_DODGE)
	&	isFlagsContainCategorie(Npc_GetBodyState(npc), BS_RUN)
	&	!isFlagsContainCategorie(npc.flags, NPC_FLAG_IMMORTAL)
	)
	{
		npc.flags = npc.flags | NPC_FLAG_IMMORTAL;
		npc.aivar[AIV_ABILITY] = npc.aivar[AIV_ABILITY] | AIV_ABILITY_DODGE;
	};
};


func void PC_Bowman()
{
	var C_Item itm; itm = Npc_GetReadiedWeapon(hero);
	if(
		Hlp_StrCmp(itm.name,"")
	||	!Item_IsBow(itm)
	){return;};

	Npc_GetTarget(hero);
	if(Npc_IsAiming(hero,other))
	{
		msgSI("Точность выстрела: ",hero.attribute[ATR_DEXTERITY],0,OVERLAY_AIMING_ACCURACY_Y,1);
		msgSI("Урон от выстрела: ",itm.damageTotal,0,OVERLAY_AIMING_DAMAGE_Y,1);
		if(PC_StoppedAiming){
			PC_StoppedAiming = false;
			if(Npc_GetDex(hero) != PC_ATR_DEX){Npc_SetDex(hero,PC_ATR_DEX);};
			if(itm.damageTotal != PC_Damage_Bow)
			{
				// Print("RESET: bow damage.");
				itm.damageTotal = PC_Damage_Bow;
				itm.damage[DAM_INDEX_POINT] = PC_Damage_Bow;
			};
		};
		Npc_IncreaseDex(hero,1);
		if(itm.damageTotal){itm.damageTotal -=1;};
		if(itm.damage[DAM_INDEX_POINT]){itm.damage[DAM_INDEX_POINT] -=1;};
		// increase accuracy++
		// decrease damage--
		
	}
	else 
	{
		if(!PC_StoppedAiming){PC_StoppedAiming = true;};
	};
};





var int PC_CriticalHit_WasOnItIterate;
func void PC_CriticalHit()
{
	if(
		Npc_GetBodyState(hero) == BS_HIT
	)
	{
		Print("hit");
		if(
			Random_IsProc(50)
		&&	!PC_CriticalHit_WasOnItIterate
		)
		{
			Print("hit11111");
			PC_CriticalHit_WasOnItIterate = true;
			Npc_SetTalentValue(hero,NPC_TALENT_1H,100);
			DAM_CRITICAL_MULTIPLIER = 100;
		};
	}
	else if(PC_CriticalHit_WasOnItIterate)
	{
		Print("hit reset");
		PC_CriticalHit_WasOnItIterate = false;
		Npc_SetTalentValue(hero,NPC_TALENT_1H,0);
		DAM_CRITICAL_MULTIPLIER = 1;
	};
};
func void PC_Bashed()
{
	if(Npc_GetBodyState(hero) == BS_STUMBLE)//true при получении урона, если ГГ без оружия и не двигается.
	{
		AI_Wait(hero,1);
	};
};

func void b_cycle02_hero()
{
	return;
	if(Npc_IsDead(hero)){return;};
	PC_Bowman();
	NPC_Dodge(hero);
	hero_TakeItem();
	PC_WeaponHand_Handler(PC_EquipedWeapon_Melee);
	PC_CriticalHit();
	PC_Bashed();
	return;
//	PrintSIS("Dist to SPWN_PLANT_PSI_02 ",Npc_IsOnFP(hero,"SPWN_PLANT_PSI_02"),"");
//	PrintSIS("Dist to PATH_TAKE_HERB_07 ",Npc_GetDistToWP(hero,"PATH_TAKE_HERB_07"),"");
//	Print("20210717");
	hero_OrePicking();
	Npc_RescaleCriticalChance(hero);


	PrintScreenSIS("BodyState hero: ",Npc_GetBodyState(hero),"",0,OVERLAY_BODYSTATE_HERO_Y,1);
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
func void bsfire_hero()
{
	if(PC_Forging_Incandescence_TimeLasted < 3)
	{
		Npc_RemoveInvItem(hero,ItMiSwordrawhot);
	}
	else if(PC_Forging_Incandescence_TimeLasted < 9)
	{
		Npc_RemoveInvItem(hero,ItMiSwordraw);
		Npc_RemoveInvItem(hero,ItMiSwordrawhot);
		CreateInvItem(hero,ItMiSwordrawErhitzt);
	}
	else if(PC_Forging_Incandescence_TimeLasted > 8)
	{
		Npc_RemoveInvItem(hero,ItMiSwordraw);
	};
};
func int PC_Knowledge()
{
	Npc_GetTarget(hero);
	if(Hlp_StrCmp(other.name,"")){return 0;};
	if(other.guild < GIL_SEPERATOR_HUM)
	{
		if(Npc_GetTalentValue(hero,NPC_TALENT_1H) != PC_Knowledge_Human){Npc_SetTalentValue(hero,NPC_TALENT_1H,PC_Knowledge_Human);};
		return PC_Knowledge_Human;
	}
	else if(other.guild == GIL_SCAVENGER)
	{
		if(Npc_GetTalentValue(hero,NPC_TALENT_1H) != PC_Knowledge_Scavenger){Npc_SetTalentValue(hero,NPC_TALENT_1H,PC_Knowledge_Scavenger);};
		return PC_Knowledge_Scavenger;
	}
	else if(other.guild == GIL_WOLF)
	{
		if(Npc_GetTalentValue(hero,NPC_TALENT_1H) != PC_Knowledge_Wolf){Npc_SetTalentValue(hero,NPC_TALENT_1H,PC_Knowledge_Wolf);};
		return PC_Knowledge_Wolf;
	};
	return 0;
};

func void PC_Dialog_InputManual_Show()
{
	if(!Npc_IsTalking(hero)){return;};
	msg(getConcatStr7(
		PC_Dialog_Word1, PC_Dialog_Word2, PC_Dialog_Word3,
		PC_Dialog_Word4, PC_Dialog_Word5, PC_Dialog_Word6, PC_Dialog_Word7
		),
	PC_DIALOG_INPUTMANUAL_SHOW_X,PC_DIALOG_INPUTMANUAL_SHOW_Y,1);
};
func void PC_Recovering()
{
	Recovering_ByCampfire(hero);
};
func void PC_Idling()
{
	// PrintI(PC_Idle);
	if(Npc_GetBodyState(hero) == BS_STAND)
	{
		if(PC_Idle < PC_IDLETIME)
		{
			PC_Idle +=1;
		}
		else if(PC_Idle == PC_IDLETIME)
		{
			AI_PlayAniBS(hero,"T_STAND_2_SIT",BS_SIT);
		};
	}
	else
	{
		if(Npc_GetBodyState(hero) != BS_SIT)
		{
			if(PC_Idle == PC_IDLETIME)
			{
				AI_PlayAniBS(hero,"T_SIT_2_STAND",BS_STAND);
			};
			if(PC_Idle){PC_Idle = 0;};
		};
	};
};
func void overlay()
{
	// if(overlay_loaded < 5){return;};
	// msgSI("Знание цели ",Npc_GetTalentValue(hero,NPC_TALENT_1H),0,OVERLAY_TargetKnowledge_Y,1);
	if(Npc_GetTarget(hero))
	{
		OVERLAY_TargetKnowledge = PC_Knowledge();
		msgSI("Знание цели ",OVERLAY_TargetKnowledge,0,OVERLAY_TargetKnowledge_Y,1);
		msgSI("Dist to target: ",Npc_GetDistToPlayer(other),0,OVERLAY_TARGET_DISTANCE_Y,1);
	};
	msgSI("Стойкость ",PC_Stamina,0,OVERLAY_Stamina_Y,1);
	msgSI("Сила ",PC_ATR_STR,0,OVERLAY_ATR_STR_Y,1);
	msgSI("Ловкость ",PC_ATR_DEX,0,OVERLAY_ATR_DEX_Y,1);
	msgSI("Интеллект ",PC_ATR_INT,0,OVERLAY_ATR_INT_Y,1);
	msgSI("Удача ",PC_ATR_LUC,0,OVERLAY_ATR_LUC_Y,1);
	msgSI("Скорость движения ",PC_MovementSpeed,0,OVERLAY_PCMOVEMENTSPEED_Y,1);
	if(Npc_IsWounded(hero))
	{
		msg("Кровотечение",OVERLAY_Wounded_X,OVERLAY_Wounded_Y,1);
	};
};


func void b_cycle_hero()
{
	if(Npc_IsDead(hero)){return;};
	if(Npc_IsDead(ScavengerAgressive_1))
	{
		Print("SCAVENGER WAS SPAWNED..");
		Wld_InsertNpc(ScavengerAgressive_1,"OW_SCAVENGER_TREE_SPAWN");
	};
	PC_Recovering();
	PC_Dialog_InputManual_Show();
	PC_Idling();
	PC_HP();
	PC_Mana();
	PC_Stamina_f();
	PC_GetMovementSpeed();
	Npc_Wounded(hero);
	overlay();

	if(PC_IsReceivedBacksideDamage){PC_IsReceivedBacksideDamage = false;};//per second reset	
	if(PC_Forging_Incandescence_IsStopped)
	{
		PC_Forging_Incandescence_IsStopped = false;
		bsfire_hero();
	};
};
func void b_cycle60_hero()
{
	if(Npc_IsDead(hero)){return;};
	// temporalEffects60(hero);
};
