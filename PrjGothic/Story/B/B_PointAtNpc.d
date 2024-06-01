
func void B_PointAtNpc(var C_Npc slf,var C_Npc oth,var C_Npc targ)
{
	AI_WaitTillEnd(slf,oth);
	if(!Npc_CanSeeNpc(slf,targ))
	{
		AI_TurnToNpc(slf,targ);
	};
	AI_PointAtNpc(slf,targ);
	B_Say(slf,oth,"$THEREHEIS");
	AI_StopPointAt(slf);
	if(!Npc_CanSeeNpc(slf,oth))
	{
		AI_TurnToNpc(slf,oth);
	};
};

