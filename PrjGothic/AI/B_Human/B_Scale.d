const int NPC_STRENGTH_Weak = 30;
const int NPC_STRENGTH_Default = 50;
const int NPC_STRENGTH_Strong = 70;
const int NPC_STRENGTH_IncrediblyStrong = 90;
func void B_Scale(var C_Npc n)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_Scale");
	if(n.attribute[ATR_STRENGTH] < NPC_STRENGTH_Weak)
	{
		Mdl_SetModelScale(n,0.9,1,0.9);
	}
	else if(n.attribute[ATR_STRENGTH] < NPC_STRENGTH_Default)
	{
		Mdl_SetModelScale(n,1,1,1);
	}
	else if(n.attribute[ATR_STRENGTH] < NPC_STRENGTH_Strong)
	{
		Mdl_SetModelScale(n,1.1,1,1.1);
	}
	else
	{
		Mdl_SetModelScale(n,1.2,1,1.2);
	};
};

