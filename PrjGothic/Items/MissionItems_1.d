
instance MordragsRing(C_Item)
{
	name = NAME_Ring;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING;
	value = 250;
	visual = "ItMi_Ring_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_MordragsRing;
	on_unequip = UnEquip_MordragsRing;
	description = "������ ��������";
	text[2] = NAME_Bonus_Dex;
	count[2] = 5;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_MordragsRing()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,5);
};

func void UnEquip_MordragsRing()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-5);
};


instance SpecialJoint(C_Item)
{
	name = "���������� '��� �����'";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Joint3 * 10;
	visual = "SPECIALJOINT.3ds";
	material = MAT_LEATHER;
	scemeName = "JOINT";
	on_state[0] = UseSpecialJoint;
	description = name;
	text[0] = "���� �������� ��������� �������";
	text[1] = "�������, ��� ������� '��� �����'.";
	text[3] = "�� ����������� ��� ���� ����� �����!";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseSpecialJoint()
{
	AI_StartState(self,ZS_MagicSleep,1,"");
};


instance ItAt_DamLurker_01(C_Item)
{
	name = "����� ����� � �������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Lurkerklaue;
	visual = "ItAt_Lurker_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Lurkerklaue;
};

instance ItWrOMMap(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ItWrOMMap.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseOMmap;
	description = "����� ������ � ������ �����";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseOMmap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_OldMine.tga",1);
	Doc_Show(nDocID);
};


instance AltesSchwertVM(C_Item)
{
	name = "������ ���";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 12;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	damageTotal = 12;
	damagetype = DAM_EDGE;
	visual = "ItMw_1H_Sword_Old_02.3DS";
	description = name;
	range = 80;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance AltesSchwert(C_Item)
{
	name = "������ ���";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = 12;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	damageTotal = 12;
	damagetype = DAM_EDGE;
	visual = "ItMw_1H_Sword_Old_02.3DS";
	range = 80;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance JackalsSword(C_Item)
{
	name = "��� ������";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	owner = Grd_201_Jackal;
	value = 27;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	damageTotal = 3;
	damagetype = DAM_EDGE;
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

instance KdW_Amulett(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET | ITEM_MISSION;
	value = 100;
	visual = "ItMi_Amulet_Foki_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = equip_kdw_amulett;
	on_unequip = unequip_kdw_amulett;
	description = "������ ���������� ����� ����";
	text[2] = NAME_Bonus_ManaMax;
	count[2] = 5;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_kdw_amulett()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 5;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 5;
};

func void unequip_kdw_amulett()
{
	if(self.attribute[ATR_MANA] >= 5)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 5;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 5;
};


instance Cronos_Brief(C_Item)
{
	name = "������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseCronosBrief;
	scemeName = "MAP";
	description = "������ ������� � ����� ����";
};


func void UseCronosBrief()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters2.TGA",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_PrintLine(nDocID,0,"������� ������ ��������,");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLines(nDocID,0,"�������, ��������� ������ ����� ����� ����, ������ ��� �� �������� ��� � ���������. � �������� �������, ��� �� ���������� ���� ���������� ���������� ����������� ������������ ����� ������� ������� � ������ ������� � ���������� ������. ��� ��� �� ���������� � ��������� ����, �� ����� ���������� ������������ ����� ������ ������, �������� � ����� ���������. ������� ��� ��� � ��� ��� ����� �����, ���� ������ ������ �� ����� �������������� ������������� ������ �����.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��� ������ ������� ������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"������, ��������� ����.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,200,50,50,50,1);
	Doc_Show(nDocID);
};


instance Neks_Amulett(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET | ITEM_MISSION;
	value = 50;
	visual = "ItMi_Amulet_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_Schutzamulett_Nek;
	on_unequip = UnEquip_Schutzamulett_Nek;
	description = "������ ������� ���������";
	text[1] = "�� �������� ������� ������ ��� '���'";
	text[2] = NAME_Prot_Edge;
	count[2] = 5;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_Schutzamulett_Nek()
{
	self.protection[PROT_EDGE] += 5;
	self.protection[PROT_BLUNT] += 5;
};

func void UnEquip_Schutzamulett_Nek()
{
	self.protection[PROT_EDGE] -= 5;
	self.protection[PROT_BLUNT] -= 5;
};


instance RecruitJoint(C_Item)
{
	name = "�������� ��� ���������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "ItMiJoint.3ds";
	material = MAT_WOOD;
	scemeName = "JOINT";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance HealthWater(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 1500;
	visual = "ItFo_Potion_Yberion.3ds";
	material = MAT_GLAS;
	on_state[0] = usehealthwater;
	scemeName = "POTIONFAST";
	description = "�������� ����� �������";
	text[1] = NAME_Bonus_ManaMax;
	count[1] = 10;
	text[2] = NAME_Bonus_HpMax;
	count[2] = 10;
	text[5] = NAME_Value;
	count[5] = value;
};


func void usehealthwater()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX,10);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,10);
	Npc_ChangeAttribute(self,ATR_MANA,10);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,10);
	PrintScreen("����. ���������� � ��������� ���� +10",-1,-1,"FONT_OLD_20_WHITE.TGA",_TIME_MESSAGE_RAISEATTRIBUTE);
};


instance TheList(C_Item)
{
	name = "������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	visual = "ITAR_SCROLL_01_EG.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTheList;
	description = name;
	text[0] = "��, ����� ������ �����, ����� � ���� ������";
	text[1] = "��� ����������� ��� ������ ���������.";
};


func void UseTheList()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"20 ������� ����� - �� ��������������!");
	Doc_PrintLine(nDocID,0,"25-30 �����");
	Doc_PrintLine(nDocID,0,"10 ������ ����");
	Doc_PrintLine(nDocID,0,"1 ������");
	Doc_PrintLine(nDocID,0,"1 �����");
	Doc_PrintLine(nDocID,0,"5 ����� + 3 �������");
	Doc_PrintLines(nDocID,0,"� ����� ��������� - ��� �� ������ ���� �� ���� �����!");
	Doc_PrintLine(nDocID,0,"���� ������ ���� ��������� �����������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,200,50,50,50,1);
	Doc_Show(nDocID);
};


instance TheListNC(C_Item)
{
	name = "������ (�����������)";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	visual = "ITAR_SCROLL_01_EG.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseTheListNC;
	description = name;
	text[0] = "��, ����� ������ �����, ����� � ���� ������";
	text[1] = "��� ����������� ��� ������ ���������.";
	text[2] = "(���� ������� � ���� ��� ��������� �������.";
	text[3] = "�������� �������� ��������!)";
};


func void UseTheListNC()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"������");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"20 ������� ����� - �� ��������������!");
	Doc_PrintLine(nDocID,0,"25-30 �����");
	Doc_PrintLine(nDocID,0,"10 ������ ����");
	Doc_PrintLine(nDocID,0,"1 ������");
	Doc_PrintLine(nDocID,0,"1 �����");
	Doc_PrintLine(nDocID,0,"5 ����� + 3 �������");
	Doc_PrintLines(nDocID,0,"� ����� ��������� - ��� �� ������ ���� �� ���� �����!");
	Doc_PrintLine(nDocID,0,"���� ������ ���� ��������� �����������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��, ���� ���-��� ���...");
	Doc_PrintLine(nDocID,0,"30 ������� ����");
	Doc_PrintLine(nDocID,0,"5 ������� ����");
	Doc_PrintLine(nDocID,0,"25 ������� ��������");
	Doc_PrintLine(nDocID,0,"��������� �����");
	Doc_SetMargins(nDocID,-1,200,50,50,50,1);
	Doc_Show(nDocID);
};


instance Lares_Ring(C_Item)
{
	name = NAME_Ring;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING | ITEM_MISSION;
	value = 50;
	visual = "ItMi_Ring_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_Lares_Ring;
	on_unequip = UnEquip_Lares_Ring;
	description = "������ �����";
	text[2] = NAME_Bonus_Str;
	count[2] = 3;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_Lares_Ring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,3);
};

func void UnEquip_Lares_Ring()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-3);
};


instance Heiltrank(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 15;
	visual = "ItFo_Potion_Health_04.3ds";
	material = MAT_GLAS;
	on_state[0] = UseHeiltrank;
	scemeName = "POTIONFAST";
	description = "����� �������� �������";
	text[1] = NAME_Bonus_HP;
	count[1] = 30;
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseHeiltrank()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,30);
};


instance SpecialWater(C_Item)
{
	name = "������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 10;
	visual = "ItFo_Potion_Yberion.3ds";
	material = MAT_GLAS;
	description = "������ ����� �������";
	text[5] = NAME_Value;
	count[5] = value;
};

instance KalomsRecipe(C_Item)
{
	name = "������ ������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 60;
	visual = "HP0RECIPE.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "������ ������";
	text[1] = NAME_Bonus_HP;
	count[1] = 30;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Use_KalomsRecipe;
};


func void Use_KalomsRecipe()
{
	var int nDocID;
	if(ALCHEMYACTIVE == FALSE)
	{
		PrintScreen("���������� �������� ������ �������!",-1,-1,"FONT_OLD_20_WHITE.TGA",2);
	}
	else
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,1);
		Doc_SetPage(nDocID,0,"letters2.TGA",0);
		Doc_SetFont(nDocID,-1,"font_10_book.tga");
		Doc_SetMargins(nDocID,-1,50,50,50,50,1);
		Doc_PrintLines(nDocID,0,"����� �������� ������� ������ ���� �����, ��� ������� �������� ������. ������ ����� �������� �� ������, ���������� � �������� � ������ ����. �������� �� �����. ��� ����� �� ������� ������� �������� ��������� �����, �� ������ � ������������� � �������� ��� ������������ ������: ������� �� ����������� ������������ ��� ������.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"- �����");
		Doc_SetMargins(nDocID,-1,200,50,50,50,1);
		Doc_Show(nDocID);
		if(HP0RECIPE == FALSE)
		{
			PrintScreen("������ ����� ������!",-1,12,"FONT_OLD_20_WHITE.TGA",4);
			B_LogEntry("�������","������ ������ ����� �������� ������� (��������� ���� +30). ���������: ������ ���� (1).");
			HP0RECIPE = TRUE;
		};
	};
};


instance ItWrWorldmap(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 50;
	visual = "ItWrWorldMap.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseWorldmap;
	description = "����� �������";
	text[0] = "� ���������, ����� �� �������";
	text[1] = "������� �� ���-������.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseWorldmap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetLevel(nDocID,"WORLD.ZEN");
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_World.tga",1);
	Doc_Show(nDocID);
};


instance ItWrOCmap(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 40;
	visual = "ItWrOCMap.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseOCmap;
	description = "����� ������� ������";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseOCmap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_OldCamp.tga",1);
	Doc_Show(nDocID);
};


instance ItWrNCmap(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 40;
	visual = "ItWrNCMap.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UseNCmap;
	description = "����� ������ ������";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseNCmap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_NewCamp.tga",1);
	Doc_Show(nDocID);
};


instance ItWrPSImap(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 40;
	visual = "ItWrPsiMap.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UsePSImap;
	description = "����� ��������� ������";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UsePSImap()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_PSICamp.tga",1);
	Doc_Show(nDocID);
};


instance ItWrPinup(C_Item)
{
	name = "��������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 60;
	visual = "ItWrPinup.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = UsePinUp;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void UsePinUp()
{
	var int nDocID;
	nDocID = Doc_CreateMap();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_PinUp.tga",1);
	Doc_Show(nDocID);
};


instance ItWrDieVerurteilten(C_Item)
{
	name = "�������������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 100;
	visual = "ItWrBook.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_Fire_Letter_01(C_Item)
{
	name = "������������ ������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseFireletter;
	scemeName = "MAPSEALED";
	description = "������������ ������ ����� ����";
	text[1] = "�� ���������!";
};


func void UseFireletter()
{
	var int nDocID;
	CreateInvItem(hero,ItWr_Fire_Letter_02);
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters_fire.TGA",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_PrintLine(nDocID,0,"�������������� ������ �������,");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLines(nDocID,0,"���� ���������� ������ ������� ������������ ����� �����. �� �������������� � � ���� �������� �������� ��� � ����� �������. �������� ������������ ����� ������� ���������. ��� �������� ����� �������� � �������, �������� ������ ����������� � ����� �����. ��� ���������� ��������� � ��������� ������ �� ����� �����, ����� �� ��������, ����� ��� �������� �� ����� � ������ �������� ��� ��������. ����� ��� ������ ��������, �� ������� ������������������ � ���, ��� �� ������ �������� ����� ������� ���� ����, ������ �� ������. ���� ������ �������� ��� �������� �������������. �� ����������� �������� ��� ���, ��� ������ ������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"�� ������� ��� �����!");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,200,50,50,50,1);
	Doc_Show(nDocID);
};


instance ItWr_Fire_Letter_02(C_Item)
{
	name = "�������� ������";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWrScroll.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseFireletter2;
	scemeName = "MAP";
	description = "������ ����� ����";
};


func void UseFireletter2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters_fire.TGA",0);
	Doc_SetFont(nDocID,-1,"font_10_book.tga");
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_PrintLine(nDocID,0,"�������������� ������ �������,");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLines(nDocID,0,"���� ���������� ������ ������� ������������ ����� �����. �� �������������� � � ���� �������� �������� ��� � ����� �������. �������� ������������ ����� ������� ���������. ��� �������� ����� �������� � �������, �������� ������ ����������� � ����� �����. ��� ���������� ��������� � ��������� ������ �� ����� �����, ����� �� ��������, ����� ��� �������� �� ����� � ������ �������� ��� ��������. ����� ��� ������ ��������, �� ������� ������������������ � ���, ��� �� ������ �������� ����� ������� ���� ����, ������ �� ������. ���� ������ �������� ��� �������� �������������. �� ����������� �������� ��� ���, ��� ������ ������.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"�� ������� ��� �����!");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,200,50,50,50,1);
	Doc_Show(nDocID);
};


instance ItKe_Gomez_01(C_Item)
{
	name = "���� ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� ������ ������.";
};

instance ItKey_RB_01(C_Item)
{
	name = "���� �����";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� ������ �����.";
};

instance ITKEY_OB_SMITH_01(C_Item)
{
	name = "�������� ����";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� ����� ������ � �������.";
};

instance ItKe_Storage_01(C_Item)
{
	name = "���� �� ������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� ����� ������";
	text[1] = "� �������� ����� �������.";
};

instance ItKe_OM_01(C_Item)
{
	name = "���� �� �������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "����� �������";
	text[1] = "������� �������� ��� ������";
	text[2] = "������ �����";
};

instance ItKe_OM_02(C_Item)
{
	name = "���� ������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� ������ ������";
	text[1] = "� ������ �����.";
};

instance ItKe_OM_03(C_Item)
{
	name = "���� �� ������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� �������";
	text[1] = "�� ������ � ������ �����.";
};

instance ItKe_OM_04(C_Item)
{
	name = "���� �� �������";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "����� ��������";
	text[1] = "������ �������� ������";
};

instance ITKE_WEAPONRY(C_Item)
{
	name = "���� �� ���������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_04.3ds";
	material = MAT_METAL;
	description = name;
	text[0] = "��������� �������";
	text[1] = "� ��������� ����� �������.";
};

instance ItFo_OM_Beer_01(C_Item)
{
	name = "������� ����";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = 30;
	visual = "ItFo_Beer_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseStarkBeer;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_Bonus_HpMax;
	count[1] = 1;
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseStarkBeer()
{
	B_RaiseAttribute(ATR_HITPOINTS_MAX,1);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,1);
	if(Npc_IsPlayer(self))
	{
		if(STARKBEER == 0)
		{
			STARKBEER = 1;
		}
		else if(STARKBEER == 1)
		{
			STARKBEER = 2;
		}
		else if(STARKBEER == 2)
		{
			STARKBEER = 3;
		}
		else if(STARKBEER == 3)
		{
			STARKBEER = 4;
		}
		else if(STARKBEER == 4)
		{
			STARKBEER = 5;
			Mdl_ApplyOverlayMdsTimed(self,"HUMANS_DRUNKEN.MDS",60000);
		};
	};
};


var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;

instance theriddle1(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "��������";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle1;
};


func void Usetheriddle1()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��������");
	Doc_PrintLine(nDocID,0,"-----------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"���, ��� ����� ���������� �� ���� ������ �������� � ��������� ������� ������, ������ ������, ��� ������ �������� ���� ����. ����� ���, �� ����� �������� ��������� ���, ��� ��������� ��� � ���� �����, � �������, ��� �� ����� ������� ������ ���������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ �������������� ���� ������� ���� �������, ������ ��� ������ ���-�� �����.");
	Doc_Show(nDocID);
	if(riddle1 == FALSE)
	{
		Log_CreateTopic(theriddle_log,LOG_MISSION);
		Log_SetTopicStatus(theriddle_log,LOG_RUNNING);
		B_LogEntry(theriddle_log,"� ���� � �������-���� � �������� ����� ���� ����� �������� �����. '��������'! ��� �������� ���������� ����. � ��� ��������, ��� ������������ ����� ������ ���� ���: ...������ �������������� ���� ������� ���� �������, ������ ��� ������ ���-�� �����... ��... � ��� ������ �� �������, ��, ����� ����, ����� ���-������ ����������.");
		Snd_Play("AMBIENTTONE_03_DARK");
		riddle1 = TRUE;
		RIDDLE1INSERT = TRUE;
	};
};


instance theriddle2(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������� 2";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle2;
};


func void Usetheriddle2()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��������");
	Doc_PrintLine(nDocID,0,"-----------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"� ���������� ������� �������� ��������� ����������� ������ ���� �������. �� ���� � ���� � ����� ��� ������ ���, �� � ����� ���� �� ����. ��� �������� ���� �� ������� ����.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"��� ���� ���������, ����� ������ ������, ���� ���������� ������ �������.");
	Doc_Show(nDocID);
	if(riddle2 == FALSE)
	{
		B_GiveXP(300);
		B_LogEntry(theriddle_log,"� ����� ������ �����, �� ������� ����� ����� '��������'. ��� ��������� �� ����� ����������... ��� ���� ���������, ����� ������ ������, ���� ���������� ������ �������...");
		Snd_Play("FoundRiddlersBook");
		riddle2 = TRUE;
		RIDDLE2INSERT = TRUE;
	};
};


instance theriddle3(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������� 3";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle3;
};


func void Usetheriddle3()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��������");
	Doc_PrintLine(nDocID,0,"-----------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"�, ���� ������� ������. �������� ��, ����� ����� �������, ��� �, �����������, ������� ��� ����. ��� ����� ����� �������� ���, ������� �������� ����� ��������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"����� ����� ��������� ����� ����� � �� ������ ������ ����.");
	Doc_Show(nDocID);
	if(riddle3 == FALSE)
	{
		B_GiveXP(500);
		B_LogEntry(theriddle_log,"� ����� ������ �����. �������, � ������� ��������, ��� ����� ������� �� �����... ����� ����� ��������� ����� ����� � �� ������ ������ ����...");
		Snd_Play("FoundRiddlersBook");
		riddle3 = TRUE;
		RIDDLE3INSERT = TRUE;
	};
};


instance theriddle4(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������� 4";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle4;
};


func void Usetheriddle4()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��������");
	Doc_PrintLine(nDocID,0,"-----------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"� ���� �� ���� ��������� �����-������ ������ �������� ��������. ������ ��� ������� � ������ ����. ������ ����� ��� ������ ������� ����������, � ����� ����� � ��� ������.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"������ ���� ���, ��� ��� �����-�� �� �����.");
	Doc_Show(nDocID);
	if(riddle4 == FALSE)
	{
		B_GiveXP(700);
		B_LogEntry(theriddle_log,"����� ���������. � ����� ������ � �������� ���� ������� �������� ��� ������... ������ ���� ���, ��� ��� �����-�� �� �����...");
		Snd_Play("FoundRiddlersBook");
		riddle4 = TRUE;
		RIDDLE4INSERT = TRUE;
	};
};


instance theriddle5(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������� 5";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle5;
};


func void Usetheriddle5()
{
	var int nDocID;
	var C_Npc riddler;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"��������");
	Doc_PrintLine(nDocID,0,"-----------");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"�� � �� ���� �������� �� ���� ���� ����. � ������ ���� ��������� ����, �������� �� ���, � ���������, ������� ������ ����. �������, ��� �������� �� ��������� �������...");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"�� ������� ���� ���, ��� ��� ��������.");
	Doc_Show(nDocID);
	if(riddle5 == FALSE)
	{
		B_GiveXP(850);
		B_LogEntry(theriddle_log,"�������, ��� ��������� �����. ���������, � ��� ��� ��������� �����������... �� ������� ���� ���, ��� ��� ��������.");
		Snd_Play("FoundRiddlersBook");
		Wld_InsertNpc(Bau_940_Riddler,"");
		riddler = Hlp_GetNpc(Bau_940_Riddler);
		Npc_ChangeAttribute(riddler,ATR_HITPOINTS,-riddler.attribute[ATR_HITPOINTS_MAX]);
		riddle5 = TRUE;
	};
};


instance theriddle6(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ITWR_BOOK_RIDDLE.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "�������� 6";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = Usetheriddle6;
};


func void Usetheriddle6()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Riddle_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Riddle_R_Blood.tga",0);
	Doc_SetFont(nDocID,-1,"font_15_book.tga");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,"font_10_book.TGA");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
	if(riddle6 == FALSE)
	{
		B_GiveXP(1000);
		B_LogEntry(theriddle_log,"������������ ����� �����. ��� ����� �����-�� ������. ���-�� ��������� ��� � ����� ������������ ���. ����� �� ������� �� �������� �� � ��� ������� ������ �����. �� �� �������� �� ���� ���� �����, ��� ������ ������ � ���.");
		Log_SetTopicStatus(theriddle_log,LOG_SUCCESS);
		Snd_Play("FoundRiddler");
		Wld_InsertNpc(SkeletonMage,"OW_FOGDUNGEON_36_MOVEMENT");
		Wld_InsertNpc(SkeletonMage,"OW_FOGDUNGEON_37");
		Wld_InsertNpc(Skeleton,"OW_FOGDUNGEON_36_MOVEMENT");
		Wld_InsertNpc(Skeleton,"OW_FOGDUNGEON_36_MOVEMENT2");
		Wld_InsertNpc(SkeletonScout,"OW_FOGDUNGEON_36_MOVEMENT2");
		if(Npc_GetDistToWP(hero,"OW_FOGDUNGEON_36_MOVEMENT2") < 8000)
		{
			Wld_SpawnNpcRange(hero,SkeletonWarrior,2,30);
		};
		riddle6 = TRUE;
	};
};

