
prototype Mst_Default_Bloodfly(C_Npc)
{
	name[0] = "Шершень";
	guild = GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID] = ID_BLOODFLY;
	level = 7;
	attribute[ATR_STRENGTH] = 30;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_HITPOINTS_MAX] = 50;
	attribute[ATR_HITPOINTS] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 35;
	protection[PROT_EDGE] = 15;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_BLOODFLY;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 1500;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 1;
	aivar[AIV_MM_FollowTime] = 15;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] = OnlyRoutine;
};

func void Set_Bloodfly_Visuals()
{
	Mdl_SetVisual(self,"Bloodfly.mds");
	Mdl_SetVisualBody(self,"Blo_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Bloodfly(Mst_Default_Bloodfly)
{
	Set_Bloodfly_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItAt_Bloodfly_01,2);
};

instance HelpBrothers_Bloodfly(Mst_Default_Bloodfly)
{
	name[0] = "Злобный шершень";
	Set_Bloodfly_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItAt_Bloodfly_01,2);
};

instance Swampfly_01(Mst_Default_Bloodfly)
{
	name[0] = "Болотный шершень";
	aivar[AIV_MM_REAL_ID] = ID_SWAMPFLY;
	attribute[ATR_STRENGTH] = 30;
	protection[PROT_BLUNT] = 35;
	protection[PROT_EDGE] = 15;
	protection[PROT_FIRE] = 35;
	Set_Bloodfly_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItAt_Bloodfly_01,2);
};

instance Swampfly_02(Mst_Default_Bloodfly)
{
	name[0] = "Болотный шершень";
	aivar[AIV_MM_REAL_ID] = ID_SWAMPFLY;
	attribute[ATR_STRENGTH] = 30;
	protection[PROT_BLUNT] = 35;
	protection[PROT_EDGE] = 15;
	protection[PROT_FIRE] = 35;
	Set_Bloodfly_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItAt_Bloodfly_01,2);
};

