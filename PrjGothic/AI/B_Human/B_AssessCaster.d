
func void B_AssessCaster()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessCaster");
	PrintGlobals(PD_ZS_Check);
	if(!Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Zauberer NICHT der Spieler!");
		return;
	};
	if(
		Npc_GetActiveSpell(other) == SPL_HEAL
	)
	{
		Npc_SendPassivePerc(self,PERC_ASSESSMAGIC,self,other);
		return;
		B_Magic_HealAOE(other,self);
	};
	if(Npc_GetActiveSpell(other) == SPL_CHARM)
	{
		Npc_SetAttitude(self,ATT_FRIENDLY);
		Npc_SetTempAttitude(self,ATT_FRIENDLY);
		Print("assesscaster CHARM");
		
	};
	if(C_NpcTypeIsFriend(self,other) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC ist NPCTYPE_FRIEND oder ATT_FRIENDLY!");
		return;
	};
	if((Npc_GetActiveSpellCat(other) == SPELL_BAD) && !c_npcisguarding(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...b�ser Zauber!");
		Npc_SetAttitude(self,ATT_HOSTILE);
		Npc_SetTempAttitude(self,ATT_HOSTILE);
		Print("assesscaster SPELL_BAD");
		
		if(C_NpcIsMonster(self))
		{
//			B_MM_AssessEnemy();
		}
		else
		{
//			B_AssessFighter();
			// B_FullStop(self);
			// Npc_PercDisable(self,PERC_ASSESSCASTER);
			// AI_StartState(self,ZS_AssessFighter,0,"");
		};
	}
	else if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		Print("assesscaster HOSTILE");
		
		return;
		// if(C_NpcIsMonster(self))
		// {
		// 	if(!Npc_WasInState(self,ZS_MM_AssessEnemy))
		// 	{
		// 		PrintDebugNpc(PD_ZS_Check,"...b�ser Zauberer!");
		// 		Print("hostile monster");
		// 		B_MM_AssessEnemy();
		// 		// B_FullStop(self);
		// 		// AI_StartState(self,ZS_MM_AssessEnemy,0,"");
		// 	};
		// }
		// else
		// {
		// 	if(!Npc_WasInState(self,ZS_AssessEnemy))
		// 	{
		// 		PrintDebugNpc(PD_ZS_Check,"...b�ser Zauberer!");
		// 		Print("hostile NPC");
		// 		B_AssessEnemy();
		// 		// B_FullStop(self);
		// 		// AI_StartState(self,ZS_AssessEnemy,0,"");
		// 	};
		// };
	}
	else if((Npc_IsInState(self,ZS_GuardPassage) || Npc_WasInState(self,ZS_GuardPassage)) && ((Npc_GetActiveSpell(other) == SPL_SLEEP) || (Npc_GetActiveSpell(other) == SPL_CHARM)))
	{
		// if(!Npc_WasInState(self,ZS_AssessEnemy))
		// {
		// 	PrintDebugNpc(PD_ZS_Check,"...Schlaf-/Charmezauber von Durchgangswache gesehen!");
		// 	Print("ZS_GuardPassage NPC");
		// 	B_FullStop(self);
		// 	AI_StartState(self,ZS_AssessEnemy,0,"");
		// };
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...neutraler Zauber");
	};
};

