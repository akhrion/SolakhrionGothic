func void ezRespawn()
{
    if(self.guild == GIL_SCAVENGER)
    {
        Wld_InsertNpc(Hlp_GetInstanceID(self),self.wp);
        Npc_MakeUnTargetable(self);
        Npc_SetImmortal(self,true);
        AI_StartState(self,ZS_ezRespawn_EatGround,0,"");
    };
};
