func void Theft(var C_Npc thief, var C_Npc vict)
{
    if(thief.guild != GIL_ORG){return;};
    if(Npc_GetDistToNpc(thief,vict) > HAI_DIST_THEFT){return;};
    //Добавить увеличенный шанс быть обворованным в диалоге
    PrintSIS(thief.name,0,vict.name);
    Print("Trying theft..");
    if(Npc_GetInvItemBySlot(vict,INV_WEAPON,0)){
        Print(item.name);
        
        Npc_RemoveInvItem(vict,Hlp_GetInstanceID(item));
    };
};
