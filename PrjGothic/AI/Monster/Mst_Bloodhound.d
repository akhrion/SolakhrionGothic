
prototype Mst_Default_Bloodhound(C_Npc)
{
	name[0] = "������";
	guild = GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID] = ID_BLOODHOUND;
	level = 22;
	attribute[ATR_STRENGTH] = 90;
	attribute[ATR_DEXTERITY] = 90;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 55;
	protection[PROT_EDGE] = 55;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 2500;
	aivar[AIV_MM_DrohRange] = 2000;
	aivar[AIV_MM_AttackRange] = 1800;
	aivar[AIV_MM_DrohTime] = 2;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void Set_Bloodhound_Visuals()
{
	Mdl_SetVisual(self,"Shadow.mds");
	Mdl_SetVisualBody(self,"Bhd_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Bloodhound(Mst_Default_Bloodhound)
{
	Set_Bloodhound_Visuals();
	Npc_SetToFistMode(self);
};

