////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Œ“¬≈◊¿ﬁŸ»≈ «¿ ”Õ» ¿À‹ÕŒ≈ œŒ¬≈ƒ≈Õ»≈ Õœ—
////////////////////////////////////////////////////////////////////////////////
func void SpecBehavior_RespawnCountdown()
{
	if(self.spawnDelay)
	{
		self.spawnDelay -=1;
	}
	else
	{
		Npc_SetRespawning(self,false);
	};
};
func void SpecBehavior_Human()
{
    if(!C_NpcIsHuman(self)){return;};
	var int oth;
	oth = Hlp_GetInstanceID(other);

    Npc_PerceiveAll(self);
    if(!Wld_DetectNpc(self,-1,NOFUNC,-1)){return;};
    if(
        other.guild == GIL_MEATBUG
    &&  !Npc_IsRespawning(other)
    &&  Npc_GetDistToNpc(self,other) < 150
    )
    {
        Npc_SetHP(other,0);
        NpcDeathXP_GiveTo(other,self);
    };
	other = Hlp_GetNpc(oth);
};
func void SpecBehavior_Meatbug_IamWasTrampled()
{
    if(Npc_IsRespawning(self)){return;};
	Npc_PerceiveAll(self);
	if(!Wld_DetectNpc(self,-1,NOFUNC,-1)){return;};

	if(
		other.guild == GIL_MEATBUG
	||	Npc_GetDistToNpc(self,other) > 150
	){return;};

    // ShowMsg_AutoRow("SpecBehavior_Meatbug_IamWasTrampled");
	Npc_SetHP(self,0);
    NpcDeathXP_GiveTo(self,other);
};
func void SpecBehavior_Meatbug()
{
	if(
        !Npc_IsAnimal(self)
	||  self.aivar[AIV_MM_REAL_ID] != ID_MEATBUG
    ){return;};
    SpecBehavior_Meatbug_IamWasTrampled();
};
func void SpecBehavior_Swampfly()
{
	if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPFLY)
	{
		Print("¯Â¯ÓÌ¸");
		AI_Dodge(self);
		if(!(
			Npc_IsInState(self,ZS_MM_Attack)
		||	Npc_WasInState(self,ZS_MM_Attack)
		))
		{
			Print("asd");
			var int swampsharkFound;
			Npc_PerceiveAll(self);
			// swampsharkFound = Wld_DetectNpc(self,Swampshark,ZS_MM_Attack,-1);
			// Print(other.name);
			if(
				Wld_DetectNpc(self,Swampshark,ZS_MM_Attack,-1)
			// && !Npc_IsDead(other)
			)
			{
				PrintSIS("other.name  ",0,other.name);
	// 			Npc_GetTarget(other);
	// 			Npc_SetTarget(self,other);
	// 			AI_StartState(self,ZS_MM_Attack,0,"");
			};
		};
	};
};
func void SpecBehavior_Swampshark()
{
	if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)
	{
		// Print("ID_SWAMPSHARK");
		var int swampsharkInst;
		var C_Npc swampshark;
		swampsharkInst = Hlp_GetInstanceID(self);
		swampshark = Hlp_GetNpc(self);

		var int swampsharkTargetInst;
		var C_Npc swampsharkTarget;
		swampsharkTargetInst = Hlp_GetInstanceID(other);
		swampsharkTarget = Hlp_GetNpc(other);


		if(
			Npc_IsInState(self,ZS_MM_Attack) || Npc_WasInState(self,ZS_MM_Attack)
		||	Npc_IsInState(self,ZS_MM_Attack_Loop) || Npc_WasInState(self,ZS_MM_Attack_Loop)
		)
		{
			// Print("ID_SWAMPSHARK ZS_MM_Attack");
			if(Npc_IsDead(Swampfly_01))
			{
				// Print("ID_SWAMPSHARK ZS_MM_Attack Wld_InsertNpc");
				// Wld_InsertNpc(Swampfly_01,Npc_GetNearestWP(swampshark));
				Wld_InsertNpc(Swampfly_01,"OW_PATH_BLOODFLY09_SPAWN01");
				self = Hlp_GetNpc(swampshark);
			}
			else if(Npc_GetDistToNpc(Swampfly_01,swampshark) > 2000)
			{
				// Print("ID_SWAMPSHARK ZS_MM_Attack AI_Teleport");
				AI_Teleport(Swampfly_01,Npc_GetNearestWP(swampshark));
			};
			// var C_Npc swampfly01;
			// swampfly01 = Hlp_GetNpc(Swampfly_01);
			// if(!Npc_GetTarget(swampfly01)){Npc_SetTarget(swampfly01,swampsharkTarget);};
			// other = Hlp_GetNpc(swampsharkTarget);
			// PrintSIS(Npc_GetNearestWP(swampshark),Npc_GetTarget(self),other.name);

			return;


			if(Npc_IsDead(Swampfly_02))
			{
				Wld_InsertNpc(Swampfly_02,Npc_GetNearestWP(swampshark));
			}
			else if(Npc_GetDistToNpc(Swampfly_02,swampshark) > 2000)
			{
				AI_Teleport(Swampfly_02,Npc_GetNearestWP(swampshark));
			};
			if(!Npc_GetTarget(self)){Npc_SetTarget(self,swampsharkTarget);};
			PrintSIS(self.name,0,swampsharkTarget.name);
			AI_StartState(self,ZS_MM_Attack,0,"");
		};
		Npc_SetTarget(swampshark,swampsharkTarget);
	};
};
func void SpecBehavior()
{
	SpecBehavior_RespawnCountdown();
    SpecBehavior_Human();
	SpecBehavior_Meatbug();
	SpecBehavior_Swampfly();
	SpecBehavior_Swampshark();
	Npc_IWasLightedByOther();
};
