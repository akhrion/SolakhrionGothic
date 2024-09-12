func void ezRespawn()
{
    if(!Npc_IsAnimal(self)){return;};
    Wld_InsertNpc(Hlp_GetInstanceID(self),self.wp);
    Npc_SetRespawning(self,true);

    if(self.guild == GIL_MEATBUG)
    {
        AI_StartState(self,ZS_MM_Rtn_Wusel,0,"");
    };
    if(self.guild == GIL_SCAVENGER)
    {
        AI_StartState(self,ZS_ezRespawn_EatGround,0,"");
    };
};
