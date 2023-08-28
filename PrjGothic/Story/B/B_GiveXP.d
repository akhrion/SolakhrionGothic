
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

func void B_DeathXP()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_DeathXP");
	PrintGlobals(PD_ZS_Check);
	if((C_NpcIsHuman(self) && (Npc_WasInState(self,ZS_Unconscious) || self.aivar[AIV_WASDEFEATEDBYSC])) || (self.level == 0) || (self.npcType == npctype_friend))
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist bewußtloser Mensch!");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...Opfer ist entweder nicht bewußtlos oder kein Mensch!");
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

func void PC_ImproveSkills()
{
	var int chance;
	//Ñ ðîñòîì óðîâíÿ ÃÃ ïðîêà÷êà çàìåäëÿåòñÿ
	if(Hlp_Random(hero.level + 1))
	{
		return;
	};
	if(chance)
	{
		if(!Random_IsProc(chance))
		{
			chance +=1;
			return;
		};
	};
	B_GiveXP(hero.exp_next - hero.exp);
	chance = PC_ChanceToSkillsImproveInBattle;
	if(Npc_IsInFightMode(hero,FMODE_MAGIC))
	{
		return;
	};
	if(Npc_IsInFightMode(hero,FMODE_FIST))
	{
		hero.attribute[ATR_STRENGTH] += 2;
		return;
	};

	var C_Item weapon;
	weapon = Npc_GetReadiedWeapon(hero);
	if(Item_IsMeleeWeapon(weapon))
	{
		hero.attribute[ATR_STRENGTH] += 1;
		if(Item_GetWeaponHand(weapon) == PC_WeaponHandOne)
		{
			Npc_SetTalentValue(hero,NPC_TALENT_1H,Npc_GetTalentValue(hero,NPC_TALENT_1H) + 1);
			if(
				Npc_GetTalentSkill(hero,NPC_TALENT_1H) == 0
			&&	Npc_GetTalentValue(hero,NPC_TALENT_1H) >= 10
			)
			{
				Npc_SetTalentSkill(hero,NPC_TALENT_1H,1);
			};
		}
		else
		{
			Npc_SetTalentValue(hero,NPC_TALENT_2H,Npc_GetTalentValue(hero,NPC_TALENT_2H) + 1);
			if(
				Npc_GetTalentSkill(hero,NPC_TALENT_2H) == 0
			&&	Npc_GetTalentValue(hero,NPC_TALENT_2H) >= 10
			)
			{
				Npc_SetTalentSkill(hero,NPC_TALENT_2H,1);
			};
		};
	}
	else
	{
		hero.attribute[ATR_DEXTERITY] += 1;
		if(Item_IsBow(weapon))
		{
			Npc_SetTalentValue(hero,NPC_TALENT_BOW,Npc_GetTalentValue(hero,NPC_TALENT_BOW) + 1);
			if(
				Npc_GetTalentSkill(hero,NPC_TALENT_BOW) == 0
			&&	Npc_GetTalentValue(hero,NPC_TALENT_BOW) >= 10
			)
			{
				Npc_SetTalentSkill(hero,NPC_TALENT_BOW,1);
			};
		}
		else
		{
			Npc_SetTalentValue(hero,NPC_TALENT_CROSSBOW,Npc_GetTalentValue(hero,NPC_TALENT_CROSSBOW) + 1);
			if(
				Npc_GetTalentSkill(hero,NPC_TALENT_CROSSBOW) == 0
			&&	Npc_GetTalentValue(hero,NPC_TALENT_CROSSBOW) >= 10
			)
			{
				Npc_SetTalentSkill(hero,NPC_TALENT_CROSSBOW,1);
			};
		};
	};
};
