
prototype Chest_Default(C_Npc)
{
	protection[PROT_INDEX_EDGE] = 0;
	protection[PROT_INDEX_BLUNT] = 0;
	protection[PROT_INDEX_POINT] = 50;
	protection[PROT_INDEX_FIRE] = 0;
	protection[PROT_INDEX_MAGIC] = 0;
	attribute[ATR_HITPOINTS_MAX] = 300;
	attribute[ATR_HITPOINTS] = 300;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 3000;
};


instance Chest_199005010_CringeChest(Chest_Default)
{
	name[0] = "Кринж сундук";
	level = 1;
	id = 199005010;
	protection[PROT_INDEX_EDGE] = 30;
	protection[PROT_INDEX_POINT] = 50;
	protection[PROT_INDEX_FIRE] = 10;
	protection[PROT_INDEX_FLY] = 0;
	protection[PROT_INDEX_MAGIC] = 50;
	Mdl_SetVisual(self,"CHESTSMALL_OCCHESTSMALL.MDS");
	// B_Scale(self);
	aivar[AIV_IMPORTANT] = TRUE;
	CreateInvItem(self,ItFoApple);
	CreateInvItems(self,ItMiNugget,10);
	CreateInvItems(self,ItFo_Potion_Health_01,10);
	daily_routine = Rtn_start_199005010;
};


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

const int AMOUNT_BIGGESTNUM = 1<<10;
var int CringeChest_AniPlayed_PCComeToChest;
var int CringeChest_Nugget;
var int CringeChest_WasOpened;
var int CringeChest_Direct;
const int CRINGECHESTDIRECTION_LEFT = 1;
const int CRINGECHESTDIRECTION_RIGHT = 2;

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////



func void G_PickLock_CringeChest(var int bSuccess,var int bBrokenOpen,var int bBrokenLock)
{
	var string strSoundFX;
	var string strMessage;
	var int strYPos;
	strSoundFX = _STR_INVALID;
	strMessage = _STR_INVALID;
	G_MonkeyLock_RemoveBroken();
	if(bSuccess)
	{
        if(!bBrokenLock)
        {
            //true true false
			strSoundFX = _STR_SOUND_PICKLOCK_SUCCESS;
			strMessage = _STR_MESSAGE_PICKLOCK_SUCCESSLOUD;
			strYPos = _YPOS_MESSAGE_PICKLOCK_SUCCESS;
        }
		else if(bBrokenOpen)
		{
            //true true true
			strSoundFX = _STR_SOUND_PICKLOCK_UNLOCK;
			strMessage = _STR_MESSAGE_PICKLOCK_UNLOCK;
			strYPos = _YPOS_MESSAGE_PICKLOCK_UNLOCK;
		}
		else
		{
            //true false true
			strSoundFX = _STR_SOUND_PICKLOCK_SUCCESS;
			strMessage = _STR_MESSAGE_PICKLOCK_SUCCESS;
			strYPos = _YPOS_MESSAGE_PICKLOCK_SUCCESS;
		};
	}
	else if(bBrokenOpen)
	{
        if(bBrokenLock)
        {
            //false true true
            strSoundFX = _STR_SOUND_PICKLOCK_BROKEN;
            strMessage = _STR_MESSAGE_PICKLOCK_BROKENLOCK;
            strYPos = _YPOS_MESSAGE_PICKLOCK_BROKEN;
        }
        else
        {
            //false true false
            strSoundFX = _STR_SOUND_PICKLOCK_BROKEN;
            strMessage = _STR_MESSAGE_PICKLOCK_BROKEN;
            strYPos = _YPOS_MESSAGE_PICKLOCK_BROKEN;
            G_MonkeyLock_PickLockBroked();
        };
	}
	else
	{
        if(bBrokenLock)
        {
            //false false true
            strSoundFX = _STR_SOUND_PICKLOCK_FAILURE;
            strMessage = _STR_MESSAGE_PICKLOCK_FAILURE;
            strYPos = _YPOS_MESSAGE_PICKLOCK_FAILURE;
        }
        else
        {
            //false false false
            strSoundFX = _STR_SOUND_PICKLOCK_FAILURE;
            strMessage = _STR_MESSAGE_PICKLOCK_FAILURECHANCE;
            strYPos = _YPOS_MESSAGE_PICKLOCK_FAILURE;
        };
	};
	Snd_Play3d(self,strSoundFX);
	PrintScreen(strMessage,-1,strYPos,_STR_FONT_ONSCREEN,_TIME_MESSAGE_PICKLOCK);
};




/////////Если в сундуке есть руда, то этот алгоритм отработает не так как хотелось бы.
/////Для отработки руды в сундуке, необходим другой алгоритм - изменяющий цену предметов на 0, а потом восстанавливающий её.
var int CringeChest_PCNuggetAmount;
func void CringeChest_GivePCaLotOfNugget()
{
    CringeChest_PCNuggetAmount = Npc_HasItems(hero,ItMiNugget);
    CreateInvItems(hero,ItMiNugget,AMOUNT_BIGGESTNUM);
};
func void CringeChest_RestorePCNugget()
{
    Npc_RemoveInvItems(hero,ItMiNugget,Npc_HasItems(hero,ItMiNugget));
    if(CringeChest_Nugget)
    {
        CringeChest_PCNuggetAmount += CringeChest_Nugget - Npc_HasItems(self,ItMiNugget);
        CringeChest_Nugget = 0;
    };
    if(CringeChest_PCNuggetAmount)
    {
        CreateInvItems(hero,ItMiNugget,CringeChest_PCNuggetAmount);
        CringeChest_PCNuggetAmount = 0;
    };
};

func void CringeChest_AniPlay_PCComeToChest()
{
    if(!CringeChest_AniPlayed_PCComeToChest)
    {
        CringeChest_AniPlayed_PCComeToChest = true;
        AI_GotoNpc(other,self);
        AI_PlayAni(other,"T_CHESTBIG_STAND_2_S0");
    };
};
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

instance DLG_CringeChest_EXIT(C_Info)
{
	npc = Chest_199005010_CringeChest;
	nr = 999;
	condition = DLG_CringeChest_EXIT_Condition;
	information = DLG_CringeChest_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};
func int DLG_CringeChest_EXIT_Condition()
{
    return true;
};
func void DLG_CringeChest_EXIT_Info()
{
    if(CringeChest_WasOpened)
    {
        CringeChest_WasOpened = false;
        CringeChest_RestorePCNugget();//akhWork BUG: нужно что-то сделать с рудой, которую игрок положит в сундук (т.е. это не его руда и она должна быть удалена.. сейчас он может открыть сундук повторно и забрать оттуда руду, которой в сундуке изначально небыло.. крч походу единственный способ нормального обмена - это менять цену предмета на ноль)
        AI_PlayAni(self,"T_S1_2_S0");
    };
    if(CringeChest_AniPlayed_PCComeToChest)
    {
        CringeChest_AniPlayed_PCComeToChest = false;
        AI_PlayAni(other,"T_CHESTBIG_S0_2_STAND");
    };
    AI_StopProcessInfos(self);
};

instance DLG_CringeChest_Open(C_Info)
{
	npc = Chest_199005010_CringeChest;
	nr = 998;
	condition = DLG_CringeChest_Open_Condition;
	information = DLG_CringeChest_Open_Info;
	permanent = 1;
    // trade = true;
	description = "Открыть";
};
var int CringeChest_Unlocked;
func int DLG_CringeChest_Open_Condition()
{
    if(CringeChest_Unlocked)
    {
        return true;
    };
    return false;
};
func void DLG_CringeChest_Open_Info()
{
    CringeChest_WasOpened = true;
    // CringeChest_GivePCaLotOfNugget();
    CringeChest_AniPlay_PCComeToChest();
    // CringeChest_Nugget = Npc_HasItems(self,ItMiNugget);
    AI_PlayAni(self,"T_S0_2_S1");
    self.attribute[ATR_HITPOINTS] = 0;
    AI_StopProcessInfos(other);
    AI_PlayAni(other,"T_CHESTBIG_S0_2_STAND");
};


instance DLG_CringeChest_Unlock(C_Info)
{
	npc = Chest_199005010_CringeChest;
	nr = 997;
	condition = DLG_CringeChest_Unlock_Condition;
	information = DLG_CringeChest_Unlock_Info;
	permanent = 1;
	description = "Взломать";
};
func int DLG_CringeChest_Unlock_Condition()
{
    if(!CringeChest_Unlocked)
    {
        return true;
    };
    return false;
};

func void DLG_CringeChest_Unlock_Info()
{
    CringeChest_AniPlay_PCComeToChest();
    Info_ClearChoices(DLG_CringeChest_Unlock);
    if(Npc_HasItems(other,ItKeLockpick))
    {
        Info_AddChoice(DLG_CringeChest_Unlock,DIALOG_BACK,CringeChest_Back);
        Info_AddChoice(DLG_CringeChest_Unlock,"Повернуть влево",CringeChest_RandomL);
        Info_AddChoice(DLG_CringeChest_Unlock,"Повернуть вправо",CringeChest_RandomR);//нужно реализовать более интересный алгоритм взлома, потому-что сейчас можно кликать любую строку - на вероятность взлома это не повлияет.. можно разнообразить всплывающими фразами, намекающими, что при смене направления шанс увеличится.. так-же можно реализовать доп перки, меняющие стиль взлома
    }
    else
    {
        Print("У меня нет отмычек..");
    };
};


const int CringeChest_Difficult = 5;
var int CringeChest_Lucks;
var int CringeChest_Trys;
func void CringeChest_Random(var int direction)
{

    msgSI("CringeChest_Trys: ",CringeChest_Trys,20,30,2);
    msgSI("CringeChest_Lucks: ",CringeChest_Lucks,20,32,2);

    if(CringeChest_Trys > hero.attribute[ATR_DEXTERITY])
    {
        //lock is completely broken. chest can't be opened anymore
        Print("1");
        G_PickLock_CringeChest(false,true,true);
        if(CringeChest_Direct){CringeChest_Direct = 0;};
        DLG_CringeChest_Unlock_Info();
        return;
    };

    if(
        CringeChest_Direct
    &&  CringeChest_Direct != direction
    )
    {
        //игрок повернул не туду, отмычка ломается, игрок нервно, дико, судорожно плачет (скамрелоадается)
        Print("2");
        G_PickLock_CringeChest(false,true,false);
        Npc_RemoveInvItem(other,ItKeLockpick);
        CringeChest_Direct = 0;
        CringeChest_Lucks = 0;
        CringeChest_Trys +=1;
        DLG_CringeChest_Unlock_Info();
        return;
    };

    if(
        Hlp_Random(200) < hero.attribute[ATR_DEXTERITY]
    ||  
        (
            CringeChest_Direct == direction
        &&  Hlp_Random(200) < hero.attribute[ATR_DEXTERITY]//двойной кубик своего рода
        )
    )
    {
        //next direction is too in this way
        Print("3");
        CringeChest_Direct = direction;
        G_PickLock_CringeChest(true,true,false);
        CringeChest_Lucks +=1;



    }
    else if(
        Hlp_Random(400) < hero.attribute[ATR_DEXTERITY]
    ||  
        (
            CringeChest_Direct == direction
        &&  Hlp_Random(400) < hero.attribute[ATR_DEXTERITY]
        )
    )
    {
        //right way
        Print("4");
        G_PickLock_CringeChest(true,false,true);
        CringeChest_Lucks +=1;
        if(CringeChest_Direct){CringeChest_Direct = 0;};
    }
    else if(Hlp_Random(PC_ATR_LUC % 3 + 1))//;) test..
    {
        //wrong way, but second chanse
        Print("5");
        G_PickLock_CringeChest(false,false,false);
        if(direction == CRINGECHESTDIRECTION_LEFT)
        {
            CringeChest_Direct = CRINGECHESTDIRECTION_RIGHT;
        }
        else
        {
            CringeChest_Direct = CRINGECHESTDIRECTION_LEFT;
        };
        DLG_CringeChest_Unlock_Info();
        return;
    }
    else if(Hlp_Random(100) < hero.attribute[ATR_DEXTERITY])
    {
        //wrong way, start begin
        Print("6");
        G_PickLock_CringeChest(false,false,true);
        CringeChest_Lucks = 0;
        CringeChest_Trys +=1;
        if(CringeChest_Direct){CringeChest_Direct = 0;};
    }
    else
    {
        //broken picklock. try again
        Print("7");
        G_PickLock_CringeChest(false,true,false);
        Npc_RemoveInvItem(other,ItKeLockpick);
        CringeChest_Lucks = 0;
        CringeChest_Trys +=1;
        if(CringeChest_Direct){CringeChest_Direct = 0;};
    };


    if(CringeChest_Lucks == CringeChest_Difficult)
    {
        //chest unlocked
        Print("8");
        G_PickLock_CringeChest(true,true,true);
        CringeChest_Unlocked = true;
        if(CringeChest_Direct){CringeChest_Direct = 0;};
        Info_ClearChoices(DLG_CringeChest_Unlock);
        return;
    };
    Print("9");
    DLG_CringeChest_Unlock_Info();
};
func void CringeChest_RandomL()
{
    CringeChest_Random(CRINGECHESTDIRECTION_LEFT);
};
func void CringeChest_RandomR()
{
    CringeChest_Random(CRINGECHESTDIRECTION_RIGHT);
};
func void CringeChest_Back()
{
    Info_ClearChoices(DLG_CringeChest_Unlock);
    CringeChest_AniPlayed_PCComeToChest = false;
    AI_PlayAni(other,"T_CHESTBIG_S0_2_STAND");
};

func void B_AssignCringeChestInfos(var C_Npc npc)
{
};


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

func void ZS_CringeChest_Interact()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_CringeChest_Interact");
	self.aivar[AIV_INVINCIBLE] = TRUE;
	other.aivar[AIV_INVINCIBLE] = TRUE;
	C_ZSInit();
	B_FullStop(hero);
	AI_TurnToNPC(hero,self);
	if(!hero.aivar[AIV_IMPORTANT])
	{
        //Если игрок повторно обращается к сундуку с которым уже взаимодействовал
        //здесь можно что-то сделать
		// B_CringeChest_RepeatingInteract();
	};
	// B_AssignCringeChestInfos(self);
	self.aivar[AIV_FINDABLE] = TRUE;
	other.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(self);
	AI_ProcessInfos(self);
};

func int ZS_CringeChest_Interact_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_CringeChest_Interact_Loop");
	if(InfoManager_HasFinished())
	{
		PrintDebugNpc(PD_ZS_Check,"...InfoManager beendet!");
		self.aivar[AIV_INVINCIBLE] = FALSE;
		other.aivar[AIV_INVINCIBLE] = FALSE;
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_CringeChest_Interact_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_CringeChest_Interact_End");
	if(!InfoManager_HasFinished())
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_INVINCIBLE] = FALSE;
		AI_StopProcessInfos(self);
	};
};
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////


func void B_CringeChest()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CringeChest");


    self.aivar[AIV_INVINCIBLE] = FALSE;
    hero.aivar[AIV_INVINCIBLE] = FALSE;
    hero.aivar[AIV_IMPORTANT] = FALSE;

    AI_StartState(self,ZS_CringeChest_Interact,0,"");
};

func void B_CringeChest_ReactToDamage()
{
    if(self.attribute[ATR_HITPOINTS] < 100)
    {
        self.name[0] = "Сломанный сундук";
        AI_PlayAni(self,"T_S0_2_S1");
        self.attribute[ATR_HITPOINTS] = 0;
    };
};


func void ZS_CringeChest()
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_CringeChest");
	Npc_PercEnable(self,PERC_ASSESSTALK,B_CringeChest);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_CringeChest_ReactToDamage);

    
	if(!Hlp_StrCmp(Npc_GetNearestWP(self),"LOCATION_02_07"))
	{
		PrintDebugNpc(PD_TA_CHECK,"...nicht auf WP!");
		AI_GotoWP(self,"LOCATION_02_07");
	};
};



func void TA_CringeChest(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
{
	TA_Min(self,start_h,start_m,stop_h,stop_m,ZS_CringeChest,waypoint);
};
func void Rtn_start_199005010()
{
	TA_CringeChest(8,0,20,0,"LOCATION_02_07");
	TA_CringeChest(20,0,8,0,"LOCATION_02_07");
};
