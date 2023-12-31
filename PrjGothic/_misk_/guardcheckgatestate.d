
func int guardcheckgatestate(var C_Npc slf)
{
	PrintDebugNpc(PD_TA_FRAME,"GuardCheckGateState");
	if(Hlp_StrCmp(slf.wp,"OW_PATH_1_16_C"))
	{
		return GATE_01_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OCC_MAINGATE_VWHEEL"))
	{
		return GATE_02_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OCR_NORTHGATE_VWHEEL"))
	{
		return GATE_03_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OCC_GATE_VWHEEL"))
	{
		return GATE_04_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OW_PATH_067_WHEEL"))
	{
		return GATE_05_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"NC_MAINGATE_VWHEEL"))
	{
		return GATE_06_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OW_OM_ENTRANCE02_WHEEL_USE"))
	{
		return GATE_07_STATE;
	}
	else if(Hlp_StrCmp(slf.wp,"OCR_ARENA_VWHEEL"))
	{
		return GATE_11_STATE;
	};
	return -1;
};

func void ZS_GuardWheelClosed()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardWheelClosed");
	GuardPerception();
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,self.wp);
	if(guardcheckgatestate(self) == 0)
	{
		PrintDebugNpc(PD_TA_CHECK,"...Tor offen!");
		AI_UseMob(self,"VWHEEL",1);
		AI_Wait(self,0.5);
		AI_UseMob(self,"VWHEEL",-1);
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_GuardWheelClosed_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_GuardWheelClosed_Loop");
	if((self.id == 834) && ((Npc_GetDistToWP(hero,"OW_PATH_067") <= 1600) || (Npc_GetDistToWP(hero,"OW_PATH_07_21_GUARD_MIDDLE") <= 1800)) && FMTaken && !Npc_IsDead(self))
	{
		AI_StartState(self,ZS_GuardWheelOpen,0,"");
	};
	if(Npc_GetDistToWP(self,self.wp) > 200)
	{
		AI_SetWalkMode(self,NPC_RUN);
		AI_GotoWP(self,self.wp);
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,hero) > HAI_DIST_GUARDPASSAGE_ATTENTION)
	{
		AI_AlignToWP(self);
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_GuardWheelClosed_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_GuardWheelClosed_End");
	AI_StopLookAt(self);
};

