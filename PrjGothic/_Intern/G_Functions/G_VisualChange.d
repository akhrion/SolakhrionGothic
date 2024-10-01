//отработает если по каким-то обстоятельствам.. например "магического" (внешнего)
//происхождения, персонаж лишится своего трофея (фингала)
// имеется ввиду, что причина излечения неизвестна.. может это баг
func void G_VisualChange_Fingal_RemoveFromPC()
{
    if(
        PC_HasFingal
    &&  Npc_GetHP(hero) == Npc_GetHPMax(hero)
    )
    {
        PC_HasFingal = false;
        initplayerbody(inxInitPlayerBody_Refresh);
    };
};
