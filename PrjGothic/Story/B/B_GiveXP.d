
const int LP_PER_LEVEL = 10;
const int HP_PER_LEVEL = 12;
const int XP_PER_LEVEL_UNCONSCIOUS = 5;
const int XP_PER_LEVEL_DEAD = 10;

func void B_GiveXP(var int add_xp)
{
	var string msg;
	PrintDebugNpc(PD_ZS_FRAME,"B_GiveXP");
	if(hero.level == 0)
	{
		hero.exp_next = 500;
	};
	msg = NAME_XPGained;
	if(DIFF_HARD == TRUE)
	{
		hero.exp = hero.exp + (add_xp / 2);
		msg = ConcatStrings(msg,IntToString(add_xp / 2));
	}
	else
	{
		hero.exp = hero.exp + add_xp;
		msg = ConcatStrings(msg,IntToString(add_xp));
	};
	PrintScreen(msg,-1,_YPOS_MESSAGE_XPGAINED,"font_old_10_white.tga",_TIME_MESSAGE_XPGAINED);
	if(hero.exp >= hero.exp_next)
	{
		hero.level = hero.level + 1;
		hero.exp_next = hero.exp_next + ((hero.level + 1) * 500);
		if(!Npc_IsDead(hero))
		{
			if(akh_Mod == true)
			{
				Npc_RescaleHitpoints(hero);
			}
			else if(DIFF_HARD == TRUE)
			{
				hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX] + 8;
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + 8;
			}
			else
			{
				hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX] + HP_PER_LEVEL;
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + HP_PER_LEVEL;
			};
		};
		hero.lp = hero.lp + LP_PER_LEVEL;
		PrintScreen(NAME_LevelUp,-1,_YPOS_MESSAGE_LEVELUP,"font_old_20_white.tga",_TIME_MESSAGE_LEVELUP);
		Snd_Play("LevelUp");
	};
};
func void B_GiveXP_To(var int add_xp,var C_Npc npc)
{
	var string msg;
	PrintDebugNpc(PD_ZS_FRAME,"B_GiveXP_To");
	if(npc.level == 0)
	{
		npc.exp_next = 500;
	};
	msg = NAME_XPGained;
	if(DIFF_HARD == TRUE)
	{
		npc.exp = npc.exp + (add_xp / 2);
		msg = ConcatStrings(msg,IntToString(add_xp / 2));
	}
	else
	{
		npc.exp = npc.exp + add_xp;
		msg = ConcatStrings(msg,IntToString(add_xp));
	};
	if(Npc_IsPlayer(npc))
	{
		PrintScreen(msg,-1,_YPOS_MESSAGE_XPGAINED,"font_old_10_white.tga",_TIME_MESSAGE_XPGAINED);
	}
	else
	{
		ShowMsg_NpcGetXP(npc.name,add_xp);
	};
	if(npc.exp >= npc.exp_next)
	{
		npc.level = npc.level + 1;
		npc.exp_next = npc.exp_next + ((npc.level + 1) * 500);
		if(!Npc_IsDead(npc))
		{
			if(akh_Mod == true)
			{
				Npc_RescaleHitpoints(npc);
			}
			else if(DIFF_HARD == TRUE)
			{
				npc.attribute[ATR_HITPOINTS_MAX] = npc.attribute[ATR_HITPOINTS_MAX] + 8;
				npc.attribute[ATR_HITPOINTS] = npc.attribute[ATR_HITPOINTS] + 8;
			}
			else
			{
				npc.attribute[ATR_HITPOINTS_MAX] = npc.attribute[ATR_HITPOINTS_MAX] + HP_PER_LEVEL;
				npc.attribute[ATR_HITPOINTS] = npc.attribute[ATR_HITPOINTS] + HP_PER_LEVEL;
			};
		};
		npc.lp = npc.lp + LP_PER_LEVEL;
		if(Npc_IsPlayer(npc))
		{
			PrintScreen(NAME_LevelUp,-1,_YPOS_MESSAGE_LEVELUP,"font_old_20_white.tga",_TIME_MESSAGE_LEVELUP);
			Snd_Play("LevelUp");
		}
		else
		{
			ShowMsg_NpcGetXP(npc.name,add_xp);
		};
	};
};

func void NpcDeathXP_GiveTo(var C_Npc dead, var C_Npc awarded)
{
	PrintDebugNpc(PD_ZS_FRAME,"NpcDeathXP_GiveTo");
	PrintGlobals(PD_ZS_Check);
	if(
		(
			C_NpcIsHuman(dead)
			&& (
				Npc_WasInState(dead,ZS_Unconscious) || dead.aivar[AIV_WASDEFEATEDBYSC]
			)
		) || (dead.level == 0) || (dead.npcType == npctype_friend)
	)
	{
		PrintDebugNpc(PD_ZS_Check,"...Пострадавший - человек без сознания!");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Жертва либо не без сознания, либо не человек!");
		if(C_NpcIsHuman(dead) && ((dead.npcType == Npctype_MINE_Ambient) || (dead.npcType == npctype_ambient) || (dead.id == 899) || (dead.id == 898)))
		{
			if((dead.npcType == npctype_ambient) && ((dead.id == 336) || (dead.id == 337) || (dead.id == 338) || (dead.id == 889) || (dead.id == 239) || (dead.id == 701) || (dead.id == 704) || (dead.id == 828)))
			{
				B_GiveXP_To(dead.level * XP_PER_LEVEL_DEAD,awarded);
			}
			else
			{
				B_GiveXP_To(10,awarded);
			};
		}
		else if(dead.level > 0)
		{
			B_GiveXP_To(dead.level * XP_PER_LEVEL_DEAD,awarded);
		};
	};
};
func void B_DeathXP()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_DeathXP");
	PrintGlobals(PD_ZS_Check);
	if((C_NpcIsHuman(self) && (Npc_WasInState(self,ZS_Unconscious) || self.aivar[AIV_WASDEFEATEDBYSC])) || (self.level == 0) || (self.npcType == npctype_friend))
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist bewuЯtloser Mensch!");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist entweder nicht bewuЯtlos oder kein Mensch!");
		if(C_NpcIsHuman(self) && ((self.npcType == Npctype_MINE_Ambient) || (self.npcType == npctype_ambient) || (self.id == 899) || (self.id == 898)))
		{
			if((self.npcType == npctype_ambient) && ((self.id == 336) || (self.id == 337) || (self.id == 338) || (self.id == 889) || (self.id == 239) || (self.id == 701) || (self.id == 704) || (self.id == 828)))
			{
				B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
			}
			else
			{
				B_GiveXP(10);
			};
		}
		else if(self.level > 0)
		{
			B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
		};
	};
};

func void B_UnconciousXP()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_UnconciousXP");
	PrintGlobals(PD_ZS_Check);
	if(!C_NpcIsHuman(self) || !self.aivar[AIV_WASDEFEATEDBYSC])
	{
		PrintDebugNpc(PD_ZS_Check,"...erster Sieg!");
		if(C_NpcIsHuman(self) && ((self.npcType == Npctype_MINE_Ambient) || (self.npcType == npctype_ambient) || (self.id == 899) || (self.id == 898)))
		{
			if((self.npcType == npctype_ambient) && ((self.id == 336) || (self.id == 337) || (self.id == 338) || (self.id == 889) || (self.id == 239) || (self.id == 701) || (self.id == 704) || (self.id == 828)))
			{
				B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
			}
			else
			{
				B_GiveXP(10);
			};
		}
		else if(self.level > 0)
		{
			B_GiveXP(self.level * XP_PER_LEVEL_DEAD);
		};
	};
};

func void B_LevelUp_NPC(var C_Npc npc)
{
	PrintDebugNpc(PD_ZS_FRAME,"B_LevelUp_NPC");
	PrintGlobals(PD_ZS_Check);
	npc.level +=1;
	Npc_InitParameters(npc);
};

