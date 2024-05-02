func int ore_ground_cf()
{
    return true;
};
func void ore_ground_s0()
{
    Print("ore_ground_s0");
    if(self.aivar[AIV_FREEMAN] & AIV_FREEMAN_ISMINING)
    {
        self.aivar[AIV_FREEMAN] = self.aivar[AIV_FREEMAN] - AIV_FREEMAN_ISMINING;
    };
};
func void ore_ground_s1()
{
    Print("ore_ground_s1");
    self.aivar[AIV_FREEMAN] = self.aivar[AIV_FREEMAN] | AIV_FREEMAN_ISMINING;
};