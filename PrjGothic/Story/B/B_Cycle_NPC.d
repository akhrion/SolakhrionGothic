func void B_Cycle_NPC()
{
    if(!C_IsSecondPassed()){return;};
    var C_Npc npc;
    npc = Hlp_GetNpc(self);
    Npc_InitParameters(npc);
    Npc_Poisoned(self);
    Npc_Wounded(self);
    SpecBehavior();
};
