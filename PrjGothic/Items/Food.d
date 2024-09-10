
instance ItAt_Meatbug_01(C_Item)
{
	name = "Мясо жука";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Bugmeat;
	visual = "ItAt_Meatbug_01.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = UseBugmeat;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Bugmeat;
	text[5] = NAME_Value;
	count[5] = Value_Bugmeat;
};


func void UseBugmeat()
{
	Food_ChangeNpcRegen(item,self);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Bugmeat);
};


instance ItFoApple(C_Item)
{
	name = "Яблоко";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Apple;
	visual = "ItFo_Apple_01.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = UseApple;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Apfel;
	text[5] = NAME_Value;
	count[5] = Value_Apple;
};


func void UseApple()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Apfel);
};


instance ItFo_wineberrys_01(C_Item)
{
	name = "Виноградная гроздь";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Wineberry;
	visual = "ItFo_wineberrys_01.3ds";
	on_state[0] = Usewineberrys;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Weintrauben;
	text[5] = NAME_Value;
	count[5] = Value_Wineberry;
};


func void Usewineberrys()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Weintrauben);
};


instance ItFoLoaf(C_Item)
{
	name = "Хлеб";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Brot;
	visual = "ItFo_Loaf_01.3ds";
	scemeName = "FOODHUGE";
	on_state[0] = UseLoaf;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Brot;
	text[5] = NAME_Value;
	count[5] = Value_Brot;
};


func void UseLoaf()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Brot);
};


instance ItFoMutton(C_Item)
{
	name = "Жареное мясо";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mutton;
	visual = "ItFo_CookedMutton_01.3ds";
	scemeName = "MEAT";
	on_state[0] = UseMutton;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Fleisch;
	text[5] = NAME_Value;
	count[5] = Value_Mutton;
};


func void UseMutton()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Fleisch);
};


instance ItFoMuttonRaw(C_Item)
{
	name = "Сырое мясо";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_MuttonRaw;
	visual = "ItFo_RawMutton_01.3ds";
	scemeName = "MEAT";
	on_state[0] = UseMuttonRaw;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_FleischRoh;
	text[5] = NAME_Value;
	count[5] = Value_MuttonRaw;
};

instance ItBlankMuttonRaw(C_Item)
{
	name = "Сырое мясо (приманка)";
	mainflag = ITEM_KAT_FOOD;
	value = 0;
	visual = "ItFo_RawMutton_01.3ds";
	scemeName = "MEAT";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = -HP_FleischRoh;
	text[5] = NAME_Value;
	count[5] = Value_MuttonRaw;
};


func void UseMuttonRaw()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_FleischRoh);
};


instance ItFo_mutton_01(C_Item)
{
	name = "Окорок";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_mutton_01;
	visual = "ItFo_mutton_01.3ds";
	scemeName = "FOODHUGE";
	on_state[0] = UseMutton1;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Schinken;
	text[5] = NAME_Value;
	count[5] = Value_mutton_01;
};


func void UseMutton1()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Schinken);
};


instance ItFoCheese(C_Item)
{
	name = "Сыр";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Cheese;
	visual = "ItFo_Cheese_01.3ds";
	scemeName = "FOODHUGE";
	on_state[0] = UseCheese;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Kдse;
	text[5] = NAME_Value;
	count[5] = Value_Cheese;
};


func void UseCheese()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Kдse);
};


instance ItFoRice(C_Item)
{
	name = "Рис";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Rice;
	visual = "ItFo_Rice_01.3ds";
	scemeName = "RICE";
	on_state[0] = UseRice;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Reis;
	text[5] = NAME_Value;
	count[5] = Value_Rice;
};


func void UseRice()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Reis);
};


instance ItFoWurzelsuppe(C_Item)
{
	name = "Суп из кореньев";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Wurzelsuppe;
	visual = "ItFo_Soup_01.3ds";
	scemeName = "RICE";
	on_state[0] = UseSoup;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Wurzelsuppe;
	text[5] = NAME_Value;
	count[5] = Value_Wurzelsuppe;
};


func void UseSoup()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Wurzelsuppe);
};


instance ItFoMeatbugragout(C_Item)
{
	name = "Рагу из жуков";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Meatbugragout;
	visual = "ItFo_Meatbugragout_01.3ds";
	material = MAT_LEATHER;
	scemeName = "RICE";
	on_state[0] = UseMeatbugragout;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Ragout;
	text[5] = NAME_Value;
	count[5] = Value_Meatbugragout;
};


func void UseMeatbugragout()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Ragout);
};


instance ItFoCrawlersoup(C_Item)
{
	name = "Суп с мясом ползунов";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Crawlersoup;
	visual = "ItFo_Crawlersoup_01.3ds";
	material = MAT_LEATHER;
	on_state[0] = UseCrawlersoup;
	scemeName = "RICE";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_CrawlerSuppe;
	text[5] = NAME_Value;
	count[5] = Value_Crawlersoup;
};


func void UseCrawlersoup()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_CrawlerSuppe);
};


instance ItFo_Potion_Water_01(C_Item)
{
	name = "Вода";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Water;
	visual = "ItFo_Potion_Water_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseWaterPotion;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Water;
	text[5] = NAME_Value;
	count[5] = Value_Water;
};


func void UseWaterPotion()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Water);
	//Ускоряет регенерацию ХП на час.
	//Если вода не чистая, то есть возможность заболеть.
};


instance ItFoBeer(C_Item)
{
	name = "Пиво";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beer;
	visual = "ItFo_Beer_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseBooze;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Reisschnaps;
	text[5] = NAME_Value;
	count[5] = Value_Beer;
};

instance ItFoWine(C_Item)
{
	name = "Вино";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Wine;
	visual = "ItFo_Wine_01.3ds";
	material = MAT_LEATHER;
	on_state[0] = UseBooze;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Reisschnaps;
	text[5] = NAME_Value;
	count[5] = Value_Wine;
};

instance ItFoBooze(C_Item)
{
	name = "Рисовый шнапс";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Reisschnaps;
	visual = "ItFo_Booze_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseBooze;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Reisschnaps;
	text[5] = NAME_Value;
	count[5] = Value_Reisschnaps;
};


func void UseBooze()
{
	if(Npc_IsPlayer(self) && (hero.attribute[ATR_HITPOINTS] == hero.attribute[ATR_HITPOINTS_MAX]))
	{
		Mdl_ApplyOverlayMdsTimed(self,"HUMANS_DRUNKEN.MDS",50000);
	};
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Reisschnaps);
};


instance ItFo_Plants_Berrys_01(C_Item)
{
	name = "Лесная ягода";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Berrys_01;
	visual = "ItFo_Plants_Berrys_01.3ds";
	material = MAT_WOOD;
	on_state[0] = UseBerrys;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Waldbeeren;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Berrys_01;
};


func void UseBerrys()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем ягоду.");
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Waldbeeren);
};


instance ItFo_Plants_Flameberry_01(C_Item)
{
	name = "Огненная ягода";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Flameberry_01;
	visual = "ItFo_Plants_Flameberry_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useflame;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Flammendorn;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Flameberry_01;
};


func void Useflame()
{
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем огненную ягоду.");
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Flammendorn);
};


instance ItFo_Plants_Seraphis_01(C_Item)
{
	name = "Серафис";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Seraphis;
	visual = "ItFo_Plants_Seraphis_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useseraphis;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Seraphis;
	text[5] = NAME_Value;
	count[5] = Value_Seraphis;
};


func void Useseraphis()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Seraphis);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем серафис.");
};


instance ItFo_Plants_Velayis_01(C_Item)
{
	name = "Велейс";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Velayis;
	visual = "ItFo_Plants_Flameberry_02.3ds";
	material = MAT_WOOD;
	on_state[0] = UseVelayis;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Velayis;
	text[5] = NAME_Value;
	count[5] = Value_Velayis;
};


func void UseVelayis()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Velayis);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем велейс.");
};


instance ItFo_Plants_mountainmoos_01(C_Item)
{
	name = "Горный мох";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_mountainmoos_01;
	visual = "ItFo_Plants_mountainmoos_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Usemoos;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_mountainmoos_01;
	text[5] = NAME_Value;
	count[5] = Value_Plants_mountainmoos_01;
};


func void Usemoos()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_mountainmoos_01);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем мох.");
};


instance ItFo_Plants_Grabmoos_01(C_Item)
{
	name = "Могильный мох";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Grabmoos;
	visual = "ItFo_Plants_mountainmoos_02.3ds";
	material = MAT_WOOD;
	on_state[0] = Usemoos2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Grabmoos;
	text[5] = NAME_Value;
	count[5] = Value_Grabmoos;
};


func void Usemoos2()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Grabmoos);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем могильный мох.");
};


instance ItFo_Plants_Nightshadow_01(C_Item)
{
	name = "Ночная тьма";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Nightshadow_01;
	visual = "ItFo_Plants_Nightshadow_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Usenight;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Nightshadow;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Nightshadow_01;
};


func void Usenight()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Nightshadow);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем ночную тьму.");
};


instance ItFo_Plants_Moonshadow(C_Item)
{
	name = "Лунная тень";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Moonshadow;
	visual = "ItFo_Plants_Moonshadow.3ds";
	material = MAT_WOOD;
	on_state[0] = Usemoon;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = HP_Moonshadow;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Moonshadow;
};


func void Usemoon()
{
	Npc_ChangeAttribute(self,ATR_MANA,HP_Moonshadow);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем лунную тень.");
};


instance ItFo_Plants_OrcHerb_01(C_Item)
{
	name = "Орочий лист";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_OrcHerb_01;
	visual = "ItFo_Plants_OrcHerb_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useorc;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_OrcHerb;
	text[5] = NAME_Value;
	count[5] = Value_Plants_OrcHerb_01;
};


func void Useorc()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_OrcHerb);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем орочий лист.");
};


instance ItFo_Plants_OakLeaf(C_Item)
{
	name = "Дубовый лист";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_OakLeaf;
	visual = "ItFo_Plants_OakHerb.3ds";
	material = MAT_WOOD;
	on_state[0] = Useorc2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_OakLeaf;
	text[5] = NAME_Value;
	count[5] = Value_Plants_OakLeaf;
};


func void Useorc2()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_OakLeaf);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем дубовый лист.");
};


instance ItFo_Plants_Hollenpilz(C_Item)
{
	//akhWorkQuest
	name = "Адский гриб";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Hollenpilz;
	visual = "ItFo_Plants_mushroom_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Usemush;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Hollenpilz;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Hollenpilz;
};


func void Usemush()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Hollenpilz);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем адский гриб.");
};


instance ItFo_Plants_Sklavenbrot(C_Item)
{
	name = "Рабский хлеб";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Sklavenbrot;
	visual = "ItFo_Plants_mushroom_02.3ds";
	material = MAT_WOOD;
	on_state[0] = Usemush2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Sklavenbrot;
	text[5] = NAME_Value;
	count[5] = Value_Sklavenbrot;
};


func void Usemush2()
{
	Food_ChangeNpcRegen(item,self);
	// Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Sklavenbrot);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем рабский хлеб.");
};


instance ItFo_Plants_Herb_01(C_Item)
{
	name = "Целебная трава";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Herb_01;
	visual = "ItFo_Plants_Herb_01.3ds";
	material = MAT_WOOD;
	on_state[0] = UsePlants1;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Plants_Herb_01;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Herb_01;
};


func void UsePlants1()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Plants_Herb_01);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем целебную траву.");
};


instance ItFo_Plants_Herb_02(C_Item)
{
	name = "Целебное растение";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Herb_02;
	visual = "ItFo_Plants_Herb_02.3ds";
	material = MAT_WOOD;
	on_state[0] = UsePlants2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Plants_Herb_02;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Herb_02;
};


func void UsePlants2()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Plants_Herb_02);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем целебную траву.");
};


instance ItFo_Plants_Herb_03(C_Item)
{
	name = "Целебный корень";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Herb_03;
	visual = "ItFo_Plants_Herb_03.3ds";
	material = MAT_WOOD;
	on_state[0] = UsePlants3;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Plants_Herb_03;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Herb_03;
};


func void UsePlants3()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Plants_Herb_03);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем лечебную траву.");
};


instance ItFo_Plants_Bloodwood_01(C_Item)
{
	name = "Семена бука";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Bloodwood_01;
	visual = "ItFo_Plants_Bloodwood_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useblood;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Plants_Bloodwood_01;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Bloodwood_01;
};


func void Useblood()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Plants_Bloodwood_01);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем семена бука.");
};


instance ItFo_Plants_Towerwood_01(C_Item)
{
	name = "Соты шершня";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Towerwood_01;
	visual = "ItFo_Plants_Honey_01.3ds";
	material = MAT_WOOD;
	on_state[0] = usehoneycomb;
	scemeName = "FOODHUGE";
	description = name;
	text[1] = "Трофей настоящего путешественника.";
	text[2] = "Содержат вкусный мед!";
	text[5] = NAME_Value;
	count[5] = Value_Plants_Towerwood_01;
};


func void usehoneycomb()
{
	if(HONEYCOMB == 0)
	{
		HONEYCOMB = 1;
		PrintScreen("Найдено сот: 1/5",-1,40,"FONT_OLD_20_WHITE.TGA",5);
		Log_CreateTopic("Соты шершней",LOG_NOTE);
		B_LogEntry("Соты шершней","Я нашел соты шершня и решил попробовать на вкус их мед. Довольно вкусно!");
		B_GiveXP(200);
	}
	else if(HONEYCOMB == 1)
	{
		HONEYCOMB = 2;
		PrintScreen("Найдено сот: 2/5",-1,40,"FONT_OLD_20_WHITE.TGA",5);
		B_LogEntry("Соты шершней","Вторая порция оказалась еще вкуснее!");
		B_GiveXP(300);
	}
	else if(HONEYCOMB == 2)
	{
		HONEYCOMB = 3;
		PrintScreen("Найдено сот: 3/5",-1,40,"FONT_OLD_20_WHITE.TGA",5);
		B_LogEntry("Соты шершней","Съел третие соты. Жаль, что их так сложно найти.");
		B_GiveXP(400);
	}
	else if(HONEYCOMB == 3)
	{
		HONEYCOMB = 4;
		PrintScreen("Найдено сот: 4/5",-1,40,"FONT_OLD_20_WHITE.TGA",5);
		B_LogEntry("Соты шершней","Четвертая находка. Может, начать выращивать шершней и открыть свое дело?");
		B_GiveXP(500);
	}
	else if(HONEYCOMB == 4)
	{
		HONEYCOMB = 5;
		PrintScreen("Найдено сот: 5/5",-1,40,"FONT_OLD_20_WHITE.TGA",5);
		B_LogEntry("Соты шершней","Думаю, пяти сот будет достаточно. Я и правда чувствую себя сильнее!");
		B_GiveXP(600);
		Snd_Play("BLO_WARN_A1");
	}
	else if(HONEYCOMB == 5)
	{
		B_GiveXP(100);
	};
};


instance ItFo_Plants_Ravenkraut(C_Item)
{
	name = "Воронья трава";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Ravenkraut;
	visual = "ItFo_Plants_RavenHerb_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useraven;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Ravenkraut;
	text[5] = NAME_Value;
	count[5] = Value_Ravenkraut;
};


func void Useraven()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Ravenkraut);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем воронью траву.");
};


instance ItFo_Plants_Dunkelkraut(C_Item)
{
	name = "Темный лист";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Dunkelkraut;
	visual = "ItFo_Plants_DarkHerb.3ds";
	material = MAT_WOOD;
	on_state[0] = Useraven2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Dunkelkraut;
	text[5] = NAME_Value;
	count[5] = Value_Dunkelkraut;
};


func void Useraven2()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Dunkelkraut);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем темный лист.");
};


instance ItFo_Plants_Stoneroot_01(C_Item)
{
	name = "Каменный корень";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Stoneroot_01;
	visual = "ItFo_Plants_Stoneroot_01.3ds";
	material = MAT_WOOD;
	on_state[0] = Useroot;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Plants_Stoneroot_01;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Stoneroot_01;
};


func void Useroot()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Plants_Stoneroot_01);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем каменный корень.");
};


instance ItFo_Plants_Dragonroot_01(C_Item)
{
	name = "Драконий корень";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Dragonroot_01;
	visual = "ItFo_Plants_Dragonroot.3ds";
	material = MAT_WOOD;
	on_state[0] = Useroot2;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Plants_Dragonroot_01;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Dragonroot_01;
};


func void Useroot2()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Plants_Dragonroot_01);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем драконий корень.");
};


instance ItFo_Plants_Trollcherry(C_Item)
{
	name = "Вишня троллей";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Trollcherry;
	visual = "ItFo_Plants_Trollberrys_01.3ds";
	material = MAT_WOOD;
	on_state[0] = UseTrollberrys;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Plants_Trollcherry;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Trollcherry;
};


func void UseTrollberrys()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Plants_Trollcherry);
	PrintDebugNpc(PD_ITEM_MOBSI,"Я ем вишню троллей.");
};


instance ItFo_Plants_Deadleaf(C_Item)
{
	name = "Мертвый лист";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Plants_Deadleaf;
	visual = "ItFo_Plants_Deadleaf.3ds";
	material = MAT_WOOD;
	on_state[0] = usedeadleaf;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Plants_Deadleaf;
	text[5] = NAME_Value;
	count[5] = Value_Plants_Deadleaf;
};


func void usedeadleaf()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Plants_Deadleaf);
};

