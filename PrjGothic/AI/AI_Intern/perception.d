
const int PERC_DIST_CLOSE = 100;
const int PERC_DIST_FLEE = 300;
const int PERC_DIST_DIALOG = 500;
const int PERC_DIST_WATCHFIGHT = 600;
const int PERC_DIST_INTERMEDIAT = 1000;
const int PERC_DIST_MAX = 3000;

func void b_setcutsceneperceptions()
{
	PrintDebugNpc(PD_ZS_Check,self.name);
	PrintDebugNpc(PD_ZS_Check,"CutscenePerceptions");
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
};

func void InitPerceptions()
{
	Perc_SetRange(PERC_ASSESSMURDER,HAI_DIST_RANGED);
	Perc_SetRange(PERC_ASSESSDEFEAT,HAI_DIST_RANGED);
	Perc_SetRange(PERC_ASSESSDAMAGE,PERC_DIST_FLEE);
	Perc_SetRange(PERC_ASSESSOTHERSDAMAGE,PERC_DIST_INTERMEDIAT);
	Perc_SetRange(PERC_ASSESSTHREAT,HAI_DIST_RANGED);
	Perc_SetRange(PERC_ASSESSREMOVEWEAPON,PERC_DIST_MAX);
	Perc_SetRange(PERC_OBSERVEINTRUDER,HAI_DIST_OBSERVEINTRUDER);
	Perc_SetRange(PERC_ASSESSFIGHTSOUND,HAI_DIST_HELPATTACKEDCHARGES);
	Perc_SetRange(PERC_ASSESSQUIETSOUND,5000);
	Perc_SetRange(PERC_ASSESSWARN,PERC_DIST_MAX);
	Perc_SetRange(PERC_CATCHTHIEF,HAI_DIST_CATCHTHIEF);
	Perc_SetRange(PERC_ASSESSTHEFT,HAI_DIST_ASSESSTHEFT);
	Perc_SetRange(PERC_ASSESSCALL,PERC_DIST_INTERMEDIAT);
	Perc_SetRange(PERC_ASSESSTALK,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_ASSESSMAGIC,HAI_DIST_RANGED);
	Perc_SetRange(PERC_ASSESSSTOPMAGIC,HAI_DIST_RANGED);
	Perc_SetRange(PERC_MOVEMOB,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_MOVENPC,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_DRAWWEAPON,HAI_DIST_MELEE);
	Perc_SetRange(PERC_OBSERVESUSPECT,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_NPCCOMMAND,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_ASSESSCASTER,HAI_DIST_ASSESSCASTER);
	Perc_SetRange(PERC_ASSESSSURPRISE,PERC_DIST_DIALOG);
	Perc_SetRange(PERC_ASSESSENTERROOM,HAI_DIST_ACTIONRANGE);
	Perc_SetRange(PERC_ASSESSUSEMOB,HAI_DIST_DETECTUSEMOB);
};

func void GuardPerception()
{
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_AssessQuietSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_ReactToCall);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_MOVEMOB,B_MoveMob);
	Npc_PercEnable(self,PERC_MOVENPC,B_MoveNpc);
	Npc_SetPercTime(self,1.0);
};

func void ObservingPerception()
{
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_AssessQuietSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_ObserveIntruder);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_ReactToCall);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_MOVEMOB,B_MoveMob);
	Npc_PercEnable(self,PERC_MOVENPC,B_MoveNpc);
	Npc_SetPercTime(self,1.0);
};

func void OccupiedPerception()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_AssessCaster);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_OBSERVESUSPECT,B_ObserveSuspect);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_AssessTalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_ReactToCall);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_MOVEMOB,B_MoveMob);
	Npc_PercEnable(self,PERC_MOVENPC,B_MoveNpc);
	Npc_SetPercTime(self,1.0);
};

func void DeepSleepPerception()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_TossAndTurn);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_TossAndTurn);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_TossAndTurn);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_TossAndTurn);
	Npc_PercEnable(self,PERC_ASSESSCALL,B_TossAndTurn);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_SetPercTime(self,1.0);
};

func void LightSleepPerception()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_AssessSC);
	Npc_PercEnable(self,PERC_ASSESSWARN,ZS_WakeUp);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,ZS_WakeUp);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_SleepQuietSound);
	Npc_PercEnable(self,PERC_ASSESSTALK,ZS_WakeUp);
	Npc_PercEnable(self,PERC_ASSESSCALL,ZS_WakeUp);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_SetPercTime(self,1.0);
};

func void B_SetPerception(var C_Npc self)
{
	ObservingPerception();
};

