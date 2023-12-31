
prototype Mst_Default_Shadowbeast(C_Npc)
{
	name[0] = "��������";
	guild = GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID] = ID_SHADOWBEAST;
	level = 40;
	attribute[ATR_STRENGTH] = 110;
	attribute[ATR_DEXTERITY] = 110;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 100;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 1500;
	aivar[AIV_MM_DrohRange] = 1300;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 4;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void Set_Shadowbeast_Visuals()
{
	Mdl_SetVisual(self,"Shadow.mds");
	Mdl_SetVisualBody(self,"Sha_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Shadowbeast(Mst_Default_Shadowbeast)
{
	Set_Shadowbeast_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,4);
};

