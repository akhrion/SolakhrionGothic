
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
	if(Npc_IsPlayer(other) || (C_NpcIsHuman(other) && other.aivar[AIV_PARTYMEMBER]) || (C_NpcIsMonster(other) && other.aivar[AIV_MOVINGMOB]))
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
	};
	if(self.guild == GIL_ORCSHAMAN)
	{
		Npc_RemoveInvItem(self,itarrune_2_2_fireball);
	};
	B_CheckDeadMissionNPCs();
	B_Respawn(self);
};

