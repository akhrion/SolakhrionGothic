func void Test_Npc_StartItemReactModules()
{
    if(Npc_StartItemReactModules(self,hero,ItFoApple))
	{
//		Print("                     1111111");
//        PrintSIS("requested: ",GRD1_Testmodell_Trade_01.requested_amount,
//                    IntToString(GRD1_Testmodell_Trade_01.trade_amount)
//                );
	}
    else
    {
		Print("222222                 ");
        PrintSIS("requested: ",GRD1_Testmodell_Trade_01.requested_amount,
                    IntToString(GRD1_Testmodell_Trade_01.trade_amount)
                );
    };
};






instance Trade_After(C_Info)
{
    condition = Trade_After_Condition;
    information = Trade_After_Info;
    important = 1;
    permanent = 1;
};
func int Trade_After_Condition()
{
    if(PC_WasTrade)
    {
        return TRUE;
    };
};
func void Trade_After_Info()
{
    PC_WasTrade = false;
    AI_StopProcessInfos(self);
};

func void Trade_Started()
{
    return;
   	PC_WasTrade = true;
	Trade_After.npc = Hlp_GetInstanceID(self);
};
