
prototype Mst_Default_Sleeper(C_Npc)
{
	name[0] = "������";
	guild = GIL_SLF;
	aivar[AIV_MM_REAL_ID] = ID_SLEEPER;
	level = 2000;
	attribute[ATR_STRENGTH] = 500;
	attribute[ATR_DEXTERITY] = 500;
	attribute[ATR_HITPOINTS_MAX] = 1000;
	attribute[ATR_HITPOINTS] = 1000;
	attribute[ATR_MANA_MAX] = 500;
	attribute[ATR_MANA] = 500;
	protection[PROT_BLUNT] = 500;
	protection[PROT_EDGE] = 500;
	protection[PROT_POINT] = 1000;
	protection[PROT_FIRE] = 1000;
	protection[PROT_FLY] = 1000;
	protection[PROT_MAGIC] = 500;
	damagetype = DAM_MAGIC;
	fight_tactic = FAI_SLEEPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	daily_routine = Rtn_start_Sleeper;
};

func void Set_Sleeper_Visuals()
{
	Mdl_SetVisual(self,"Sleeper.mds");
	Mdl_SetVisualBody(self,"Sle_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Sleeper(Mst_Default_Sleeper)
{
	Set_Sleeper_Visuals();
	Npc_SetToFistMode(self);
};


func void Rtn_start_Sleeper()
{
	TA_Sleeper(24,0,6,0,"TPL_395");
	TA_Sleeper(6,0,24,0,"TPL_395");
};

