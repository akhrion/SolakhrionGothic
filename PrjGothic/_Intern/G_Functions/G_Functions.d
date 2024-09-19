
func void Npc_GiveItemsToOther(var C_Npc giver,var C_Item itm,var C_Npc taker,var int amount)
{
	var int iItem;
	iItem = Hlp_GetInstanceID(itm);
	Npc_RemoveInvItems(giver,iItem,amount);
	CreateInvItems(taker,iItem,amount);
};
func void Show_TradeMsg(var string msg)
{
	PrintScreen(msg,-1,37,"FONT_OLD_10_WHITE.TGA",3);
};
func void Show_TradeMsg_SI(var string msg,var int amount)
{
	PrintScreen(ConcatStrings(msg,IntToString(amount)),-1,37,"FONT_OLD_10_WHITE.TGA",3);
};
func void Show_TradeMsg_SIS(var string msg,var int amount,var string msg2)
{
	PrintScreen(
		ConcatStrings(ConcatStrings(msg,IntToString(amount)),msg2),
	-1,37,"FONT_OLD_10_WHITE.TGA",3);
};
