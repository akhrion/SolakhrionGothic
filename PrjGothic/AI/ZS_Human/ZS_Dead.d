
func void ZS_Dead()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Dead");
	PrintGlobals(PD_ZS_Check);
	C_ZSInit();
	self.aivar[AIV_PLUNDERED] = FALSE;
	if((self.id == 251) && (PLAYERINARENA == TRUE))
	{
		PLAYERINARENA = FALSE;
		Wld_SendTrigger("OC_ARENA_GATE");
		B_ExchangeRoutine(Tpl_1422_GorHanis,"START");
		B_ExchangeRoutine(Sld_729_Kharim,"START");
	};
	if((self.id == 729) && (PLAYERINARENA == TRUE))
	{
		PLAYERINARENA = FALSE;
		Wld_SendTrigger("OC_ARENA_GATE");
		B_ExchangeRoutine(Tpl_1422_GorHanis,"START");
		B_ExchangeRoutine(GRD_251_Kirgo,"START");
	};
	if((self.id == 1422) && (PLAYERINARENA == TRUE))
	{
		PLAYERINARENA = FALSE;
		Wld_SendTrigger("OC_ARENA_GATE");
		B_ExchangeRoutine(GRD_251_Kirgo,"START");
		B_ExchangeRoutine(Sld_729_Kharim,"START");
	};
	if(Npc_IsPlayer(self) && (PLAYERINARENA == TRUE))
	{
		PLAYERINARENA = FALSE;
		Wld_SendTrigger("OC_ARENA_GATE");
		B_ExchangeRoutine(Tpl_1422_GorHanis,"START");
		B_ExchangeRoutine(GRD_251_Kirgo,"START");
		B_ExchangeRoutine(Sld_729_Kharim,"START");
	};
	if(Npc_IsPlayer(other) || (C_NpcIsHuman(other) && other.aivar[AIV_PARTYMEMBER]) || (C_NpcIsMonster(other) && other.aivar[AIV_MM_PARTYMEMBER]))
	{
		B_DeathXP();
	}
	else
	{
		if(akh_Mod)
		{
			B_LevelUp_NPC(other);
		};
	};
	if(C_NpcIsMonster(self))
	{
		B_GiveDeathInv();
		if(self.aivar[AIV_MM_PARTYMEMBER])
		{
			if(PC_PartymemberInvoked)
			{
				PC_PartymemberInvoked -= 1;
				if(self.aivar[AIV_MM_REAL_ID] == ID_DEMON)
				{
					PC_Partymember_Demon_Invoked_Count -= 1;
					if(!PC_Partymember_Demon_Invoked_Count){PC_Knowledge_Demon_InfoDelay = 0;};
				};
			};
		};
	};
	if(self.guild == GIL_ORCSHAMAN)
	{
		Npc_RemoveInvItem(self,itarrune_2_2_fireball);
	};
	if(self.guild == GIL_SCAVENGER)
	{
		PC_Knowledge_Scavenger +=1;
	};
	B_CheckDeadMissionNPCs();
	B_Respawn(self);
};

