
instance PC_Psionic(Npc_Default)
{
	name[0] = "������";
	npcType = npctype_friend;
	guild = GIL_NOV;
	level = 999;
	voice = 5;
	id = 4;

	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 35;
	attribute[ATR_MANA_MAX] = 50;
	attribute[ATR_MANA] = 50;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	protection[PROT_FIRE] = 1000;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,0,"Hum_Head_Bald",17,2,nov_armor_h);
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	fight_tactic = FAI_HUMAN_Strong;
	aivar[AIV_IMPORTANT] = TRUE;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	EquipItem(self,Streitschlichter);
	CreateInvItem(self,ItFoSoup);
	CreateInvItems(self,ItFo_Potion_Health_02,3);
	daily_routine = Rtn_start_4;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 1500;
};


func void Rtn_start_4()
{
	TA_Smalltalk(8,0,23,0,"PSI_GUARD_TREE_EX");
	TA_Smalltalk(23,0,8,0,"PSI_GUARD_TREE_EX");
};

func void rtn_startch2_4()
{
	TA_Smalltalk(8,0,23,0,"PSI_GUARD_TREE_EX");
	TA_Sleep(23,0,8,0,"PSI_GUARD_TREE_IN");
};

func void Rtn_FortressWait_4()
{
	TA_Stay(0,0,23,0,"LOCATION_19_01");
	TA_Stay(23,0,24,0,"LOCATION_19_01");
};

func void Rtn_FortressFollow_4()
{
	TA_FollowPC(0,0,23,0,"LOCATION_19_01");
	TA_FollowPC(23,0,24,0,"LOCATION_19_01");
};

func void Rtn_BALKON_4()
{
	TA_Stay(0,0,23,0,"LOCATION_19_03_SECOND_ETAGE_BALCON");
	TA_Stay(23,0,24,0,"LOCATION_19_03_SECOND_ETAGE_BALCON");
};

func void Rtn_WaitAtFocus_4()
{
	TA_Stay(0,0,23,0,"LOCATION_19_03_PATH_RUIN7");
	TA_Stay(23,0,24,0,"LOCATION_19_03_PATH_RUIN7");
};

func void Rtn_BOOK_4()
{
	TA_ReadBook(0,0,23,0,"LOCATION_19_03_ROOM6_BARRELCHAMBER");
	TA_ReadBook(23,0,24,0,"LOCATION_19_03_ROOM6_BARRELCHAMBER");
};

func void Rtn_GuideToSmith_4()
{
	TA_GuidePC(8,0,23,0,"PSI_SMITH_IN");
	TA_GuidePC(23,0,8,0,"PSI_SMITH_IN");
};

func void Rtn_GuideToTempel_4()
{
	TA_GuidePC(8,0,23,0,"PSI_TEMPLE_NOVIZE_PR");
	TA_GuidePC(23,0,8,0,"PSI_TEMPLE_NOVIZE_PR");
};

func void Rtn_GuideToTrain_4()
{
	TA_GuidePC(8,0,23,0,"PSI_PATH_9_4");
	TA_GuidePC(23,0,8,0,"PSI_PATH_9_4");
};

func void Rtn_GuideToHerb_4()
{
	TA_GuidePC(8,0,23,0,"PSI_WALK_06");
	TA_GuidePC(23,0,8,0,"PSI_WALK_06");
};

func void rtn_reunion_4()
{
	TA_Guard(16,0,0,5,"LOCATION_02_03");
	TA_Sleep(0,5,8,5,"LOCATION_02_07");
	TA_Smalltalk(8,5,16,0,"LOCATION_02_04");
};

