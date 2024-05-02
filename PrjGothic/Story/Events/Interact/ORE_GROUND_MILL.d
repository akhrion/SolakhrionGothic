func int ORE_GROUND_MILL_cf()
{
    if(self.attribute[ATR_STRENGTH] > 100)
    {
        return true;
    };
    Print(" ажетс€ только орк сможет сдвинуть это.");
    return false;
};
