
func void F_VisualChange_Fingal_ApplyToPC()
{
    if(!PC_HasFingal)
    {
        PC_HasFingal = true;
        initplayerbody(inxInitPlayerBody_Refresh);
    };
};
//Функция будет вызвана, если персонаж излечится зельем, отдыхом, сном
// или как либо-то ещё
// но одно известно точно - источник излечения известен
func void F_VisualChange_Fingal_RemoveFromPC()
{
	if(PC_HasFingal)
	{
		PC_HasFingal = false;
        initplayerbody(inxInitPlayerBody_Refresh);
	};
};
