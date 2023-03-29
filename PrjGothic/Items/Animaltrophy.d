
const int Value_Z�hne = 10;
const int Value_Krallen = 8;
const int Value_Wolfsfell = 10;
const int Value_Orkhundfell = 20;
const int Value_Panzerplatte = 20;
const int Value_Crawlerzangen = 10;
const int Value_Shadowbeastfell = 400;
const int Value_Lurkerklaue = 10;
const int Value_Lurkerhaut = 20;
const int Value_Sumpfhaihaut = 200;
const int Value_Trollfell = 300;
const int Value_Fl�gel = 8;
const int Value_Stachel = 10;
const int Value_Feuerzunge = 100;
const int Value_Sumpfhaiz�hne = 100;
const int Value_Shadowbeasthorn = 100;
const int Value_Trollhauer = 100;
const int Value_Steinherz = 300;
const int Value_Feuerherz = 300;
const int Value_Eisherz = 300;
const int Value_Eistueck = 100;

instance ItAt_Teeth_01(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Z�hne;
	visual = "ItAt_Teeth_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Z�hne;
};

instance ItAt_Wolf_01(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Wolfsfell;
	visual = "ItAt_Wolf_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Wolfsfell;
};

instance ItAt_Wolf_02(C_Item)
{
	name = "����� ������� ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Orkhundfell;
	visual = "ItAt_Wolf_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Orkhundfell;
};

instance ItAt_Waran_01(C_Item)
{
	name = "���� �������� �������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Feuerzunge;
	visual = "ItAt_Waran_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Feuerzunge;
};

instance ItAt_Claws_01(C_Item)
{
	name = "�����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Krallen;
	visual = "ItAt_Claws_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Krallen;
};

instance ItAt_Crawler_02(C_Item)
{
	name = "��������� �������� �������-�����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Panzerplatte;
	visual = "ItAt_Crawler_02.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Panzerplatte;
};

instance ItAt_Crawler_01(C_Item)
{
	name = "������� �������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Crawlerzangen;
	visual = "ItAt_Crawler_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Crawlerzangen;
};

instance ItAt_Shadow_01(C_Item)
{
	name = "����� ���������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Shadowbeastfell;
	visual = "ItAt_Shadowbeast_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Shadowbeastfell;
};

instance ItAt_Shadow_02(C_Item)
{
	name = "��� ���������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Shadowbeasthorn;
	visual = "ItAt_Shadowbeast_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Shadowbeasthorn;
};

instance ItAt_Lurker_01(C_Item)
{
	name = "������ �����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Lurkerklaue;
	visual = "ItAt_Lurker_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Lurkerklaue;
};

instance ItAt_Lurker_02(C_Item)
{
	name = "����� �����";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Lurkerhaut;
	visual = "ItAt_Lurker_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Lurkerhaut;
};

instance ItAt_Troll_02(C_Item)
{
	name = "���� ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Trollhauer;
	visual = "ItAt_Troll_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Trollhauer;
};

instance ItAt_Troll_01(C_Item)
{
	name = "����� ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Trollfell;
	visual = "ItAt_Troll_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Trollfell;
};

instance ItAt_Swampshark_01(C_Item)
{
	name = "����� ����������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sumpfhaihaut;
	visual = "ItAt_Swampshark_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Sumpfhaihaut;
};

instance ItAt_Swampshark_02(C_Item)
{
	name = "���� ����������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sumpfhaiz�hne;
	visual = "ItAt_Swampshark_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Sumpfhaiz�hne;
};

instance ItAt_Bloodfly_01(C_Item)
{
	name = "������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Fl�gel;
	visual = "ItAt_Bloodfly_01.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Fl�gel;
};

instance ItAt_Bloodfly_02(C_Item)
{
	name = "���� ������";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Stachel;
	visual = "ItAt_Bloodfly_02.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Stachel;
};

instance ItAt_StoneGolem_01(C_Item)
{
	name = "������ ��������� ������";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_WINDFIST;
	value = Value_Steinherz;
	visual = "ItAt_StoneGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "��� ������ ������ �� ����";
	text[1] = "������� ��������� ������.";
	text[2] = "��� �������� ����� ����������� ����������";
	text[3] = "�� ������� ����������.";
	text[5] = NAME_Value;
	count[5] = Value_Steinherz;
};

instance ItAt_FireGolem_01(C_Item)
{
	name = "������ ��������� ������";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_FIREBALL;
	value = Value_Feuerherz;
	visual = "ItAt_FireGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "��� ������ ������ �� ����";
	text[1] = "������� ��������� ������.";
	text[2] = "��� �������� ����� �������";
	text[3] = "���������� ������.";
	text[5] = NAME_Value;
	count[5] = Value_Feuerherz;
};

instance ItAt_IceGolem_01(C_Item)
{
	name = "������ �������� ������";
	mainflag = ITEM_KAT_RUNE;
	flags = ITEM_MISSION;
	spell = SPL_ICECUBE;
	value = Value_Eisherz;
	visual = "ItAt_IceGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "��� ������ ������ �� ����";
	text[1] = "������� �������� ������.";
	text[2] = "��� �������� ����� ����������";
	text[3] = "���������� � ������� �����.";
	text[5] = NAME_Value;
	count[5] = Value_Eisherz;
};

instance ItAt_IceGolem_02(C_Item)
{
	name = "������� �������� ������";
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	spell = SPL_THUNDERBOLT;
	value = Value_Eistueck;
	visual = "ItAt_IceGolem_01.3DS";
	material = MAT_STONE;
	description = name;
	text[0] = "��� ������� �� ����";
	text[1] = "������� �������� ������.";
	text[5] = NAME_Value;
	count[5] = Value_Eistueck;
};

