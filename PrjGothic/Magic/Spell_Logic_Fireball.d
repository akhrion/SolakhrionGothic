
func int Spell_Logic_Fireball(var int manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_Logic_Fireball");
	if(akh_Mod)
	{
		var int Spl_Mana_For_Target_Death;
		var int magPower;
		if(!magPower)
		{
			Print("init");
			magPower = self.attribute[ATR_MANA] * Npc_GetTalentSkill(self,NPC_TALENT_MAGE);
			Npc_GetTarget(self);
			Spl_Mana_For_Target_Death = other.attribute[ATR_HITPOINTS] / Spell_Fireball.damage_per_level +1;
		};
		Print(IntToString(Spl_Mana_For_Target_Death));
		Print(IntToString(manaInvested));
		if((manaInvested >= 1) && (manaInvested < Spl_Mana_For_Target_Death))
		{
			return SPL_NEXTLEVEL;
		};
		if(manaInvested >= Spl_Mana_For_Target_Death)
		{
			Print("cast");
			
			Npc_ChangeAttribute(self,ATR_MANA,1);
			magPower = 0;
			return SPL_SENDCAST;
		};
	}
	else
	{
		if((manaInvested >= 1) && (manaInvested < SPL_SENDCAST_FIREBALL))
		{
			return SPL_NEXTLEVEL;
		};
		if(manaInvested >= SPL_SENDCAST_FIREBALL)
		{
			Npc_ChangeAttribute(self,ATR_MANA,1);
			return SPL_SENDCAST;
		};
	};
	Npc_ChangeAttribute(self,ATR_MANA,-1);
	return SPL_RECEIVEINVEST;
};

