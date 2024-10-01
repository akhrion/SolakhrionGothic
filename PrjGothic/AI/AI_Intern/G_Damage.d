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
    if(Npc_IsDodge(victim)){return 0;};
    if(IsNight())
    {
        return Night_Damage(damageTotal);
    };
    OnDamage_Hit_Mystique();

    Weapon_ProjectileSave(item,self,victim);
    Weapon_Deterioration(item);
    Npc_Training(self,item);
    OnDamage_Hit_VisualChange(victim);
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
