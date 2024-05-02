func int stomp_cf()
{
    return true;
};
func int STOMPER_CF()
{
    // useWithItem ITMI_ALCHEMY_SYRIANOIL_01
    if(self.attribute[ATR_STRENGTH] > 100)
    {
        return true;
    };
    Print("Тут потребуется кто-то посильнее.");
    return false;
};
func void STOMPER_S1()
{
    
};
func void STOMPER_S0()
{

};
