func int bsfire_cf()
{
	if(!Npc_IsPlayer(self)){return true;};
	PC_Count_Swordrawhot = Npc_HasItems(self,ItMiSwordrawhot);
	if(Npc_HasItems(self,ItMiSwordraw))
	{
		return true;
	};
	msgSS("Для этого мне нужна ",ItMiSwordraw.name,-1,-1,3);
	return false;
};
func void bsfire_s1()
{
	if(Npc_IsPlayer(self))
	{
		PC_Forging_Incandescence_TimeStarted = getTimestamp();
		self.aivar[AIV_INVINCIBLE] = TRUE;
		// AI_Wait(self,2);
	// 	B_StopUseMob(self,"BSFIRE");
	};
};

func void bsfire_s0()
{
	if(Npc_IsPlayer(self))
	{
		if(PC_Forging_Incandescence_TimeStarted)
		{
			PC_Forging_Incandescence_IsStopped = true;
			PC_Forging_Incandescence_TimeLasted = getTimestamp() - PC_Forging_Incandescence_TimeStarted;
			msgSI("forging time: ",PC_Forging_Incandescence_TimeLasted,-1,-1,3);
			// if(PC_Count_Swordrawhot != Npc_HasItems(self,ItMiSwordrawhot))
			// {

			// };
			// msgSS(item.name,"",-1,54,3);
		};
		self.aivar[AIV_INVINCIBLE] = FALSE;
	};
};





func int bsanvil_cf()
{
	var C_Item currentequippedweapon;
	var int currentequippedweaponinstance;
	if(Npc_IsPlayer(self))
	{
		if(Npc_HasItems(self,ItMw_1H_Sledgehammer_01))
		{
			currentequippedweapon = Npc_GetEquippedMeleeWeapon(hero);
			currentequippedweaponinstance = Hlp_GetInstanceID(currentequippedweapon);
			if(currentequippedweaponinstance == ItMw_1H_Sledgehammer_01)
			{
				AI_UnequipWeapons(hero);
			};
			return TRUE;
		}
		else
		{
			PrintScreen("Для этого мне нужен кузнечный молот.",-1,-1,"FONT_OLD_10_WHITE.TGA",3);
			if(!Npc_HasItems(self,ItMiSwordrawhot))
			{
				CreateInvItems(self,ItMiSwordrawhot,1);
			};
		};
	}
	else
	{
		if(!Npc_HasItems(self,ItMw_1H_Sledgehammer_01))
		{
			CreateInvItem(self,ItMw_1H_Sledgehammer_01);
		};
		return TRUE;
	};
	return FALSE;
};

func void bsanvil_s1()
{
	if(Npc_IsPlayer(self))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		AI_Wait(self,7.5);
		B_StopUseMob(self,"BSANVIL");
	};
};

func void bsanvil_s0()
{
	if(Npc_IsPlayer(self))
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
	};
};



func int bscool_cf(){return true;};
func void bscool_s1()
{
	if(Npc_IsPlayer(self))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		AI_Wait(self,4);
		B_StopUseMob(self,"BSCOOL");
	};
};

func void bscool_s0()
{
	if(Npc_IsPlayer(self))
	{
		self.aivar[AIV_INVINCIBLE] = FALSE;
	};
};





func int bssharp_cf(){return true;};
func void bssharp_s1()
{
	if(Npc_IsPlayer(self))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		AI_Wait(self,7.8);
		B_StopUseMob(self,"BSSHARP");
	};
};

func void bssharp_s0()
{
	if(Npc_IsPlayer(self))
	{
		PrintScreen("Меч готов!",-1,-1,"FONT_OLD_10_WHITE.TGA",2);
		self.aivar[AIV_INVINCIBLE] = FALSE;
	};
};

