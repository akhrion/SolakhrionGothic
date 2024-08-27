func int G_ItemValue_Food_Swing(var int startTime, var int hoursPassedLastTrade, var int slot)      //плавающая цена Еды
{                           //реализована смена цены при каждом диалоге с торговцем
                            //НЕОБХОДИМО ПРИВЯЗАТЬ СМЕНУ ЦЕНЫ КО ВРЕМЕНИ, ЧТО-БЫ ЦЕНА МЕНЯЛАСЬ ПЛАВНЕЕ И ЛОГИЧНЕЕ

    if(!hoursPassedLastTrade){return false;};
    



    var int amount;
    var int newCost;
    amount = Npc_GetInvItemBySlot(other,INV_FOOD,slot);
    if(amount)                                                                 //если кол-во предметов не 0
    {
        if(item.value < 25)     //решение проблемы изменения цен дешёвых товаров
        {
            if(!Hlp_Random(3))
            {
                newCost = item.value + 1;
            }
            else if(!Hlp_Random(2))
            {
                newCost = item.value - 1;
                if(newCost < 1){newCost = 1;};
            };
        }
        else
        {
            newCost = getPercentFromInteger(item.value,Hlp_Random(12)+95);        //наметить цену в процентах от текущей 
                                                                                //  в диапазоне 95% - 106% -> ((12)+95)
            if(item.value - newCost == 1){newCost = item.value;};              //решение проблемы округлений в меньшую сторону #1
            if(item.value > newCost){newCost = newCost + 1;};                  //решение проблемы округлений в меньшую сторону #2
        };


        Log_CreateTopic("Стоимость товаров",LOG_NOTE);
        Log_AddEntry("Стоимость товаров", ConcatStrings(item.name, IntToString(newCost)));
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
            return G_ItemValue_Food_Swing(startTime, hoursPassedLastTrade, slot+1);                  //НЕ найден зарегистрированный предмет - рекурсия с переходом к следующему слоту в инвентаре
        };


        item.value = newCost;                                       //переинициализация цены экземпляра
        item.count[5] = newCost;                                    //установить новую цену в описание экземпляра
        return G_ItemValue_Food_Swing(startTime, hoursPassedLastTrade, slot+1);                      //найден зарегистрированный предмет - рекурсия с переходом к следующему слоту в инвентаре
    };

    G_ItemValue_Food_Swing(startTime, hoursPassedLastTrade-1, 0);      //если с последнего трейда прошло несколько часов, то функция вызывается снова
                                                            // с нулевого слота
                                                            //количество таких вызовов будет равняться количеству пройденных часов
                                                            //после этого функция завершится окончательно.

    PC_LastTradeTimestamp = startTime;
    return true;
};
func void G_ItemValue_Food()        //отвечает за цену сЪестных припасов
{
    var int time;
    time = getTimestamp();
    G_ItemValue_Food_Swing(
        time,
        (time - PC_LastTradeTimestamp) / 60,
        0
    );
};


func void G_ItemValue()             //отвечает за цену предметов, вызывается из торговых диалогов с НПС
{
    G_ItemValue_Food();
};
