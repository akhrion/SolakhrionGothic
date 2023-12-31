
prototype Mst_Default_Molerat(C_Npc)
{
	name[0] = "���������";
	guild = GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID] = ID_MOLERAT;
	level = 5;
	attribute[ATR_STRENGTH] = 8;
	attribute[ATR_DEXTERITY] = 8;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 8;
	protection[PROT_EDGE] = 8;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 5;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_MOLERAT;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PASSIVE;
	aivar[AIV_MM_PercRange] = 1200;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 700;
	aivar[AIV_MM_DrohTime] = 5;
	aivar[AIV_MM_FollowTime] = 5;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

func void Set_Molerat_Visuals()
{
	Mdl_SetVisual(self,"Molerat.mds");
	Mdl_SetVisualBody(self,"Mol_Body",1,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void set_ymolerat_visuals()
{
	Mdl_SetVisual(self,"Molerat.mds");
	Mdl_SetVisualBody(self,"Mol_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Molerat(Mst_Default_Molerat)
{
	Set_Molerat_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItem(self,ItFoMuttonRaw);
};

instance YMolerat(Mst_Default_Molerat)
{
	name[0] = "������� ���������";
	level = 4;
	attribute[ATR_STRENGTH] = 5;
	attribute[ATR_DEXTERITY] = 5;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	protection[PROT_BLUNT] = 8;
	protection[PROT_EDGE] = 8;
	fight_tactic = FAI_MONSTER_COWARD;
	set_ymolerat_visuals();
	Mdl_SetModelScale(self,0.8,0.8,0.8);
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItFoMuttonRaw,1);
};

