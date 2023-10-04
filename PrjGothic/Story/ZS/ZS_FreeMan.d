func void ZS_FreeMan()
{
    Print("zs_freeman");
    ObservingPerception();
    AI_SetWalkMode(self,NPC_WALK);


    // if(!C_BodyStateContains(self,BS_STAND)){return;};
    // if(Random_IsProc(50))
    // {
    //     if(!Npc_IsOnFP(self,"SMALLTALK"))
    //     {
    //         AI_GotoNextFP(self,"SMALLTALK");
    //     };
    // }
    // else
    // {
    //     if(!Npc_IsOnFP(self,"MEDITATE"))
    //     {
    //         AI_GotoNextFP(self,"MEDITATE");
    //     };
    // };
};
func void ZS_FreeMan_Loop()
{
    Print("zs_freeman_loop");
    if(Random_IsProc(30))
    {
        self.wp = "smalltalk";
        ZS_Smalltalk();
    }
    else if(Random_IsProc(50))
    {
        self.wp = "meditate";
        ZS_Meditate();
    }
    else
    {
        self.wp = "wash";
        ZS_WashSelf();
    };
    AI_Wait(self,1);
};
func void ZS_FreeMan_End()
{
    Print("zs_freeman_end");
};
