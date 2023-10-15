
prototype Mst_Default_Harpie(C_Npc)
{
	name[0] = "������";
	guild = GIL_DEMON;
	aivar[AIV_IMPORTANT] = ID_HARPIE;
	level = 20;
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_DEXTERITY] = 85;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 30;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_Demon;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 2500;
	aivar[AIV_MM_DrohRange] = 2500;
	aivar[AIV_MM_AttackRange] = 2000;
	aivar[AIV_MM_DrohTime] = 3;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_Harpie_Visuals()
{
	Mdl_SetVisual(self,"Harpie.mds");
	Mdl_SetVisualBody(self,"Har_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Harpie(Mst_Default_Harpie)
{
	Set_Harpie_Visuals();
	Npc_SetToFistMode(self);
};

