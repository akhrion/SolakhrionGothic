
func int C_PreyToPredator(var C_Npc prey,var C_Npc predator)
{
	// Print("preytopredator");
	PrintDebugNpc(PD_MST_FRAME,"C_PreyToPredator");
	if(other.level >= self.level * 2)
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};
	if(prey.guild == GIL_SCAVENGER)
	{
		if(predator.guild == GIL_SNAPPER)
		{
			return 1;
		};
	};
	if(prey.guild == GIL_MOLERAT)
	{
		if(predator.guild == GIL_WOLF)
		{
			return 1;
		};
	};
	return 0;
};

func void B_MM_DeSynchronize()
{
	var int msec;
	PrintDebugNpc(PD_MST_FRAME,"B_MM_DeSynchronize");
	msec = Hlp_Random(1000);
	AI_Waitms(self,msec);
};
func void B_MM_AssessPlayer()
{
	Print("B_MM_AssessPlayer");
};
func void B_MM_ObserveIntruder()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_ObserveIntruder");
	if(Npc_GetDistToNpc(self,other) <= self.aivar[AIV_MM_AttackRange])
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
};

func void B_MM_AssessBody()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessBody");
	if(self.aivar[AIV_PLUNDERED] == PRIO_PREY)
	{
		if(Npc_GetDistToNpc(self,other) < self.aivar[AIV_MM_PercRange])
		{
			if(C_PreyToPredator(other,self))
			{
				Npc_ClearAIQueue(self);
				AI_StartState(self,ZS_MM_EatBody,0,"");
			};
		};
	};
};

func void ZS_MM_EatBody()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_EatBody");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_MM_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_ObserveIntruder);
	AI_GotoNpc(self,other);
	AI_TurnToNPC(self,other);
	AI_PlayAni(self,"T_STAND_2_EAT");
};

func int ZS_MM_EatBody_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_EatBody_loop");
	if(!Hlp_IsValidNpc(other))
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_EatBody_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_EatBody_end");
	AI_PlayAni(self,"T_EAT_2_STAND");
};

func void ZS_MM_EatLureMeat()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_EatLureMeat");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_MM_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_ObserveIntruder);
	AI_PlayAni(self,"T_STAND_2_EAT");
};

func int ZS_MM_EatLureMeat_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_EatLureMeat_loop");
	B_Cycle_NPC();

	PrintI(Npc_GetStateTime(self));
	if(Npc_GetStateTime(self) > 5)
	{
		//Анимация поедания длится долго
		Npc_PerceiveAll(self);
		if(
			Wld_DetectItem(self,ITEM_KAT_FOOD)
		)
		{
			//Поиск еды
			if(Hlp_IsItem(item,ItBlankMuttonRaw))
			{
				//Удаление еды и завершение анимации
				Wld_RemoveItem(item);
				Npc_SetHungry(self,false);
				return LOOP_END;
			};
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_EatLureMeat_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_EatLureMeat_end");
	AI_PlayAni(self,"T_EAT_2_STAND");
};

func void B_MM_AssessEnemy()
{

	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessEnemy");
//	Print("B_MM_AssessEnemy");
	if(Npc_IsRespawning(self)){return;};

	if((Npc_GetDistToNpc(self,other) < self.aivar[AIV_MM_PercRange]) && Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(C_PreyToPredator(other,self))
		{
			Npc_SetTarget(self,other);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Attack,0,"");
		}
		else if(C_PreyToPredator(self,other))
		{
			Npc_SetTarget(self,other);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Flee,0,"");
		}
		else if(Wld_GetGuildAttitude(self.guild,other.guild) != ATT_HOSTILE)
		{
			return;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_AssessEnemy,0,"");
		};
	};
};

func void ZS_MM_AssessEnemy()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_AssessEnemy");
	Npc_SetPercTime(self,1);
//	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	if(self.aivar[AIV_MM_Behaviour] == HUNTER)
	{
		AI_Standup(self);
		AI_TurnToNPC(self,other);
		AI_PlayAni(self,"T_WARN");
		AI_SetWalkMode(self,NPC_WALK);
	};
	if((self.aivar[AIV_MM_Behaviour] == PASSIVE) || (self.aivar[AIV_MM_Behaviour] == PACKHUNTER))
	{
		AI_Standup(self);
		AI_LookAtNpc(self,other);
	};
};

func int ZS_MM_AssessEnemy_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_AssessEnemy_loop");
	if(Npc_GetDistToNpc(self,other) > self.aivar[AIV_MM_PercRange])
	{
		return LOOP_END;
	};
	if((Npc_GetDistToNpc(self,other) <= self.aivar[AIV_MM_PercRange]) && (Npc_GetDistToNpc(self,other) > self.aivar[AIV_MM_DrohRange]))
	{
		if((self.aivar[AIV_MM_Behaviour] == PASSIVE) || (self.aivar[AIV_MM_Behaviour] == PACKHUNTER))
		{
			if(!Npc_CanSeeNpc(self,other))
			{
				AI_TurnToNPC(self,other);
			};
		};
		if(self.aivar[AIV_MM_Behaviour] == HUNTER)
		{
			AI_GotoNpc(self,other);
		};
	};
	if((Npc_GetDistToNpc(self,other) <= self.aivar[AIV_MM_DrohRange]) && (Npc_GetDistToNpc(self,other) > self.aivar[AIV_MM_AttackRange]))
	{
		if((self.aivar[AIV_MM_Behaviour] == PASSIVE) || (self.aivar[AIV_MM_Behaviour] == PACKHUNTER))
		{
			if(Npc_GetStateTime(self) > self.aivar[AIV_MM_DrohTime])
			{
				Npc_SetTarget(self,other);
				Npc_ClearAIQueue(self);
				AI_StartState(self,ZS_MM_Attack,0,"");
			}
			else
			{
				AI_TurnToNPC(self,other);
				AI_PlayAni(self,"T_WARN");
				Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
			};
		};
		if(self.aivar[AIV_MM_Behaviour] == HUNTER)
		{
			AI_GotoNpc(self,other);
		};
	};
	if(Npc_GetDistToNpc(self,other) <= self.aivar[AIV_MM_AttackRange])
	{
		PrintSIS(self.name,32,other.name);
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_AssessEnemy_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_AssessEnemy_end");
	AI_StopLookAt(self);
};

func void B_MM_ReactToDamage()
{
	if(Npc_IsRespawning(self)){return;};

	PrintDebugNpc(PD_MST_FRAME,"B_MM_ReactToDamage");
	PrintGlobals(PD_MST_CHECK);

	Npc_GotDamage_Edge(self,other);
	PC_DialDamageToMonster();

	self.aivar[AIV_PLUNDERED] = PRIO_ATTACKER;
	if(C_PreyToPredator(self,other))
	{
		PrintDebugNpc(PD_MST_FRAME,"...Monster ist Beute");
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		Npc_PercDisable(self,PERC_ASSESSENEMY);
		AI_StartState(self,ZS_MM_Flee,0,"");
	}
	else
	{
		PrintDebugNpc(PD_MST_FRAME,"...Monster ist Jдger");
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		Npc_PercDisable(self,PERC_ASSESSENEMY);
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
};

func void B_MM_ReactToOthersDamage()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_ReactToOthersDamage");
	if(Npc_IsRespawning(self)){return;};

	B_MM_DeSynchronize();
	// Print("B_MM_ReactToOthersDamage");
	// PrintSIS(other.name,0,self.name);
	// PrintSIS(victim.name,1,self.name);
	
	Npc_GotDamage_Edge(victim,self);

	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};
	if((Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_FRIENDLY) && (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_FRIENDLY))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
	if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY) && (Wld_GetGuildAttitude(self.guild,victim.guild) != ATT_FRIENDLY))
	{
		Npc_SetTarget(self,victim);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
};

func void ReactInBattle_Scavenger_Invisible()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Scavenger_Invisible))
	{
		if(Random_IsProc(50))
		{
			Print("visible");
			
			Mdl_SetVisualBody(self,"Sca_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
		}
		else
		{
			Print("IN     visible");
			
			Mdl_SetVisualBody(self,"",9,9,"",9,9,-1);
		};
	};
};


func void B_MM_ReactToCombatDamage()
{
	Print("ReactToCombatDamage");
	
	PrintDebugNpc(PD_MST_FRAME,"B_MM_ReactToCombatDamage");
	Npc_GotDamage_Edge(self,other);
	self.aivar[AIV_MM_TEMP_PRIO] = PRIO_ATTACKER;
	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};

	PC_DialDamageToMonster();

	if(
		Npc_IsInFightMode(other,FMODE_MELEE)
	||	Npc_IsInFightMode(other,FMODE_FIST)
	)
	{
		Npc_SetTarget(self,other);
	};
};

func void ZS_MM_Attack()
{
	// Print("zs_mm_attack");
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Attack");
	PrintGlobals(PD_MST_DETAIL);
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);

	if(C_NpcIsMonsterMage(self))
	{
		B_FullStop(self);
		AI_StartState(self,ZS_MM_AttackMage,0,"");
		return;
	};
	if(other.aivar[AIV_INVINCIBLE])
	{
		AI_ContinueRoutine(self);
	};
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToCombatDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	if(self.aivar[AIV_MOVINGMOB] == TRUE)
	{
		Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_MM_SummonedByPCAssessOthersDamage);
	};
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
	Npc_GetTarget(self);
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
	// Npc_SendPassivePerc(self,PERC_ASSESSOTHERSDAMAGE,other,self);
	if(Npc_IsPlayer(other))
	{
		PC_Handler_Invoke();
	};
};

func int ZS_MM_Attack_Loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Attack_Loop");
	// Print("ZS_MM_Attack_Loop");
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);


	// Print(IntToString(Npc_GetTarget(self)));
	B_Cycle_NPC();
	// Print(IntToString(Npc_GetTarget(self)));
	if(other.attribute[ATR_HITPOINTS] <= 0)
	{
		B_MM_AssessBody();
		return LOOP_END;
	};
	if(self.aivar[AIV_MM_PARTYMEMBER])
	{
		if(self.aivar[AIV_MM_REAL_ID] == ID_DEMON)
		{
			if(PC_SummonSomeone())
			{
				return LOOP_END;
			};
		};
	};
	Npc_GetTarget(self);
	

	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		// if(
		// 	Hlp_GetInstanceID(self) == Hlp_GetInstanceID(SummonedByPC_SkeletonShield)
		// &&	Npc_IsPlayer(other)
		// )
		// {
		// 	Print("ОШИБКА скелет атакует мастера!");
			
		// 	if(Npc_GetNextTarget(self))
		// 	{
		// 		Print("есть новая цель");
				
		// 		PrintDebugString(PD_MST_CHECK,"...есть новая цель: ",other.name);
		// 	}
		// 	else
		// 	{
		// 		Print("доступных целей нет!");
		// 		PrintDebugNpc(PD_MST_CHECK,"...доступных целей нет!");
		// 		return LOOP_END;
		// 	};
		// };
		// if(Npc_IsSummonedByPC(self))
		// {
		// 	PrintSIS("имя цели: ",0,other.name);
		// };



		// Print("!C_NpcIsDown");

		PrintDebugNpc(PD_MST_LOOP,"...Цель существует!");
		if(C_BodyStateContains(other,BS_RUN) || C_BodyStateContains(other,BS_JUMP))
		{
			PrintDebugNpc(PD_MST_LOOP,"...Цель бежит или прыгает!");
			if(Npc_GetStateTime(self) > self.aivar[AIV_MM_FollowTime])
			{
				PrintDebugNpc(PD_MST_CHECK,"...Цель преследовалась слишком долго!");
				return LOOP_END;
			};
		}
		else if(C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE))
		{
			if(self.aivar[AIV_MM_FollowInWater] == FALSE)
			{
				return LOOP_END;
			};
		};



		if(
			self.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST
		&&	Npc_GetDistToNpc(self,other) > 800
		)
		{
			AI_Teleport(self,Npc_GetNearestWP(other));
		};



		if(other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			// Print("AI_Attack");
			Npc_SetStateTime(self,0);
			AI_Attack(self);
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Цель недействительна или неспособна к бою!");
		if(self.aivar[AIV_MM_Behaviour] == HUNTER)
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_EatBody,0,"");
		}
		else
		{
			if(Npc_IsSummonedByPC(self))
			{
				Print("ПОИСК НОВОЙ ЦЕЛИ..");
			};
			Npc_PerceiveAll(self);
			Npc_GetNextTarget(self);
			PrintGlobals(PD_ZS_DETAIL);
			if(
				Hlp_IsValidNpc(other)
			&&	!C_NpcIsDown(other)
			&&	!Npc_IsRespawning(other)
			)
			{
				if(Npc_IsSummonedByPC(self))
				{
					Print("ПОИСК НОВОЙ ЦЕЛИ.. новая цель найдена");
				};
				PrintDebugString(PD_MST_CHECK,"...neues Ziel gefunden: ",other.name);
			}
			else
			{
				if(Npc_IsSummonedByPC(self))
				{
					Print("ПОИСК НОВОЙ ЦЕЛИ.. доступных целей нет!");
				};
				PrintDebugNpc(PD_MST_CHECK,"...kein Neues Ziel vorhanden!");
				return LOOP_END;
			};
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Attack_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Attack_End");
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(SummonedByPC_SkeletonShield))
	{
		Print("skeleton's life ended..");
		Npc_SetHitpoints(self,0);
	};
	self.aivar[AIV_PLUNDERED] = PRIO_PREY;
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_PlayAni(self,"T_WARN");
	AI_Wait(self,1);

};

func void ZS_MM_Flee()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Flee");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
};

func int ZS_MM_Flee_Loop()
{
	return LOOP_END;
	Print("ZS_MM_Flee");
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Flee_Loop");
	B_Cycle_NPC();
	if(Npc_GetDistToNpc(self,other) < 2000)
	{
		AI_Flee(self);
		return 0;
	}
	else
	{
		self.wp = Npc_GetNearestWP(self);
	};
	return 1;
};

func void ZS_MM_Flee_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Flee_End");
};

func void B_MM_AssessWarn()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessWarn");
	if(Npc_IsRespawning(self)){return;};

	// Print("B_MM_AssessWarn");
	// Print(other.name);
	// Print(self.name);
	// Print(victim.name);
	B_Cycle_NPC();
	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};
	if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY) && (self.aivar[AIV_MM_Behaviour] == PACKHUNTER))
	{
		if(Npc_IsInState(other,ZS_MM_Attack))
		{
			Npc_SetTarget(self,victim);
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_MM_Attack,0,"");
		}
		else
		{
			AI_SetWalkMode(self,NPC_RUN);
			AI_GotoNpc(self,other);
			if(Wld_DetectNpc(self,victim,NOFUNC,-1))
			{
				AI_StartState(self,ZS_MM_AssessEnemy,0,"");
			};
		};
	};





	if(
		self.aivar[AIV_MM_REAL_ID] == ID_SWAMPFLY
	&&	other.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK
	)
	{
		if(Npc_IsInState(other,ZS_MM_Attack))
		{
			Npc_SetTarget(self,victim);
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_MM_Attack,0,"");
		};
	};



};
func void ZS_ezRespawn_EatGround()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_ezRespawn_EatGround");
	Npc_SetPercTime(self,2);
	self.aivar[AIV_PLUNDERED] = PRIO_PREY;
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"FP_ROAM"))
	{
		AI_GotoFP(self,"FP_ROAM");
	};
	AI_PlayAni(self,"T_STAND_2_EAT");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM1");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM2");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM3");
	Mdl_ApplyRandomAniFreq(self,"S_EAT",8);
};

func void ZS_ezRespawn_EatGround_Loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_ezRespawn_EatGround_Loop");
	B_Cycle_NPC();

	if(!Wld_IsTime(self.aivar[AIV_MM_EatGroundStart],0,self.aivar[AIV_MM_EatGroundEnd],0) && (self.aivar[AIV_MM_EatGroundStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
	};
};

func void ZS_ezRespawn_EatGround_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_ezRespawn_EatGround_End");
	AI_PlayAni(self,"T_EAT_2_STAND");
};

func void ZS_MM_Rtn_SkeletonRespawning()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_SkeletonRespawning");
	AI_PlayAni(self,"T_DEAD");
};
func int ZS_MM_Rtn_SkeletonRespawning_Loop()
{
	if(Npc_GetStateTime(self) == 3)
	{
		//Нужно допилить аниму, ибо после завершения визуальной компоненты
		//анима не завершается, а длится ещё секунду
		//это вносит определённые баг-моменты в геймплей
		AI_PlayAni(self,"T_SPAWN");
	};
	if(Npc_GetStateTime(self) > 4)
	{
		return LOOP_END;
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};
func void ZS_MM_Rtn_SkeletonRespawning_End()
{
	Npc_SetUndeadUprising(self,false);
	AI_StartState(self,ZS_MM_Attack,0,"");
};

func void ZS_MM_AllScheduler()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_AllScheduler");
	if(Npc_IsRespawning(self))
	{
		if(self.guild == GIL_SCAVENGER){AI_StartState(self,ZS_ezRespawn_EatGround,0,"");};
		if(self.guild == GIL_MEATBUG){AI_StartState(self,ZS_MM_Rtn_Wusel,0,"");};
		if(self.guild == GIL_SKELETON){AI_StartState(self,ZS_MM_Rtn_SkeletonRespawning,0,"");};
	};
	if(Wld_IsTime(self.aivar[AIV_MM_SleepStart],0,self.aivar[AIV_MM_SleepEnd],0) || (self.aivar[AIV_MM_SleepStart] == OnlyRoutine))
	{
		// Print("ZS_MM_Rtn_Sleep");
		AI_StartState(self,ZS_MM_Rtn_Sleep,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_MM_RestStart],0,self.aivar[AIV_MM_RestEnd],0) || (self.aivar[AIV_MM_RestStart] == OnlyRoutine))
	{
		// Print("ZS_MM_Rtn_Rest");
		AI_StartState(self,ZS_MM_Rtn_Rest,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_MM_RoamStart],0,self.aivar[AIV_MM_RoamEnd],0) || (self.aivar[AIV_MM_RoamStart] == OnlyRoutine))
	{
		// Print("ZS_MM_Rtn_Roam");
		if(
			self.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST
		&&	Npc_GetTarget(self)
		)
		{
			// Npc_SetTarget(self,other);
			AI_StartState(self,ZS_MM_Attack,0,"");
		};
		AI_StartState(self,ZS_MM_Rtn_Roam,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_MM_EatGroundStart],0,self.aivar[AIV_MM_EatGroundEnd],0) || (self.aivar[AIV_MM_EatGroundStart] == OnlyRoutine))
	{
		// Print("ZS_MM_Rtn_EatGround");
		AI_StartState(self,ZS_MM_Rtn_EatGround,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_MM_WuselStart],0,self.aivar[AIV_MM_WuselEnd],0) || (self.aivar[AIV_MM_WuselStart] == OnlyRoutine))
	{
		// Print("ZS_MM_Rtn_Wusel");
		AI_StartState(self,ZS_MM_Rtn_Wusel,1,"");
	}
	else
	{
		AI_StartState(self,ZS_MM_Rtn_Default,1,"");
	};
};

func void ZS_MM_Rtn_Default()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Default");
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	Npc_SetPercTime(self,1);
	AI_AlignToWP(self);
};

func void ZS_MM_Rtn_Default_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_Default_loop");
	B_Cycle_NPC();
};

func void ZS_MM_Rtn_Default_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Default_end");
};

func void B_MM_AssessEnemy_Sleep()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessEnemy_Sleep");
	B_Cycle_NPC();
	if(C_BodyStateContains(self,BS_LIE))
	{
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			B_MM_AssessEnemy();
		};
	}
	else
	{
		B_MM_AssessEnemy();
	};
};

func void B_MM_AssessQuietSound()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessQuietSound");
	PrintGlobals(PD_ZS_FRAME);
	// Print("B_MM_AssessQuietSound");
	B_Cycle_NPC();
	return;
	if(Snd_GetDistToSource(self) > 1000)
	{
		PrintDebugNpc(PD_ZS_FRAME,"... to far");
		Print("B_MM_AssessQuietSound end");
		return;
	};
	if(Npc_CanSeeSource(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...kann Gerдuschquelle sehen!");
		Print("B_MM_AssessQuietSound Npc_CanSeeSource");
		if(Snd_IsSourceNpc(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...Gerдuschquelle ist SC!");
			if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE)
			{
				PrintDebugNpc(PD_ZS_Check,"...SC ist HOSTILE!");
				Print("B_MM_AssessQuietSound to ZS_MM_AssessEnemy");
				Npc_ClearAIQueue(self);
				B_MM_AssessEnemy();
			};
		}
		else
		{
			AI_GotoSound(self);
			PrintSIS("Item: ",0,item.name);
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...kann NICHT Gerдuschquelle sehen!");
		if(Snd_IsSourceNpc(self))
		{
			Npc_ClearAIQueue(self);
			AI_TurnToNPC(self,other);
		}
		else
		{
			AI_GotoSound(self);
			PrintSIS("Item: ",0,item.name);
		};
	};
};
func void B_MM_AssessQuietSound_Sleep()
{
	PrintDebugNpc(PD_MST_FRAME,"B_MM_AssessQuietSound_Sleep");
	B_Cycle_NPC();
	if(Npc_GetDistToNpc(self,other) <= self.aivar[AIV_MM_DrohRange])
	{
		if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE)
		{
			B_MM_AssessEnemy();
		};
	};
};

func void ZS_MM_Rtn_Sleep()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Sleep");
	Npc_SetPercTime(self,2);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_MM_AssessQuietSound_Sleep);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy_Sleep);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"FP_SLEEP"))
	{
		AI_GotoFP(self,"FP_SLEEP");
	};
	AI_PlayAni(self,"T_PERCEPTION");
	AI_PlayAniBS(self,"T_STAND_2_SLEEP",BS_LIE);
};

func void ZS_MM_Rtn_Sleep_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_Sleep_loop");
	B_Cycle_NPC();
	if(!Wld_IsTime(self.aivar[AIV_MM_SleepStart],0,self.aivar[AIV_MM_SleepEnd],0) && (self.aivar[AIV_MM_SleepStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
	};
};

func void ZS_MM_Rtn_Sleep_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Sleep_end");
	AI_PlayAniBS(self,"T_SLEEP_2_STAND",BS_STAND);
};

func void ZS_MM_MoveToFoundedFood()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_MoveToFoundedFood");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_SetPercTime(self,1);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
};
func int ZS_MM_MoveToFoundedFood_Loop()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_MoveToFoundedFood_Loop");
	B_Cycle_NPC();
	if(Npc_GetStateTime(self) > 10)
	{
		return LOOP_END;
	};
	Npc_PerceiveAll(self);
	if(Wld_DetectItem(self,ITEM_KAT_FOOD))
	{
		//Поиск еды
		if(
			Hlp_IsItem(item,ItBlankMuttonRaw)
		)
		{
			//Найдено мясо
			if(Npc_GetDistToItem(self,item) > DIST_AI_GotoItem)
			{
				AI_GotoItem(self,item);
			}
			else
			{
				AI_StartState(self,ZS_MM_EatLureMeat,0,"");
				return LOOP_END;
			};
		};
	};
	return LOOP_CONTINUE;
};
func void ZS_MM_MoveToFoundedFood_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_MoveToFoundedFood_End");
};


func void ZS_MM_Rtn_Roam()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Roam");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSc);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_MM_AssessQuietSound);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_MM_Rtn_Roam_loop()
{
	var int randomMove;
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_Roam_loop");
	B_Cycle_NPC();
	if(!Wld_IsTime(self.aivar[AIV_MM_RoamStart],0,self.aivar[AIV_MM_RoamEnd],0) && (self.aivar[AIV_MM_RoamStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_WOLF)
	{
		Npc_RandomizeHungry(self);
		Npc_PerceiveAll(self);
		if(
			Npc_IsHungry(self)
		&&	Wld_DetectItem(self,ITEM_KAT_FOOD)
		)
		{
			//Волк ищет еду
			if(
				Hlp_IsValidItem(item)
			&&	Hlp_IsItem(item,ItBlankMuttonRaw)
			)
			{
				//Волк нашёл еду
				if(Npc_GetDistToItem(self,item) > DIST_AI_GotoItem)
				{
					//Волк идёт к еде, которая далеко
					AI_GotoItem(self,item);
					AI_StartState(self,ZS_MM_MoveToFoundedFood,0,"");
					return LOOP_END;
				}
				else
				{
					//Волк ест
					AI_StartState(self,ZS_MM_EatLureMeat,0,"");
					return LOOP_END;
				};
			};
		};
	};
	if(Hlp_Random(100) <= 20)
	{
		if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoNextFP(self,"FP_ROAM");
		}
		else
		{
			AI_GotoWP(self,Npc_GetNearestWP(self));
		};
	}
	else
	{
		randomMove = Hlp_Random(2);
		if(randomMove == 0)
		{
			AI_PlayAni(self,"R_ROAM1");
		};
		if(randomMove == 1)
		{
			AI_PlayAni(self,"R_ROAM2");
		};
		if(randomMove == 2)
		{
			AI_PlayAni(self,"R_ROAM3");
		};
	};
	return LOOP_CONTINUE;
	// return LOOP_END;
};

func void ZS_MM_Rtn_Roam_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Roam_end");
	PrintSIS("wolf ZS_MM_Rtn_Roam_end..",0,item.name);
};

func void ZS_MM_Rtn_Rest()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Rest");
	Npc_SetPercTime(self,2);
	self.aivar[AIV_PLUNDERED] = PRIO_PREY;
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSc);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_MM_AssessQuietSound);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"FP_ROAM"))
	{
		AI_GotoFP(self,"FP_ROAM");
	};
};

func void ZS_MM_Rtn_Rest_Loop()
{
	var int randomMove;
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_Rest_Loop");
	B_Cycle_NPC();
	if(!Wld_IsTime(self.aivar[AIV_MM_RestStart],0,self.aivar[AIV_MM_RestEnd],0) && (self.aivar[AIV_MM_RestStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
	};
	if(Hlp_Random(1000) <= 5)
	{
		randomMove = Hlp_Random(2);
		AI_Standup(self);
		if(randomMove == 0)
		{
			AI_PlayAni(self,"R_ROAM1");
		};
		if(randomMove == 1)
		{
			AI_PlayAni(self,"R_ROAM2");
		};
		if(randomMove == 2)
		{
			AI_PlayAni(self,"R_ROAM3");
		};
	};
};

func void ZS_MM_Rtn_Rest_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Rest_End");
	AI_PlayAni(self,"T_REST_2_STAND");
};

func void ZS_MM_Rtn_EatGround()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_EatGround");
	Npc_SetPercTime(self,2);
	self.aivar[AIV_MM_TEMP_PRIO] = PRIO_PREY;
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	AI_SetWalkMode(self,NPC_WALK);
	B_MM_DeSynchronize();
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"FP_ROAM"))
	{
		AI_GotoFP(self,"FP_ROAM");
	};
	AI_PlayAni(self,"T_STAND_2_EAT");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM1");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM2");
	Mdl_ApplyRandomAni(self,"S_EAT","R_ROAM3");
	Mdl_ApplyRandomAniFreq(self,"S_EAT",8);
};

func void ZS_MM_Rtn_EatGround_Loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_EatGround_Loop");
	B_Cycle_NPC();
	if(!Wld_IsTime(self.aivar[AIV_MM_EatGroundStart],0,self.aivar[AIV_MM_EatGroundEnd],0) && (self.aivar[AIV_MM_EatGroundStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
	};
};

func void ZS_MM_Rtn_EatGround_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_EatGround_End");
	AI_PlayAni(self,"T_EAT_2_STAND");
};

func void ZS_MM_Rtn_Wusel()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Wusel");
	Print("ZS_MM_Rtn_Wusel");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	AI_SetWalkMode(self,NPC_RUN);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_MM_Rtn_Wusel_loop()
{
	var int randomMove;
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Rtn_Wusel_loop");
	B_Cycle_NPC();

	if(!Wld_IsTime(self.aivar[AIV_MM_WuselStart],0,self.aivar[AIV_MM_WuselEnd],0) && (self.aivar[AIV_MM_WuselStart] != OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
		return LOOP_END;
	};

	if(Hlp_Random(100) <= 20)
	{
		if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoNextFP(self,"FP_ROAM");
		}
		else
		{
			AI_GotoWP(self,Npc_GetNearestWP(self));
		};
	}
	else
	{
		randomMove = Hlp_Random(2);
		if(randomMove == 0)
		{
			AI_PlayAni(self,"R_ROAM1");
		};
		if(randomMove == 1)
		{
			AI_PlayAni(self,"R_ROAM2");
		};
		if(randomMove == 2)
		{
			AI_PlayAni(self,"R_ROAM3");
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Wusel_end()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Rtn_Wusel_end");
};

func void ZS_MM_Summoned()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Summoned");
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSENEMY,ZS_MM_Attack);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	AI_Standup(self);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	Npc_SetAttitude(self,ATT_HOSTILE);
};

func int ZS_MM_Summoned_loop()
{
	PrintDebugNpc(PD_MST_LOOP,"ZS_MM_Summoned_loop");
	PrintGlobals(PD_MST_DETAIL);
	B_Cycle_NPC();
	if(Npc_GetNextTarget(self))
	{
		PrintDebugNpc(PD_MST_CHECK,"...neuer Gegner gefunden");
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
	}
	else if(Npc_GetStateTime(self) > 5)
	{
		return LOOP_END;
	}
	else
	{
		AI_TurnToNPC(self,other);
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Summoned_End()
{
	PrintDebugNpc(PD_MST_FRAME,"ZS_MM_Summoned_End");
	Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute);
};

func void zs_mm_minecrawler_omgate()
{
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	self.wp = "OM_CAVE3_19";
	B_MM_DeSynchronize();
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,self.wp);
	AI_StartState(self,ZS_MM_Rtn_Wusel,1,"");
};

