func void PC_Items_Drop_CursedRing_Equip()
{
    TrueVision(CursedRing_01,hero);
	Npc_ChangeAttribute(hero,ATR_DEXTERITY,-2);
};





func void PC_Items_Unequip(){};
func void PC_Items_Drop()
{
	if(PC_DropCursedRing)
	{
		ShowMsg_AutoRow("Кольцо не выбрасывается..");
		Wld_RemoveItem(CursedRing_01);
		EquipItem(hero,CursedRing_01);
        PC_Items_Drop_CursedRing_Equip();
        
        PC_CursedRing_CantDrop = false;
        PC_CursedRing_CantUnequip = false;
		PC_DropCursedRing = false;
	};
};
func void PC_Items_PutToChest(){};
func void PC_Items_Trade(){};
func void PC_Items_SomeoneStole(){};
func void PC_Items_Lost(){};
func void PC_Items()
{
	PC_Items_Unequip();
	PC_Items_Drop();
	PC_Items_PutToChest();
	PC_Items_Trade();
	PC_Items_SomeoneStole();
	PC_Items_Lost();
};
