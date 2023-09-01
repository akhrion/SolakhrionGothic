
func void B_CombatReactToDamage()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatReactToDamage");
	PrintGlobals(PD_ZS_Check);
	if(Npc_IsPlayer(other) && ((self.npcType == npctype_friend) || (Npc_GetPermAttitude(self,other) == ATT_FRIENDLY)))
	{
		return;
	};
	if(Npc_IsSummonedByPC(other))
	{
		Npc_SetTarget(self,other);
	};
	if(Npc_IsInFightMode(other,FMODE_FAR) || Npc_IsInFightMode(other,FMODE_MAGIC))
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = TRUE;
	}
	else
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = FALSE;
	};
	if(Npc_IsPlayer(other))
	{
		
		if(Npc_IsReceiveDamage(self,other))
		{
			
			PrintDebugNpc(PD_MST_FRAME,"ГГ смог нанести урон НПС.");
			PC_ImproveSkills();
		};

		Npc_SetTempAttitude(self,ATT_HOSTILE);
		if((Npc_GetAttitude(self,other) == ATT_HOSTILE) || (Npc_GetAttitude(self,other) == ATT_ANGRY))
		{
			Npc_SetTarget(self,other);
		};
	}
	else
	{
		if(
			Npc_IsInFightMode(other,FMODE_MELEE)
		||	Npc_IsInFightMode(other,FMODE_FIST)
		)
		{
			Npc_SetTarget(self,other);
		};
	};
	if(self.aivar[AIV_SPECIALCOMBATDAMAGEREACTION])
	{
		B_SpecialCombatDamageReaction();
	};
};

