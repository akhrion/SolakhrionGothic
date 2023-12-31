
func void B_Stop()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_Stop");
	PrintGlobals(PD_ZS_Check);
	if((Npc_GetDistToNpc(self,other) < PERC_DIST_WATCHFIGHT) && (self.id != 328))
	{
		PrintDebugNpc(PD_ZS_FRAME,"B_Stop To close");
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_StartState(self,ZS_WatchFight,0,"");
	};
};

func void ZS_GotoFight()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_GotoFight");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_Stop);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalk);
	Npc_SetPercTime(self,1);
	PrintGlobals(PD_ZS_Check);
	AI_GotoNpc(self,victim);
};

func int ZS_GotoFight_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_GotoFight_Loop");
	if(!Hlp_IsValidNpc(other) || !Hlp_IsValidNpc(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"...Angreifer oder Opfer ung�ltig!");
		return 1;
	};
	if(Npc_IsDead(other) || Npc_IsDead(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"...Angreifer oder Opfer tot!");
		return 1;
	};
	if(Npc_IsInState(other,ZS_Unconscious) || Npc_IsInState(victim,ZS_Unconscious))
	{
		PrintDebugNpc(PD_ZS_Check,"...Angreifer oder Opfer bewu�tlos!");
		return 1;
	};
	if(Npc_IsInState(other,ZS_Flee) || Npc_IsInState(victim,ZS_Flee))
	{
		PrintDebugNpc(PD_ZS_Check,"...Angreifer oder Opfer in ZS_Flee!");
		return 1;
	};
	AI_Wait(self,1);
	return 0;
};

func void ZS_GotoFight_End()
{
};

