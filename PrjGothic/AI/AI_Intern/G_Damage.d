func int XardasRiddle_GetDamage(var int damageTotal)
{
    if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_StoneGolem))
    {
        if(Npc_GetReadiedWeapon_DamageType_IsBlunt(self))
        {
            return damageTotal;
        };
    }
    else if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_FireGolem))
    {
        if(damageinfo.IsSpellDamage)
        {
            if(
                damageinfo.SpellID == SPL_ICECUBE
            ||  damageinfo.SpellID == SPL_ICEWAVE
            )
            {
                return damageTotal;
            };
        };
    }
    else if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_IceGolem))
    {
        if(damageinfo.IsSpellDamage)
        {
            if(
                damageinfo.SpellID == SPL_FIREBOLT
            ||  damageinfo.SpellID == SPL_FIREBALL
            ||  damageinfo.SpellID == SPL_FIRESTORM
            ||  damageinfo.SpellID == SPL_FIRERAIN
            )
            {
                return damageTotal;
            };
        };
    };
    return 0;
};
func int XardasRiddle()
{
    if(victim.guild == GIL_GOLEM)
    {
        if(
            Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_StoneGolem)
        ||  Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_FireGolem)
        ||  Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(XardasRiddle_IceGolem)
        )
        {
            return true;
        };
    };
    return false;
};


var int PC_ArtStyle_1H_ImproveVariety;
var int PC_ArtStyle_1H_Level;
var int PC_ArtStyle_1H_Value;
func void ArtStyle()
{
    //При сражении есть вероятность повышения навыка одноручного меча
    //Вероятность повышается с каждой итерацией, потом сбрасывается на начало.
    if(!Npc_IsPlayer(self)){return;};

    if(self.weapon == 3)
    {
        //ОДНОРУЧНЫЙ БОЙ
        if(Npc_GetTalentSkill(self,NPC_TALENT_1H) != PC_ArtStyle_1H_Level)
        {
            PC_ArtStyle_1H_Level = Npc_GetTalentSkill(self,NPC_TALENT_1H);
        };
        PC_ArtStyle_1H_ImproveVariety +=PC_ArtStyle_1H_Level;

        if(Hlp_Random(100) < PC_ArtStyle_1H_ImproveVariety)
        {
            PC_ArtStyle_1H_ImproveVariety = 0;

            PC_ArtStyle_1H_Value = Npc_GetTalentValue(self,NPC_TALENT_1H);
            Npc_SetTalentValue(self, NPC_TALENT_1H, PC_ArtStyle_1H_Value + 1);
        };
    };
};



//Стрелы и болты попавшие в противника, могут остаться у него в инвентаре.
//Если не сломаются..
func void Weapon_ProjectileSave(var C_Item itm,var C_Npc attacker,var C_Npc vict)
{
    if(itm.mainflag != ITEM_KAT_MUN){return;};
    if(Hlp_Random(100) < Npc_GetDex(attacker))
    {
        CreateInvItem(vict,Hlp_GetInstanceID(itm));
    }
    else
    {
        CreateInvItem(vict,ItMiArrowHead);
        if(Hlp_Random(100) < Npc_GetDex(attacker))
        {
            CreateInvItem(vict,ItMiArrowShaft);
        };
    };
};

//С каждым ударом по противнику оружие приходит всё в большую непригодность.
func void Weapon_Deterioration(var C_Item itm)
{
    if(itm.mainflag != ITEM_KAT_NF){return;};
    if(itm.damage[DAM_INDEX_POINT])
    {
        itm.damage[DAM_INDEX_POINT] -=3;
    };
    if(itm.damage[DAM_INDEX_EDGE])
    {
        itm.damage[DAM_INDEX_EDGE] -=2;
    };
    if(itm.damage[DAM_INDEX_BLUNT])
    {
        itm.damage[DAM_INDEX_BLUNT] -=1;
    };
    itm.count[2] = (
        itm.damage[DAM_INDEX_POINT]
    +   itm.damage[DAM_INDEX_EDGE]
    +   itm.damage[DAM_INDEX_BLUNT]
    );
};

//Влияет на получаемый урон ночью
func int Night_Damage(var int damageTotal)
{
    return damageTotal;
};

func void OnDamage_Hit_Mystique()
{
    if(self.npcType == Npctype_MystiqueMonster)
    {
        if(self.id == ID_GHOST)
        {
            AI_StartState(victim,ZS_MagicFreeze,0,"");
        };
    };
};

func void OnDamage_Hit_VisualChange(var C_Npc npc)
{
    if(Npc_IsPlayer(npc))
    {
        if(
            Npc_IsInFightMode(self,FMODE_FIST)
        &&  Hlp_Random(4) == 0
        )
        {
            F_VisualChange_Fingal_ApplyToPC();
        }
        else if(Npc_GetReadiedWeapon_DamageType_IsBlunt(self))
        {
            if(Hlp_Random(20) == 0)
            {
                F_VisualChange_Fingal_ApplyToPC();
            };
        };
    };
};

//ФУНКЦИИ ОТВЕЦАЮЩИЕ ЗА ОБРАБОТКУ УРОНА
//на данный момент они здесь не все
//просто одну добавил
//
//OnDamage_Hit(int) это функция вызываемая дллкой oDamageHelper.dll созданной Gratt с сайта WorldOfPlayers.ru
//если у вас отсутствует oDamageHelper.dll, то эта функция будет работать некорректно: уж точно не так как планировалось; или вовсе не будет.
//убедительная просьба скачать oDamageHelper.dll и не делать мОзги (ударение на "О").
//ПРЕДУПРЕЖДЕНИЕ: .dll-файлы могут повредить ваш ПК.
//
// Позволяет переопределить изменение ХП при получении урона
// Возвращаемое значение будет напрямую вычитаться или прибавляться к ХП получившего урон
// Функция не вызывается, если цель неуязвима или не получила урон.
// self - атакующий
// victim - атакуемый
// item - орудие убийства (может быть null)
func int OnDamage_Hit(var int damageTotal)
{
    if(victim.guild == GIL_SKELETON)
    {
        ShowMsg_AutoRow("aaaa");
        if(damageTotal > Npc_GetHP(victim))
        {
            ShowMsg_AutoRow("qqqqqqqqqqqqq");
            // AI_StartState(victim,ZS_MM_Rtn_SkeletonRespawning,0,"");

            AI_PlayAni(victim,"T_DEAD");
            AI_Wait(victim,3);
            AI_PlayAni(victim,"T_SPAWN");
            AI_Wait(victim,3);

            return 0;
        }
        else
        {
            return damageTotal;
        };
        ShowMsg_AutoRow("zzzzzzzzzz");
        return 0;
    };
    if(XardasRiddle()){
        damageTotal = XardasRiddle_GetDamage(damageTotal);
        return damageTotal;
    };
    if(
        Hlp_GetInstanceID(item) == Hlp_GetInstanceID(ItRw_Bow_Long_Lucky)
    &&  Hlp_Random(100) < 1
    )
    {
        //С вероятностью в 1% Счастливый лук нанесёт х10 урона по цели
        return damageTotal * 10;
    };
    if(Npc_IsDodge(victim)){return 0;};
    ArtStyle();
    if(IsNight())
    {
        return Night_Damage(damageTotal);
    };
    OnDamage_Hit_Mystique();

    Weapon_ProjectileSave(item,self,victim);
    // Weapon_Deterioration(item);
    Npc_Training(self,item);
    OnDamage_Hit_VisualChange(victim);
    Npc_Fight_Exhaust(self);


//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
    if(Npc_IsPlayer(self))
    {
        return getPercentFromInteger(damageTotal,PC_Stamina);
    };
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
    // Print(item.name);
	// if(Npc_IsPlayer(self))
	// {
	// 	return -152;
	// };
    // if(Npc_IsPlayer(victim))
    // {
    //     return -22;
    // };
	return damageTotal;
};
