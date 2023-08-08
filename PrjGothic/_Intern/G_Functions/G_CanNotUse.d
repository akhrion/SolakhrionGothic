
func void G_CanNotUse(var int bIsPlayer,var int nAttribute,var int nValue)
{
	if(!bIsPlayer)
	{
		return;
	};


	var int nAttributeValue;
	var string strAttribute;
	var int nDifference;
	var string strDifference;
	var string strMessage;
	if(nAttribute == ATR_HITPOINTS)
	{
		strAttribute = _STR_ATTRIBUTE_HITPOINTS;
		nAttributeValue = self.attribute[ATR_HITPOINTS];
	}
	else if(nAttribute == ATR_HITPOINTS_MAX)
	{
		strAttribute = _STR_ATTRIBUTE_HITPOINTS_MAX;
		nAttributeValue = self.attribute[ATR_HITPOINTS_MAX];
	}
	else if(nAttribute == ATR_MANA)
	{
		strAttribute = _STR_ATTRIBUTE_MANA;
		nAttributeValue = self.attribute[ATR_MANA];
	}
	else if(nAttribute == ATR_MANA_MAX)
	{
		strAttribute = _STR_ATTRIBUTE_MANA_MAX;
		nAttributeValue = self.attribute[ATR_MANA_MAX];
	}
	else if(nAttribute == ATR_STRENGTH)
	{
		strAttribute = _STR_ATTRIBUTE_STRENGTH;
		nAttributeValue = self.attribute[ATR_STRENGTH];
		if(
			Item_GetWeaponHand(item) == PC_WeaponHandOne
		&&	self.attribute[ATR_STRENGTH] >= item.cond_value[2] / 2 
		)
		{
			Print(MSG_ICANTAKEITINBOTHHANDS);
			PC_WeaponHand = PC_WeaponHandTwo;
			ChangeWeaponHand2H_Item_ChangeCondition_STR(item);
			PC_IsAllowedToChange_EquipedWeaponHand_Melee = TRUE;
			PC_WeaponHand_Handler(item);
		};
		
	}
	else if(nAttribute == ATR_DEXTERITY)
	{
		strAttribute = _STR_ATTRIBUTE_DEXTERITY;
		nAttributeValue = self.attribute[ATR_DEXTERITY];
	}
	else
	{
		strAttribute = _STR_INVALID;
		nAttributeValue = 0;
	};
	nDifference = nValue - nAttributeValue;
	strDifference = IntToString(nDifference);

	strMessage = _STR_CANNOTUSE_PRE_PLAYER;

	strMessage = ConcatStrings(strMessage,strDifference);
	strMessage = ConcatStrings(strMessage," ");
	strMessage = ConcatStrings(strMessage,strAttribute);
	strMessage = ConcatStrings(strMessage,"для использования.");

	G_PrintScreen(strMessage);
};

