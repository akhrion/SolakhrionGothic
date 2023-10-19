
func void ZS_SitCampfire()
{
	GuardPerception();
	if(!C_BodyStateContains(self,BS_SIT))
	{
		AI_Standup(self);
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
		if(Wld_IsFPAvailable(self,"FP_CAMPFIRE"))
		{
			AI_GotoFP(self,"FP_CAMPFIRE");
		}
		else
		{
			AI_StartState(self,ZS_Stand,0,"");
		};
		self.aivar[AIV_HangAroundStatus] = 1;
		AI_PlayAniBS(self,"T_STAND_2_SIT",BS_SIT);
	};
	AI_AlignToFP(self);
};

func void ZS_SitCampfire_loop()
{
	if(Npc_GetHP(self) < Npc_GetHPMax(self))
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,1);
	};
	AI_Wait(self,1);
};

func void ZS_SitCampfire_end()
{
	AI_PlayAni(self,"T_SIT_2_STAND");
};

