//ФУНКЦИИ ОТВЕЦАЮЩИЕ ЗА ОБРАБОТКУ УРОНА
//на данный момент они здесь не все
//просто одну добавил
//
//OnDamage_Hit(int) это функция вызываемая дллкой oDamageHelper.dll созданной Gratt с сайта WorldOfPlayers.ru
//если у вас отсутствует oDamageHelper.dll, то эта функция будет работать некорректно: уж точно не так как планировалось; или вовсе не будет.
//убедительная просьба скачать oDamageHelper.dll и не делать мОзги (ударение на "О").
//ПРЕДУПРЕЖДЕНИЕ: .dll-файлы могут повредить ваш ПК.
//
// self - атакующий
// victim - атакуемый
// item - орудие убийства (может быть null)
func int OnDamage_Hit(var int damageTotal)
{
	if(Npc_IsPlayer(self))
	{
		return 152;
	};
    if(Npc_IsPlayer(victim))
    {
        return -22;
    };
	return damageTotal;
};
