var string PC_Dialog_Word1;
var string PC_Dialog_Word2;
var string PC_Dialog_Word3;
var string PC_Dialog_Word4;
var string PC_Dialog_Word5;
var string PC_Dialog_Word6;
var string PC_Dialog_Word7;
var int PC_Dialog_InputManual_WORD_NUMBER_INX;
func void PC_Dialog_InputManual_ResetVars()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 1;
    PC_Dialog_Word1 = "";
    PC_Dialog_Word2 = "";
    PC_Dialog_Word3 = "";
    PC_Dialog_Word4 = "";
    PC_Dialog_Word5 = "";
    PC_Dialog_Word6 = "";
    PC_Dialog_Word7 = "";
};

instance PC_Dialog_InputManual_00(C_Info)
{
	nr = 100;
	condition = PC_Dialog_InputManual_00_Condition;
	information = PC_Dialog_InputManual_00_Info;
	permanent = 1;
	description = NAME_PC_Dialog_InputManual;
};
func int PC_Dialog_InputManual_00_Condition()
{
    return TRUE;
};
func void PC_Dialog_InputManual_BACK()
{
	Info_ClearChoices(PC_Dialog_InputManual_00);
};
func void PC_Dialog_InputManual_00_Info()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_ENDE_INPUT,PC_Dialog_InputManual_ENDE);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_CONFIRM_INPUT,PC_Dialog_InputManual_CONFIRM);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER,PC_Dialog_InputManual_WORD_NUMBER);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_ERASE,PC_Dialog_InputManual_WORD_ERASE);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_NEW_PHRASE,PC_Dialog_InputManual_NEW_PHRASE);
    Info_AddChoice(PC_Dialog_InputManual_00,"ю€",PC_Dialog_InputManual_07);
    Info_AddChoice(PC_Dialog_InputManual_00,"щъыьэ",PC_Dialog_InputManual_06);
    Info_AddChoice(PC_Dialog_InputManual_00,"фхцчш",PC_Dialog_InputManual_05);
    Info_AddChoice(PC_Dialog_InputManual_00,"прсту",PC_Dialog_InputManual_04);
    Info_AddChoice(PC_Dialog_InputManual_00,"клмно",PC_Dialog_InputManual_03);
    Info_AddChoice(PC_Dialog_InputManual_00,"ежзий",PC_Dialog_InputManual_02);
    Info_AddChoice(PC_Dialog_InputManual_00,"абвгд",PC_Dialog_InputManual_01);
};
func void PC_Dialog_InputManual_ENDE()
{
	Info_ClearChoices(PC_Dialog_InputManual_00);
    PC_Dialog_InputManual_ResetVars();
};
func void PC_Dialog_InputManual_CONFIRM()
{
    //ѕосле ввода игроком желаемой фразы, вызываетс€ эта функци€ и идЄт проверка по зарегистрированным
    // C_Info.description да (это жЄстко)
    //  минус в том, что даедалус не может сплитить стринги следовательно только 
    //  полное сравнение строк stringcompare(description,PC_Dialog_Word..1-7) очевидно это не юзерфрендли
    //  потому-что последовательностей ввода слов да и самих синонимов слов дохера и больше
    //  с другой стороны всегда можно сделать простенькие description как ссылки на имеющиес€ диалоги что-то типа
    // description=еда|торговец|купить|заточить|кузнец|секрет.. и эти алиасы будут ссылатьс€ на более комплексные C_Info.description
    // как альтернатива, можно создать дамп с тегами дл€ каждого Ќѕ—
    Print(getConcatStr7(
		PC_Dialog_Word1, PC_Dialog_Word2, PC_Dialog_Word3,
		PC_Dialog_Word4, PC_Dialog_Word5, PC_Dialog_Word6, PC_Dialog_Word7
		));
    Print("‘ункци€ не реализована до конца.. это просто пример.");
    Print(self.name);
    PrintI(Npc_KnowsInfo(self,akhQuestTest));
    PC_Dialog_InputManual_00_Info();
    // PC_Dialog_InputManual_ENDE();
};
func void PC_Dialog_InputManual_WORD_NUMBER()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_ENDE_INPUT,PC_Dialog_InputManual_ENDE);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_07,PC_Dialog_InputManual_WORD_NUMBER_07);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_06,PC_Dialog_InputManual_WORD_NUMBER_06);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_05,PC_Dialog_InputManual_WORD_NUMBER_05);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_04,PC_Dialog_InputManual_WORD_NUMBER_04);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_03,PC_Dialog_InputManual_WORD_NUMBER_03);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_02,PC_Dialog_InputManual_WORD_NUMBER_02);
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_WORD_NUMBER_01,PC_Dialog_InputManual_WORD_NUMBER_01);
};
func void PC_Dialog_InputManual_WORD_NUMBER_01()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 1;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_02()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 2;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_03()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 3;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_04()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 4;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_05()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 5;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_06()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 6;
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_WORD_NUMBER_07()
{
    PC_Dialog_InputManual_WORD_NUMBER_INX = 7;
    PC_Dialog_InputManual_00_Info();
};

func void PC_Dialog_InputManual_WORD_ERASE()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = "";
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = "";
    };
    PC_Dialog_InputManual_00_Info();
};


func void PC_Dialog_InputManual_NEW_PHRASE()
{
    PC_Dialog_InputManual_ResetVars();
    PC_Dialog_InputManual_00_Info();
};


func void PC_Dialog_InputManual_011()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"а");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"а");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_012()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"б");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"б");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_013()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"в");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"в");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_014()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"г");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"г");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_015()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"д");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"д");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_01()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"д",PC_Dialog_InputManual_015);
    Info_AddChoice(PC_Dialog_InputManual_00,"г",PC_Dialog_InputManual_014);
    Info_AddChoice(PC_Dialog_InputManual_00,"в",PC_Dialog_InputManual_013);
    Info_AddChoice(PC_Dialog_InputManual_00,"б",PC_Dialog_InputManual_012);
    Info_AddChoice(PC_Dialog_InputManual_00,"а",PC_Dialog_InputManual_011);
};


func void PC_Dialog_InputManual_021()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"е");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"е");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_022()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ж");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ж");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_023()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"з");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"з");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_024()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"и");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"и");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_025()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"й");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"й");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_02()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"й",PC_Dialog_InputManual_025);
    Info_AddChoice(PC_Dialog_InputManual_00,"и",PC_Dialog_InputManual_024);
    Info_AddChoice(PC_Dialog_InputManual_00,"з",PC_Dialog_InputManual_023);
    Info_AddChoice(PC_Dialog_InputManual_00,"ж",PC_Dialog_InputManual_022);
    Info_AddChoice(PC_Dialog_InputManual_00,"е",PC_Dialog_InputManual_021);
};


func void PC_Dialog_InputManual_031()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"к");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"к");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_032()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"л");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"л");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_033()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"м");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"м");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_034()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"н");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"н");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_035()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"о");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"о");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_03()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"о",PC_Dialog_InputManual_035);
    Info_AddChoice(PC_Dialog_InputManual_00,"н",PC_Dialog_InputManual_034);
    Info_AddChoice(PC_Dialog_InputManual_00,"м",PC_Dialog_InputManual_033);
    Info_AddChoice(PC_Dialog_InputManual_00,"л",PC_Dialog_InputManual_032);
    Info_AddChoice(PC_Dialog_InputManual_00,"к",PC_Dialog_InputManual_031);
};


func void PC_Dialog_InputManual_041()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"п");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"п");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_042()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"р");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"р");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_043()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"с");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"с");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_044()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"т");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"т");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_045()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"у");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"у");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_04()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"у",PC_Dialog_InputManual_045);
    Info_AddChoice(PC_Dialog_InputManual_00,"т",PC_Dialog_InputManual_044);
    Info_AddChoice(PC_Dialog_InputManual_00,"с",PC_Dialog_InputManual_043);
    Info_AddChoice(PC_Dialog_InputManual_00,"р",PC_Dialog_InputManual_042);
    Info_AddChoice(PC_Dialog_InputManual_00,"п",PC_Dialog_InputManual_041);
};


func void PC_Dialog_InputManual_051()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ф");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ф");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_052()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"х");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"х");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_053()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ц");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ц");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_054()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ч");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ч");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_055()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ш");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ш");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_05()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"ш",PC_Dialog_InputManual_055);
    Info_AddChoice(PC_Dialog_InputManual_00,"ч",PC_Dialog_InputManual_054);
    Info_AddChoice(PC_Dialog_InputManual_00,"ц",PC_Dialog_InputManual_053);
    Info_AddChoice(PC_Dialog_InputManual_00,"х",PC_Dialog_InputManual_052);
    Info_AddChoice(PC_Dialog_InputManual_00,"ф",PC_Dialog_InputManual_051);
};


func void PC_Dialog_InputManual_061()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"щ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"щ");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_062()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ъ");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ъ");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_063()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ы");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ы");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_064()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ь");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ь");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_065()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"э");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"э");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_06()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"э",PC_Dialog_InputManual_065);
    Info_AddChoice(PC_Dialog_InputManual_00,"ь",PC_Dialog_InputManual_064);
    Info_AddChoice(PC_Dialog_InputManual_00,"ы",PC_Dialog_InputManual_063);
    Info_AddChoice(PC_Dialog_InputManual_00,"ъ",PC_Dialog_InputManual_062);
    Info_AddChoice(PC_Dialog_InputManual_00,"щ",PC_Dialog_InputManual_061);
};


func void PC_Dialog_InputManual_071()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"ю");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"ю");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_072()
{
    if(PC_Dialog_InputManual_WORD_NUMBER_INX == 1)
    {
        PC_Dialog_Word1 = ConcatStrings(PC_Dialog_Word1,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 2)
    {
        PC_Dialog_Word2 = ConcatStrings(PC_Dialog_Word2,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 3)
    {
        PC_Dialog_Word3 = ConcatStrings(PC_Dialog_Word3,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 4)
    {
        PC_Dialog_Word4 = ConcatStrings(PC_Dialog_Word4,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 5)
    {
        PC_Dialog_Word5 = ConcatStrings(PC_Dialog_Word5,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 6)
    {
        PC_Dialog_Word6 = ConcatStrings(PC_Dialog_Word6,"€");
    }
    else if(PC_Dialog_InputManual_WORD_NUMBER_INX == 7)
    {
        PC_Dialog_Word7 = ConcatStrings(PC_Dialog_Word7,"€");
    };
    PC_Dialog_InputManual_00_Info();
};
func void PC_Dialog_InputManual_07()
{
    PC_Dialog_InputManual_BACK();
    Info_AddChoice(PC_Dialog_InputManual_00,DIALOG_BACK,PC_Dialog_InputManual_00_Info);
    Info_AddChoice(PC_Dialog_InputManual_00,"€",PC_Dialog_InputManual_072);
    Info_AddChoice(PC_Dialog_InputManual_00,"ю",PC_Dialog_InputManual_071);
};



instance akhQuestTest(C_Info)
{
    npc = PC_Thief;
	nr = 999;
	condition = akhQuestTest_Condition;
	information = akhQuestTest_Info;
	permanent = 1;
	description = "тес";
};
func int akhQuestTest_Condition()
{
    return TRUE;
};
func void akhQuestTest_Info()
{
    Print("Hello World!!!");
};

func void PC_Dialog_InputManual(var C_Npc slf)
{
    PC_Dialog_InputManual_ResetVars();
    PC_Dialog_InputManual_00.npc = Hlp_GetInstanceID(slf);
};
