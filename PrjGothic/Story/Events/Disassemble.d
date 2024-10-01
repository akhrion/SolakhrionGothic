instance PC_Menu_EXIT(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_Menu_EXIT_Condition;
	information = PC_Menu_EXIT_Info;
	important = 0;
	permanent = 1;
    description = STR_INFO_MENU_EXIT;
};
func int PC_Menu_EXIT_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_PC_Menu))
	{
		return TRUE;
	};
};
func void PC_Menu_EXIT_Info()
{
    PC_MenuClose(MOBSI_PC_MenuEND);
};


instance PC_Menu(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_Menu_Condition;
	information = PC_Menu_Info;
	important = 1;
	permanent = 1;
};
func int PC_Menu_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_PC_Menu))
	{
		return TRUE;
	};
};
func void PC_Menu_Info()
{
	Info_ClearChoices(PC_Menu);
	Info_AddChoice(PC_Menu,"ЗАКРЫТЬ.",PC_Menu_EXIT_Info);
    if(
		// функция возвращающая ИСТИНА если персонаж имеет разбираемый предмет
		hero.attribute[ATR_STRENGTH] > 20
	)
    {
        Info_AddChoice(PC_Menu,"Разобрать предмет",Disassemble_NailMace);
    };
	if(
		//я достаточно ловок, что-бы попробовать что-то собрать своими руками
		Npc_GetDex(self) >= 30
	)
	{
		Info_AddChoice(PC_Menu,"Собрать предмет",Assemble_Item);
	};
	Info_AddChoice(PC_Menu,"Бросить приманку",DropLure);
};



func void DropLure()
{
	if(Npc_HasItems(self,ItFoMuttonRaw))
	{
		Info_AddChoice(PC_Menu,"Бросить сырое мясо",DropLure_ItFoMuttonRaw);
	};
};

func void DropLure_ItFoMuttonRaw()
{
	CreateInvItem(self,ItBlankMuttonRaw);
	AI_DropItem(self,ItBlankMuttonRaw);
	Npc_RemoveInvItem(self,ItFoMuttonRaw);
	PC_MenuClose(MOBSI_PC_MenuEND);
};





//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
func void Assemble_Item()
{
	var int Knowledge_ItemAssembly;
	Info_ClearChoices(PC_Menu);
	Info_AddChoice(PC_Menu,"ЗАКРЫТЬ.",PC_Menu_EXIT_Info);
	if(
		Npc_HasItems(self,ItMiArrowShaft) && Npc_HasItems(self,ItMiArrowHead)
	)
	{
		Knowledge_ItemAssembly = true;
		if(Npc_HasItems(self,ItMiArrowShaft) > 1 && Npc_HasItems(self,ItMiArrowHead) > 1)
		{
			Info_AddChoice(PC_Menu,"Собрать все стрелы",Assemble_Item_Arrows);
		};
		Info_AddChoice(PC_Menu,"Собрать стрелу",Assemble_Item_Arrow);
	};
	if(!Knowledge_ItemAssembly)
	{
		Show_TradeMsgT("Знать-бы еще что я такого могу собрать..",5);
		PC_MenuClose(MOBSI_PC_MenuEND);
	};
};

var int Assemble_Item_Arrows_ShaftsRemaining;
func int private_Assemble_Item_Arrows(
	var int arrowsLeft,
	var int arrowsCreated,
	var int dexterity
)
{
	if(
		!arrowsLeft
	||	!Assemble_Item_Arrows_ShaftsRemaining
	)
	{
		return arrowsCreated;
	};
	if(Hlp_Random(100) < dexterity)
	{
		arrowsCreated +=1;
		arrowsLeft -=1;
		G_Training(CRAFTING_ARROW);
	}
	else
	{
		//вероятность получить занозу
		if(Hlp_Random(Npc_GetDex(self)))
		{
			Npc_DecreaseHP(self,1);
		};
	};
	Assemble_Item_Arrows_ShaftsRemaining -=1;
	return private_Assemble_Item_Arrows(
		arrowsLeft,
		arrowsCreated,
		dexterity
	);
};
func void Assemble_Item_Arrows()
{
	// Show_TradeMsgT("Ничего не произошло, кажется эта функция еще не реализована. Ждем..",7);
	//settime в зависимости от количества произведённых стрел
	var int arrowHeads;
	var int arrowShafts;
	arrowHeads = Npc_HasItems(self,ItMiArrowHead);
	arrowShafts = Npc_HasItems(self,ItMiArrowShaft);
	Assemble_Item_Arrows_ShaftsRemaining = arrowShafts;

	var int arrowsCanBeProduced;
	arrowsCanBeProduced = tern(arrowHeads < arrowShafts, arrowHeads, arrowShafts);

	var int arrowsCreated;
	arrowsCreated = private_Assemble_Item_Arrows(arrowsCanBeProduced,0,Npc_GetDex(self));

	var int arrowShaftsUsed;
	arrowShaftsUsed = arrowShafts - Assemble_Item_Arrows_ShaftsRemaining;

	C_ALotOfTimeWasting(arrowShaftsUsed);

	Npc_RemoveInvItems(self,ItMiArrowShaft, arrowShaftsUsed);
	Npc_RemoveInvItems(self,ItMiArrowHead, arrowsCreated);
	CreateInvItems(self,ItAmArrow,arrowsCreated);



////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
	var int lastDigit;
	lastDigit = arrowsCreated%10;
	if(
		lastDigit == 9
	||	lastDigit == 8
	||	lastDigit == 7
	||	lastDigit == 6
	||	lastDigit == 5
	||	lastDigit == 0
	)
	{
		Show_TradeMsg_SIS("+",arrowsCreated," Стрел");
	}
	else if(
		lastDigit == 4
	||	lastDigit == 3
	||	lastDigit == 2
	)
	{
		Show_TradeMsg_SIS("+",arrowsCreated," Стрелы");
	}
	else
	{
		Show_TradeMsg_SIS("+",arrowsCreated," Стрела");
	};
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
	lastDigit = Assemble_Item_Arrows_ShaftsRemaining%10;
	if(
		lastDigit == 9
	||	lastDigit == 8
	||	lastDigit == 7
	||	lastDigit == 6
	||	lastDigit == 5
	||	lastDigit == 0
	||	(lastDigit > 10 && lastDigit < 20)
	)
	{
		Show_TradeMsg_SIS_Row("Израсходовано ",arrowShaftsUsed," Древок Стрел",20);
	}
	else if(
		lastDigit == 4
	||	lastDigit == 3
	||	lastDigit == 2
	)
	{
		Show_TradeMsg_SIS_Row("Израсходовано ",arrowShaftsUsed," Древка Стрелы",20);
	}
	else
	{
		Show_TradeMsg_SIS_Row("Израсходовано ",arrowShaftsUsed," Древко Стрелы",20);
	};
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
	PC_MenuClose(MOBSI_PC_MenuEND);
};

func void Assemble_Item_Arrow()
{
	var int ArrowShaftBrokeCounter;			//переменная для ачивки, если игрок сломал много стрел к ряду
	if(Hlp_Random(100) < Npc_GetDex(self))
	{
		Npc_RemoveInvItem(self,ItMiArrowShaft);
		Npc_RemoveInvItem(self,ItMiArrowHead);
		CreateInvItem(self,ItAmArrow);
		ArrowShaftBrokeCounter =0;
		Show_TradeMsg("+1 Стрела");
	}
	else
	{
		if(ArrowShaftBrokeCounter == 10)
		{
			Log_CreateTopic(ACHIEVEMENTS,LOG_NOTE);
			Log_AddEntry(ACHIEVEMENTS,"Не получилось, но я сломал ещё одно древко - это тоже достижение или..");
		}
		else
		{
			ArrowShaftBrokeCounter +=1;
		};
		Show_TradeMsgT("Не получилось и я сломал древко..",5);
		Npc_RemoveInvItem(self,ItMiArrowShaft);
	};
	Assemble_Item();
};
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


func void Disassemble_NailMace()
{
    Npc_RemoveInvItem(hero,ItMw_1H_Nailmace_01);
    CreateInvItem(hero,ItMw_1H_Club_01);
    if(
        Npc_HasItems(hero,ItMw_1H_Sledgehammer_01)
    ||  Npc_HasItems(hero,ItMiHammer)
    )
    {
        CreateInvItems(hero,ItMi_Nail,3);
    }
    else
    {
        CreateInvItems(hero,ItMi_Nail_Bent,3);
    };
    PC_MenuClose(MOBSI_PC_MenuEND);
};

instance Disassemble(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = Disassemble_Condition;
	information = Disassemble_Info;
	important = 0;
	permanent = 1;
	description = "Разобрать предмет на компоненты";
};
func int Disassemble_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_Disassemble))
	{
		return TRUE;
	};
};
func void Disassemble_Info()
{
	PC_EquipedWeapon_Melee = Npc_GetEquippedMeleeWeapon(self);
	if(
		Item_GetWeaponHand(PC_EquipedWeapon_Melee) == PC_WeaponHandOne
	)
	{
		Print(MSG_TWOHANDEDGRIP);
		ChangeWeaponHand2H_Item_ChangeCondition_STR(PC_EquipedWeapon_Melee);
		PC_EquipedWeapon_Melee.range -= 20;
		PC_IsAllowedToChange_EquipedWeaponHand_Melee = TRUE;
		AI_UnequipWeapons(self);
        PC_WeaponHand = PC_WeaponHandTwo;
	};
    PC_MenuClose(MOBSI_DisassembleEND);
    // AI_StopProcessInfos(self);
    // self.aivar[AIV_INVINCIBLE] = FALSE;
    // PLAYER_MOBSI_PRODUCTION = MOBSI_ChangeWeaponHandEnd;
};
