
func void LOADING_InitVariables_NPC(var C_Npc npc)
{
};
func void LOADING_InitHaste_NPC()
{
    //необходимо выделять филд в НПС-классе под getTimestamp() по аналогии с
    //PC_Temporal_Haste_TimeEnd_Timestamp созданной для ГГ
    //не уверен, что это имеет смысл
    //ПОДДЕРЖКА ХАСТЫ НА НПС (после перезагрузки) ПОКА НЕ РЕАЛИЗОВАНА
};

func void B_Cycle60_NPC()
{
    if(!C_IsMinutePassed())
    {
        return;
    };
    Print("B_Cycle60_NPC");
    Npc_Regeneration(self);
};



func void B_Cycle_NPC()
{
    if(!C_IsSecondPassed())
    {
        return;
    };

    // var C_Npc npc;
    // npc = Hlp_GetNpc(self);
    Npc_InitParameters(self);
    Npc_Poisoned(self);
    Npc_Wounded(self);

    Human_DailyBehavior(self);
    SpecBehavior();


    B_Cycle60_NPC();
};

