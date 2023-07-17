func int FishingSpot_cf()
{
    Print("spot condition");
    CreateInvItem(hero,ItMiNugget);
    CreateInvItem(hero,ItMiNugget);
    CreateInvItem(hero,ItMiNugget);
    CreateInvItem(hero,ItMiNugget);
    CreateInvItem(hero,ItMiNugget);
    return TRUE;
};
func void FishingSpot_s1()
{
    Print("spot s1");
    CreateInvItem(hero,ItMiNugget);
};
func void FishingSpot_s0()
{
    Print("spot s0");

};
func int FishingSpot_Slot_cf()
{
    Print("spot_slot condition");
	return TRUE;
};
func void FishingSpot_Slot_s1()
{
    Print("spot_slot s1");

};
func void FishingSpot_Slot_s0()
{
    Print("spot_slot s0");
    
};
