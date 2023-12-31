
func void ZS_PickOre()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PickOre");
	B_SetPerception(self);
	if(!Npc_HasItems(self,ItMwPickaxe))
	{
		CreateInvItem(self,ItMwPickaxe);
	};
	if(self.aivar[AIV_DONTUSEMOB] == 1)
	{
		self.aivar[AIV_DONTUSEMOB] = 0;
	}
	else
	{
		B_StartUseMob(self,"ORE");
	};
};

func void ZS_PickOre_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_PickOre_Loop");
	PrintAttitudes(PD_TA_LOOP);
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("ORE");
	};
	AI_Wait(self,1);
};

func void ZS_PickOre_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PickOre_End");
	B_StopUseMob(self,"ORE");
};

