
func void ZS_MoveNpcWait()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcWait");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	C_LookAtNpc(self,other);
};

func void ZS_MoveNpcWait_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_MoveNpcWait_Loop");
	if(Npc_GetStateTime(self) > 2)
	{
		if(Npc_IsWayBlocked(self) && (Npc_GetDistToNpc(self,other) < 200) && (other.aivar[AIV_INVINCIBLE] == FALSE))
		{
			B_DrawWeapon(self,other);
			B_Say(self,other,"$YOUDEAFORWHAT");
			AI_StartState(self,ZS_MoveNpcWait1,0,"");
			return;
		}
		else
		{
			AI_ContinueRoutine(self);
			return;
		};
	};
};

func void ZS_MoveNpcWait_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcWait_End");
};

func void ZS_MoveNpcWait1()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcWait1");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
};

func void ZS_MoveNpcWait1_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_MoveNpcWait1_Loop");
	if(Npc_GetStateTime(self) > 2)
	{
		if(Npc_IsWayBlocked(self) && (Npc_GetDistToNpc(self,other) < 200) && (other.aivar[AIV_INVINCIBLE] == FALSE))
		{
			Npc_SetTempAttitude(self,ATT_HOSTILE);
			B_Say(self,other,"$YOUASKEDFORIT");
			Npc_SetTarget(self,other);
			AI_StartState(self,ZS_Attack,1,"");
			return;
		}
		else
		{
			C_StopLookAt(self);
			AI_ContinueRoutine(self);
			return;
		};
	};
};

func void ZS_MoveNpcWait1_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcWait1_End");
	B_RemoveWeapon(self);
};

func void ZS_MoveNpcFriendlyWait()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcFriendlyWait");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	C_LookAtNpc(self,other);
};

func void ZS_MoveNpcFriendlyWait_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_MoveNpcFriendlyWait_Loop");
	if(!Npc_IsWayBlocked(self) || (Npc_GetDistToNpc(self,other) > 200))
	{
		PrintDebugNpc(PD_ZS_Check,"...weg wieder frei!");
		AI_ContinueRoutine(self);
		return;
	};
};

func void ZS_MoveNpcFriendlyWait_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_MoveNpcFriendlyWait_End");
	C_StopLookAt(self);
};

