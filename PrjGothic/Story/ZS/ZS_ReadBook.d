
func void ZS_ReadBook()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_ReadBook");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!C_BodyStateContains(self,BS_MOBINTERACT))
	{
		AI_GotoWP(self,self.wp);
		AI_UseMob(self,"BOOK",1);
	};
};

func void ZS_ReadBook_Loop()
{
	var int randomizer;
	PrintDebugNpc(PD_TA_LOOP,"ZS_ReadBook_Loop");
	randomizer = Hlp_Random(20);
	if(Npc_GetStateTime(self) >= (100 + randomizer))
	{
		B_InterruptMob("BOOK");
	};
	AI_Wait(self,1);
};

func void ZS_ReadBook_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_ReadBook_End");
	AI_UseMob(self,"BOOK",-1);
};



func void ZS_ReadBookSelf()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_ReadBookSelf");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	// if(!C_BodyStateContains(self,BS_ITEMINTERACT))
	// {
	// 	if(Npc_HasItems(self,ItWr_Book_Circle_02))
	// 	{
	// 		AI_UseItemToState(self,ItWr_Book_Circle_02,0);
	// 		// AI_UseItem(self,ItWr_Book_Circle_02);
	// 	};
	// 	// AI_GotoWP(self,self.wp);
	// 	// AI_UseMob(self,"BOOK",1);
	// };
};

func int ZS_ReadBookSelf_Loop()
{
	var int choice;

	if(!C_BodyStateContains(self,BS_ITEMINTERACT))
	{
		if(Npc_HasBook(self))
		{
			choice = Hlp_Random(100);
			if(choice < 20)
			{
				if(Hlp_IsValidNpc(EBR_100_Gomez))
				{
					AI_TurnToNPC(self,EBR_100_Gomez);
				};
				AI_UseItemToState(self,ItWr_Book_Circle_02,1);
			}
			else if(choice < 30)
			{
				B_ChooseWine(self);
				B_PlayItemRandoms(self);
			}
			else if(choice < 45)
			{
				B_WipeMouth(self);
			}
			else
			{
				B_Bored(self);
			};
		};
	}
	else if(Npc_GetStateTime(self) > 5 + Hlp_Random(20))
	{
		return LOOP_END;
	};


	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_ReadBookSelf_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_ReadBookSelf_End");
	if(C_BodyStateContains(self,BS_ITEMINTERACT))
	{
		B_ClearItem(self);
		AI_UseItemToState(self,ItWr_Book_Circle_02,-1);
	};
};

