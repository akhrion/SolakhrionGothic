instance ItBS(C_Item)
{
    name = "Смена позы";
    mainflag = ITEM_KAT_NONE;
    flags = ITEM_MISSION;
    value = 0;
    visual = "ItFo_Potion_BurnTicks.3ds";
    material = MAT_GLAS;
    on_state[0] = UseItBS;
    scemeName = "MAP";
    description = name;
};
func void UseItBS()
{
    self.aivar[AIV_INVINCIBLE] = TRUE;
    AI_ProcessInfos(self);
    PLAYER_MOBSI_PRODUCTION = MOBSI_PC_BS_Change;
};

instance ItFo_Potion_BurnTicks10000(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks10000;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "10000";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks10000()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 10000;
};
instance ItFo_Potion_BurnTicks5000(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks5000;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "5000";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks5000()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 5000;
};
instance ItFo_Potion_BurnTicks1000(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks1000;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "1000";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks1000()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 1000;
};
instance ItFo_Potion_BurnTicks500(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks500;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "500";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks500()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 500;
};
instance ItFo_Potion_BurnTicks250(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks250;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "250";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks250()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 250;
};
instance ItFo_Potion_BurnTicks100(C_Item)
{
name = NAME_Trank;
mainflag = ITEM_KAT_POTIONS;
flags = ITEM_MULTI;
value = 123;
visual = "ItFo_Potion_BurnTicks.3ds";
material = MAT_GLAS;
on_state[0] = BurnTicks100;
scemeName = "POTIONFAST";
description = "Изменить количество тиков для единицы демеджа";
text[1] = "100";
count[1] = Mana_Essenz;
text[5] = NAME_Value;
count[5] = value;
};
        
        
func void BurnTicks100()
{
    NPC_BURN_TICKS_PER_DAMAGE_POINT = 100;
};




func void GetTestItems()
{
    CreateInvItems(self,ItFo_Potion_BurnTicks100,10);
    CreateInvItems(self,ItFo_Potion_BurnTicks250,10);
    CreateInvItems(self,ItFo_Potion_BurnTicks500,10);
    CreateInvItems(self,ItFo_Potion_BurnTicks1000,10);
    CreateInvItems(self,ItFo_Potion_BurnTicks5000,10);
    CreateInvItems(self,ItFo_Potion_BurnTicks10000,10);
    CreateInvItems(self,ItAmArrow,100);
    CreateInvItems(self,ItRw_Bow_Small_01,1);
};
