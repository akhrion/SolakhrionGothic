
func void ZS_Bathing_Babe()
{
	PrintDebug("Enter ZS_Bathing_Babe () ");
	B_SetBabeDefaultPerceptions();
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == 0)
	{
		AI_GotoWP(self,self.wp);
	};
	PrintDebug("Suche Badewanne !");
	if(Wld_IsMobAvailable(self,"BATHTUB"))
	{
		PrintDebug("Wanne gefunden! Gehe baden");
		if(Npc_HasEquippedArmor(self))
		{
			item = Npc_GetEquippedArmor(self);
			self.bodymass = Hlp_GetInstanceID(item);
			AI_UnequipArmor(self);
		};
		AI_UseMob(self,"BATHTUB",1);
		Mdl_ApplyRandomAni(self,"S_BATHTUB_S1","T_BATHTUB_RANDOM1");
		Mdl_ApplyRandomAni(self,"S_BATHTUB_S1","T_BATHTUB_RANDOM2");
		Mdl_ApplyRandomAniFreq(self,"S_BATHTUB_S1",3);
	}
	else
	{
		PrintDebug("No BATHTUB-Mobsi found !");
	};
};

func void ZS_Bathing_Babe_Loop()
{
};

func void ZS_Bathing_Babe_End()
{
	PrintDebug("Enter ZS_Bathing_Babe_End() ");
	AI_UseMob(self,"BATHTUB",-1);
	if(self.bodymass)
	{
		AI_EquipArmor(self,self.bodymass);
	};
};

