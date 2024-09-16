
func void TEST_Fatness(var C_Npc npc)
{
	var int fat;
    if(npc.id == 711)
    {
        if(fat == 5)
        {
            Mdl_SetModelFatness(npc,5);
        }
        else if(fat == 4)
        {
            Mdl_SetModelFatness(npc,4);
        }
        else if(fat == 3)
        {
            Mdl_SetModelFatness(npc,3);
        }
        else if(fat == 2)
        {
            Mdl_SetModelFatness(npc,2);
        }
        else if(fat == 1)
        {
            Mdl_SetModelFatness(npc,1);
        }
        else if(fat == 0)
        {
            Mdl_SetModelFatness(npc,0);
        }
        else if(fat == -1)
        {
            Mdl_SetModelFatness(npc,-1);
        }
        else if(fat == -2)
        {
            Mdl_SetModelFatness(npc,-2);
        }
        else if(fat == -3)
        {
            Mdl_SetModelFatness(npc,-3);
        }
        else if(fat == -4)
        {
            Mdl_SetModelFatness(npc,-4);
        }
        else if(fat == -5)
        {
            Mdl_SetModelFatness(npc,-5);
        };



        fat -=1;
        if(fat < -45)
        {
            fat = 0;
        };
    };
};