var int nearCounter_Scavengers;
func void testWld_DetectNpc()
{
    if(!(self.guild == GIL_SCAVENGER)){return;};
    nearCounter_Scavengers +=1;
};




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


func void B_Cycle_NPC()
{
    if(!C_IsSecondPassed())
    {
        if(nearCounter_Scavengers){nearCounter_Scavengers = 0;};
        return;
    };

    // var C_Npc npc;
    // npc = Hlp_GetNpc(self);
    Npc_InitParameters(self);
    Npc_Poisoned(self);
    Npc_Wounded(self);
    SpecBehavior();
};
