
instance ChangeWeaponHand1H(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = ChangeWeaponHand1H__Condition;
	information = ChangeWeaponHand1H__Info;
	important = 0;
	permanent = 1;
	description = "����� ������ � ���� ����";
};
func int ChangeWeaponHand1H__Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_ChangeWeaponHand))
	{
		return TRUE;
	};
};
func void ChangeWeaponHand1H__Info()
{
	PC_EquipedWeapon_Melee = Npc_GetEquippedMeleeWeapon(self);
	if(
		Item_GetWeaponHand(PC_EquipedWeapon_Melee) == PC_WeaponHandTwo
	)
	{
		if(self.attribute[ATR_STRENGTH] >= (PC_EquipedWeapon_Melee.cond_value[2] * 2))
		{
			Print(MSG_ONEHANDEDGRIP);		
			ChangeWeaponHand1H_Item_ChangeCondition_STR(PC_EquipedWeapon_Melee);
			PC_IsAllowedToChange_EquipedWeaponHand_Melee = TRUE;
			AI_UnequipWeapons(self);
			PC_WeaponHand = PC_WeaponHandOne;
		}
		else
		{
			Print(MSG_IMNOTENOUGHSTRENGTH);
		};
	};
    AI_StopProcessInfos(self);
    self.aivar[AIV_INVINCIBLE] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_ChangeWeaponHandEnd;
};





instance ChangeWeaponHand2H(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = ChangeWeaponHand2H__Condition;
	information = ChangeWeaponHand2H__Info;
	important = 0;
	permanent = 1;
	description = "����� ������ � ��� ����";
};
func int ChangeWeaponHand2H__Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_ChangeWeaponHand))
	{
		return TRUE;
	};
};
func void ChangeWeaponHand2H__Info()
{
	PC_EquipedWeapon_Melee = Npc_GetEquippedMeleeWeapon(self);
	if(
		Item_GetWeaponHand(PC_EquipedWeapon_Melee) == PC_WeaponHandOne
	)
	{
		Print(MSG_TWOHANDEDGRIP);
		ChangeWeaponHand2H_Item_ChangeCondition_STR(PC_EquipedWeapon_Melee);
		PC_IsAllowedToChange_EquipedWeaponHand_Melee = TRUE;
		AI_UnequipWeapons(self);
        PC_WeaponHand = PC_WeaponHandTwo;
	};
    AI_StopProcessInfos(self);
    self.aivar[AIV_INVINCIBLE] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_ChangeWeaponHandEnd;
};
