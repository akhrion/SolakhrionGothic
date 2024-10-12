func void TrueVision(var C_Item itm, var C_Npc npc)
{
	if(npc.attribute[ATR_MANA_MAX] > 10)
	{
		Npc_GetInvItem(npc,Hlp_GetInstanceID(itm));
		item.name = "Кольцо рукожопа";
		item.description = "Кольцо рукожопа";
	};
};
