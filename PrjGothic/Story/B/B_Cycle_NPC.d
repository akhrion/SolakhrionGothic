
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
    Npc_Regeneration(self);
    Npc_NotTraining(self);
    Npc_SetTraining(self,false);
};


func void Npc_CheckMyCloth(var C_Npc npc)
{
    item = Npc_GetEquippedArmor(npc);
    if(
        npc.bodymass != Hlp_GetInstanceID(item)
    &&  npc.bodymass != -1
    )
    {
        npc.bodymass = Hlp_GetInstanceID(item);
    };
};

func void B_Cycle_NPC()
{
    ApplyPeriodicalEffects(self);
    UndeadUprising(self);

    if(!C_IsSecondPassed())
    {
        return;
    };

    // var C_Npc npc;
    // npc = Hlp_GetNpc(self);
    Npc_InitParameters(self);
    Human_InitWeight_Random(self);
    Npc_Poisoned(self);
    Npc_Wounded(self);

    Npc_CheckMyCloth(self);
    Npc_ChecksHisInventory(self);

    Human_DailyBehavior(self);
    SpecBehavior();
    Npc_MakeTheBodyStronger(self);
	Human_Jump(self);
    Human_Run(self);
    Human_Rest(self);

    // Npc_Massive(self);
    ReinitPeriodicalEffects(self);
    B_Cycle60_NPC();
};

