
prototype Mst_Default_MinecrawlerQueen(C_Npc)
{
	name[0] = "�������� ��������";
	guild = GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID] = ID_MINECRAWLERQUEEN;
	level = 200;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 40;
	protection[PROT_FLY] = 1000;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_MINECRAWLERQUEEN;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 1;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
};

func void Set_MinecrawlerQueen_Visuals()
{
	Mdl_SetVisual(self,"CrwQueen.mds");
	Mdl_SetVisualBody(self,"CrQ_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance MinecrawlerQueen(Mst_Default_MinecrawlerQueen)
{
	Set_MinecrawlerQueen_Visuals();
	Npc_SetToFistMode(self);
};

