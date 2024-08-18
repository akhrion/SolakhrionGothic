
func int C_AmIStronger(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_AmIStronger");
	if((2 * slf.level) > oth.level)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...yes");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...no");
	};
	return FALSE;
};

func int C_AmIWeaker(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_AmIWeaker");
	if((2 * slf.level) <= oth.level)
	{
		if((self.guild == GIL_ORCSCOUT) || (self.guild == GIL_ORCWARRIOR))
		{
			return FALSE;
		}
		else if((self.id == 863) || (self.id == 864) || (self.id == 858) || (self.id == 865) || (self.id == 866) || (self.id == 867) || (self.id == 868) || (self.id == 869) || (self.id == 870) || (self.id == 871) || (self.id == 874))
		{
			return FALSE;
		}
		else if(self.id == 1303)
		{
			return FALSE;
		}
		else if(self.id == 844)
		{
			return FALSE;
		}
		else if(self.id == 336)
		{
			return FALSE;
		}
		else if(self.id == 337)
		{
			return FALSE;
		}
		else if(self.id == 338)
		{
			return FALSE;
		}
		else if(self.id == 246)
		{
			return FALSE;
		}
		else if(self.id == 284)
		{
			return FALSE;
		}
		else if(self.id == 286)
		{
			return FALSE;
		}
		else if(self.id == 287)
		{
			return FALSE;
		}
		else if(self.id == 288)
		{
			return FALSE;
		}
		else if(self.id == 289)
		{
			return FALSE;
		}
		else if(self.id == 290)
		{
			return FALSE;
		}
		else if(self.id == 291)
		{
			return FALSE;
		}
		else if(self.id == 292)
		{
			return FALSE;
		}
		else if(self.id == 293)
		{
			return FALSE;
		}
		else if(self.id == 294)
		{
			return FALSE;
		}
		else if(self.id == 295)
		{
			return FALSE;
		}
		else if(self.id == 296)
		{
			return FALSE;
		}
		else if(self.id == 297)
		{
			return FALSE;
		}
		else if(self.id == 298)
		{
			return FALSE;
		}
		else if(self.id == 299)
		{
			return FALSE;
		}
		else if(self.id == 1490)
		{
			return FALSE;
		}
		else if(self.id == 1333)
		{
			return FALSE;
		}
		else if(self.id == 251)
		{
			return FALSE;
		}
		else if(self.id == 729)
		{
			return FALSE;
		}
		else if(self.id == 1422)
		{
			return FALSE;
		}
		else
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...yes");
			return TRUE;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...no");
	};
	return FALSE;
};

func int C_NpcIsInFightMode(var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_Check,"C_NpcIsInFightMode");
	if(Npc_IsInFightMode(oth,FMODE_FAR) || Npc_IsInFightMode(oth,FMODE_MELEE) || Npc_IsInFightMode(oth,FMODE_FIST))
	{
		PrintDebugNpc(PD_ZS_Check,"...true");
		return TRUE;
	}
	else if(Npc_IsInFightMode(oth,FMODE_MAGIC))
	{
		if(Npc_GetActiveSpellCat(oth) == SPELL_BAD)
		{
			PrintDebugNpc(PD_ZS_Check,"...true");
			return TRUE;
		}
		else if((Npc_IsInState(self,ZS_GuardPassage) || Npc_WasInState(self,ZS_GuardPassage)) && ((Npc_GetActiveSpell(oth) == SPL_SLEEP) || (Npc_GetActiveSpell(oth) == SPL_CHARM)))
		{
			PrintDebugNpc(PD_ZS_Check,"...true");
			return TRUE;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...false");
	};
	return FALSE;
};

func int C_NpcIsInNeutralSpellMode(var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_Check,"C_NpcIsInNeutralSpellMode");
	if(Npc_IsInFightMode(oth,FMODE_MAGIC) && ((Npc_GetActiveSpellCat(oth) == SPELL_GOOD) || (Npc_GetActiveSpellCat(oth) == SPELL_NEUTRAL)))
	{
		PrintDebugNpc(PD_ZS_Check,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...false");
	};
	return FALSE;
};

func int C_NpcIsDown(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsDown");
	if(Npc_IsInState(slf,ZS_Unconscious) || Npc_IsInState(slf,ZS_MagicSleep) || Npc_IsDead(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsHuman(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsHuman");
	PrintDebugString(PD_ZS_DETAIL,"...name: ",slf.name);
	if(slf.guild < GIL_SEPERATOR_HUM)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsMonster(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMonster");
	PrintDebugString(PD_ZS_DETAIL,"...name: ",slf.name);
	if((slf.guild > GIL_SEPERATOR_HUM) && (slf.guild < GIL_SEPERATOR_ORC))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsDangerousMonster(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsDangerousMonster");
	if(C_NpcIsMonster(oth) && (Wld_GetGuildAttitude(oth.guild,slf.guild) == ATT_HOSTILE) && !oth.aivar[AIV_MOVINGMOB] && !C_NpcIsDown(oth))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false");
	return FALSE;
};

func int C_NpcIsOrc(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsOrc");
	if(slf.guild > GIL_SEPERATOR_ORC)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsMonsterMage(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMonsterMage");
	if((slf.fight_tactic == FAI_HUMAN_MAGE) && ((slf.guild == GIL_DEMON) || (slf.guild == GIL_ORCSHAMAN) || (slf.guild == GIL_UNDEADORC) || (slf.guild == GIL_GOLEM)))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func void Npc_SetPermAttitude(var C_Npc slf,var int att)
{
	PrintDebugNpc(PD_ZS_DETAIL,"Npc_SetPermAttitude()");
	Npc_SetAttitude(slf,att);
	Npc_SetTempAttitude(slf,att);
};

func int Npc_GetTempAttitude(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"Npc_GetTempAttitude()");
	return Npc_GetAttitude(slf,oth);
};

func int C_BodyStateContains(var C_Npc slf,var int bodystate)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_BodyStateContains()");
	PrintDebugInt(PD_ZS_DETAIL,"bodystate: ",bodystate);
	PrintDebugInt(PD_ZS_DETAIL,"bodystate&(BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS): ",bodystate & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS));
	PrintDebugInt(PD_ZS_DETAIL,"Npc_GetBodyState(slf): ",Npc_GetBodyState(slf));
	PrintDebugInt(PD_ZS_DETAIL,"Npc_GetBodyState(slf)&(BS_MAX|BS_FLAG_INTERRUPTABLE|BS_FLAG_FREEHANDS): ",Npc_GetBodyState(slf) & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS));
	if((Npc_GetBodyState(slf) & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)) == (bodystate & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcTypeIsFriend(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcTypeIsFriend()");
	if(Npc_IsPlayer(oth) && (slf.npcType == npctype_friend))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsGuard(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsGuard");
	if((slf.npcType == npctype_guard) || (slf.npcType == npctype_ow_guard) || (slf.npcType == NpcType_MINE_Guard) || (((slf.npcType == npctype_main) || (slf.npcType == npctype_friend)) && ((slf.guild == GIL_GRD) || (slf.guild == GIL_SLD) || (slf.guild == GIL_TPL))))
	{
		if(slf.fight_tactic != FAI_HUMAN_RANGED)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true!");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};

func int C_NpcIsGuardArcher(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsGuardArcher");
	if((slf.npcType == npctype_guard) || (slf.npcType == npctype_ow_guard) || (slf.npcType == NpcType_MINE_Guard) || (((slf.npcType == npctype_main) || (slf.npcType == npctype_friend)) && ((slf.guild == GIL_GRD) || (slf.guild == GIL_SLD) || (slf.guild == GIL_TPL))))
	{
		if(slf.fight_tactic == FAI_HUMAN_RANGED)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true!");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};

func int C_NpcIsBoss(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsBoss");
	if(Hlp_GetInstanceID(EBR_101_Scar) == Hlp_GetInstanceID(self))
	{
		return FALSE;
	}
	else if(Hlp_GetInstanceID(EBR_102_Arto) == Hlp_GetInstanceID(self))
	{
		return FALSE;
	}
	else if(Hlp_GetInstanceID(EBR_106_Bartholo) == Hlp_GetInstanceID(self))
	{
		return FALSE;
	}
	else if(Hlp_GetInstanceID(ebr_598_bartholo) == Hlp_GetInstanceID(self))
	{
		return FALSE;
	}
	else if((slf.guild == GIL_EBR) || (slf.guild == GIL_KDF) || (slf.guild == GIL_KDW) || (slf.guild == GIL_GUR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsWorker(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsWorker");
	if((slf.guild == GIL_VLK) || (slf.guild == GIL_STT) || (slf.guild == GIL_BAU) || (slf.guild == GIL_SFB) || (slf.guild == GIL_ORG) || (slf.guild == GIL_NOV))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcIsMage(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMage");
	if(
		slf.guild == GIL_KDF
	||	slf.guild == GIL_KDW
	||	slf.guild == GIL_DMB
	||	slf.guild == GIL_GUR
	)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};
func int C_NpcHasMagicalTalent(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcIsMage");
	if(
		slf.guild == GIL_KDF
	||	slf.guild == GIL_KDW
	||	slf.guild == GIL_DMB
	||	slf.guild == GIL_GUR
	||	slf.guild == GIL_TPL
	||	slf.guild == GIL_NOV
	)
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...true");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...false");
	};
	return FALSE;
};

func int C_NpcBelongsToOldCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToOldCamp");
	if((slf.guild == GIL_VLK) || (slf.guild == GIL_STT) || (slf.guild == GIL_GRD) || (slf.guild == GIL_KDF) || (slf.guild == GIL_EBR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
	};
	return FALSE;
};

func int C_NpcBelongsToNewCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToNewCamp");
	if((slf.guild == GIL_BAU) || (slf.guild == GIL_SFB) || (slf.guild == GIL_ORG) || (slf.guild == GIL_SLD) || (slf.guild == GIL_KDW))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
	};
	return FALSE;
};

func int C_NpcBelongsToPsiCamp(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcBelongsToPsiCamp");
	if((slf.guild == GIL_NOV) || (slf.guild == GIL_TPL) || (slf.guild == GIL_GUR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...TRUE");
		return TRUE;
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...FALSE");
	};
	return FALSE;
};

func int C_ChargeWasAttacked(var C_Npc guard,var C_Npc charge,var C_Npc attacker)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_ChargeWasAttacked");
	if(C_NpcIsGuard(guard) || C_NpcIsGuardArcher(guard) || (guard.npcType == npctype_guard) || (guard.npcType == NpcType_MINE_Guard) || (guard.guild == GIL_EBR))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...NSC ist Wache oder FK-Wache!");
		if((Npc_GetAttitude(guard,charge) == ATT_FRIENDLY) && (Npc_GetAttitude(guard,attacker) != ATT_FRIENDLY))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...true");
			return TRUE;
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false");
	return FALSE;
};

func int C_NpcHasSpell(var C_Npc slf,var int spell)
{
	return Npc_HasSpell(slf,spell);
};

func int C_NpcHasAmmo(var C_Npc slf,var int category)
{
	var int count;
	PrintDebugNpc(PD_ZS_DETAIL,"C_NpcHasAmmo");
	if((category != ItAmArrow) && (category != ItAmBolt))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...ung¸ltige Kategorie !!!");
		return 0;
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,1);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,2);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,3);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,4);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,5);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	count = Npc_GetInvItemBySlot(slf,INV_WEAPON,6);
	if(Hlp_IsValidItem(item) && (item.mainflag == ITEM_KAT_MUN))
	{
		PrintDebugInt(PD_ZS_DETAIL,"...gefundene Anzahl: ",count);
		if(Hlp_GetInstanceID(item) == category)
		{
			PrintDebugString(PD_ZS_DETAIL,"...Munitionstyp: ",item.name);
			return count;
		};
	};
	return 0;
};

func int C_NpcHasWeapon(var C_Npc slf,var int category)
{
	PrintDebugNpc(PD_ZS_FRAME,"C_NpcHasWeapon");
	if((category != ITEM_KAT_NF) && (category != ITEM_KAT_FF))
	{
		PrintDebugNpc(PD_ZS_Check,"...ung¸ltige Kategorie !!!");
		return FALSE;
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,1);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 1 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,2);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 2 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,3);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 3 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,4);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 4 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,5);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 5 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	Npc_GetInvItemBySlot(slf,INV_WEAPON,6);
	if(Hlp_IsValidItem(item) && (item.mainflag == category))
	{
		PrintDebugNpc(PD_ZS_Check,"...Waffe in Slot 6 !!!");
		if(category == ITEM_KAT_NF)
		{
			PrintDebugNpc(PD_ZS_Check,"...Nahkampfwaffe gefunden!");
			return TRUE;
		}
		else if(C_NpcHasAmmo(slf,item.munition))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fernkampfwaffe mit ausreichend Ammo gefunden!");
			return TRUE;
		};
	};
	return FALSE;
};

func int Item_IsMeleeWeapon(var C_Item _itm)
{
	if(_itm.mainflag == ITEM_KAT_NF)
	{
		return true;
	};
	return false;
};
func int Item_IsRangedWeapon(var C_Item _itm)
{
	if(_itm.mainflag == ITEM_KAT_FF)
	{
		return true;
	};
	return false;
};
func int Item_IsBow(var C_Item _itm)
{
	if(isFlagsContainCategorie(_itm.flags,ITEM_BOW))
	{
		return true;
	};
	return false;
};
func int Item_IsCrossBow(var C_Item _itm)
{
	if(isFlagsContainCategorie(_itm.flags,ITEM_CROSSBOW))
	{
		return true;
	};
	return false;
};
func int C_GetAttackReason(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"C_GetAttackReason");
	return slf.aivar[AIV_ATTACKREASON];
};

func int C_OtherIsToleratedEnemy(var C_Npc slf,var C_Npc oth)
{
	var C_Item weapon;
	var int weaponInstance;
	PrintDebugNpc(PD_ZS_DETAIL,"C_OtherIsToleratedEnemy");
	if(C_NpcIsOrc(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork!");
		weapon = Npc_GetReadiedWeapon(oth);
		if(Hlp_IsValidItem(weapon))
		{
			weaponInstance = Hlp_GetInstanceID(weapon);
			PrintDebugString(PD_ZS_DETAIL,"...gezogene Waffe von 'other': ",weapon.name);
			if(weaponInstance == UluMulu)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...true!");
				return TRUE;
			};
		};
		weapon = Npc_GetEquippedMeleeWeapon(oth);
		if(Hlp_IsValidItem(weapon))
		{
			weaponInstance = Hlp_GetInstanceID(weapon);
			PrintDebugString(PD_ZS_DETAIL,"...equippte Waffe von 'other': ",weapon.name);
			if(weaponInstance == UluMulu)
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...true!");
				return TRUE;
			};
		};
	};
	PrintDebugNpc(PD_ZS_DETAIL,"...false!");
	return FALSE;
};
func int Item_GetWeaponHand(var C_Item itm)
{
	if(
		isFlagsContainCategorie(itm.flags, ITEM_SWD)
	||	isFlagsContainCategorie(itm.flags, ITEM_AXE)
	)
	{
		return PC_WeaponHandOne;
	}
	else if(
		isFlagsContainCategorie(itm.flags,ITEM_2HD_SWD)
	||	isFlagsContainCategorie(itm.flags,ITEM_2HD_AXE)
	)
	{
		return PC_WeaponHandTwo;
	};
	return UNDEFINED;
};
func int Item_IsWeaponHandOne(var C_Item itm)
{
	if(
		isFlagsContainCategorie(itm.flags, ITEM_SWD)
	||	isFlagsContainCategorie(itm.flags, ITEM_AXE)
	)
	{
		return true;
	};
	return false;
};
func void B_TolerateEnemy(var C_Npc slf,var C_Npc oth)
{
	var int npcInstance;
	PrintDebugNpc(PD_ZS_DETAIL,"B_TolerateEnemy");
	if(C_NpcIsOrc(slf) && (Npc_GetDistToNpc(slf,oth) > HAI_DIST_ASSESSTOLERATEDENEMY))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork und nah genug dran!");
		npcInstance = Hlp_GetInstanceID(slf);
		if((npcInstance == OrcScout) || (npcInstance == OrcWarrior1) || (npcInstance == OrcWarrior2))
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist anderer Ork!");
			if(!Npc_IsInState(slf,ZS_Upset))
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'self' noch nicht in ZS_FollowPC");
				Npc_ClearAIQueue(slf);
				AI_Standup(slf);
				AI_StartState(slf,ZS_Upset,1,"");
			};
		}
		else if(npcInstance == OrcWarrior3)
		{
			PrintDebugNpc(PD_ZS_DETAIL,"...'self' ist Ork Tempelkrieger!");
			if(!Npc_IsInState(slf,ZS_FollowPC))
			{
				PrintDebugNpc(PD_ZS_DETAIL,"...'self' noch nicht in ZS_FollowPC");
				Npc_ClearAIQueue(slf);
				AI_Standup(slf);
				AI_StartState(slf,ZS_FollowPC,1,"");
			};
		};
	};
};

func int c_npcisguarding(var C_Npc slf)
{
	if(slf.id == 872)
	{
		return TRUE;
	};
	if((slf.id == 840) || (slf.id == 804))
	{
		return TRUE;
	};
	if((slf.id == 818) || (slf.id == 819) || (slf.id == 859))
	{
		return TRUE;
	};
	if((slf.id == 1442) || (slf.id == 1441))
	{
		return TRUE;
	};
	if(slf.id == 336)
	{
		return TRUE;
	};
	if((slf.id == 732) || (slf.id == 723))
	{
		return TRUE;
	};
	if((slf.id == 212) || (slf.id == 213))
	{
		return TRUE;
	};
	if(slf.id == 218)
	{
		return TRUE;
	};
	if(slf.id == 224)
	{
		return TRUE;
	};
	if(slf.id == 998)
	{
		return TRUE;
	};
	if((slf.id == 251) || (slf.id == 729) || (slf.id == 1422))
	{
		return TRUE;
	};
	if(slf.id == 328)
	{
		return TRUE;
	};
	if(slf.id == 726)
	{
		return TRUE;
	};
	if((slf.id == 404) || (slf.id == 406))
	{
		return TRUE;
	};
	if((slf.id == 100) && (Kapitel >= 4))
	{
		return TRUE;
	};
	if(((slf.id == 1433) || (slf.id == 1401) || (slf.id == 1400)) && Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN))
	{
		return TRUE;
	};
	if((slf.id == 263) && Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN))
	{
		return TRUE;
	};
	if(slf.id == 867)
	{
		return TRUE;
	};
	return FALSE;
};
func void Item_ChangeCondition_STR(var C_Item _itm, var int _str)
{
	_itm.cond_value[2] = _str;
	_itm.count[3] = _str;
};
func int Npc_IsSummonedByPC(var C_Npc _npc)
{
	if(
		Hlp_GetInstanceID(_npc) == Hlp_GetInstanceID(SummonedByPC_SkeletonShield)
	||	Hlp_GetInstanceID(_npc) == Hlp_GetInstanceID(SummonedByPC_Skeleton)
	||	Hlp_GetInstanceID(_npc) == Hlp_GetInstanceID(SummonedByPC_SkeletonWarrior)
	)
	{
		return TRUE;
	};
	return FALSE;
};

func int Npc_GetStr(var C_Npc npc_)
{
	return npc_.attribute[ATR_STRENGTH];
};
func int Npc_GetDex(var C_Npc npc_)
{
	return npc_.attribute[ATR_DEXTERITY];
};
func int Npc_GetHP(var C_NPC npc)
{
	return npc.attribute[ATR_HITPOINTS];
};
func int Npc_GetHPMax(var C_NPC npc)
{
	return npc.attribute[ATR_HITPOINTS_MAX];
};
func int Npc_GetHPPcnt(var C_NPC npc)
{
	return npc.attribute[ATR_HITPOINTS] * 100 / npc.attribute[ATR_HITPOINTS_MAX];
};
func void Npc_IncreaseDex(var C_Npc npc_, var int dex)
{
	npc_.attribute[ATR_DEXTERITY] += dex;
};
func void Npc_SetDex(var C_Npc npc_, var int dex)
{
	npc_.attribute[ATR_DEXTERITY] = dex;
};
func void Npc_SetHP(var C_NPC npc, var int hp)
{
	npc.attribute[ATR_HITPOINTS] = hp;
};
func void Npc_SetHPPcnt(var C_NPC npc,var int hp)
{
	npc.attribute[ATR_HITPOINTS] = hp * npc.attribute[ATR_HITPOINTS_MAX] / 100;
};
func void Npc_SetHitpoints(var C_Npc _npc, var int hp)
{
	_npc.attribute[ATR_HITPOINTS] = hp;	
};
func void Npc_AddHitpoints(var C_Npc _npc, var int hp)
{
	_npc.attribute[ATR_HITPOINTS] = _npc.attribute[ATR_HITPOINTS] + hp;
};
func void Npc_SubtractHitpoints(var C_Npc _npc, var int hp)
{
	_npc.attribute[ATR_HITPOINTS] = _npc.attribute[ATR_HITPOINTS] - hp;
};
func void Npc_DecreaseHP(var C_NPC npc,var int hp)
{
	npc.attribute[ATR_HITPOINTS] -= hp;
};
func void Npc_IncreaseHP(var C_NPC npc,var int hp)
{
	IF(npc.attribute[ATR_HITPOINTS] == npc.attribute[ATR_HITPOINTS_MAX]){return;};
	IF(npc.attribute[ATR_HITPOINTS] > npc.attribute[ATR_HITPOINTS_MAX]){Npc_SetHP(npc,npc.attribute[ATR_HITPOINTS_MAX]);return;};
	npc.attribute[ATR_HITPOINTS] += hp;
};
func int Npc_IsReceiveDamage(var C_Npc victim, var C_Npc attacker)
{
	if(Npc_IsInFightMode(attacker,FMODE_MAGIC))
	{
		return FALSE;
	};
	if(Npc_IsInFightMode(attacker,FMODE_FIST))
	{
		if(attacker.attribute[ATR_STRENGTH] > victim.protection[PROT_BLUNT])
		{
			return true;
		}
		else
		{
			return false;
		};
	};

	var C_Item weapon;
	weapon = Npc_GetReadiedWeapon(attacker);
	if(weapon.damage[DAM_INDEX_BARRIER] > victim.protection[PROT_BARRIER])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_BLUNT] > victim.protection[PROT_BLUNT])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_EDGE] > victim.protection[PROT_EDGE])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_FIRE] > victim.protection[PROT_FIRE])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_FLY] > victim.protection[PROT_FLY])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_MAGIC] > victim.protection[PROT_MAGIC])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_POINT] > victim.protection[PROT_POINT])
	{
		return true;
	};
	if(weapon.damage[DAM_INDEX_FALL] > victim.protection[PROT_FALL])
	{
		return true;
	};
	return FALSE;
};
func int Random_IsProc(var int percent)
{
	if(percent < 1){return false;};
	if(percent > 99){return true;};
	return !Hlp_Random(100 / percent);
};
func int Random_IsProcM(var int prob)// Í‡ÍÓÈ ÙË„ÌË ˇ ÚÓÎ¸ÍÓ ÌÂ Ì‡ÍÛ‡ÎÂ¯Û, ÍÓ„‰‡ ÛÍË ‰ÂÎ‡˛Ú, ‡ ÏÓÁ„ ÒÔËÚ
{
	if(prob < 1){return false;};
	if(prob > 9999){return true;};
	return !Hlp_Random(10000 / prob);
};
func void Npc_RescaleCriticalChance(var C_Npc _npc)
{
	if(!Npc_IsPlayer(_npc)){return;};
	if(Npc_HasReadiedWeapon(_npc))
	{
		var C_Item itm;
		itm = Npc_GetReadiedWeapon(_npc);
		var int bonus;
		if(Item_IsMeleeWeapon(itm))
		{
			if(Item_IsWeaponHandOne(itm))
			{
				if(getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_1H_Quality) == PC_DexBuff_1H)
				{
					return;
				};
				bonus = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_1H_Quality) - PC_DexBuff_1H;
				Npc_SetTalentValue(_npc,NPC_TALENT_1H,
					Npc_GetTalentValue(_npc,NPC_TALENT_1H)
					+ bonus
				);
				PC_DexBuff_1H = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_1H_Quality);
			}
			else
			{
				if(getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_2H_Quality) == PC_DexBuff_2H)
				{
					return;
				};
				bonus = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_2H_Quality) - PC_DexBuff_2H;
				Npc_SetTalentValue(_npc,NPC_TALENT_2H,
					Npc_GetTalentValue(_npc,NPC_TALENT_2H)
					+ bonus
				);
				PC_DexBuff_2H = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_2H_Quality);
			};
		}
		else
		{
			if(Item_IsBow(itm))
			{
				if(getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_Bow_Quality) == PC_DexBuff_Bow)
				{
					return;
				};
				bonus = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_Bow_Quality) - PC_DexBuff_Bow;
				Npc_SetTalentValue(_npc,NPC_TALENT_BOW,
					Npc_GetTalentValue(_npc,NPC_TALENT_BOW)
					+ bonus
				);
				PC_DexBuff_Bow = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_Bow_Quality);
			}
			else
			{
				if(getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_CrossBow_Quality) == PC_DexBuff_CrossBow)
				{
					return;
				};
				bonus = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_CrossBow_Quality) - PC_DexBuff_CrossBow;
				Npc_SetTalentValue(_npc,NPC_TALENT_CROSSBOW,
					Npc_GetTalentValue(_npc,NPC_TALENT_CROSSBOW)
					+ bonus
				);
				PC_DexBuff_CrossBow = getPercentFromInteger(_npc.attribute[ATR_DEXTERITY],PC_DexBuff_CrossBow_Quality);
			};
		};
	};
};
func void Npc_SetMana(var C_NPC npc,var int mana)
{
	npc.attribute[ATR_MANA] = mana;
};
func void Npc_DecreaseMana(var C_NPC npc,var int mana)
{
	if(npc.attribute[ATR_MANA] < 1){return;};
	if(npc.attribute[ATR_MANA] - mana < 1)
	{
		Npc_SetMana(npc,0);
		return;
	};
	npc.attribute[ATR_MANA] -= mana;
};
func void Npc_IncreaseMana(var C_NPC npc,var int mana)
{
	if(npc.attribute[ATR_MANA] >= npc.attribute[ATR_MANA_MAX]){return;};
	if(npc.attribute[ATR_MANA] + mana >= npc.attribute[ATR_MANA_MAX]){
		Npc_SetMana(npc,npc.attribute[ATR_MANA_MAX]);
		return;
	};
	npc.attribute[ATR_MANA] += mana;
};
func int Npc_GetMana(var C_NPC npc)
{
	return npc.attribute[ATR_MANA];
};
func int Npc_GetManaMax(var C_NPC npc)
{
	return npc.attribute[ATR_MANA_MAX];
};




func int Npc_GetMagCircle(var C_Npc npc)
{
	return Npc_GetTalentSkill(npc,NPC_TALENT_MAGE);
};
func void Npc_RescaleHitpoints(var C_Npc npc)
{

	if(npc.attribute[ATR_HITPOINTS_MAX] != npc.attribute[ATR_STRENGTH] * npc.level)
	{
		npc.attribute[ATR_HITPOINTS_MAX] = npc.attribute[ATR_STRENGTH] * npc.level;
	};
	if(!Npc_IsPlayer(npc))
	{
		if(Npc_GetDistToPlayer(npc) < 3000)
		{
			if(npc.attribute[ATR_HITPOINTS] != npc.attribute[ATR_HITPOINTS_MAX])
			{
				npc.attribute[ATR_HITPOINTS] = npc.attribute[ATR_HITPOINTS_MAX];
			};
		};
	}
	else
	{
		if(npc.attribute[ATR_HITPOINTS] > npc.attribute[ATR_HITPOINTS_MAX])
		{
			npc.attribute[ATR_HITPOINTS] = npc.attribute[ATR_HITPOINTS_MAX];
		};
	};
};
func void Npc_RescaleMana(var C_Npc npc)
{
	if(!Npc_GetMagCircle(npc))
	{
		if(npc.attribute[ATR_MANA] != npc.level)
		{
			npc.attribute[ATR_MANA] = npc.level;
		};
		if(npc.attribute[ATR_MANA_MAX] != npc.level)
		{
			npc.attribute[ATR_MANA_MAX] = npc.level;
		};
	}
	else
	{
		var int maxManaByLevelAndCircle;
		maxManaByLevelAndCircle = npc.level + pow(Npc_GetMagCircle(npc),Npc_GetMagCircle(npc));
		if(npc.attribute[ATR_MANA_MAX] != maxManaByLevelAndCircle)
		{
			npc.attribute[ATR_MANA_MAX] = maxManaByLevelAndCircle;
		};
		if(!Npc_IsPlayer(npc))
		{
			if(Npc_GetDistToPlayer(npc) < 3000)
			{
				if(npc.attribute[ATR_MANA] != maxManaByLevelAndCircle)
				{
					npc.attribute[ATR_MANA] = maxManaByLevelAndCircle;
				};
			};
		}
		else
		{
			if(npc.attribute[ATR_MANA] > maxManaByLevelAndCircle)
			{
				npc.attribute[ATR_MANA] = maxManaByLevelAndCircle;
			};
		};
	};
};

func void Npc_RescaleProtections(var C_Npc npc)
{
	if(Npc_HasEquippedArmor(npc))
	{
		var C_Item armor;
		armor = Npc_GetEquippedArmor(npc);
		if(npc.protection[PROT_BLUNT] != armor.protection[PROT_BLUNT] + npc.attribute[ATR_STRENGTH])
		{
			npc.protection[PROT_BLUNT] = armor.protection[PROT_BLUNT] + npc.attribute[ATR_STRENGTH];
		};
	}
	else
	{
		if(npc.protection[PROT_BLUNT] != npc.attribute[ATR_STRENGTH])
		{
			npc.protection[PROT_BLUNT] = npc.attribute[ATR_STRENGTH];
		};
	};
};

func int Npc_IsHealedOnIterat(var C_Npc npc)
{
	if(npc.aivar[AIV_FREEMAN] & AIV_ITEROCCUR_ISHEALEDONITERAT)
	{
		return true;
	};
	return false;
};

func void Npc_InitParameters(var C_Npc npc)
{
	if(akh_Mod)
	{
		if(
			Npc_IsPlayer(npc)
		&&	hero.level == 0
		)
		{
			hero.level = 1;
			if(npc.attribute[ATR_STRENGTH] != 1)
			{
				npc.attribute[ATR_STRENGTH] = 1;
			};
			if(npc.attribute[ATR_DEXTERITY] != 1)
			{
				npc.attribute[ATR_DEXTERITY] = 1;
			};
			if(npc.attribute[ATR_MANA] != 1)
			{
				npc.attribute[ATR_MANA] = 1;
			};
			if(npc.attribute[ATR_MANA_MAX] != 1)
			{
				npc.attribute[ATR_MANA_MAX] = 1;
			};
			if(npc.attribute[ATR_HITPOINTS] != 1)
			{
				npc.attribute[ATR_HITPOINTS] = 1;
			};
			if(npc.attribute[ATR_HITPOINTS_MAX] != 1)
			{
				npc.attribute[ATR_HITPOINTS_MAX] = 1;
			};
			return;
		};
		Npc_RescaleMana(npc);
		Npc_RescaleHitpoints(npc);
		Npc_RescaleProtections(npc);
		Npc_RescaleCriticalChance(npc);
	};
};
func int Npc_GetMagicPower(var C_Npc npc)
{
	return npc.attribute[ATR_MANA] * Npc_GetTalentSkill(npc,NPC_TALENT_MAGE);
};
func void Spell_CalculateTimePerMana(var C_Spell spell)
{
	if(!Npc_IsPlayer(self))
	{
		AI_ReadySpell(self,spell,1000);
		Npc_SetMana(self,Npc_GetManaMax(self));
		spell.time_per_mana = 1;
		return;
	};
		spell.time_per_mana = 50;
		return;
	if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 0)
	{
		spell.time_per_mana = 5000;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 1)
	{
		spell.time_per_mana = 2000;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 2)
	{
		spell.time_per_mana = 1000;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 3)
	{
		spell.time_per_mana = 300;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 4)
	{
		spell.time_per_mana = 100;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 5)
	{
		spell.time_per_mana = 10;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_MAGE) == 6)
	{
		spell.time_per_mana = 1;
	};
};

func int Npc_HasReadiedWeapon_Axe(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if(item.flags & ITEM_AXE){return true;};
	return false;
};
func int Npc_HasReadiedWeapon_Club(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if((item.flags & ITEM_CLUB) == ITEM_CLUB){return true;};
	return false;
};
func int Npc_HasReadiedWeapon_Swd(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if((item.flags & ITEM_SWD) == ITEM_SWD){return true;};
	return false;
};
func int Npc_HasReadiedWeapon_2HD_Axe(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if(
		!(item.flags & ITEM_2HD_STAFF)
	&&	item.flags & ITEM_2HD_AXE
	){return true;};
	return false;
};
func int Npc_HasReadiedWeapon_2HD_Staff(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if((item.flags & ITEM_2HD_STAFF) == ITEM_2HD_STAFF){return true;};
	return false;
};
func int Npc_HasReadiedWeapon_2HD_Swd(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if((item.flags & ITEM_2HD_SWD) == ITEM_2HD_SWD){return true;};
	return false;
};
func int Npc_IsWannaTalk(var C_Npc npc)
{
	return isFlagsContainCategorie(npc.aivar[AIV_FREEMAN],AIV_FREEMAN_WANNATALK);
};
func void Npc_SetWannaTalk(var C_Npc npc,var int boolFlag)
{
	if(!Npc_IsWannaTalk(npc))
	{
		if(boolFlag)
		{
			npc.aivar[AIV_FREEMAN] += AIV_FREEMAN_WANNATALK;
		};
	}
	else
	{
		if(!boolFlag)
		{
			npc.aivar[AIV_FREEMAN] -= AIV_FREEMAN_WANNATALK;
		};
	};
};
func void PC_Knowledge_NpcName(var C_Npc npc)
{
	//”ÒÚ‡Ì‡‚ÎË‚‡ÂÚ ËÏˇ Õœ— ÂÒÎË √√ Â„Ó ÛÁÌ‡∏Ú.
	if(Npc_IsDead(npc)){return;};
	if(Hlp_StrCmp("",npc.name[1])){return;};
	if(Hlp_StrCmp(npc.name[0],npc.name[1])){return;};
	npc.name[0] = npc.name[1];
};
func int Npc_IsTalking(var C_Npc npc)
{
	if(npc.aivar[AIV_INVINCIBLE] == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};
func int Recovering_IsSitNearCampfire(var C_Npc npc)
{
	if(
		Npc_GetBodyState(npc) == BS_SIT
	&&	Wld_IsFPAvailable(npc,"FP_CAMPFIRE")
	)
	{
		return true;
	};
	return false;
};
func void Recovering_SitNearCampfire(var C_Npc npc)
{
	if(Npc_GetHP(npc) < Npc_GetHPMax(npc))
	{
		Npc_ChangeAttribute(npc,ATR_HITPOINTS,1);
	};
};
func void Recovering_ByCampfire(var C_Npc npc)
{
	//entrypoint cycle
	if(Recovering_IsSitNearCampfire(npc))
	{
		Recovering_SitNearCampfire(npc);
	};
};
func void Random_AttributesByLevel(var C_Npc npc)
{

};
func int GetL_sub(var int goal, var int curATRvalue, var int price,var int accumulator)
{
	return true;
	// if(goal > curATRvalue * 2){
	// 	accumulator += ((curATRvalue * 2 - 1) * price);
	// 	price +=1;
	// 	return GetL_sub(goal,curATRvalue + 1,price,accumulator);
	// };
	// accumulator += tern()
	// return tern(curATRvalue == goal,accumulator,
	// GetL_sub(goal,curATRvalue + 1,price,accumulator));
};
func int GetL(var int goal)
{
	return GetL_sub(goal,1,1,0);
    // global price
    // price = 1
    // totalSpend = 0
    // for i in range(1,goal+1):
    //     for ii in range(1,5):
    //         if(i / ii == ii):
    //             price = ii
    //             break
    //     totalSpend += price
    // print(goal,totalSpend)
};
func int C_IsSecondPassed()
{
	if(
		Npc_GetStateTime(self) % 2
	&&	self.aivar[AIV_FREEMAN] & AIV_FREEMAN_TIMEITERATORSECOND
	)
    {
		self.aivar[AIV_FREEMAN] -= AIV_FREEMAN_TIMEITERATORSECOND;
        return true;
    }
	else if(
		!(Npc_GetStateTime(self) % 2)
	&&	!(self.aivar[AIV_FREEMAN] & AIV_FREEMAN_TIMEITERATORSECOND)
	)
	{
		self.aivar[AIV_FREEMAN] = self.aivar[AIV_FREEMAN] | AIV_FREEMAN_TIMEITERATORSECOND;
		return true;
	};
	return false;
};
func int PC_HpWasChanged()
{
	if(Npc_IsDead(hero)){return false;};
	if(PC_ATR_HP == Npc_GetHP(hero)){return false;};
	return true;
};

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Œ“¬≈◊¿ﬁŸ»≈ «¿ —Œ—“ŒﬂÕ»ﬂ, —“¿“”— Õœ— ( –Œ¬Œ“≈◊≈Õ»≈, Œ“–¿¬À≈Õ»≈, ¡ŒÀ≈«Õ‹..)
////////////////////////¡¿‘€, ƒ≈¡¿‘€
////////////////////////////////////////////////////////////////////////////////

func void Npc_Poisoned_DecreaseHP(var C_Npc npc)
{
	if(Npc_GetHP(npc) > NPCPOISONEDMINIMALHP + POISONDAMAGE)
	{
		Npc_DecreaseHP(npc,POISONDAMAGE);
	};
};
func void Npc_Poisoned(var C_Npc npc)		//ÂÒÎË ˆÂÎ¸ ÓÚ‡‚ÎÂÌ‡, ÚÓ ÓÌ‡ ·Û‰ÂÚ ÔÓÎÛ˜‡Ú¸ ÛÓÌ ÔË Í‡Ê‰ÓÏ ‚˚ÁÓ‚Â ˝ÚÓÈ ÙÛÌÍˆËË
{
	if(npc.aivar[AIV_FREEMAN] & AIV_FREEMAN_POISONED)
	{
		Npc_Poisoned_DecreaseHP(npc);
	};
};

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

func int Npc_IsWounded(var C_Npc npc)		//‚ÓÁ‚‡˘‡ÂÚ true ÂÒÎË npc ‡ÌÂÌ
{
	if(npc.aivar[AIV_FREEMAN] & AIV_FREEMAN_WOUNDED)
	{
		return true;
	};
	return false;
};
func void Npc_Wounded_DecreaseHP(var C_Npc npc)
{
	if(Npc_GetHP(npc) > NPCWOUNDEDMINIMALHP + WOUNDDAMAGE)
	{
		Npc_DecreaseHP(npc,WOUNDDAMAGE);
	};
};
func void Npc_Wounded(var C_Npc npc)		//ÂÒÎË ˆÂÎ¸ ‡ÌÂÌ‡, ÚÓ ÔÓÎÛ˜‡ÂÚ ÛÓÌ Ì‡ Í‡Ê‰ÓÏ ‚˚ÁÓ‚Â ÙÛÌÍˆËË
{
	if(npc.aivar[AIV_FREEMAN] & AIV_FREEMAN_WOUNDED)
	{
		Npc_Wounded_DecreaseHP(npc);
	};
};
func void Wound_SetTo(var C_Npc npc)
{
	npc.aivar[AIV_FREEMAN] = npc.aivar[AIV_FREEMAN] | AIV_FREEMAN_WOUNDED;
};

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Œ“¬≈◊¿ﬁŸ»≈ «¿ Œ–”∆»≈
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Ÿ“¬≈◊¿ﬁŸ»≈ «¿ Œ¡Õ¿∆®ÕÕŒ≈ Œ–”∆»≈
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» ¬Œ«¬–¿Ÿ¿ﬁŸ»≈ “»œ ”–ŒÕ¿ Œ¡Õ¿∆®ÕÕŒ√Œ Œ–”∆»ﬂ
////////////////////////////////////////////////////////////////////////////////
func int Npc_GetReadiedWeapon_DamageType(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	return item.damagetype;
};
func int Npc_GetReadiedWeapon_DamageType_IsEdge(var C_Npc npc)
{
	item = Npc_GetReadiedWeapon(npc);
	if(item.damagetype & DAM_EDGE){return true;};
	return false;
};

////////////////////////
////////////////////////
////////////////////////
func void Npc_GotDamage_Edge(var C_Npc vict, var C_Npc attacker)
{
	if(C_NpcIsMonster(attacker))
	{
		if(attacker.damagetype & DAM_EDGE)
		{
			Wound_SetTo(vict);
		};
	}
	else
	{
		if(Npc_GetReadiedWeapon_DamageType_IsEdge(attacker))
		{
			Wound_SetTo(vict);
		};
	};
};



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Œ“¬≈◊¿ﬁŸ»≈ «¿ ”Õ» ¿À‹ÕŒ≈ œŒ¬≈ƒ≈Õ»≈ Õœ—
////////////////////////////////////////////////////////////////////////////////
func void SpecBehavior()
{
	// if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPFLY)
	// {
	// 	if(!Npc_IsInState(self,ZS_MM_Attack))
	// 	{
	// 		var int swampsharkFound;
	// 		swampsharkFound = Wld_DetectNpc(self,Swampshark,ZS_MM_Attack,-1);
	// 		if(swampsharkFound && !Npc_IsDead(other))
	// 		{
	// 			Npc_GetTarget(other);
	// 			Npc_SetTarget(self,other);
	// 			AI_StartState(self,ZS_MM_Attack,0,"");
	// 		};
	// 	};
	// };
	if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)
	{
		// Print("ID_SWAMPSHARK");
		if(
			Npc_IsInState(self,ZS_MM_Attack) || Npc_WasInState(self,ZS_MM_Attack)
		||	Npc_IsInState(self,ZS_MM_Attack_Loop) || Npc_WasInState(self,ZS_MM_Attack_Loop)
		)
		{
			// Print("ID_SWAMPSHARK ZS_MM_Attack");
			if(Npc_IsDead(Swampfly_01))
			{
				// Print("ID_SWAMPSHARK ZS_MM_Attack Wld_InsertNpc");
				Wld_InsertNpc(Swampfly_01,self.wp);
			}
			else if(Npc_GetDistToNpc(Swampfly_01,other) > 2000)
			{
				// Print("ID_SWAMPSHARK ZS_MM_Attack AI_Teleport");
				AI_Teleport(Swampfly_01,self.wp);
			};
			if(Npc_IsDead(Swampfly_02))
			{
				Wld_InsertNpc(Swampfly_02,self.wp);
			}
			else if(Npc_GetDistToNpc(Swampfly_02,other) > 2000)
			{
				AI_Teleport(Swampfly_02,self.wp);
			};
			PrintSIS(self.name,0,other.name);
			if(!Npc_GetTarget(self)){Npc_SetTarget(self,other);};
		};
	};
};


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////”À”◊ÿ≈Õ»≈ —œŒ—Œ¡ÕŒ—“≈… √√
////////////////////////////////////////////////////////////////////////////////
func void PC_ImproveSkills()
{
	return;
	//20240509 akhRework: ‘ÛÌÍˆËˇ ÛÒÚ‡ÂÎ‡. “Â·ÛÂÚÒˇ Â‚ÓÍ.
	var int chance;
	//— ÓÒÚÓÏ ÛÓ‚Ìˇ √√ ÔÓÍ‡˜Í‡ Á‡ÏÂ‰ÎˇÂÚÒˇ
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
	}
	else
	{
		return;
	};
	// B_GiveXP(hero.exp_next - hero.exp);
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





////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////‘”Õ ÷»» Œ“¬≈◊¿ﬁŸ»≈ «¿ Õ¿Õ≈—≈Õ»≈ ”–ŒÕ¿
////////////////////////////////////////////////////////////////////////////////
func void PC_DialDamageToMonster()
{
	if(Npc_IsPlayer(other))
	{
		if(Npc_IsReceiveDamage(self,other))
		{
			PrintDebugNpc(PD_MST_FRAME,"√√ ÒÏÓ„ Ì‡ÌÂÒÚË ÛÓÌ ÏÓÌÒÚÛ.");
			PC_ImproveSkills();
		};
	};
};
func int Quest_IsAssigned(var C_Info quest)
{
	return !(quest.npc == -1);
};
func void Quest_AssignTo(var C_Info quest, var C_Npc npc)
{
	quest.npc = Hlp_GetInstanceID(npc);
};
func void Quest_DeAssign(var C_Info quest)
{
	quest.npc = -1;
};
