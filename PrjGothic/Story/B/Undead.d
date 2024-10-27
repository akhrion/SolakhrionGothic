////////////////////////////////////////////////////////////////////////////
/////////////UNDEAD
////////////////////////////////////////////////////////////////////////////

func int Npc_IsUndeadUprising(var C_Npc npc)
{
    if(Npc_IsUndead(npc) == false){return false;};
    if(Npc_IsRespawning(npc)){return true;};
    return false;
};
func void Npc_SetUndeadUprising(var C_Npc npc, var int bool)
{
	if(bool)
	{
		if(
			Npc_IsRespawning(npc) == false
		)
		{
			npc.aivar[AIV_FREEMAN] = npc.aivar[AIV_FREEMAN] | AIV_FREEMAN_RESPAWNING;
			Npc_MakeUnTargetable(npc);
		};
	}
	else if(Npc_IsRespawning(npc))
	{
		npc.aivar[AIV_FREEMAN] -= AIV_FREEMAN_RESPAWNING;
		Npc_MakeTargetable(npc);
		Npc_SetImmortal(npc,false);
	};
};

func void UndeadUprising(var C_Npc npc)
{
    if(
        npc.guild == GIL_SKELETON
    &&  Npc_IsUndeadUprising(npc)
    &&  Npc_IsInState(npc,ZS_MM_Rtn_SkeletonRespawning) == false
    )
    {
        Npc_SetImmortal(npc,true);
        Npc_ClearAIQueue(npc);
        AI_StartState(npc,ZS_MM_Rtn_SkeletonRespawning,0,"");
    };
};
