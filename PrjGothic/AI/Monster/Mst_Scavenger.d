
prototype Mst_Default_Scavenger(C_Npc)
{
	name[0] = "Падальщик";
	npcType = Npctype_Animal;
	guild = GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID] = ID_SCAVENGER;
	level = 4;
	attribute[ATR_STRENGTH] = 28;
	attribute[ATR_DEXTERITY] = 28;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_INDEX_BLUNT] = 19;
	protection[PROT_INDEX_EDGE] = 9;
	protection[PROT_INDEX_POINT] = 5;
	protection[PROT_INDEX_FIRE] = 0;
	protection[PROT_INDEX_FLY] = 0;
	protection[PROT_INDEX_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_SCAVENGER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] = 22;
	aivar[AIV_MM_SleepEnd] = 6;
	aivar[AIV_MM_EatGroundStart] = 6;
	aivar[AIV_MM_EatGroundEnd] = 22;
	spawnDelay = 60;
};

func void Set_Scavenger_Visuals()
{
	Mdl_SetModelScale(self,0.7,0.7,0.7);
	Mdl_SetVisual(self,"Scavenger.mds");
	Mdl_SetVisualBody(self,"Sca_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void Set_Scavenger_Invisible_Visuals()
{
	Mdl_SetVisual(self,"Scavenger.mds");
//	Mdl_SetVisualBody(self,"Sca_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void set_yscavenger_visuals()
{
	Mdl_SetModelScale(self,0.6,0.6,0.6);
	Mdl_SetVisual(self,"Scavenger.mds");
	Mdl_SetVisualBody(self,"Sca_Body",1,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Scavenger(Mst_Default_Scavenger)
{
	Set_Scavenger_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItem(self,ItFoMuttonRaw);
};
instance ScavengerAgressive_1(Mst_Default_Scavenger)
{
	name[0] = NAME_SCAVENGERAGRESSIVE;
	aivar[AIV_MM_AttackRange] = aivar[AIV_MM_PercRange];
	Set_Scavenger_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItem(self,ItFoMuttonRaw);
};

instance Scavenger_Invisible(Mst_Default_Scavenger)
{
	Set_Scavenger_Invisible_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItem(self,ItFoMuttonRaw);
};

instance YScavenger(Mst_Default_Scavenger)
{
	name[0] = "Молодой падальщик";
	aivar[AIV_MM_REAL_ID] = ID_YSCAVENGER;
	level = 1;
	attribute[ATR_STRENGTH] = 6;
	attribute[ATR_DEXTERITY] = 6;
	attribute[ATR_HITPOINTS_MAX] = 35;
	attribute[ATR_HITPOINTS] = 35;
	protection[PROT_INDEX_BLUNT] = 8;
	protection[PROT_INDEX_EDGE] = 8;
	fight_tactic = FAI_MONSTER_COWARD;
	set_yscavenger_visuals();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,1);
	spawnDelay = 60;
};

