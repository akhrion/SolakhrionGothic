
prototype Mst_Default_Swampshark(C_Npc)
{
	name[0] = "���������";
	guild = GIL_SWAMPSHARK;
	aivar[AIV_IMPORTANT] = ID_SWAMPSHARK;
	level = 40;
	attribute[ATR_STRENGTH] = 140;
	attribute[ATR_DEXTERITY] = 140;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 130;
	protection[PROT_EDGE] = 130;
	protection[PROT_POINT] = 70;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 9999;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SWAMPSHARK;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 1500;
	aivar[AIV_MM_DrohRange] = 1300;
	aivar[AIV_MM_AttackRange] = 1000;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void Set_Swampshark_Visuals()
{
	Mdl_SetVisual(self,"Swampshark.mds");
	Mdl_SetVisualBody(self,"Swa_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Swampshark(Mst_Default_Swampshark)
{
	Set_Swampshark_Visuals();
	Npc_SetToFistMode(self);
};

instance HurtSwampshark(Mst_Default_Swampshark)
{
	name[0] = "������� ���������";
	attribute[ATR_HITPOINTS] = 20;
	Set_Swampshark_Visuals();
	Npc_SetToFistMode(self);
};

