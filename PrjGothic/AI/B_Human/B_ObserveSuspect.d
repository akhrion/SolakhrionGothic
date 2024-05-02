
func void B_ObserveSuspect()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_ObserveSuspect");
	B_AssessRogue();
	if((self.npcType == npctype_friend) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY");
		return;
	};
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...CanSee");
		// msgSS("B_ObserveSuspect: ",other.name,0,50,2);
		Npc_PercDisable(self,PERC_ASSESSWARN);
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_LookAtNpc(self,other);
		AI_StartState(self,ZS_ObserveSuspect,0,"");
	};
};

