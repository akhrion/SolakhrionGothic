var int SpawnPlants_IsFirstIteratePassed;
func void SpawnPlants_Swampherb()
{
    if(SPWN_Cur_Swampherb_01 < SPWN_MAX_ATATIME_Swampherb_01)
    {
        if(
            !Hlp_Random(SPWN_Chanse_Swampherb_01)
//        ||  Npc_IsInFightMode(hero,FMODE_FIST)
        ){
            if(!Hlp_Random(7))
            {
                if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_60");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_59");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_58");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_57");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_56");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_55");
                };
            }
            else if(!Hlp_Random(6))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_54");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_53");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_52");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_51");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_50");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_49");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_48");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_47");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_46");
                };
            }
            else if(!Hlp_Random(5))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_45");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_44");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_43");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_42");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_41");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_40");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_39");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_38");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_37");
                };
            }
            else if(!Hlp_Random(4))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_36");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_35");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_34");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_33");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_32");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_31");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_30");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_29");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_28");
                };
            }
            else if(!Hlp_Random(3))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_27");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_26");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_25");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_24");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_23");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_22");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_21");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_20");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_19");
                };
            }
            else if(!Hlp_Random(2))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_18");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_17");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_16");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_15");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_14");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_13");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_12");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_11");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_10");
                };
            }
            else if(!Hlp_Random(1))
            {
                if(!Hlp_Random(9))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_09");
                }
                else if(!Hlp_Random(8))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_08");
                }
                else if(!Hlp_Random(7))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_07");
                }
                else if(!Hlp_Random(6))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_06");
                }
                else if(!Hlp_Random(5))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_05");
                }
                else if(!Hlp_Random(4))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_04");
                }
                else if(!Hlp_Random(3))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_03");
                }
                else if(!Hlp_Random(2))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_02");
                }
                else if(!Hlp_Random(1))
                {
                    SPWN_Cur_Swampherb_01 +=1;
                    Wld_InsertItem(ItMi_Plants_Swampherb_01,"SPWN_PLANT_PSI_01");
                };
            };
        };
    };
};
func void SpawnPlants()
{
    if(!SpawnPlants_IsFirstIteratePassed)
    {
        SpawnPlants_IsFirstIteratePassed = TRUE;
        PC_Has_Swampherb = Npc_HasItems(hero,ItMi_Plants_Swampherb_01);//Без этого нужно начинать новую игру.
    };
    SpawnPlants_Swampherb();
};
