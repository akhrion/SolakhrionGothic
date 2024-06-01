instance Info_RQ_Beggar(C_Info)
{
    nr = 99;
    condition = Info_RQ_Beggar_Condition;
    information = Info_RQ_Beggar_Info;
    important = true;
    permanent = true;
};
func int Info_RQ_Beggar_Condition()
{
    // if(
    //     self.aivar[AIV_BEGGAR] < getTimestamp()
    // &&  self.guild == GIL_VLK
    // // &&  Random_IsProc(1);
    // )
    // {
    //     PrintSIS(self.name,self.aivar[AIV_BEGGAR],"");
        // self.aivar[AIV_BEGGAR] = getTimestamp() + BEGGAR_FREQ;
        return true;
    // };
    // return false;
};
func void Info_RQ_Beggar_Info()
{
    AI_Output(self,other,"Info_RQ_Beggar_NULL_00"); //У тебя не найдётся немного руды, хотябы кусочка?
    Info_ClearChoices(Info_RQ_Beggar);
    Info_AddChoice(Info_RQ_Beggar,"Пошел прочь, иди в шахту и работай!",Info_RQ_Beggar_NO);
    if(Npc_HasItems(hero,ItMiNugget))
    {
        Info_AddChoice(Info_RQ_Beggar,"Да, конечно вот возьми.",Info_RQ_Beggar_YES);
    };
    Info_RQ_Beggar.npc = -1;
};
func void Info_RQ_Beggar_YES()
{
    AI_Output(other,self,"Info_RQ_Beggar_YES_NULL_00"); //Да, конечно вот возьми.
    AI_Output(self,other,"Info_RQ_Beggar_YES_NULL_01"); //Спасибо тебе большое.
    Npc_RemoveInvItem(other,ItMiNugget);
    CreateInvItem(self,ItMiNugget);
    self.aivar[AIV_BEGGAR] = getTimestamp() + BEGGAR_FREQ;
    AI_StopProcessInfos(self);
};
func void Info_RQ_Beggar_NO()
{
    AI_Output(other,self,"Info_RQ_Beggar_NO_NULL_00"); //Пошел прочь, иди в шахту и работай!
    AI_Output(self,other,"Info_RQ_Beggar_NO_NULL_01"); //Жлоб.
    self.aivar[AIV_BEGGAR] = getTimestamp() + BEGGAR_FREQ;
    AI_StopProcessInfos(self);
};
