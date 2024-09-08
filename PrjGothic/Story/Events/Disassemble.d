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
	Info_AddChoice(PC_Menu,"ЗАКРЫТЬ.",PC_Menu_EXIT_Info);
    if(
		// функция возвращающая ИСТИНА если персонаж имеет разбираемый предмет
		hero.attribute[ATR_STRENGTH] > 20
	)
    {
        Info_AddChoice(PC_Menu,"Разобрать предмет",Disassemble_NailMace);
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
	AI_DropItem(self,ItFoMuttonRaw);
	PC_MenuClose(MOBSI_PC_MenuEND);
};





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
