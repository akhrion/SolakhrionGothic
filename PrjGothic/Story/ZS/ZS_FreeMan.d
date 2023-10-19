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
func int ZS_FreeMan_Loop()
{
    Print("zs_freeman_loop");
    if(
        (Npc_GetDistToPlayer(self) > 1000)
    &&  (Npc_GetDistToPlayer(self) < 2000)
    &&  Random_IsProc(1)
    )
    {
        B_FriendlyAssessCall();
        AI_Wait(self,3);
        return LOOP_CONTINUE;
    };
    if(Random_IsProc(25))
    {
        self.wp = "smalltalk";
        AI_StartState(self,ZS_Smalltalk,0,"");
        AI_Wait(self,5);
    }
    else if(Random_IsProc(30))
    {
        self.wp = "meditate";
        ZS_Meditate();
        AI_Wait(self,5);
    }
    else if(Random_IsProc(30))
    {
        self.wp = "camp";
        ZS_SitCampfire();
        AI_Wait(self,10);
    }
    else
    {
        self.wp = "wash";
        ZS_WashSelf();
        AI_Wait(self,3);
    };
    AI_Wait(self,3);
    return LOOP_CONTINUE;
};
func void ZS_FreeMan_End()
{
    Print("zs_freeman_end");
};
