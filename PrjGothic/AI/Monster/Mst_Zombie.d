
prototype Mst_Default_Zombie(C_Npc)
{
	name[0] = "Зомби";
	guild = GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID] = ID_ZOMBIE;
	level = 20;
	attribute[ATR_STRENGTH] = 40;
	attribute[ATR_DEXTERITY] = 0;
	attribute[ATR_HITPOINTS_MAX] = 25;
	attribute[ATR_HITPOINTS] = 25;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_INDEX_BLUNT] = 330;
	protection[PROT_INDEX_EDGE] = 230;
	protection[PROT_INDEX_POINT] = PROT_IMMUN;
	protection[PROT_INDEX_FIRE] = 120;
	protection[PROT_INDEX_FLY] = PROT_IMMUN;
	protection[PROT_INDEX_MAGIC] = 100;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ZOMBIE;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 2000;
	aivar[AIV_MM_DrohRange] = 1500;
	aivar[AIV_MM_AttackRange] = 1500;
	aivar[AIV_MM_DrohTime] = 0;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void Set_Zombie_Visuals()
{
	Mdl_SetVisual(self,"Zombie.mds");
	Mdl_SetVisualBody(self,"Zom_Body",0,0,"Zom_Head",0,3,-1);
};

func void Set_Zombie2_Visuals()
{
	Mdl_SetVisual(self,"Zombie.mds");
	Mdl_SetVisualBody(self,"Zom_Body",0,0,"Zom_Head",1,3,-1);
};

func void Set_Zombie3_Visuals()
{
	Mdl_SetVisual(self,"Zombie.mds");
	Mdl_SetVisualBody(self,"Zom_Body",0,1,"Zom_Head",0,3,-1);
};

func void Set_Zombie4_Visuals()
{
	Mdl_SetVisual(self,"Zombie.mds");
	Mdl_SetVisualBody(self,"Zom_Body",0,1,"Zom_Head",1,3,-1);
};

func void set_zombie5_visuals()
{
	Mdl_SetVisual(self,"Zombie.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,2,"Zom_Head",1,3,zom_armor);
};


instance Zombie(Mst_Default_Zombie)
{
	Set_Zombie_Visuals();
	Npc_SetToFistMode(self);
};

instance Zombie2(Mst_Default_Zombie)
{
	Set_Zombie2_Visuals();
	Npc_SetToFistMode(self);
};

instance Zombie3(Mst_Default_Zombie)
{
	Set_Zombie3_Visuals();
	Npc_SetToFistMode(self);
};

instance Zombie4(Mst_Default_Zombie)
{
	Set_Zombie4_Visuals();
	Npc_SetToFistMode(self);
};

instance ZombieTheKeeper(Mst_Default_Zombie)
{
	name[0] = "Страж склепа";
	level = 150;
	id = MID_THEKEEPER;
	set_zombie5_visuals();
	Npc_SetToFistMode(self);
	attribute[ATR_STRENGTH] = 400;
	protection[PROT_INDEX_FIRE] = PROT_IMMUN;
	protection[PROT_INDEX_MAGIC] = 9000;
	senses_range = 1000;
	aivar[AIV_MM_Behaviour] = HUNTER;
	aivar[AIV_MM_PercRange] = 1000;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 1000;
	aivar[AIV_MM_DrohTime] = 0;
	aivar[AIV_MM_FollowTime] = 10;
	aivar[AIV_MM_FollowInWater] = FALSE;
	CreateInvItem(self,ItMi_OrcTalisman);
	CreateInvItem(self,ItKe_Focus5);
};

instance Ghost(Mst_Default_Zombie)
{
	name[0] = "Призрак";
	npcType = Npctype_MystiqueMonster;
	level = 20;
	id = ID_GHOST;
	Set_Zombie_Visuals();
	Npc_SetToFistMode(self);
	Npc_SetMovementSpeed(self,0.5);

};
