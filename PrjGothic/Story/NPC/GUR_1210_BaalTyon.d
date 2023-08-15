
instance GUR_1210_BaalTyon(Npc_Default)
{
	name[0] = "���� ����";
	npcType = npctype_friend;
	guild = GIL_GUR;
	level = 28;

	voice = 11;
	id = 1210;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 376;
	attribute[ATR_HITPOINTS] = 376;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,1,"Hum_Head_Psionic",24,2,gur_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,4);
	CreateInvItem(self,itarrune_5_5_windfist);
	daily_routine = Rtn_start_1210;
	fight_tactic = FAI_HUMAN_MAGE;
};


func void Rtn_start_1210()
{
	TA_Teaching(6,30,23,50,"PSI_TEMPLE_COURT_GURU");
	TA_Sleep(23,50,6,30,"PSI_28_HUT_IN");
};

func void Rtn_PrepareRitual_1210()
{
	TA_SitAround(16,0,23,0,"PSI_TEMPLE_IN_05");
	TA_SitAround(23,0,16,0,"PSI_TEMPLE_IN_05");
};

func void rtn_ritual_1210()
{
	TA_Stay(16,0,23,0,"PSI_TEMPLE_COURT_GURU");
	TA_Stay(23,0,16,0,"PSI_TEMPLE_COURT_GURU");
};

func void Rtn_OMFull_1210()
{
	TA_SitAround(16,0,23,0,"PSI_TEMPLE_IN_05");
	TA_SitAround(23,0,16,0,"PSI_TEMPLE_IN_05");
};

func void Rtn_FMTaken_1210()
{
	TA_SitAround(16,0,23,0,"PSI_TEMPLE_IN_05");
	TA_SitAround(23,0,16,0,"PSI_TEMPLE_IN_05");
};

func void Rtn_OrcAssault_1210()
{
	TA_SitAround(16,0,23,0,"PSI_TEMPLE_IN_05");
	TA_SitAround(23,0,16,0,"PSI_TEMPLE_IN_05");
};

