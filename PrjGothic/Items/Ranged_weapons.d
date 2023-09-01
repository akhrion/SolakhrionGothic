
const int AKH_BOWMANLINE_MULTIPLIER = 2;

instance ItRw_Bow_Small_01(C_Item)
{
	name = "Короткий лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 50;
	damageTotal = 15 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 10;
	visual = "ItRw_Bow_Small_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Small_02(C_Item)
{
	name = "Лук всадника";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 65;
	damageTotal = 20 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 12;
	visual = "ItRw_Bow_Small_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Small_03(C_Item)
{
	name = "Полевой лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 85;
	damageTotal = 28 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 16;
	visual = "ItRw_Bow_Small_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Small_04(C_Item)
{
	name = "Охотничий лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 100;
	damageTotal = 30 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 18;
	visual = "ItRw_Bow_Small_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Small_05(C_Item)
{
	name = "Костяной лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 120;
	damageTotal = 35 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 20;
	visual = "ItRw_Bow_Small_05.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_01(C_Item)
{
	name = "Длинный лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 140;
	damageTotal = 40 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 22;
	visual = "ItRw_Bow_Long_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_02(C_Item)
{
	name = "Осиновый лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 150;
	damageTotal = 44 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 24;
	visual = "ItRw_Bow_Long_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_03(C_Item)
{
	name = "Ивовый лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 170;
	damageTotal = 46 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 26;
	visual = "ItRw_Bow_Long_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_04(C_Item)
{
	name = "Дубовый лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 48 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 28;
	visual = "ItRw_Bow_Long_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_05(C_Item)
{
	name = "Убийца волков";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 220;
	damageTotal = 50 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 30;
	visual = "ItRw_Bow_Long_05.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_06(C_Item)
{
	name = "Пронзающий ветер";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 240;
	damageTotal = 55 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 32;
	visual = "ItRw_Bow_Long_06.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_07(C_Item)
{
	name = "Армейский лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 250;
	damageTotal = 60 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 34;
	visual = "ItRw_Bow_Long_07.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_08(C_Item)
{
	name = "Роговой лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 270;
	damageTotal = 68 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 36;
	visual = "ItRw_Bow_Long_08.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_Long_09(C_Item)
{
	name = "Нимрод";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 290;
	damageTotal = 72 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 37;
	visual = "ItRw_Bow_Long_09.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_War_01(C_Item)
{
	name = "Военный лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 310;
	damageTotal = 74 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 38;
	visual = "ItRw_Bow_War_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_War_02(C_Item)
{
	name = "Убийца орков";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 320;
	damageTotal = 79 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 40;
	visual = "ItRw_Bow_War_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_War_03(C_Item)
{
	name = "Штурмовой лук";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 340;
	damageTotal = 82 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 41;
	visual = "ItRw_Bow_War_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_War_04(C_Item)
{
	name = "Лук демона";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 360;
	damageTotal = 85 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 42;
	visual = "ItRw_Bow_War_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bow_War_05(C_Item)
{
	name = "Несущий смерть";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 380;
	damageTotal = 88 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 45;
	visual = "ItRw_Bow_War_05.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Crossbow_01(C_Item)
{
	name = "Легкий арбалет";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 180;
	damageTotal = 45 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmBolt;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 25;
	visual = "ItRwCrossbow1.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Crossbow_02(C_Item)
{
	name = "Охотничий арбалет";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 370;
	damageTotal = 85 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmBolt;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 42;
	visual = "ItRwCrossbow2.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Crossbow_03(C_Item)
{
	name = "Тяжелый арбалет";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 400;
	damageTotal = 90 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmBolt;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 50;
	visual = "ItRwCrossbow3.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Crossbow_04(C_Item)
{
	name = "Военный арбалет";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 430;
	damageTotal = 100 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_POINT;
	munition = ItAmBolt;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 60;
	visual = "ItRwCrossbow4.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_URIZELBOW(C_Item)
{
	name = "Уризель";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 43000;
	damageTotal = 100 * AKH_BOWMANLINE_MULTIPLIER;
	damagetype = DAM_MAGIC;
	munition = itamarrow_magic;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 60;
	visual = "ItRwCrossbow4.mms";
	on_equip = useurizelbow;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAmArrow(C_Item)
{
	name = "Стрела";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI;
	value = 2;
	visual = "ItAm_Arrow_01.3ds";
	material = MAT_WOOD;
	scemeName = "USEFAKEITEM";
	on_state[0] = usearrow;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAMARROW_FIRE(C_Item)
{
	name = "Огненная стрела";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI;
	value = 20;
	visual = "ItAm_Arrow_01.3ds";
	material = MAT_WOOD;
	scemeName = "USEFAKEITEM";
	on_state[0] = usearrow_fire;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAMARROW_MAGIC(C_Item)
{
	name = "Магическая стрела";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI;
	visual = "ItAm_Arrow_01.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItAmBolt(C_Item)
{
	name = "Арбалетный болт";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_CROSSBOW | ITEM_MULTI;
	value = 2;
	visual = "ItAm_Bolt_01.3ds";
	material = MAT_WOOD;
	scemeName = "USEFAKEITEM";
	on_state[0] = usebolt;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAMBOLT_FIRE(C_Item)
{
	name = "Огненный арбалетный болт";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_CROSSBOW | ITEM_MULTI;
	value = 20;
	visual = "ItAm_Bolt_01.3ds";
	material = MAT_WOOD;
	scemeName = "USEFAKEITEM";
	on_state[0] = usebolt_fire;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void usearrow()
{
	CreateInvItem(self,ItAmArrow);
	if(Npc_HasEquippedRangedWeapon(self))
	{
		item = Npc_GetEquippedRangedWeapon(self);
	}
	else if(Npc_HasReadiedRangedWeapon(self))
	{
		item = Npc_GetReadiedWeapon(self);
	}
	else
	{
		Print(NAME_EQUIP_NEEDARANGEDWEAPON);
		return;
	};

	if((item.flags & ITEM_BOW)==ITEM_BOW)
	{
		Print(NAME_EQUIPPED_ARROW);
		item.munition = ItAmArrow;
		item.damagetype = DAM_POINT;
	}
	else
	{
		Print(NAME_EQUIP_NEEDABOW);
	};
};

func void usearrow_fire()
{
	CreateInvItem(self,itamarrow_fire);
	if(Npc_HasEquippedRangedWeapon(self))
	{
		item = Npc_GetEquippedRangedWeapon(self);
	}
	else if(Npc_HasReadiedRangedWeapon(self))
	{
		item = Npc_GetReadiedWeapon(self);
	}
	else
	{
		Print(NAME_EQUIP_NEEDARANGEDWEAPON);
		return;
	};

	if((item.flags & ITEM_BOW)==ITEM_BOW)
	{
		Print(NAME_EQUIPPED_ARROWFIRE);
		item.munition = itamarrow_fire;
		item.damagetype = DAM_FIRE;
	}
	else
	{
		Print(NAME_EQUIP_NEEDABOW);
	};
};

func void usebolt()
{
	CreateInvItem(self,ItAmBolt);
	if(Npc_HasEquippedRangedWeapon(self))
	{
		item = Npc_GetEquippedRangedWeapon(self);
	}
	else if(Npc_HasReadiedRangedWeapon(self))
	{
		item = Npc_GetReadiedWeapon(self);
	}
	else
	{
		Print(NAME_EQUIP_NEEDARANGEDWEAPON);
		return;
	};

	if((item.flags & ITEM_CROSSBOW)==ITEM_CROSSBOW)
	{
		Print(NAME_EQUIPPED_BOLT);
		item.munition = ItAmBolt;
		item.damagetype = DAM_POINT;
	}
	else
	{
		Print(NAME_EQUIP_NEEDACROSSBOW);
	};
};

func void usebolt_fire()
{
	CreateInvItem(self,itambolt_fire);
	if(Npc_HasEquippedRangedWeapon(self))
	{
		item = Npc_GetEquippedRangedWeapon(self);
	}
	else if(Npc_HasReadiedRangedWeapon(self))
	{
		item = Npc_GetReadiedWeapon(self);
	}
	else
	{
		Print(NAME_EQUIP_NEEDARANGEDWEAPON);
		return;
	};

	if((item.flags & ITEM_CROSSBOW)==ITEM_CROSSBOW)
	{
		Print(NAME_EQUIPPED_BOLTFIRE);
		item.munition = itambolt_fire;
		item.damagetype = DAM_FIRE;
	}
	else
	{
		Print(NAME_EQUIP_NEEDACROSSBOW);
	};
};

func void useurizelbow()
{
	CreateInvItems(self,itamarrow_magic,100 - Npc_HasItems(self,itamarrow_magic));
};

