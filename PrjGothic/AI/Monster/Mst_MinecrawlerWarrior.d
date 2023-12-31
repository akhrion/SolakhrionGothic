
prototype Mst_Default_MinecrawlerWarrior(C_Npc)
{
	name[0] = "������-����";
	guild = GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID] = ID_MINECRAWLERWARRIOR;
	level = 22;
	attribute[ATR_STRENGTH] = 130;
	attribute[ATR_DEXTERITY] = 70;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 120;
	protection[PROT_EDGE] = 120;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 30;
	protection[PROT_MAGIC] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 2;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] = OnlyRoutine;
};

func void Set_MinecrawlerWarrior_Visuals()
{
	Mdl_SetVisual(self,"Crawler.mds");
	Mdl_SetVisualBody(self,"Cr2_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void set_otminecrawlerwarrior_visuals()
{
	Mdl_SetVisual(self,"Crawler.mds");
	Mdl_SetVisualBody(self,"Cr2_Body",1,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance MinecrawlerWarrior(Mst_Default_MinecrawlerWarrior)
{
	Set_MinecrawlerWarrior_Visuals();
	Npc_SetToFistMode(self);
};

instance OTMinecrawler(Mst_Default_MinecrawlerWarrior)
{
	name[0] = "�������� ������";
	guild = GIL_MINECRAWLER;
	level = 25;
	set_otminecrawlerwarrior_visuals();
	Npc_SetToFistMode(self);
	Mdl_SetModelScale(self,1.2,1.2,1.2);
	attribute[ATR_STRENGTH] = 120;
	attribute[ATR_DEXTERITY] = 120;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 30;
	protection[PROT_FLY] = 70;
	protection[PROT_MAGIC] = 30;
	damagetype = DAM_EDGE;
};

