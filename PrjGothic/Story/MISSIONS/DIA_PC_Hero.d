instance PC_BS_Sit(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = PC_BS_Sit_Condition;
	information = PC_BS_Sit_Info;
	important = 0;
	permanent = 1;
	description = "Сесть на землю";
};
func int PC_BS_Sit_Condition()
{
	if((Npc_RefuseTalk(self) == FALSE) && (PLAYER_MOBSI_PRODUCTION == MOBSI_PC_BS_Change))
	{
		return TRUE;
	};
};
func void PC_BS_Sit_Info()
{
    AI_PlayAniBS(self,"T_STAND_2_SIT",BS_SIT);
    AI_StopProcessInfos(self);
    self.aivar[AIV_INVINCIBLE] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_PC_BS_ChangeEnd;
};
