
func void ZS_Babe_Sweep()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Babe_Sweep");
	AI_UnequipArmor(self);
	B_SetBabeDefaultPerceptions();
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_HasItems(self,ItMiBrush) < 1)
	{
		CreateInvItem(self,ItMiBrush);
	};
	if(!Npc_IsOnFP(self,"SWEEP"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"SWEEP"))
	{
		AI_GotoFP(self,"SWEEP");
		Bab_PutOn_Bikini();
		AI_UseItemToState(self,ItMiBrush,1);
	};
};

func void ZS_Babe_Sweep_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_Babe_Sweep_Loop");
	AI_Wait(self,1);
};

func void ZS_Babe_Sweep_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Babe_Sweep_End");
	Bab_PutOn_DefaultCloth();
	AI_UseItemToState(self,ItMiBrush,-1);
};

