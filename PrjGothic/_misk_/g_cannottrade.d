
func void g_cannottrade()
{
	Print("g_cannottrade");
	
	var C_Npc trader;
	PrintScreen(_STR_MESSAGE_TRADE_FAILURE,-1,60,"font_old_10_white.tga",2);
	trader = Hlp_GetNpc(hero.aivar[AIV_LASTTARGET]);
	B_Say(trader,hero,"$YOUWANNAFOOLME");
};

