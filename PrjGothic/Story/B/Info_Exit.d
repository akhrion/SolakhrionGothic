instance Info_EXIT(C_Info)
{
	nr = 999;
	condition = Info_EXIT_Condition;
	information = Info_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_EXIT_Condition()
{
	return 1;
};

func void Info_EXIT_Info()
{
	AI_StopProcessInfos(self);
};