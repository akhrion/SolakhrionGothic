func void GameAchivements()
{
    // Print("cccccccccccccccccccccccccccccc");
	// PrintSIS(IntToString(iDeath),0,IntToString(cDeath));
	if(iDeath == 2)
	{
        // Print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		Log_CreateTopic(ACHIEVEMENTS,LOG_NOTE);
		Log_AddEntry(ACHIEVEMENTS,ACHIEVEMENTSALOTOFDEATH);
	};
	if(iSaves == 300)
	{
		Log_CreateTopic(ACHIEVEMENTS,LOG_NOTE);
		Log_AddEntry(ACHIEVEMENTS,ACHIEVEMENTSALOTOFSAVES);
	};
	if(iLoadings == 300)
	{
		Log_CreateTopic(ACHIEVEMENTS,LOG_NOTE);
		Log_AddEntry(ACHIEVEMENTS,ACHIEVEMENTSALOTOFLOADINGS);
	};
};