
prototype Mst_Default_OrcBiter(C_Npc)
{
	name[0] = "����";
	guild = GIL_ORCDOG;
	aivar[AIV_IMPORTANT] = ID_ORCBITER;
	level = 12;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 80;
	attribute[ATR_HITPOINTS] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 40;
	protection[PROT_EDGE] = 40;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SCAVENGER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_OrcBiter_Visuals()
{
	Mdl_SetVisual(self,"Scavenger.mds");
	Mdl_ApplyOverlayMds(self,"Orcbiter.mds");
	Mdl_SetVisualBody(self,"Sc2_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance OrcBiter(Mst_Default_OrcBiter)
{
	Set_OrcBiter_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,2);
};

