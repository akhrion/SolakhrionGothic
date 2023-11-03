
prototype Mst_Default_GreenGobbo(C_Npc)
{
	name[0] = "Гоблин";
	guild = GIL_GOBBO;
	aivar[AIV_MM_REAL_ID] = ID_GOBBO;
	level = 6;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 15;
	protection[PROT_EDGE] = 15;
	protection[PROT_POINT] = 8;
	protection[PROT_FIRE] = 15;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PACKHUNTER;
	aivar[AIV_MM_PercRange] = 1500;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 4;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_GreenGobbo_Visuals()
{
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gob_Body",0,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance GreenGobboClub(Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFightMode(self,ItMw_1H_Club_01);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 5;
};

instance GreenGobboSword(Mst_Default_GreenGobbo)
{
	Set_GreenGobbo_Visuals();
	Npc_SetToFightMode(self,ItMw_1H_Sword_Old_01);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
};

