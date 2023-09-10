// B_MM_AssessPlayer()
// B_RefreshArmor()
// B_RefreshAtInsert()
// G_NoKey()
// Player_Hotkey_Lame_Heal()
// Player_Hotkey_Lame_Potion()
// Player_Hotkey_Screen_Map()
// Player_MOB_Another_Is_Using()
// Player_MOB_Missing_Item()
// Player_MOB_Missing_Key()
// Player_MOB_Missing_Key_Or_Lockpick()
// Player_MOB_Wrong_Side()
// Player_MOB_Never_Open()
// Player_MOB_Too_Far_Away()
// Player_Plunder_Is_Empty()
// Player_Trade_Not_Enough_Gold()

func void G_CanNotCast(var int bIsPlayer,var int nCircleNeeded,var int nCirclePossessed)
{
	var int nDifference;
	var string strDifference;
	var string strMessage;
	if((nCircleNeeded == 7) && bIsPlayer)
	{
		strMessage = " линок сломан, € не могу использовать его в бою.";
		G_PrintScreen(strMessage);
		return;
	};
	if((nCircleNeeded == 8) && bIsPlayer)
	{
		strMessage = "“олько шаманы орков знают, как пользоватьс€ этим посохом.";
		G_PrintScreen(strMessage);
		return;
	};
	strMessage = _STR_ATTRIBUTE_MAGIC_CIRCLE;
	strMessage = ConcatStrings(strMessage,IntToString(nCircleNeeded));
	strMessage = ConcatStrings(strMessage," ");
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_LEVELS);
	strMessage = ConcatStrings(strMessage,_STR_CANNOTUSE_POST);
	if(bIsPlayer)
	{
		G_PrintScreen(strMessage);
	};
};

