////////////////////////////////////////////////////////////////////////////
/////////////UNDEAD
////////////////////////////////////////////////////////////////////////////
func void UndeadUprising(var C_Npc npc)
{
    if(
        npc.guild == GIL_SKELETON
    &&  Npc_IsRespawning(npc)
    &&  Npc_IsInState(npc,ZS_MM_Rtn_SkeletonRespawning) == false
    )
    {
        Npc_ClearAIQueue(npc);
        AI_StartState(npc,ZS_MM_Rtn_SkeletonRespawning,0,"");
    };
};
