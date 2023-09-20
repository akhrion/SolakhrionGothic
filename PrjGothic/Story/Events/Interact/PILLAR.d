func int pillar_cf()
{
    if(self.attribute[ATR_STRENGTH] >= 90)
    {
        return true;
    }
    else if(self.attribute[ATR_STRENGTH] >= 70)
    {
        Print(_STR_MESSAGE_PILLAR2);
    }
    else if(self.attribute[ATR_STRENGTH] >= 40)
    {
        Print(_STR_MESSAGE_PILLAR1);
    }
    else
    {
        Print(_STR_MESSAGE_PILLAR);
    };
    return false;
};