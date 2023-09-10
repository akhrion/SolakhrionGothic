func void Npc_ReceiveBash(var C_Npc vict, var C_Npc attacker)
{
	if(
		Npc_IsInFightMode(attacker,FMODE_FIST)
	||	Npc_IsInFightMode(attacker,FMODE_MELEE)
	)
	{
		if(Npc_HasReadiedWeapon_Club(attacker))
		{
			if(Random_IsProc(Chanse_Bash_Club))
			{
				AI_PlayAni(vict,"T_STAND_2_WOUNDEDB");
				AI_Wait(vict,5);
				AI_PlayAni(vict,"T_WOUNDEDB_TRY");
				AI_Standup(vict);
		//		B_FullStop(vict);
			};
		};
	};
};




func void ReactToDamage_Mage_Fireshield()
{
	if(Hlp_Random(3))
	{
		Print("Меня обожгло огнем.");
	}
	else if(Hlp_Random(2))
	{
		Print("Как жарко!");
	}
	else
	{
		Print("Я горю!");
	};
	Npc_ChangeAttribute(other,ATR_HITPOINTS,-50);
};
func void B_CombatReactToDamage()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatReactToDamage");
	PrintGlobals(PD_ZS_Check);
	if(
		self.guild == GIL_KDF
	&&	Npc_GetDistToNpc(self,other) < HAI_DIST_MELEE
	)
	{
		ReactToDamage_Mage_Fireshield();
	};
		
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
		Npc_ReceiveBash(self,other);
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

