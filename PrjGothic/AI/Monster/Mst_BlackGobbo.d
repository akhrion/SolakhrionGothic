
prototype Mst_Default_BlackGobbo(C_Npc)
{
	name[0] = "������ ������";
	guild = GIL_GOBBO;
	aivar[AIV_MM_REAL_ID] = ID_BLACKGOBBO;
	level = 12;
	attribute[ATR_STRENGTH] = 20;
	attribute[ATR_DEXTERITY] = 20;
	attribute[ATR_HITPOINTS_MAX] = 80;
	attribute[ATR_HITPOINTS] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 40;
	protection[PROT_EDGE] = 40;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PACKHUNTER;
	aivar[AIV_MM_PercRange] = 1500;
	aivar[AIV_MM_DrohRange] = 1200;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 4;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_BlackGobbo_Visuals()
{
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gob_Body",1,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance BlackGobboMace(Mst_Default_BlackGobbo)
{
	Set_BlackGobbo_Visuals();
	Npc_SetToFightMode(self,ItMw_1H_Nailmace_01);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 35;
};

instance BlackGobboWarrior(Mst_Default_BlackGobbo)
{
	level = 15;
	Set_BlackGobbo_Visuals();
	Npc_SetToFightMode(self,ItMw_1H_Mace_01);
	attribute[ATR_STRENGTH] = 60 + 30;
	attribute[ATR_HITPOINTS_MAX] = 105;
	attribute[ATR_HITPOINTS] = 105;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 50;
	name[0] = "������-����";
};


func void set_blackgobboleader_visuals()
{
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gob_Body",2,DEFAULT,"",DEFAULT,DEFAULT,-1);
	Mdl_SetModelScale(self,1.15,1.15,1.15);
};


instance BLACKGOBBOLEADER(Mst_Default_BlackGobbo)
{
	level = 17;
	set_blackgobboleader_visuals();
	Npc_SetToFightMode(self,ItMw_1H_Sword_Short_01);
	attribute[ATR_STRENGTH] = 60 + 30;
	attribute[ATR_HITPOINTS_MAX] = 115;
	attribute[ATR_HITPOINTS] = 115;
	protection[PROT_BLUNT] = 60;
	protection[PROT_EDGE] = 60;
	name[0] = "������-�����";
};

