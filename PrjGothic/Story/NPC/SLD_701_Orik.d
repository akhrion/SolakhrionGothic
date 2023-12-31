
instance SLD_701_Orik(Npc_Default)
{
	name[0] = "����";
	npcType = npctype_ambient;
	guild = GIL_SLD;
	level = 18;
	voice = 12;
	id = 701;
	attribute[ATR_STRENGTH] = 90;
	attribute[ATR_DEXTERITY] = 70;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 256;
	attribute[ATR_HITPOINTS] = 256;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,3,"Hum_Head_FatBald",8,0,sld_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	EquipItem(self,Oriks_Axt);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItMiNugget,19);
	CreateInvItems(self,ItFo_Potion_Health_02,9);
	CreateInvItem(self,orik_key);
	daily_routine = Rtn_start_701;
};


func void Rtn_start_701()
{
	TA_Smalltalk(7,0,19,0,"NC_SMALL_CAVE_CENTER");
	TA_Boss(19,0,0,0,"NC_HUT05_OUT");
	TA_Sleep(0,0,7,0,"NC_HUT05_IN");
};

