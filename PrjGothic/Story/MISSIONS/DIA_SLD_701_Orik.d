
instance Sld_701_Orik_Exit(C_Info)
{
	npc = SLD_701_Orik;
	nr = 999;
	condition = Sld_701_Orik_Exit_Condition;
	information = Sld_701_Orik_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Sld_701_Orik_Exit_Condition()
{
	return TRUE;
};

func void Sld_701_Orik_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance SLD_701_ORIK_DIELAGE(C_Info)
{
	npc = SLD_701_Orik;
	nr = 1;
	condition = sld_701_orik_dielage_condition;
	information = sld_701_orik_dielage_info;
	permanent = 1;
	description = "Как идут дела?";
};


func int sld_701_orik_dielage_condition()
{
	if(self.aivar[AIV_DEALDAY] <= Wld_GetDay())
	{
		if(FMTaken && !Npc_KnowsInfo(hero,Info_Xardas_DISTURB))
		{
			return FALSE;
		}
		else
		{
			return TRUE;
		};
	};
};

func void sld_701_orik_dielage_info()
{
	AI_Output(other,self,"Info_Sld_8_DieLage_15_00");	//Как идут дела?
	if(!FMTaken)
	{
		AI_Output(self,other,"Sld_701_Orik_DieLage_02_01");	//Пока магам удается поддерживать хрупкий мир в Колонии. Но если набеги на караваны Гомеза не прекратятся...
	}
	else
	{
		AI_Output(self,other,"Sld_701_Orik_DieLage_02_02");	//Обстановка напряженная. После захвата нашей шахты Гомез выжидает. Мы тоже выжидаем, пока.
		AI_Output(self,other,"Sld_701_Orik_DieLage_02_03");	//У Ли есть план, скоро все изменится.
	};
	if(Npc_KnowsInfo(hero,sld_701_orik_daslager) && Npc_KnowsInfo(hero,sld_701_orik_einervoneuchwerden) && Npc_KnowsInfo(hero,sld_701_orik_krautprobe))
	{
		AI_StopProcessInfos(self);
	};
	self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
};


instance SLD_701_ORIK_DASLAGER(C_Info)
{
	npc = SLD_701_Orik;
	nr = 2;
	condition = sld_701_orik_daslager_condition;
	information = sld_701_orik_daslager_info;
	permanent = 0;
	description = "Расскажи мне об этом Лагере.";
};


func int sld_701_orik_daslager_condition()
{
	return TRUE;
};

func void sld_701_orik_daslager_info()
{
	AI_Output(other,self,"Info_Sld_8_DasLager_15_00");	//Расскажи мне об этом лагере.
	AI_Output(self,other,"Sld_701_Orik_DasLager_02_01");	//Походи по лагерю, поговори с людьми. Ты сам все увидишь. Только не вздумай беспокоить магов по пустякам.
};


instance SLD_701_ORIK_EINERVONEUCHWERDEN(C_Info)
{
	npc = SLD_701_Orik;
	nr = 3;
	condition = sld_701_orik_einervoneuchwerden_condition;
	information = sld_701_orik_einervoneuchwerden_info;
	permanent = 0;
	description = "Как мне присоединиться к вам?";
};


func int sld_701_orik_einervoneuchwerden_condition()
{
	if(((Npc_GetTrueGuild(other) == GIL_None) || (Npc_GetTrueGuild(other) == GIL_ORG)) && (oldHeroGuild != GIL_KDF))
	{
		return TRUE;
	};
};

func void sld_701_orik_einervoneuchwerden_info()
{
	AI_Output(other,self,"Info_Mine_Sld_11_EinerVonEuchWerden_15_00");	//Как мне присоединиться к вам?
	AI_Output(self,other,"Sld_701_Orik_EinerVonEuchWerden_02_01");	//Нам не нужны слабаки. Но если ты - крепкий парень, у тебя есть шанс. Поговори с Ли.
};


instance SLD_701_ORIK_KRAUTPROBE(C_Info)
{
	npc = SLD_701_Orik;
	nr = 4;
	condition = sld_701_orik_krautprobe_condition;
	information = sld_701_orik_krautprobe_info;
	permanent = 0;
	description = "У меня есть болотник. Хочешь?";
};


func int sld_701_orik_krautprobe_condition()
{
	if((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS))
	{
		if(Npc_HasItems(hero,ItMiJoint_1) || Npc_HasItems(hero,ItMiJoint_2) || Npc_HasItems(hero,ItMiJoint_3))
		{
			return TRUE;
		};
	};
};

func void sld_701_orik_krautprobe_info()
{
	AI_Output(other,self,"Info_Org_6_Krautprobe_15_00");	//У меня есть болотник. Хочешь?
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_01");	//Нет, парень. И знаешь что, прекращай снабжать этой гадостью моих ребят.
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_02");	//Ты думаешь, это курево так безобидно? Как бы не так!
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_03");	//У некоторых из-за болотника беда с головой случается. Ты знаешь Торлофа?
	if(Npc_KnowsInfo(hero,DIA_Torlof_Hallo))
	{
		AI_Output(other,self,"INFO_THORUS_LETTERFORMAGES_15_02");	//Да.
	}
	else
	{
		AI_Output(other,self,"DIA_Orry_GuardGate_No_15_00");	//Еще нет.
	};
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_06");	//Крепкий парень! Старый морской волк! Но с некоторых пор он не может нормально спать. Говорит, что ему мерещутся какие-то люди в черных рясах.
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_07");	//Мне плевать на парней Ларса, пусть хоть передерутся, обкурившись, или с плотины прыгают. Но к моим парням с этой дурью не приставай! Понял?
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_BACK_15_00");	//Да ладно, не волнуйся так.
	AI_StopProcessInfos(self);
};


instance ORIK_STEALKEY(C_Info)
{
	npc = SLD_701_Orik;
	nr = 990;
	condition = orik_stealkey_condition;
	information = orik_stealkey_info;
	important = 0;
	permanent = 0;
	description = "(украсть ключ)";
};


func int orik_stealkey_condition()
{
	if(Npc_HasItems(self,orik_key) && (Npc_GetTalentSkill(hero,NPC_TALENT_PICKPOCKET) >= 1) && (Npc_GetTalentSkill(hero,NPC_TALENT_SNEAK) == 1))
	{
		return TRUE;
	};
};

func void orik_stealkey_info()
{
	AI_GotoNpc(other,self);
	AI_Output(other,self,"Info_Org_6_Krautprobe_15_00");	//У меня есть болотник. Хочешь?
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_01");	//Нет, парень. И знаешь что, прекращай снабжать этой гадостью моих ребят.
	AI_Output(self,other,"Sld_701_Orik_Krautprobe_02_02");	//Ты думаешь, это курево так безобидно? Как бы не так!
	PrintScreen("Украден ключ.",-1,_YPOS_MESSAGE_TAKEN,"FONT_OLD_10_WHITE.TGA",_TIME_MESSAGE_TAKEN);
	CreateInvItem(hero,orik_key);
	Npc_RemoveInvItem(self,orik_key);
	AI_StopProcessInfos(self);
};

