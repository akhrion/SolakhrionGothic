
prototype Mst_Default_Skeleton(C_Npc)
{
	name[0] = "������";
	guild = GIL_SKELETON;
	level = 25;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 30;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 35;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 100;
	protection[PROT_FIRE] = 35;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 35;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_Strong;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 3000;
	aivar[AIV_MM_Behaviour] = PACKHUNTER;
	aivar[AIV_MM_PercRange] = 2000;
	aivar[AIV_MM_DrohRange] = 1500;
	aivar[AIV_MM_AttackRange] = 1500;
	aivar[AIV_MM_DrohTime] = 0;
	aivar[AIV_MM_FollowTime] = 5;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
};

func void Set_Skeleton_Visuals()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void Set_SkeletonWarrior_Visuals()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body3",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void Set_SkeletonScout_Visuals()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void Set_SkeletonMage_Visuals()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton_fly.mds");
	Mdl_SetVisualBody(self,"Ske_Fly_Body",1,DEFAULT,"",1,DEFAULT,-1);
};


instance Skeleton(Mst_Default_Skeleton)
{
	aivar[AIV_MM_REAL_ID] = id_skeleton;
	Set_Skeleton_Visuals();
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,itmw_skeleton_sword);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
};

instance SkeletonSH(Mst_Default_Skeleton)
{
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	Set_Skeleton_Visuals();
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	EquipItem(self,itmw_skeleton_axe);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	protection[PROT_FIRE] = 40;
	senses_range = 1000;
	aivar[AIV_MM_Behaviour] = PACKHUNTER;
	aivar[AIV_MM_PercRange] = 1000;
	aivar[AIV_MM_DrohRange] = 1000;
	aivar[AIV_MM_AttackRange] = 1000;
	aivar[AIV_MM_DrohTime] = 0;
	aivar[AIV_MM_FollowTime] = 5;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

instance SkeletonScout(Mst_Default_Skeleton)
{
	name[0] = "������-���������";
	aivar[AIV_MM_REAL_ID] = id_skeletonscout;
	Set_SkeletonScout_Visuals();
	Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
	EquipItem(self,itmw_skeleton_scythe);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH];
};

instance SkeletonWarrior(Mst_Default_Skeleton)
{
	name[0] = "������-����";
	Set_SkeletonWarrior_Visuals();
	level = 30;
	attribute[ATR_STRENGTH] = 120;
	aivar[AIV_MM_REAL_ID] = id_skeletonwarrior;
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,ItMw_2H_Sword_Old_01);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
};

instance SkeletonMage(Mst_Default_Skeleton)
{
	aivar[AIV_MM_REAL_ID] = id_skeletonmage;
	Set_SkeletonMage_Visuals();
	name[0] = "������-���";
	guild = GIL_DEMON;
	level = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 50;
	fight_tactic = FAI_HUMAN_MAGE;
	CreateInvItem(self,itarrune_3_1_thunderbolt);
	CreateInvItems(self,ItArScrollSummonSkeletons,5);
};

instance SkeletonMage_fogtower(Mst_Default_Skeleton)
{
	aivar[AIV_MM_REAL_ID] = ID_SKELETONMAGE;
	Set_SkeletonMage_Visuals();
	name[0] = "������-��� �������� �����";
	guild = GIL_DEMON;
	level = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 50;
	fight_tactic = FAI_HUMAN_MAGE;
	CreateInvItem(self,itarrune_3_1_thunderbolt);
	CreateInvItems(self,ItArScrollSummonSkeletons,5);
	CreateInvItem(self,theriddle1);
};

instance SummonedByPC_Skeleton(Mst_Default_Skeleton)
{
	name[0] = "���������� ������";
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	level = 0;
	Set_Skeleton_Visuals();
	Npc_SetToFightMode(self,itmw_skeleton_sword);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	senses = SENSE_HEAR | SENSE_SEE;
	start_aistate = ZS_MM_SummonedByPC;
	aivar[AIV_HASDEFEATEDSC] = 300;
	aivar[AIV_ISLOOKING] = 5;
	aivar[AIV_MOVINGMOB] = TRUE;
};


instance SummonedByPC_SkeletonShield(Mst_Default_Skeleton)
{
	name[0] = "������ ����������";
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	level = 0;
	Set_Skeleton_Visuals();

	Npc_SetToFightMode(self,itmw_skeleton_sword);

	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	senses = SENSE_HEAR | SENSE_SEE;
	start_aistate = ZS_MM_SummonedByPC;
	aivar[AIV_HASDEFEATEDSC] = 300;
	aivar[AIV_ISLOOKING] = 1;
	aivar[AIV_MOVINGMOB] = TRUE;
};

instance SummonedByNPC_Skeleton(Mst_Default_Skeleton)
{
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	Set_Skeleton_Visuals();
	Npc_SetToFightMode(self,itmw_skeleton_sword);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	start_aistate = ZS_MM_Summoned;
};

instance SummonedByPC_SkeletonWarrior(Mst_Default_Skeleton)
{
	name[0] = "���������� ������-����";
	level = 0;
	attribute[ATR_STRENGTH] = 120;
	senses = SENSE_HEAR | SENSE_SEE;
	aivar[AIV_MM_REAL_ID] = ID_SKELETONWARRIOR;
	Set_SkeletonWarrior_Visuals();
	Npc_SetToFightMode(self,itmw_skeleton_axe);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	start_aistate = ZS_MM_SummonedByPC;
	aivar[AIV_HASDEFEATEDSC] = 300;
	aivar[AIV_ISLOOKING] = 5;
	aivar[AIV_MOVINGMOB] = TRUE;
};

instance SummonedByNPC_SkeletonWarrior(Mst_Default_Skeleton)
{
	name[0] = "������-����";
	level = 30;
	attribute[ATR_STRENGTH] = 120;
	aivar[AIV_MM_REAL_ID] = ID_SKELETONWARRIOR;
	Set_SkeletonWarrior_Visuals();
	Npc_SetToFightMode(self,itmw_skeleton_axe);
	attribute[ATR_STRENGTH] = attribute[ATR_STRENGTH] + 10;
	start_aistate = ZS_MM_Summoned;
};

