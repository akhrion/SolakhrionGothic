//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
/////////////Функция отвечает за рандомные квесты, события, ивенты, дейлики..
//////////////////////////////////////////////////////////////////////////////////
func void B_RandomQuest()//akhwork
{
	//entrypoint B_AssessSC()

    return;
	if(
		!Quest_IsAssigned(Info_RQ_Beggar)
	&&	self.guild == GIL_VLK
    &&	self.aivar[AIV_BEGGAR] < getTimestamp()
    &&	Hlp_Random(1000) < 700
	)
	{
		Quest_AssignTo(Info_RQ_Beggar,self);
		AI_SetWalkmode(self,NPC_RUN);
        AI_GotoNpc(self,hero);
	};
};



const int npcInstanceID = 0;
const int npcLoyality = 1;
var int beg534[5];
var int beg520[5];
const int arr[5] =
{
    0,1,2,3,4
};
const string arrStr[2] =
{
    "0","1"
};
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
    return true;
};
func void Info_RQ_Beggar_Info()
{
    AI_Output(self,other,"Info_RQ_Beggar_NULL_00"); //У тебя не найдётся немного руды, хотябы кусочка?
    Info_ClearChoices(Info_RQ_Beggar);
    Info_AddChoice(Info_RQ_Beggar,"Пошел прочь, иди в шахту и работай!",Info_RQ_Beggar_NO);
    Info_AddChoice(Info_RQ_Beggar,"Извини, у меня нет руды.",Info_RQ_Beggar_SORRY);
    if(Npc_HasItems(hero,ItMiNugget))
    {
        Info_AddChoice(Info_RQ_Beggar,"Да, конечно вот возьми.",Info_RQ_Beggar_YES);
    };
    AI_SetWalkmode(self,NPC_WALK);
    Quest_DeAssign(Info_RQ_Beggar);
};
func void Info_RQ_Beggar_YES()
{
    if(534 == self.id)
    {
        // Print("aaaa");
        // beg534[3] +=1;
        // Print(IntToString(beg534[3]));
        // Print(IntToString(arr[1]));
        // Print(arrStr[1]);
        PrintSIS(arrStr[0],9879,arrStr[1]);
        arrStr[0] =" asd ";
        arrStr[1] =" wqeqwe ";
        // PrintISI(arr[0]," ",arr[1]);
    };
    if(520 == self.id)
    {
        // Print("bbbb");
        // beg520[3] +=1;
        // Print(IntToString(beg520[3]));
        PrintISI(arr[3]," ",arr[4]);
        arr[3] +=1;
        arr[4] +=1;
        // PrintISI(arr[3]," ",arr[4]);
    };
    AI_Output(other,self,"Info_RQ_Beggar_YES_NULL_00"); //Да, конечно вот возьми.
    AI_Output(self,other,"Info_RQ_Beggar_YES_NULL_01"); //Спасибо тебе большое.
    Npc_RemoveInvItem(other,ItMiNugget);
    CreateInvItem(self,ItMiNugget);
    self.aivar[AIV_BEGGAR] = getTimestamp() + BEGGAR_FREQ;
    AI_StopProcessInfos(self);
};
func void Info_RQ_Beggar_SORRY()
{
    AI_Output(other,self,"Info_RQ_Beggar_SORRY_NULL_00"); //Извини, у меня нет руды.
    AI_Output(self,other,"Info_RQ_Beggar_SORRY_NULL_01"); //Ну ладно, может в следующий раз.
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
