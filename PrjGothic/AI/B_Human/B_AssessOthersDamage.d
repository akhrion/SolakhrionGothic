func void PC_GotDamage()
{
    if(
        Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(PC_Hero)
    )
    {
        gPC_LastDamageRecieved = PC_ATR_HP - Npc_GetHP(victim);
        PC_ATR_HP = Npc_GetHP(victim);
        // PrintSIS("",gPC_LastDamageRecieved,"");


        Npc_GotDamage_Edge(victim,self);
        PC_ReceivedBacksideDamage();
    };
};
func void B_AssessOthersDamage()
{
    PC_GotDamage();
};
