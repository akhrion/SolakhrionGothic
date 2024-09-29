const int G_MonkeyLock_iPickLockBroken = 0;
var int bGameLoaded;
var int bMonkeyLockApplied;
var int bMonkeyLock_Mod_IsOn;

const int cMONKEYTIME = 30;
var int iMonkeyTimer;

func void G_MonkeyLock_RemoveBroken()
{
    if(!bMonkeyLock_Mod_IsOn){return;};
    if(bMonkeyLockApplied)
    {
        bMonkeyLockApplied = false;
        if(G_MonkeyLock_iPickLockBroken)
        {
            Npc_RemoveInvItems(hero,ItKeLockpick,G_MonkeyLock_iPickLockBroken);
            G_MonkeyLock_iPickLockBroken = 0;
        }
        else
        {
            Npc_RemoveInvItems(hero,ItKeLockpick,Npc_HasItems(hero,ItKeLockpick));
        };
    };
};
func void G_MonkeyLock_PickLockBroked()
{
    if(!bMonkeyLock_Mod_IsOn){return;};
    G_MonkeyLock_iPickLockBroken +=1;
};
//Функция ставит палки в колёса сейв\лоад арбузерам.
func void G_MonkeyLock()
{
    if(!bMonkeyLock_Mod_IsOn){return;};
    if(bGameLoaded)
    {
        bGameLoaded = false;
        bMonkeyLockApplied = true;
        iMonkeyTimer = 0;
    };

    if(bMonkeyLockApplied)
    {
        if(iMonkeyTimer < cMONKEYTIME)
        {
            iMonkeyTimer +=1;
        }
        else
        {
            bMonkeyLockApplied = false;
        };
    };
};
