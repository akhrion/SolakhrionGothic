
func int Spell_Logic_Sleep(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Sleep");
	var int npcCircle;
	if(C_NpcIsHuman(other))
	{
		if(manaInvested >= SPL_SENDCAST_SLEEP)
		{
			npcCircle = Npc_GetTalentSkill(self,NPC_TALENT_MAGE);
			if(npcCircle)
			{
				time_sleep_global = SPL_TIME_SLEEP * pow(npcCircle,2) + 1;
				AI_StartState(other,ZS_MagicSleep,0,"");
			}
			else
			{
				time_sleep_global = SPL_TIME_SLEEP;
				AI_StartState(other,ZS_MagicSleep,0,"");
			};
			return SPL_SENDCAST;
		};
		return SPL_RECEIVEINVEST;
	};
	return SPL_DONTINVEST;
};

