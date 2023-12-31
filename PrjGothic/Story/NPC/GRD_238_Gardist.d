
instance GRD_238_Gardist(Npc_Default)
{
	name[0] = NAME_Gardist;
	npcType = npctype_guard;
	guild = GIL_GRD;
	level = 15;
	voice = 8;
	id = 238;
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 50;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 160;
	attribute[ATR_HITPOINTS] = 160;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Bald",14,2,grd_armor_m);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	CreateInvItem(self,ItMw_1H_Sword_02);
	CreateInvItem(self,ItRw_Crossbow_01);
	CreateInvItems(self,ItAmBolt,30);
	CreateInvItem(self,ItFoCheese);
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItem(self,ItLsTorch);
	daily_routine = Rtn_start_238;
	fight_tactic = FAI_HUMAN_Strong;
};


func void Rtn_start_238()
{
	TA_Guard(0,0,6,0,"SPAWN_PATH_GUARD1");
	TA_Guard(6,0,24,0,"SPAWN_PATH_GUARD1");
};


instance INFO_GRD238_DIE(C_Info)
{
	npc = GRD_238_Gardist;
	condition = info_grd238_die_condition;
	information = info_grd238_die_info;
	permanent = 0;
	important = 1;
};


func int info_grd238_die_condition()
{
	if((Kapitel >= 4) && (OC_BANNED == FALSE))
	{
		return TRUE;
	};
};

func void info_grd238_die_info()
{
	AI_GotoNpc(self,hero);
	if((oldHeroGuild == GIL_STT) || (oldHeroGuild == GIL_GRD) || (oldHeroGuild == GIL_KDF))
	{
		if(oldHeroGuild == GIL_GRD)
		{
			AI_Output(self,hero,"Info_Bloodwyn_DIE_08_01");	//����� ��� �������� ���������! � �� ��� �������� ���� ����������!
		}
		else if(oldHeroGuild == GIL_KDF)
		{
			AI_Output(self,hero,"Info_Bloodwyn_DIE_08_02");	//������, ������ �� �������� ����� ���� �� ����������!
		}
		else
		{
			AI_Output(self,hero,"Info_Bloodwyn_DIE_08_03");	//���� �� ��������� �������� ����������!
		};
		AI_Output(hero,self,"VLK_585_Aleph_GUARDS_Info_15_01");	//� ��� �� ��������?
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_05");	//�� ������ �����-�� ���� � ����� �������, ��?
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_06");	//������, �� � ��� ���...
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_07");	//� �� �����, ��� ��� ����� ������������ �����?
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_08");	//�������� ����� ���� ���� �����...
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_09");	//���������� ������ �������.
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_10");	//��� ����, ���������!
		if(Npc_KnowsInfo(hero,Info_Fletcher_DIE))
		{
			B_LogEntry(CH4_BannedFromOC,"��������� � ������ ����� ������ ���� ����� ��� ��, ��� � �������. ��� ���-�� ����� � ���, ��� � ��� ������� ��� ������ ������.");
		}
		else if(!Npc_KnowsInfo(hero,Info_Jackal_PAYDAY) && !Npc_KnowsInfo(hero,info_cutter_die) && !Npc_KnowsInfo(hero,Info_Fletcher_DIE))
		{
			Log_CreateTopic(CH4_BannedFromOC,LOG_MISSION);
			Log_SetTopicStatus(CH4_BannedFromOC,LOG_RUNNING);
			B_LogEntry(CH4_BannedFromOC,"�������� � ������ ����� ������ ���� ���������� � ������������. ��� ���������� ���������� �� � ��� �������� ������ �� ����!");
			B_LogEntry(CH4_BannedFromOC,"�������, ���� �������� �� ������� ������!");
		};
	}
	else
	{
		if(C_NpcBelongsToNewCamp(hero))
		{
			AI_Output(self,hero,"Info_Bloodwyn_DIE_08_11");	//� ��� ��� �� ��������� ����� �� ������ ������? ���������� ��������!
		}
		else
		{
			AI_Output(self,hero,"Info_Bloodwyn_DIE_08_12");	//� �� ������� ����� �� ������ ��������� ������? ��� ����� � ����� �������!
		};
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_13");	//��� �����? � ��� �� ��������?
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_14");	//��� �� ������ �� ������ � ��������� �� ����� �����, ��?
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_15");	//� ��� ��...
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_16");	//������, �� �� �� ����� ��������� ���� ����������� �����. �� ������ ������� �����!
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_17");	//��, � �� ���� ������� � �����...
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_18");	//�� ���� ������ ����� ���� ������!
		AI_Output(hero,self,"Info_Bloodwyn_DIE_15_19");	//���, � ���� ������...
		AI_Output(self,hero,"Info_Bloodwyn_DIE_08_20");	//� ������, ������! ����� ���!
	};
	if(GETNEWGUY_STARTED == TRUE)
	{
		B_LogEntry(CH1_RecruitDusty,"������ � �� ����� ������� ����-���� �� ������� ������.");
		Log_SetTopicStatus(CH1_RecruitDusty,LOG_FAILED);
		GETNEWGUY_STARTED = LOG_FAILED;
	};
	Wld_ExchangeGuildAttitudes("GIL_ATTITUDES_FMTAKEN");
	if(!Npc_KnowsInfo(hero,Info_Fletcher_DIE) && !Npc_KnowsInfo(hero,info_cutter_die))
	{
		B_LogEntry(CH4_Firemages,"��������� ������� ������ �������� �� ������, ��� �������� ������� �����������, ����� ������� � ���.");
	};
	AI_StopProcessInfos(self);
	OC_BANNED = TRUE;
	FREELEARN_OC = FALSE;
	if(C_NpcBelongsToOldCamp(hero))
	{
		Npc_SetTrueGuild(hero,GIL_None);
		hero.guild = GIL_None;
	};
	B_ExchangeRoutine(GRD_208_Cutter,"FMTaken2");
	B_ExchangeRoutine(GRD_232_Gardist,"FMTaken2");
	B_ExchangeRoutine(GRD_229_Gardist,"FMTaken2");
	B_ExchangeRoutine(GRD_216_Torwache,"FMTaken2");
	B_ExchangeRoutine(GRD_217_Torwache,"FMTaken2");
	B_SetPermAttitude(GRD_208_Cutter,ATT_HOSTILE);
	B_SetPermAttitude(GRD_232_Gardist,ATT_HOSTILE);
	B_SetPermAttitude(GRD_229_Gardist,ATT_HOSTILE);
	B_SetPermAttitude(GRD_216_Torwache,ATT_HOSTILE);
	B_SetPermAttitude(GRD_217_Torwache,ATT_HOSTILE);
};


instance INFO_GRD238_EXIT(C_Info)
{
	npc = GRD_238_Gardist;
	nr = 999;
	condition = info_grd238_exit_condition;
	information = info_grd238_exit_info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int info_grd238_exit_condition()
{
	return 1;
};

func void info_grd238_exit_info()
{
	AI_StopProcessInfos(self);
};

