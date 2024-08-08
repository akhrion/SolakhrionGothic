func int G_ItemValue_Food_Swing(var int slot)                       //плавающая цена Еды
{                           //реализована смена цены при каждом диалоге с торговцем
                            //НЕОБХОДИМО ПРИВЯЗАТЬ СМЕНУ ЦЕНЫ КО ВРЕМЕНИ, ЧТО-БЫ ЦЕНА МЕНЯЛАСЬ ПЛАВНЕЕ И ЛОГИЧНЕЕ

    var int time;
    time = getTimestamp();
    if(time - PC_LastTradeTimestamp < 60)       //Если с предыдущего изменения цен (имеется ввиду полная отработка этой функции)
    {                                           // не прошло одного игрового часа, то функция прервётся.
        return false;
    };




    var int amount;
    var int newCost;
    amount = Npc_GetInvItemBySlot(other,INV_FOOD,slot);
    if(amount)                                                                 //если кол-во предметов не 0
    {
        newCost = getPercentFromInteger(item.value,Hlp_Random(300)+10);        //наметить цену в процентах от текущей в диапазоне 10% - 300%


        if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoApple))         //регистрация предмета
        {
            Value_Apple = newCost;                                    //переинициализация глобальной переменной указывающей на цену предмета
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoBeer))   //регистрация предмета
        {
            Value_Beer = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoBooze))
        {
            Value_Reisschnaps = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoCheese))
        {
            Value_Cheese = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoCrawlersoup))
        {
            Value_Crawlersoup = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoLoaf))
        {
            Value_Brot = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoMeatbugragout))
        {
            Value_Meatbugragout = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoMutton))
        {
            Value_Mutton = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_mutton_01))
        {
            Value_mutton_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoMuttonRaw))
        {
            Value_MuttonRaw = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoRice))
        {
            Value_Rice = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Potion_Water_01))
        {
            Value_Water = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoWurzelsuppe))
        {
            Value_Wurzelsuppe = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFoWine))
        {
            Value_Wine = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_wineberrys_01))
        {
            Value_Wineberry = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Berrys_01))
        {
            Value_Plants_Berrys_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Flameberry_01))
        {
            Value_Plants_Flameberry_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Seraphis_01))
        {
            Value_Seraphis = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Velayis_01))
        {
            Value_Velayis = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_mountainmoos_01))
        {
            Value_Plants_mountainmoos_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Grabmoos_01))
        {
            Value_Grabmoos = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Nightshadow_01))
        {
            Value_Plants_Nightshadow_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Moonshadow))
        {
            Value_Plants_Moonshadow = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_OrcHerb_01))
        {
            Value_Plants_OrcHerb_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_OakLeaf))
        {
            Value_Plants_OakLeaf = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Hollenpilz))
        {
            Value_Plants_Hollenpilz = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Sklavenbrot))
        {
            Value_Sklavenbrot = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Herb_01))
        {
            Value_Plants_Herb_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Herb_02))
        {
            Value_Plants_Herb_02 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Herb_03))
        {
            Value_Plants_Herb_03 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Bloodwood_01))
        {
            Value_Plants_Bloodwood_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Ravenkraut))
        {
            Value_Ravenkraut = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Dunkelkraut))
        {
            Value_Dunkelkraut = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Stoneroot_01))
        {
            Value_Plants_Stoneroot_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Dragonroot_01))
        {
            Value_Plants_Dragonroot_01 = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Trollcherry))
        {
            Value_Plants_Trollcherry = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Deadleaf))
        {
            Value_Plants_Deadleaf = newCost;
        }
        else if(Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItFo_Plants_Towerwood_01))
        {
            Value_Plants_Towerwood_01 = newCost;
        }
        else
        {
            return G_ItemValue_Food_Swing(slot+1);                  //НЕ найден зарегистрированный предмет - рекурсия с переходом к следующему слоту в инвентаре
        };


        item.value = newCost;                                       //переинициализация цены экземпляра
        item.count[5] = newCost;                                    //установить новую цену в описание экземпляра
        return G_ItemValue_Food_Swing(slot+1);                      //найден зарегистрированный предмет - рекурсия с переходом к следующему слоту в инвентаре
    };




    PC_LastTradeTimestamp = time;
    return false;
};
func void G_ItemValue_Food()        //отвечает за цену сЪестных припасов
{
    G_ItemValue_Food_Swing(0);
};


func void G_ItemValue()             //отвечает за цену предметов, вызывается из торговых диалогов с НПС
{
    G_ItemValue_Food();
};
