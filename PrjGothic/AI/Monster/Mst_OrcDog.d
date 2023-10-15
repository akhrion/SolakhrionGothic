
prototype Mst_Default_OrcDog(C_Npc)
{
	name[0] = "������ ������";
	guild = GIL_ORCDOG;
	aivar[AIV_IMPORTANT] = ID_BLACKWOLF;
	level = 12;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 60;
	protection[PROT_EDGE] = 60;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 30;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORCDOG;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 2000;
	aivar[AIV_MM_DrohRange] = 1800;
	aivar[AIV_MM_AttackRange] = 1500;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 15;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_OrcDog_Visuals()
{
	Mdl_SetVisual(self,"Wolf.mds");
	Mdl_SetVisualBody(self,"Dog_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance OrcDog(Mst_Default_OrcDog)
{
	Set_OrcDog_Visuals();
	Npc_SetToFistMode(self);
};

