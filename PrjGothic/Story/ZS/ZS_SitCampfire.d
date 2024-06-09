
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
	if(!(self.aivar[AIV_FREEMAN] & AIV_FREEMAN_INITIALIZED))
	{
		self.aivar[AIV_FREEMAN] = self.aivar[AIV_FREEMAN] | AIV_FREEMAN_INITIALIZED;
		Random_AttributesByLevel(self);
	};
	PrintI(self.aivar[AIV_FREEMAN] & AIV_FREEMAN_INITIALIZED);
};

func void ZS_SitCampfire_loop()
{
	Recovering_ByCampfire(self);
	AI_Wait(self,1);
};

func void ZS_SitCampfire_end()
{
	AI_PlayAni(self,"T_SIT_2_STAND");
};

