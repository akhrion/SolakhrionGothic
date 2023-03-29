
instance Thorus_Schwert(C_Item)
{
	name = "��� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 90;
	damagetype = DAM_EDGE;
	range = 150;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 90;
	owner = GRD_200_Thorus;
	visual = "ItMw_2H_Sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Innos_Zorn(C_Item)
{
	name = "���� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 1100;
	damageTotal = 110;
	damagetype = DAM_EDGE;
	range = 160;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 110;
	owner = EBR_100_Gomez;
	visual = "ItMw_2H_Sword_Heavy_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Scars_Schwert(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 85;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 75;
	owner = EBR_101_Scar;
	visual = "ItMw_Beta_Sword_Big.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Artos_Schwert(C_Item)
{
	name = "��� ����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 65;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 65;
	owner = EBR_102_Arto;
	visual = "ItMw_1H_Sword_Long_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Rabenrecht(C_Item)
{
	name = "��� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 70;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 70;
	owner = EBR_105_Raven;
	visual = "ItMw_1H_Sword_Broad_04.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Prankenhieb(C_Item)
{
	name = "������ ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 55;
	owner = EBR_106_Bartholo;
	visual = "ItMw_1H_Sword_Long_05.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Diegos_Bogen(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 70;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 70;
	owner = PC_Thief;
	visual = "ItRwLongbow.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Whistlers_Schwert(C_Item)
{
	name = "��� ��������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 110;
	damageTotal = 17;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_Beta_Sword_Runes.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Stab_des_Lichts(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 65;
	damagetype = DAM_BLUNT;
	range = 160;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 60;
	owner = GUR_1200_YBerion;
	visual = "ItMw_2H_Staff_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Kaloms_Schwert(C_Item)
{
	name = "��� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 70;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 70;
	owner = GUR_1201_CorKalom;
	visual = "ItMw_1H_Sword_05.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Streitschlichter(C_Item)
{
	name = "����� �������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 60;
	damagetype = DAM_BLUNT;
	range = 90;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 60;
	owner = PC_Psionic;
	visual = "ItMw_1H_Mace_War_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Roter_Wind(C_Item)
{
	name = "������� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 105;
	damagetype = DAM_EDGE;
	range = 140;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 80;
	owner = GUR_1202_CorAngar;
	visual = "ItMw_2H_Sword_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Namibs_Keule(C_Item)
{
	name = "������ ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_WOOD;
	value = 50;
	damageTotal = 55;
	damagetype = DAM_BLUNT;
	range = 90;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 55;
	owner = GUR_1204_BaalNamib;
	visual = "ItMw_1H_Mace_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Oruns_Keule(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_WOOD;
	value = 50;
	damageTotal = 60;
	damagetype = DAM_BLUNT;
	range = 90;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 60;
	owner = GUR_1209_BaalOrun;
	visual = "ItMw_1H_Mace_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Fortunos_Keule(C_Item)
{
	name = "���� �������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = 20;
	damageTotal = 20;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	owner = NOV_1357_Fortuno;
	visual = "ItMw_1H_Sickle_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Lees_Axt(C_Item)
{
	name = "����� ��";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 105;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 95;
	owner = Sld_700_Lee;
	visual = "ItMw_2H_Axe_Heavy_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Oriks_Axt(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 95;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 90;
	owner = SLD_701_Orik;
	visual = "ItMw_2H_Axe_Heavy_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Torlofs_Axt(C_Item)
{
	name = "����� �������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 99;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 85;
	owner = SLD_737_Torlof;
	visual = "ItMw_Beta_Axe_New.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Cords_Spalter(C_Item)
{
	name = "������������� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 200;
	damageTotal = 60;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 60;
	owner = Sld_709_Cord;
	visual = "ItMw_Beta_Sword_Runes.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Gorns_Rache(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 100;
	damagetype = DAM_EDGE;
	range = 130;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 80;
	owner = PC_Fighter;
	visual = "ItMw_2H_Axe_Heavy_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Lares_Axt(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = 200;
	damageTotal = 65;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 65;
	owner = Org_801_Lares;
	visual = "ItMw_1H_Axe_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Wolfs_Bogen(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 200;
	damageTotal = 35;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 35;
	owner = ORG_855_Wolf;
	visual = "ItRwLongbow.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance Silas_Axt(C_Item)
{
	name = "����� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = 200;
	damageTotal = 57;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 57;
	owner = ORG_841_Silas;
	visual = "ItMw_1H_Axe_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance Heerscherstab(C_Item)
{
	name = "����� �������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 150;
	damageTotal = 36;
	damagetype = DAM_EDGE;
	range = 150;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 36;
	owner = Bau_900_Ricelord;
	visual = "ItMw_2H_Staff_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITRW_SCORPIO_CROSSBOW(C_Item)
{
	name = "������� �������";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = 100;
	damageTotal = 110;
	damagetype = DAM_POINT;
	munition = ItAmBolt;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 55;
	owner = GRD_205_Scorpio;
	visual = "ItRwCrossbow4.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_GORHANIS(C_Item)
{
	name = "����� ��� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 50;
	damageTotal = 65;
	damagetype = DAM_BLUNT;
	range = 150;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 65;
	owner = Tpl_1422_GorHanis;
	visual = "ItMw_2H_Staff_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_KIRGO(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_WOOD;
	value = 30;
	damageTotal = 30;
	damagetype = DAM_BLUNT;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	owner = GRD_251_Kirgo;
	visual = "ItMw_1H_Club_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_KHARIM(C_Item)
{
	name = "������ ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_WOOD;
	value = 40;
	damageTotal = 25;
	damagetype = DAM_BLUNT;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 25;
	owner = Sld_729_Kharim;
	visual = "ItMw_1H_Mace_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_CAVALORN(C_Item)
{
	name = "��� ���������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 90;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	owner = STT_336_Cavalorn;
	visual = "ItMw_1H_Sword_Short_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_R_CAVALORN(C_Item)
{
	name = "��� ���������";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 100;
	damageTotal = 45;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 15;
	owner = STT_336_Cavalorn;
	visual = "ItRw_Bow_Small_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_DARRION(C_Item)
{
	name = "����� ��������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 85;
	damageTotal = 55;
	damagetype = DAM_BLUNT;
	range = 160;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	owner = NOV_1312_Darrion;
	visual = "ItMw_2H_Staff_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_FISK(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 100;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	owner = Stt_311_Fisk;
	visual = "ItMw_1H_Sword_Short_05.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_SCORPIO(C_Item)
{
	name = "��� �������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 100;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 100;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	owner = GRD_205_Scorpio;
	visual = "ItMw_1H_Sword_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_SHARKY(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_AXE;
	material = MAT_WOOD;
	value = 100;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 150;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 30;
	owner = ORG_843_Sharky;
	visual = "ItMw_Beta_Axe_Old.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_M_SKIP(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = 100;
	damageTotal = 55;
	damagetype = DAM_EDGE;
	range = 120;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 35;
	owner = Grd_211_Skip;
	visual = "ItMw_1H_Sword_Long_04.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance TR_R_WOLF(C_Item)
{
	name = "��� �����";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 100;
	damageTotal = 101;
	damagetype = DAM_POINT;
	munition = ItAmArrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 90;
	owner = ORG_855_Wolf;
	visual = "ItRw_Bow_War_05.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_Value;
	count[5] = value;
};

