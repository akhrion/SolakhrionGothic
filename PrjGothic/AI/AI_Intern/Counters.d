func void DEATH_Counter()
{
	if(cDeath > iDeath)
	{
		iDeath = cDeath;
	}
	else
	{
		iDeath += cDeath;
	};
};
func void LOADING_Counter()
{
	if(cLoadings > iLoadings)
	{
		iLoadings = cLoadings;
	}
	else
	{
		iLoadings += cLoadings;
	};
};
func void Counters()
{
	LOADING_Counter();
	DEATH_Counter();
};
