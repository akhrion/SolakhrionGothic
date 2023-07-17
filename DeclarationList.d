////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Externals.d
func int tern(var int exp, var int r1, var int r2)
func int abs(var int i)
func int expon_cb(var int i, var int e, var int sum)
func int expon(var int i,var int e)
func int MultiplicateIntOnFloat(var int integer, var int pseudoFloat){
func int mif(var int integer, var int pseudoFloat){return MultiplicateIntOnFloat(integer,pseudoFloat);};
func int MultiplicateIntOnFloatU(var int integer, var int pseudoFloat){
func int MultiplicateIntOnFloat_a(var int integer, var int f1, var int f2, var int f3){
func int DivideIntOnFloat(var int integer, var int pseudoFloat){
func int getPercentFromInteger(var int integer, var int percent)
func int isFlagsContainCategorie_cb(var int flags_, var int cat_, var int bndl_, var int lvl_)
func int isFlagsContainCategorie(var int flags_, var int cat_)
func int getFlagsCount_cb(var int flags_, var int bndl_, var int counter_)
func int getFlagsCount(var int flags_)
func int t_cb(var int flags_, var int cat_, var int bndl_, var int lvl_)
func int t(var int flags_, var int cat_)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\IntFuncGothic_ru.d
func void Print(var string text); 
func void PrintMulti(var string text1, var string text2, var string text3, var string text4, var string text5); 
func int PrintScreen(var string text, var int x, var int y, var string font, var int timeSec); 
func void PrintDebug(var string text); 
func void PrintDebugInst(var string text);
func void PrintDebugInstCh(var int ch, var string text); 
func void PrintDebugCh(var int ch, var string text); 
func int PrintDialog(var int dialogNr, var string text, var int x, var int y, var string font, var int timeSec);
func string IntToString(var int value); 
func string FloatToString(var float value); 
func int FloatToInt(var float value);
func float IntToFloat(var int value); 
func string ConcatStrings(var string text1, var string text2); 
func void Snd_Play(var string nameSFX); 
func void Snd_Play3D(var C_NPC npc, var string nameSFX); 
func int Snd_IsSourceNpc(var C_NPC npc); 
func int Snd_IsSourceItem(var C_NPC npc); 
func int Snd_GetDistToSource(var C_NPC npc); 
func int Hlp_Random(var int bound); 
func int Hlp_StrCmp(var string text1, var string text2); 
func int Hlp_IsValidNpc(var C_NPC npc); 
func int Hlp_IsValidItem(var C_ITEM item); 
func int Hlp_IsItem(var C_ITEM item, var int instanceName); 
func C_NPC Hlp_GetNpc(var int instanceName); 
func int Hlp_GetInstanceID(var instance instanceName); 
func int Doc_Create();
func int Doc_CreateMap(); 
func void Doc_SetLevel(var int handle, var string worldZEN); 
func void Doc_SetPages(var int handle, var int pages); 
func void Doc_SetPage(var int handle, var int page, var string pageImageTGA, var int scale); 
func void Doc_SetFont(var int handle, var int page, var string fontTGA); 
func void Doc_SetMargins(var int handle, var int page, var int left, var int top, var int right, var int bottom, var int pixel); 
func void Doc_PrintLine(var int handle, var int page, var string text); 
func void Doc_PrintLines(var int handle, var int page, var string text); 
func void Doc_Show(var int handle); 
func void Doc_Open(var string picName); 
func void Doc_Font(var string font); 
func void Doc_Print(var string text); 
func void Doc_MapCoordinates(var string levelName, var float leftLevel, var float topLevel, var float leftMap, var float topMap, var float rightLevel, var float bottomLevel, var float rightMap, var float bottomMap); 
func void Log_CreateTopic(var string topic, var int section); 
func void Log_SetTopicStatus(var string topic, var int status); 
func void Log_AddEntry(var string topic, var string text); 
func void CreateInvItem(var C_NPC npc, var int itemInstance); 
func void CreateInvItems(var C_NPC npc, var int itemInstance, var int amount); 
func void EquipItem(var C_NPC npc, var int itemInstance); 
func void Mob_CreateItems(var string mobName, var int itemInstance, var int amount); 
func int Mob_HasItems(var string mobName, var int itemInstance); 
func void Mdl_ApplyOverlayMds(var C_NPC npc, var string fileMDS); 
func void Mdl_RemoveOverlayMDS(var C_NPC npc, var string fileMDS); 
func void Mdl_ApplyOverlayMDSTimed(var C_NPC npc, var string fileMDS, var int time); 
func void Mdl_ApplyRandomAni(var C_NPC npc, var string ani, var string alias); 
func void Mdl_ApplyRandomAniFreq(var C_NPC npc, var string ani, var float freq); 
func void Mdl_StartFaceAni(var C_NPC npc, var string ani, var float intensity, var float holdTime); 
func void Mdl_ApplyRandomFaceAni(var C_NPC npc, var string ani, var float timeStart, var float timeStartVar, var float timeStop, var float timeStopVar, var float probably); 
func void Mdl_SetVisual(var C_NPC npc, var string fileMDS); 
func void Mdl_SetVisualBody(var C_NPC npc, var string bodyMesh, var int bodyTex, var int skinColor, var string headMMS, var int headTex, var int toothTex, var int armor); 
func void Mdl_SetModelScale(var C_NPC npc, var float x, var float y, var float z); 
func void Mdl_SetModelFatness(var C_NPC npc, var float fatness); 
func void TA_Min(var C_NPC npc, var int startHour, var int startMin, var int stopHour, var int stopMin, var func state, var string waypoint); 
func void TA(var C_NPC npc, var int startHour, var int stopHour, var func state, var string waypoint); 
func void TA_CS(var C_NPC npc, var string csName, var string roleName); 
func void TA_BeginOverlay(var C_NPC npc); 
func void TA_EndOverlay(var C_NPC npc); 
func void TA_RemoveOverlay(var C_NPC npc); 
func int InfoManager_HasFinished(); 
func void Info_AddChoice(var C_INFO menu, var string text, var func action); 
func void Info_ClearChoices(var C_INFO menu);
func void ExitGame(); 
func int PlayVideo(var string videoBIK); 
func void SetPercentDone(var int percBar); 
func void IntroduceChapter(var string chapter, var string text, var string fileTGA, var string soundWAV, var int time);
func void Tal_Configure(var int tal, var int value); 
func void Perc_SetRange(var int percID, var int range); 
func void Rtn_Exchange(var string oldRoutine, var string newRoutine); 
func int Hlp_CutscenePlayed(var string csName); 
func int Wld_DetectNpc(var C_NPC npc, var int instanceNpc, var func aiState, var int guild); 
func int Wld_DetectNpcEx(var C_NPC npc, var int instanceNpc, var func aiState, var int guild, var int detectPlayer); 
func int Wld_DetectItem(var C_NPC npc, var int flagsItem); 
func int Wld_DetectPlayer(var C_NPC npc); 
func void Wld_SetGuildAttitude(var int guild1, var int attitude, var int guild2); 
func int Wld_GetGuildAttitude(var int guild1, var int guild2); 
func int Wld_IsMobAvailable(var C_NPC npc, var string mobName); 
func int Wld_GetMobState(var C_NPC npc, var string mobName); 
func int Wld_IsFPAvailable(var C_NPC npc, var string freepoint); 
func int Wld_IsNextFPAvailable(var C_NPC npc, var string freepoint); 
func int Wld_GetDay(); 
func int Wld_IsTime(var int hourLow, var int minLow, var int hourHigh, var int minHigh); // akhrion при работе с данной функцией вычленил довольно неприятный баг, крашащий игру порой.. при проверке isTime(h,0,h+1,0) происходит неверный возврат на последней минуте: в h:59 возвращает false.. хотя очевидно, что "h:59" находится между "h:00" и "h+1:00"; также если выставить проверку в isTime(h,0,h,59) то false возвращает уже на последних двух минутах: т.е. в "h:58" и "h:59"; к "h:59" в этом случае нет претензий, но вот к 58му номеру хотелось бы обратиться на хуй ;)
func void Wld_SetTime(var int hour, var int min); 
func void Wld_InsertNpc(var int instanceNpc, var string spawnPoint); 
func void Wld_InsertNpcAndRespawn(var int instanceNpc, var string spawnPoint, var int spawnDelay); 
func void Wld_SpawnNpcRange(var C_NPC npc, var int instanceNpc, var int number, var float timeLife); 
func void Wld_RemoveNpc(var int instanceNpc); 
func void Wld_InsertItem(var int instanceItem, var string insertPoint); 
func int Wld_RemoveItem(var C_ITEM item); 
func void Wld_InsertObject(var string objName, var string point); 
func void Wld_SetObjectRoutine(var int hour, var int min, var string objName, var int state); 
func void Wld_SetMobRoutine(var int hour, var int min, var string objName, var int state); 
func void Wld_SendTrigger(var string vobName); 
func void Wld_SendUntrigger(var string vobName); 
func void Wld_ExchangeGuildAttitudes(var string tableName); 
func void Wld_AssignRoomToGuild(var string room, var int guild); 
func void Wld_AssignRoomToNpc(var string room, var C_NPC owner); 
func C_NPC Wld_GetPlayerPortalOwner();
func int Wld_GetPlayerPortalGuild();
func C_NPC Wld_GetFormerPlayerPortalOwner();
func int Wld_GetFormerPlayerPortalGuild(); 
func void Wld_PlayEffect(var string nameVfx, var C_NPC instOrigin, var C_NPC instTarget, var int EffectLevel, var int Damage, var int DamageType, var int IsProjectile);
func int Npc_GetTrueGuild(var C_NPC npc); 
func int Npc_SetTrueGuild(var C_NPC npc, var int guild); 
func void Npc_SetAttitude(var C_NPC npc, var int attitude); 
func void Npc_SetTempAttitude(var C_NPC npc, var int attitude); 
func int Npc_GetAttitude(var C_NPC npc, var C_NPC other); 
func int Npc_GetPermAttitude(var C_NPC npc, var C_NPC other); 
func int Npc_GetGuildAttitude(var C_NPC npc, var C_NPC other); 
func void Npc_SetKnowsPlayer(var C_NPC npc, var C_NPC player) ; 
func int Npc_KnowsPlayer(var C_NPC npc, var C_NPC player); 
func int Npc_OwnedByNpc(var C_ITEM item, var C_NPC npc); 
func int Npc_OwnedByGuild(var C_ITEM item, var int guild); 
func string Npc_GetNearestWP(var C_NPC npc); 
func string Npc_GetNextWP(var C_NPC npc); 
func int Npc_IsWayBlocked(var C_NPC npc); 
func int Npc_IsOnFP(var C_NPC npc, var string freepoint); 
func int Npc_IsDead(var C_NPC npc); 
func int Npc_KnowsInfo(var C_NPC npc, var int instanceInfo); 
func int Npc_CheckInfo(var C_NPC npc, var int important); 
func int Npc_GiveInfo(var C_NPC npc, var int important); 
func int Npc_CheckAvailableMission(var C_NPC npc, var int missionState, var int important); 
func int Npc_CheckRunningMission(var C_NPC npc, var int important); 
func int Npc_CheckOfferMission(var C_NPC npc, var int important); 
func int Npc_GetStateTime(var C_NPC npc); 
func void Npc_SetStateTime(var C_NPC npc, var int seconds); 
func int Npc_GetBodyState(var C_NPC npc); 
func int Npc_HasBodyFlag(var C_NPC npc, var int bodyFlag); 
func int Npc_IsPlayer(var C_NPC npc); 
func int Npc_HasDetectedNpc(var C_NPC npc, var C_NPC other); 
func int Npc_IsInState(var C_NPC npc, var func state); 
func int Npc_WasInState(var C_NPC npc, var func state); 
func int Npc_IsInRoutine(var C_NPC npc, var func state); 
func void Npc_ExchangeRoutine(var C_NPC npc, var string routine); 
func int Npc_IsInCutscene(var C_NPC npc); 
func int Npc_IsVoiceActive(var C_NPC npc); 
func void Npc_ClearAIQueue(var C_NPC npc); 
func void Npc_PlayAni(var C_NPC npc, var string ani); 
func void Npc_SetRefuseTalk(var C_NPC npc, var int timeSec); 
func int Npc_RefuseTalk(var C_NPC npc); 
func int Npc_IsNear(var C_NPC npc, var C_NPC other); 
func int Npc_GetDistToNpc (var C_NPC npc, var C_NPC other); 
func int Npc_GetDistToWP(var C_NPC npc, var string waypoint); 
func int Npc_GetDistToItem(var C_NPC npc, var C_ITEM item); 
func int Npc_GetDistToPlayer(var C_NPC npc); 
func void Npc_MemoryEntry(var C_NPC npc, var int source, var C_NPC offender, var int newsID, var C_NPC victim); 
func void Npc_MemoryEntryGuild(var C_NPC npc, var int source, var C_NPC offender, var int newsID, var C_NPC victimguild); 
func int Npc_HasNews(var C_NPC npc, var int newsID, var C_NPC offender, var C_NPC victim); 
func int Npc_IsNewsGossip(var C_NPC npc, var int newsID); 
func C_NPC Npc_GetNewsWitness(var C_NPC npc, var int newsID); 
func C_NPC Npc_GetNewsVictim(var C_NPC npc, var int newsID); 
func C_NPC Npc_GetNewsOffender(var C_NPC npc, var int newsID); 
func int Npc_DeleteNews(var C_NPC npc, var int newsID); 
func void Npc_ChangeAttribute(var C_NPC npc, var int attribute, var int value); 
func void Npc_CreateSpell(var C_NPC npc, var int spell); 
func void Npc_LearnSpell(var C_NPC npc, var int spell); 
func int Npc_GetActiveSpell(var C_NPC npc); 
func int Npc_GetActiveSpellCat(var C_NPC npc); 
func int Npc_SetActiveSpellInfo(var C_NPC npc, var int value); 
func int Npc_GetActiveSpellLevel(var C_NPC npc); 
func int Npc_HasSpell(var C_NPC npc, var int spell); 
func void Npc_PercEnable(var C_NPC npc, var int perc, var func action); 
func void Npc_PercDisable(var C_NPC npc, var int perc); 
func void Npc_SetPercTime(var C_NPC npc, var float seconds); 
func void Npc_SendPassivePerc(var C_NPC npc, var int perc, var C_NPC victim, var C_NPC offender); 
func void Npc_SendSinglePerc(var C_NPC npc, var C_NPC target, var int perc); 
func void Npc_PerceiveAll(var C_NPC npc); 
func string Npc_GetDetectedMob(var C_NPC npc); 
func int Npc_CanSeeNpc(var C_NPC npc, var C_NPC other); 
func int Npc_CanSeeNpcFreeLOS(var C_NPC npc, var C_NPC other); 
func int Npc_CanSeeItem(var C_NPC npc, var C_ITEM item); 
func int Npc_CanSeeSource(var C_NPC npc); 
func int Npc_IsPlayerInMyRoom(var C_NPC npc); 
func int Npc_WasPlayerInMyRoom(var C_NPC npc); 
func int Npc_GetComrades(var C_NPC npc); 
func int Npc_IsDetectedMobOwnedByNpc(var C_NPC npc, var C_NPC owner); 
func int Npc_IsDetectedMobOwnedByGuild(var C_NPC npc, var int ownerGuild); 
func void Npc_GiveItem(var C_NPC npc, var C_ITEM item, var C_NPC other); 
func int Npc_StartItemReactModules(var C_NPC npc, var C_NPC other, var C_ITEM item); 
func int Npc_HasOffered(var C_NPC npc, var C_NPC other, var int instanceItem); 
func C_ITEM Npc_GetInvItem(var C_NPC npc, var int instanceItem); 
func int Npc_HasItems(var C_NPC npc, var int instanceItem); 
func int Npc_GetInvItemBySlot(var C_NPC npc, var int category, var int slot); 
func void Npc_RemoveInvItem(var C_NPC npc, var int instanceItem); 
func void Npc_RemoveInvItems(var C_NPC npc, var int instanceItem, var int amount); 
func C_ITEM Npc_GetEquippedMeleeWeapon(var C_NPC npc); 
func C_ITEM Npc_GetEquippedRangedWeapon(var C_NPC npc); 
func C_ITEM Npc_GetEquippedArmor(var C_NPC npc); 
func int Npc_HasEquippedWeapon(var C_NPC npc); 
func int Npc_HasEquippedMeleeWeapon(var C_NPC npc); 
func int Npc_HasEquippedRangedWeapon(var C_NPC npc); 
func int Npc_HasEquippedArmor(var C_NPC npc); 
func void Npc_SetToFistMode(var C_NPC npc); 
func void Npc_SetToFightMode(var C_NPC npc, var int weapon); 
func int Npc_IsInFightMode(var C_NPC npc, var int fightMode); 
func C_ITEM Npc_GetReadiedWeapon(var C_NPC npc); 
func int Npc_HasReadiedWeapon(var C_NPC npc); 
func int Npc_HasReadiedMeleeWeapon(var C_NPC npc); 
func int Npc_HasReadiedRangedWeapon(var C_NPC npc); 
func int Npc_HasRangedWeaponWithAmmo(var C_NPC npc); 
func int Npc_GetTarget(var C_NPC npc); 
func int Npc_GetNextTarget(var C_NPC npc); 
func int Npc_IsNextTargetAvailable(var C_NPC npc); 
func void Npc_SetTarget(var C_NPC npc, var C_NPC other); 
func int Npc_AreWeStronger(var C_NPC npc, var C_NPC other); 
func int Npc_IsAiming(var C_NPC npc, var C_NPC other); 
func int Npc_GetTalentSkill(var C_NPC npc, var int talent); 
func int Npc_GetTalentValue(var C_NPC npc, var int talent); 
func void Npc_SetTalentSkill(var C_NPC npc, var int talent, var int level); 
func void Npc_SetTalentValue(var C_NPC npc, var int talent, var int value); 
func void AI_Wait(var C_NPC npc, var float sec); 
func void AI_PlayAni(var C_NPC npc, var string ani); 
func void AI_StandUp(var C_NPC npc); 
func void AI_StandUpQuick(var C_NPC npc); 
func void AI_QuickLook(var C_NPC npc, var C_NPC other); 
func void AI_LookAt(var C_NPC npc, var string point); 
func void AI_LookAtNpc(var C_NPC npc, var C_NPC other); 
func void AI_StopLookAt(var C_NPC npc); 
func void AI_PointAt(var C_NPC npc, var string point); 
func void AI_PointAtNpc(var C_NPC npc, var C_NPC other); 
func void AI_StopPointAt(var C_NPC npc); 
func void AI_TakeItem(var C_NPC npc, var C_ITEM item); 
func void AI_DropItem(var C_NPC npc, var int instanceItem); 
func void AI_UseItem(var C_NPC npc, var int instanceItem); 
func void AI_UseItemToState(var C_NPC npc, var int instanceItem, var int state); 
func void AI_TakeMob(var C_NPC npc, var string mobName); 
func void AI_DropMob(var C_NPC npc); 
func int AI_UseMob(var C_NPC npc, var string mobName, var int state); 
func void AI_Waitms(var C_NPC npc, var int msec); 
func void AI_CanSeeNpc(var C_NPC npc, var C_NPC other, var func see); 
func void AI_SetWalkmode(var C_NPC npc, var int moveMode); 
func void AI_GotoWP(var C_NPC npc, var string waypoint); 
func void AI_GotoFP(var C_NPC npc, var string freepoint); 
func void AI_GotoNextFP(var C_NPC npc, var string freepoint); 
func void AI_GotoNpc(var C_NPC npc, var C_NPC other); 
func void AI_GotoItem(var C_NPC npc, var C_ITEM item); 
func void AI_GotoSound(var C_NPC npc); 
func void AI_Teleport(var C_NPC npc, var string waypoint); 
func void AI_TurnToNpc(var C_NPC npc, var C_NPC other); 
func void AI_TurnAway(var C_NPC npc, var C_NPC other); 
func void AI_WhirlAround(var C_NPC npc, var C_NPC other); 
func void AI_WhirlAroundToSource(var C_NPC npc); 
func void AI_TurnToSound(var C_NPC npc); 
func void AI_AlignToWP(var C_NPC npc); 
func void AI_AlignToFP(var C_NPC npc); 
func void AI_Dodge(var C_NPC npc); 
func void AI_PlayAniBS(var C_NPC npc, var string ani, var int state); 
func void AI_PlayCutscene(var C_NPC npc, var string csName); 
func void AI_DrawWeapon(var C_NPC npc); 
func void AI_RemoveWeapon(var C_NPC npc); 
func void AI_ReadyMeleeWeapon(var C_NPC npc); 
func void AI_ReadyRangedWeapon(var C_NPC npc); 
func void AI_Attack(var C_NPC npc); 
func void AI_FinishingMove(var C_NPC npc, var C_NPC other); 
func void AI_Defend(var C_NPC npc); 
func void AI_Flee(var C_NPC npc); 
func void AI_AimAt(var C_NPC npc, var C_NPC target); 
func void AI_StopAim(var C_NPC npc); 
func void AI_ShootAt(var C_NPC npc, var C_NPC target); 
func void AI_CombatReactToDamage(var C_NPC npc); 
func void AI_LookForItem(var C_NPC npc, var int instanceItem); 
func void AI_EquipBestMeleeWeapon(var C_NPC npc); 
func void AI_EquipBestRangedWeapon(var C_NPC npc); 
func void AI_EquipBestArmor(var C_NPC npc); 
func void AI_UnequipWeapons(var C_NPC npc); 
func void AI_UnequipArmor(var C_NPC npc); 
func void AI_EquipArmor(var C_NPC npc, var int instanceItem); 
func void AI_ReadySpell(var C_NPC npc, var int spell, var int investMana); 
func void AI_UnreadySpell(var C_NPC npc); 
func void AI_Output(var C_NPC npc, var C_NPC target, var string nameWAV); 
func void AI_OutputSVM(var C_NPC npc, var C_NPC target, var string nameSVM); 
func void AI_OutputSVM_Overlay(var C_NPC npc, var C_NPC target, var string nameSVM); 
func void AI_WaitTillEnd(var C_NPC npc, var C_NPC other); 
func void AI_Ask(var C_NPC npc, var func answerYes, var func answerNo); 
func void AI_AskText(var C_NPC npc, var func answerYes, var func answerNo, var string textYes, var string textNo); 
func void AI_WaitForQuestion(var C_NPC npc, var func action); 
func void AI_ProcessInfos(var C_NPC npc); 
func void AI_StopProcessInfos(var C_NPC npc); 
func void AI_StartState(var C_NPC npc, var func state, var int behaviour, var string waypoint); 
func void AI_SetNpcsToState(var C_NPC npc, var func state, var int radius); 
func void AI_ContinueRoutine(var C_NPC npc); 
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\AI_Constants.d
const int AIV_WANTEDITEM = 0;
const int AIV_PCISSTRONGER = 1;
const int AIV_BEENATTACKED = 2;
const int AIV_HIGHWAYMEN = 3;
const int AIV_HAS_ERPRESSED = 4;
const int AIV_BEGGAR = 5;
const int AIV_OBSERVEINTRUDER = 6;
const int AIV_FINDABLE = 7;
const int AIV_PLUNDERED = 8;
const int AIV_WARNTARGET = 9;
const int AIV_LASTHITBYRANGEDWEAPON = 10;
const int AIV_HASBEENDEFEATEDINPORTALROOM = 11;
const int AIV_HangAroundStatus = 12;
const int AIV_Trigger3 = 13;
const int AIV_GUARDMEMORY = 14;
const int AIV_GUARDITERATOR = 15;
const int AIV_FIGHTSPEACHFLAG = 16;
const int AIV_ITEMSTATUS = 17;
const int AIV_ITEMFREQ = 18;
const int AIV_WASDEFEATEDBYSC = 19;
const int AIV_HASDEFEATEDSC = 20;
const int AIV_ISLOOKING = 21;
const int AIV_IMPORTANT = 22;
const int AIV_MOVINGMOB = 23;
const int AIV_MISSION1 = 24;
const int AIV_MISSION2 = 25;
const int AIV_MISSION3 = 26;
const int AIV_GUARDPASSAGE_STATUS = 27;
const int AIV_GPS_BEGIN = 0;
const int AIV_GPS_FIRSTWARN = 1;
const int AIV_GPS_LASTWARN = 2;
const int AIV_GPS_PUNISH = 3;
const int AIV_LASTDISTTOWP = 28;
const int AIV_PASSGATE = 29;
const int AIV_DIDWAITTOCLEARROOM = 30;
const int AIV_FOUNDPERSON = 31;
const int AIV_LOCATION = 32;
const int AIV_INVINCIBLE = 33;
const int AIV_DONTUSEMOB = 34;
const int AIV_ATTACKREASON = 35;
const int AIV_AR_NONE = 0;
const int AIV_AR_INTRUDER = 1;
const int AIV_PARTYMEMBER = 36;
const int AIV_SPECIALCOMBATDAMAGEREACTION = 37;
const int AIV_RESPAWN = 38;
const int AIV_LASTTARGET = 39;
const int AIV_TALKBEFOREATTACK = 40;
const int AIV_DEALDAY = 41;
const int AIV_ITEMSCHWEIN = 42;
const int AIV_DROPDEADANDKILL = 43;
const int npctype_ambient = 0;
const int npctype_main = 1;
const int npctype_guard = 2;
const int npctype_friend = 3;
const int Npctype_MINE_Ambient = 4;
const int NpcType_MINE_Guard = 5;
const int NPCTYPE_OW_AMBIENT = 6;
const int npctype_ow_guard = 7;
const int Npctype_ROGUE = 8;
const int FAI_MONSTER_MASTER = 1;
const int FAI_HUMAN_COWARD = 2;
const int FAI_HUMAN_Strong = 3;
const int FAI_HUMAN_MASTER = 4;
const int FAI_MINECRAWLER = 5;
const int FAI_Demon = 6;
const int FAI_GOBBO = 7;
const int FAI_GOLEM = 8;
const int FAI_LURKER = 9;
const int FAI_MONSTER_COWARD = 10;
const int FAI_MOLERAT = 11;
const int FAI_ORC = 12;
const int FAI_ORCDOG = 13;
const int FAI_ORCUNDEAD = 14;
const int FAI_SCAVENGER = 15;
const int FAI_SHADOWBEAST = 16;
const int FAI_SKELETON = 17;
const int FAI_SNAPPER = 18;
const int FAI_SWAMPSHARK = 19;
const int FAI_TROLL = 20;
const int FAI_WARAN = 21;
const int FAI_WOLF = 22;
const int FAI_ZOMBIE = 23;
const int FAI_BLOODFLY = 24;
const int FAI_HUMAN_MAGE = 25;
const int FAI_MONSTER_STRONG = 26;
const int FAI_MINECRAWLERQUEEN = 27;
const int FAI_SLEEPER = 28;
const int FAI_HUMAN_RANGED = 29;
const int DEFAULT = 0;
const int FACE_NORMAL = 0;
const int FACE_MAGE = 1;
const int FACE_FIGHTER = 2;
const int FACE_THIEF = 3;
const int FACE_GURU = 4;
const int FACE_NOVICE = 5;
const int NPC_ANGRY_TIME = 120;
const int START_LOOP = 1;
const int START_NOLOOP = 0;
const int LOOP_CONTINUE = 0;
const int LOOP_END = 1;
const int TRUE = 1;
const int FALSE = 0;
const int HAI_DIST_MELEE = 600;
const int HAI_DIST_RANGED = 3000;
const int HAI_DIST_ABORT_MELEE = 1000;
const int HAI_DIST_ABORT_RANGED = 3500;
const int HAI_DIST_ABORT_FLEE = 3000;
const int HAI_DIST_ASSESSCASTER = 2000;
const int HAI_DIST_HELPATTACKEDCHARGES = 2000;
const int HAI_DIST_ASSESS_MONSTER = 1000;
const int HAI_DIST_ABORT_ASSESS_MONSTER = 1200;
const int HAI_DIST_ATTACK_MONSTER = 1000;
const int HAI_DIST_CATCHTHIEF = 150;
const int HAI_DIST_ASSESSTHEFT = 800;
const int HAI_DIST_ABORTPURSUIT = 1000;
const int HAI_DIST_ACTIONRANGE = 1500;
const int HAI_DIST_CLEARROOM = 700;
const int HAI_DIST_HEARROOMINTRUDER = 700;
const int HAI_DIST_SMALLTALK = 500;
const int HAI_DIST_OBSERVEINTRUDER = 60;
const int HAI_DIST_GUARDPASSAGE_RESET = 1500;
const int HAI_DIST_GUARDPASSAGE_ATTENTION = 1200;
const int HAI_DIST_FOLLOWPC = 300;
const int HAI_DIST_ASSESSTOLERATEDENEMY = 1000;
const int HAI_DIST_WATCH = 1500;
const int HAI_DIST_DETECTUSEMOB = 1500;
const int HAI_TIME_PURSUIT = 20;
const int HAI_TIME_FOLLOW = 10;
const int HAI_TIME_UNCONSCIOUS = 20;
const int HAI_TIME_TURNAWAY = 20;
var int player_mobsi_production;
const int MOBSI_SLEEPABIT = 1;
const int MOBSI_PAN = 3;
const int MOBSI_POTIONALCHEMY = 5;
const int MOBSI_STOMP = 7;
const int MOBSI_SLEEPABITEND = 101;
const int MOBSI_PANEND = 103;
const int MOBSI_POTIONALCHEMYEND = 105;
const int MOBSI_STOMPEND = 107;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\AI_MM_Constants.d
const int AIV_MM_PercRange = 1;
const int AIV_MM_DrohRange = 2;
const int AIV_MM_AttackRange = 3;
const int AIV_MM_DrohTime = 4;
const int AIV_MM_FollowTime = 5;
const int AIV_MM_FollowInWater = 6;
const int AIV_MM_Behaviour = 7;
const int PASSIVE = 0;
const int HUNTER = 1;
const int PACKHUNTER = 2;
const int AIV_MM_TEMP_PRIO = 8;
const int PRIO_PREY = 0;
const int PRIO_ATTACKER = 1;
const int AIV_MM_SleepStart = 9;
const int AIV_MM_SleepEnd = 10;
const int AIV_MM_RestStart = 11;
const int AIV_MM_RestEnd = 12;
const int AIV_MM_RoamStart = 13;
const int AIV_MM_RoamEnd = 14;
const int AIV_MM_EatGroundStart = 15;
const int AIV_MM_EatGroundEnd = 16;
const int AIV_MM_WuselStart = 17;
const int AIV_MM_WuselEnd = 18;
const int OnlyRoutine = -1;
const int AIV_MM_ShrinkState = 19;
const int AIV_MM_DistToMaster = 20;
const int AIV_MM_TimeLooseHP = 21;
const int AIV_MM_REAL_ID = 22;
const int ID_NONE = 0;
const int ID_WOLF = 1;
const int ID_BLACKWOLF = 2;
const int ID_SNAPPER = 3;
const int ID_ORCBITER = 4;
const int ID_SHADOWBEAST = 5;
const int ID_BLOODHOUND = 6;
const int ID_TROLL = 7;
const int ID_WARAN = 8;
const int ID_FIREWARAN = 9;
const int ID_RAZOR = 10;
const int ID_LURKER = 11;
const int ID_SWAMPSHARK = 12;
const int ID_MINECRAWLER = 13;
const int ID_MINECRAWLERWARRIOR = 14;
const int ID_BLOODFLY = 15;
const int ID_BLACKGOBBO = 16;
const int ID_GOBBO = 17;
const int ID_SCAVENGER = 18;
const int ID_SKELETON = 19;
const int ID_SKELETONWARRIOR = 20;
const int ID_SKELETONSCOUT = 21;
const int ID_SKELETONMAGE = 22;
const int ID_DEMON = 23;
const int ID_DEMONLORD = 24;
const int ID_MINECRAWLERQUEEN = 25;
const int ID_MOLERAT = 26;
const int ID_UNDEADORCWARRIOR = 27;
const int ID_UNDEADORCSHAMAN = 28;
const int ID_HARPIE = 29;
const int ID_SLEEPER = 30;
const int ID_STONEGOLEM = 31;
const int ID_FIREGOLEM = 32;
const int ID_ICEGOLEM = 33;
const int ID_MEATBUG = 34;
const int ID_ZOMBIE = 35;
const int AIV_MM_PARTYMEMBER = 23;
const int AIV_MM_DEATHINVGIVEN = 24;
const int MID_CANYONTROLL = 5000;
const int MID_THEKEEPER = 5001;
const int MID_DAMLURKER = 5002;
const int MID_YOUNGTROLL = 5003;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\Balancing.d
const int NPC_MINIMAL_DAMAGE = 1;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\BodyStates.d
const int BS_FLAG_INTERRUPTABLE = 1 << 15;
const int BS_FLAG_FREEHANDS = 1 << 16;
const int BS_STAND = 98304;
const int BS_WALK = 32769;
const int BS_SNEAK = 32770;
const int BS_RUN = 3;
const int BS_SPRINT = 4;
const int BS_SWIM = 5;
const int BS_CRAWL = 6;
const int BS_DIVE = 7;
const int BS_JUMP = 8;
const int BS_CLIMB = 32777;
const int BS_FALL = 10;
const int BS_SIT = 65547;
const int BS_LIE = 12;
const int BS_INVENTORY = 13;
const int BS_ITEMINTERACT = 32782;
const int BS_MOBINTERACT = 15;
const int BS_MOBINTERACT_INTERRUPT = 32784;
const int BS_TAKEITEM = 17;
const int BS_DROPITEM = 18;
const int BS_THROWITEM = 19;
const int BS_PICKPOCKET = 32788;
const int BS_STUMBLE = 21;
const int BS_UNCONSCIOUS = 22;
const int BS_DEAD = 23;
const int BS_AIMNEAR = 24;
const int BS_AIMFAR = 25;
const int BS_HIT = 32794;
const int BS_PARADE = 27;
const int BS_CASTING = 32796;
const int BS_PETRIFIED = 29;
const int BS_CONTROLLING = 32798;
const int BS_MAX = 31;
const int BS_MOD_HIDDEN = 128;
const int BS_MOD_DRUNK = 256;
const int BS_MOD_NUTS = 512;
const int BS_MOD_BURNING = 1 << 10;
const int BS_MOD_CONTROLLED = 1 << 11;
const int BS_MOD_TRANSFORMED = 1 << 12;
const string MOB_SIT = "BENCH,CHAIR,GROUND,THRONE";
const string MOB_LIE = "BED,BEDHIGH,BEDLOW";
const string MOB_CLIMB = "CLIMB,LADDER,RANKE";
const string MOB_NOTINTERRUPTABLE = "BARRELO,DOOR,IDOL,LEVER,LOVEBED,SECRETDOOR,TOUCHPLATE,TURNSWITCH,VWHEEL";
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\B_Functions.d
func void B_GotoWPNextToNpc(var C_Npc slf,var C_Npc oth)
func void B_CantSeeTurn()
func int C_LookAtNpc(var C_Npc slf,var C_Npc oth)
func int C_StopLookAt(var C_Npc slf)
func void B_SmartTurnToNpc(var C_Npc slf,var C_Npc oth)
func void B_Say(var C_Npc slf,var C_Npc oth,var string text)
func void B_SayOverlay(var C_Npc slf,var C_Npc oth,var string text)
func void B_StandUp(var C_Npc slf)
func void B_CallComrades()
func void B_CallGuards()
func void B_IntruderAlert(var C_Npc slf,var C_Npc oth)
func void B_FullStop(var C_Npc npc)
func void B_ResetTempAttitude(var C_Npc slf)
func void B_WhirlAround(var C_Npc slf,var C_Npc oth)
func void B_DropWeapon(var C_Npc slf)
func void B_RegainDroppedWeapon(var C_Npc slf)
func void B_RegainDroppedArmor(var C_Npc slf)
func void B_GotoFP(var C_Npc slf,var string fp)
func void B_StopGotoHero()
func void B_SetAttackReason(var C_Npc slf,var int reason)
func void B_KillNpc(var int npcInstance)
func void B_UseFakeScroll()
func void B_ChangeGuild(var int npcInstance,var int newGuild)
func void B_ExchangeRoutine(var int npcInstance,var string newRoutine)
func void B_SetPermAttitude(var int npcInstance,var int newAttitude)
func void B_LogEntry(var string topic,var string entry)
func void B_ClearImmortal(var int npcInstance)
func void B_SetNpcType(var int npcInstance,var int newNpctype)
var string screenmessage;
var string screenmessage2;
func void b_printtrademsg1(var string trademsg1)
func void b_printtrademsg2(var string trademsg2)
func void B_GiveInvItems(var C_Npc giver,var C_Npc taker,var int itemInstance,var int amount)
func int B_CheckForImportantInfo(var C_Npc slf,var C_Npc oth)
func void B_InitGuildAttitudes()
func void B_PracticeCombat(var string waypoint)
func void B_PrintGuildCondition(var int level)
var int Knows_GetTeeth;
var int Knows_GetFur;
var int Knows_GetClaws;
var int Knows_GetHide;
var int Knows_GetBFSting;
var int Knows_GetMCPlates;
var int Knows_GetMCMandibles;
var int Knows_GetUluMulu;
func void b_learn_trophies_teeth()
func void b_learn_trophies_fur()
func void b_learn_trophies_claws()
func void b_learn_trophies_reptilefur()
func void b_learn_trophies_sting()
func void b_learn_trophies_plates()
func void b_learn_trophies_mandibles()
func void b_learn_trophies_ulumulu()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\C_Functions.d
func int C_AmIStronger(var C_Npc slf,var C_Npc oth)
func int C_AmIWeaker(var C_Npc slf,var C_Npc oth)
func int C_NpcIsInFightMode(var C_Npc oth)
func int C_NpcIsInNeutralSpellMode(var C_Npc oth)
func int C_NpcIsDown(var C_Npc slf)
func int C_NpcIsHuman(var C_Npc slf)
func int C_NpcIsMonster(var C_Npc slf)
func int C_NpcIsDangerousMonster(var C_Npc slf,var C_Npc oth)
func int C_NpcIsOrc(var C_Npc slf)
func int C_NpcIsMonsterMage(var C_Npc slf)
func void Npc_SetPermAttitude(var C_Npc slf,var int att)
func int Npc_GetTempAttitude(var C_Npc slf,var C_Npc oth)
func int C_BodyStateContains(var C_Npc slf,var int bodystate)
func int C_NpcTypeIsFriend(var C_Npc slf,var C_Npc oth)
func int C_NpcIsGuard(var C_Npc slf)
func int C_NpcIsGuardArcher(var C_Npc slf)
func int C_NpcIsBoss(var C_Npc slf)
func int C_NpcIsWorker(var C_Npc slf)
func int C_NpcIsMage(var C_Npc slf)
func int C_NpcBelongsToOldCamp(var C_Npc slf)
func int C_NpcBelongsToNewCamp(var C_Npc slf)
func int C_NpcBelongsToPsiCamp(var C_Npc slf)
func int C_ChargeWasAttacked(var C_Npc guard,var C_Npc charge,var C_Npc attacker)
func int C_NpcHasSpell(var C_Npc slf,var int spell)
func int C_NpcHasAmmo(var C_Npc slf,var int category)
func int C_NpcHasWeapon(var C_Npc slf,var int category)
func int C_GetAttackReason(var C_Npc slf)
func int C_OtherIsToleratedEnemy(var C_Npc slf,var C_Npc oth)
func void B_TolerateEnemy(var C_Npc slf,var C_Npc oth)
func int c_npcisguarding(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\C_ZSInit.d
func void C_ZSInit()
func void C_Orc_ZSInit()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\perception.d
const int PERC_DIST_CLOSE = 100;
const int PERC_DIST_FLEE = 300;
const int PERC_DIST_DIALOG = 500;
const int PERC_DIST_WATCHFIGHT = 600;
const int PERC_DIST_INTERMEDIAT = 1000;
const int PERC_DIST_MAX = 2000;
func void b_setcutsceneperceptions()
func void InitPerceptions()
func void GuardPerception()
func void ObservingPerception()
func void OccupiedPerception()
func void DeepSleepPerception()
func void LightSleepPerception()
func void B_SetPerception(var C_Npc self)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\AI_Intern\PrintDebug.d
const int PD_TA_FRAME = 1;
const int PD_TA_LOOP = 2;
const int PD_TA_CHECK = 3;
const int PD_TA_DETAIL = 4;
const int PD_ZS_FRAME = 6;
const int PD_ZS_LOOP = 7;
const int PD_ZS_Check = 8;
const int PD_ZS_DETAIL = 9;
const int PD_MST_FRAME = 11;
const int PD_MST_LOOP = 12;
const int PD_MST_CHECK = 13;
const int PD_MST_DETAIL = 14;
const int PD_ORC_FRAME = 16;
const int PD_ORC_LOOP = 17;
const int PD_ORC_CHECK = 18;
const int PD_ORC_DETAIL = 19;
const int PD_MISSION = 21;
const int PD_CUTSCENE = 22;
const int PD_SPELL = 23;
const int PD_ITEM_MOBSI = 24;
const int PD_MAGIC = 25;
func void PrintDebugS(var string txt)
func void PrintDebugNpc(var int type,var string text)
func void PrintGlobals(var int channel)
func void PrintGuild(var int channel,var int guild)
func void PrintAttitudes(var int channel)
func void PrintDebugInt(var int channel,var string preText,var int value)
func void PrintDebugString(var int channel,var string preText,var string text)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessAndMemorize.d
const int NEWS_SOURCE_WITNESS = 0;
const int NEWS_SOURCE_GOSSIP = 1;
const int NEWS_MURDER = 200;
const int NEWS_ATTACK = 195;
const int NEWS_THEFT = 190;
const int NEWS_DEFEAT = 185;
const int NEWS_NERVE = 180;
const int NEWS_INTERFERE = 175;
const int NEWS_HASDEFEATED = 170;
func void B_AssessAndMemorize(var int newsid,var int source,var C_Npc witness,var C_Npc offender,var C_Npc vict)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessBody.d
func void B_AssessBody()
func void b_sayplunder()
func void b_checkitems_orik()
func void b_checkitems_lord()
func void b_checkitems_cavalorn()
func void b_checkitems_whistler()
func void b_checkitems_aaron()
func void b_checkitems_ulbert()
func void b_checkitems_bartholo()
func void b_checkitems_grd279()
func void b_checkitems_scar()
func void b_checkitems_arto()
func void b_checkitems_stone()
func void b_checkitems_kalom()
func void b_checkitems_torlof()
func void b_checkitems_cord()
func void ZS_AssessBody()
func int ZS_AssessBody_Loop()
func void ZS_AssessBody_End()
func void ZS_AssessBody_RecoverWeapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessCaster.d
func void B_AssessCaster()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessEnemy.d
func void B_AssessEnemy()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessEnterRoom.d
func void B_AssessEnterRoom()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessFighter.d
func void B_AssessFighter()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessFightSound.d
func void B_AssessFightSound()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessQuietSound.d
func void B_AssessQuietSound()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessRemoveWeapon.d
func void B_AssessRemoveWeapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessSc.d
func void B_CheckStolenEquipment()
func void B_AssessSC()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessTalk.d
func void B_AssessTalk()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessTheft.d
func void B_GuardItemsAssessTheft()
func void B_AssessTheft()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessThreat.d
func void B_AssessThreat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessUseMob.d
func void B_AssessUseMob()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_AssessWarn.d
func void B_AssessWarn()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_CheerFight.d
func void B_CheerFight()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_CombatAssessDefeat.d
func void B_CombatAssessDefeat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_CombatAssessMurder.d
func void B_CombatAssessMurder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_CombatReactToDamage.d
func void B_CombatReactToDamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_CompareNpcInstance.d
func int B_CompareNpcInstance(var C_Npc first,var C_Npc second)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_DrawWeapon.d
func void B_DrawWeapon(var C_Npc slf,var C_Npc oth)
func void B_RemoveWeapon(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_FetchWeapon.d
func int B_FetchWeapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_GreetUpcoming.d
func void B_GreetUpcoming()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_GuildGreetings.d
func void B_GuildGreetings()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_InterruptMob.d
func void B_InterruptMob(var string mobsi)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_LookAround.d
func void B_LookAround()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_MoveMob.d
func void B_MoveMob()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_MoveNpc.d
func void B_MoveNpc()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_ObserveIntruder.d
func void B_ObserveIntruder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_ObservePasserby.d
func void B_ObservePasserby()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_ObserveSuspect.d
func void B_ObserveSuspect()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_OccupiedObserveIntruder.d
func void B_OccupiedObserveIntruder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_Plunder.d
func void B_TransferItems(var int amount)
func int B_CheckItem(var int category,var int slot)
func int B_Plunder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_ReactToMemory.d
func void B_ReactToMemory()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_RefreshArmor.d
func void B_RefreshArmor()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_RefuseTalkAngry.d
func void B_RefuseTalkAngry()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_Scale.d
func void B_Scale(var C_Npc n)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_SelectWeapon.d
func void B_FillQuiver(var C_Npc slf)
func int B_EquipAndDrawBestMeleeWeapon(var C_Npc slf)
func int B_EquipAndDrawBestRangedWeapon(var C_Npc slf)
func void B_DrawSpell(var C_Npc slf,var int spell,var int mana)
func void B_SelectWeapon(var C_Npc slf,var C_Npc oth)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_SetFaceExpression.d
func void B_SetFaceExpression(var C_Npc slf,var C_Npc oth)
func void B_ResetFaceExpression(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_SpecialCombatDamageReaction.d
func void B_SpecialCombatDamageReaction()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_SpreadAndMemorize.d
func void B_SpreadAndMemorize(var int newsid,var int source)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\B_TossAndTurn.d
func void B_TossAndTurn()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\C_CanNewsBeSpread.d
func void C_CanNewsBeSpread()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\C_PcIsInMyRoom.d
func int C_PCIsInMyRoom()
func int c_pcinmyroomisthief()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Human\C_WantItem.d
func int C_WantItem()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Monster\B_InitMonsterAttitudes.d
func void B_InitMonsterAttitudes()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\B_Monster\B_SetGuildAttitude.d
func void B_SetGuildAttitude(var int fromGuild,var int attitude,var int toGuild)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_BlackGobbo.d
prototype Mst_Default_BlackGobbo(C_Npc)
func void Set_BlackGobbo_Visuals()
instance BlackGobboMace(Mst_Default_BlackGobbo)
instance BlackGobboWarrior(Mst_Default_BlackGobbo)
func void set_blackgobboleader_visuals()
instance BLACKGOBBOLEADER(Mst_Default_BlackGobbo)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Bloodfly.d
prototype Mst_Default_Bloodfly(C_Npc)
func void Set_Bloodfly_Visuals()
instance Bloodfly(Mst_Default_Bloodfly)
instance HelpBrothers_Bloodfly(Mst_Default_Bloodfly)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Bloodhound.d
prototype Mst_Default_Bloodhound(C_Npc)
func void Set_Bloodhound_Visuals()
instance Bloodhound(Mst_Default_Bloodhound)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Demon.d
prototype Mst_Default_Demon(C_Npc)
func void Set_Demon_Visuals()
instance Demon(Mst_Default_Demon)
instance SummonedByPC_Demon(Mst_Default_Demon)
instance SummonedByNPC_Demon(Mst_Default_Demon)
instance XardasDemon(Mst_Default_Demon)
instance OTDemon(Mst_Default_Demon)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_DemonLord.d
prototype Mst_Default_DemonLord(C_Npc)
func void Set_DemonLord_Visuals()
instance DemonLord(Mst_Default_DemonLord)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_FireWaran.d
prototype Mst_Default_FireWaran(C_Npc)
func void Set_FireWaran_Visuals()
instance FireWaran(Mst_Default_FireWaran)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Gobbo.d
prototype Mst_Default_GreenGobbo(C_Npc)
func void Set_GreenGobbo_Visuals()
instance GreenGobboClub(Mst_Default_GreenGobbo)
instance GreenGobboSword(Mst_Default_GreenGobbo)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Golem.d
prototype Mst_Default_Golem(C_Npc)
func void Set_StoneGolem_Visuals()
func void Set_FireGolem_Visuals()
func void Set_IceGolem_Visuals()
instance StoneGolem(Mst_Default_Golem)
instance SummonedByPC_StoneGolem(Mst_Default_Golem)
instance SummonedByNPC_StoneGolem(Mst_Default_Golem)
instance FireGolem(Mst_Default_Golem)
instance IceGolem(Mst_Default_Golem)
instance Bridgegolem(Mst_Default_Golem)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Harpie.d
prototype Mst_Default_Harpie(C_Npc)
func void Set_Harpie_Visuals()
instance Harpie(Mst_Default_Harpie)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Lurker.d
prototype Mst_Default_Lurker(C_Npc)
func void Set_Lurker_Visuals()
instance Lurker(Mst_Default_Lurker)
instance DamLurker(Mst_Default_Lurker)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Meatbug.d
prototype Mst_Default_Meatbug(C_Npc)
func void Set_Meatbug_Visuals()
instance Meatbug(Mst_Default_Meatbug)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Minecrawler.d
prototype Mst_Default_Minecrawler(C_Npc)
func void Set_Minecrawler_Visuals()
instance MineCrawler(Mst_Default_Minecrawler)
instance YMINECRAWLER(Mst_Default_Minecrawler)
instance MINECRAWLER_OMGATE(Mst_Default_Minecrawler)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_MinecrawlerQueen.d
prototype Mst_Default_MinecrawlerQueen(C_Npc)
func void Set_MinecrawlerQueen_Visuals()
instance MinecrawlerQueen(Mst_Default_MinecrawlerQueen)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_MinecrawlerWarrior.d
prototype Mst_Default_MinecrawlerWarrior(C_Npc)
func void Set_MinecrawlerWarrior_Visuals()
func void set_otminecrawlerwarrior_visuals()
instance MinecrawlerWarrior(Mst_Default_MinecrawlerWarrior)
instance OTMinecrawler(Mst_Default_MinecrawlerWarrior)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Molerat.d
prototype Mst_Default_Molerat(C_Npc)
func void Set_Molerat_Visuals()
func void set_ymolerat_visuals()
func void Set_MoleratSwamp_Visuals()
func void Set_MoleratStone_Visuals()
instance Molerat(Mst_Default_Molerat)
instance MoleratSwamp(Mst_Default_Molerat)
instance MoleratStone(Mst_Default_Molerat)
instance YMolerat(Mst_Default_Molerat)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcBiter.d
prototype Mst_Default_OrcBiter(C_Npc)
func void Set_OrcBiter_Visuals()
instance OrcBiter(Mst_Default_OrcBiter)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcDog.d
prototype Mst_Default_OrcDog(C_Npc)
func void Set_OrcDog_Visuals()
instance OrcDog(Mst_Default_OrcDog)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcScout.d
prototype Mst_Default_OrcScout(C_Npc)
func void Set_OrcScout_Visuals()
instance OrcScout(Mst_Default_OrcScout)
instance OrcPeasantEatAndDrink(Mst_Default_OrcScout)
instance OrcScoutGYD(Mst_Default_OrcScout)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcShaman.d
prototype Mst_Default_OrcShaman(C_Npc)
func void Set_OrcShaman_Visuals()
instance OrcShaman(Mst_Default_OrcShaman)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcSlave.d
prototype Mst_Default_OrcSlave(C_Npc)
func void Set_OrcSlave_Visuals()
func void set_orcpeasant_visuals()
instance OrcSlave(Mst_Default_OrcSlave)
instance OrcPeasantDance(Mst_Default_OrcSlave)
instance OrcPeasantDrum(Mst_Default_OrcSlave)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_OrcWarrior.d
prototype Mst_Default_OrcWarrior(C_Npc)
func void Set_OrcWarrior_Visuals()
instance OrcWarrior1(Mst_Default_OrcWarrior)
instance OrcWarrior2(Mst_Default_OrcWarrior)
instance OrcWarrior3(Mst_Default_OrcWarrior)
instance OrcWarrior4(Mst_Default_OrcWarrior)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Razor.d
prototype Mst_Default_Razor(C_Npc)
func void Set_Razor_Visuals()
instance Razor(Mst_Default_Razor)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Scavenger.d
prototype Mst_Default_Scavenger(C_Npc)
func void Set_Scavenger_Visuals()
func void set_yscavenger_visuals()
instance Scavenger(Mst_Default_Scavenger)
instance YScavenger(Mst_Default_Scavenger)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Shadowbeast.d
prototype Mst_Default_Shadowbeast(C_Npc)
func void Set_Shadowbeast_Visuals()
instance Shadowbeast(Mst_Default_Shadowbeast)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Skeleton.d
prototype Mst_Default_Skeleton(C_Npc)
func void Set_Skeleton_Visuals()
func void Set_SkeletonWarrior_Visuals()
func void Set_SkeletonScout_Visuals()
func void Set_SkeletonMage_Visuals()
instance Skeleton(Mst_Default_Skeleton)
instance SkeletonSH(Mst_Default_Skeleton)
instance SkeletonScout(Mst_Default_Skeleton)
instance SkeletonWarrior(Mst_Default_Skeleton)
instance SkeletonMage(Mst_Default_Skeleton)
instance SkeletonMage_fogtower(Mst_Default_Skeleton)
instance SummonedByPC_Skeleton(Mst_Default_Skeleton)
instance SummonedByNPC_Skeleton(Mst_Default_Skeleton)
instance SummonedByPC_SkeletonWarrior(Mst_Default_Skeleton)
instance SummonedByNPC_SkeletonWarrior(Mst_Default_Skeleton)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Sleeper.d
prototype Mst_Default_Sleeper(C_Npc)
func void Set_Sleeper_Visuals()
instance Sleeper(Mst_Default_Sleeper)
func void Rtn_start_Sleeper()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Snapper.d
prototype Mst_Default_Snapper(C_Npc)
func void Set_Snapper_Visuals()
instance Snapper(Mst_Default_Snapper)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Swampshark.d
prototype Mst_Default_Swampshark(C_Npc)
func void Set_Swampshark_Visuals()
instance Swampshark(Mst_Default_Swampshark)
instance HurtSwampshark(Mst_Default_Swampshark)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Troll.d
prototype Mst_Default_Troll(C_Npc)
func void Set_Troll_Visuals()
instance Troll(Mst_Default_Troll)
instance YoungTroll(Mst_Default_Troll)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_UndeadOrcShaman.d
prototype Mst_Default_UndeadOrcShaman(C_Npc)
func void Set_UndeadOrcShaman_Visuals()
instance UndeadOrcShaman(Mst_Default_UndeadOrcShaman)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_UndeadOrcWarrior.d
prototype Mst_Default_UndeadOrcWarrior(C_Npc)
func void Set_UndeadOrcWarrior_Visuals()
instance UndeadOrcWarrior(Mst_Default_UndeadOrcWarrior)
instance UndeadOWH(Mst_Default_UndeadOrcWarrior)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Waran.d
prototype Mst_Default_Waran(C_Npc)
func void Set_Waran_Visuals()
instance Waran(Mst_Default_Waran)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Wolf.d
prototype Mst_Default_Wolf(C_Npc)
func void Set_Wolf_Visuals()
instance Wolf(Mst_Default_Wolf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Monster\Mst_Zombie.d
prototype Mst_Default_Zombie(C_Npc)
func void Set_Zombie_Visuals()
func void Set_Zombie2_Visuals()
func void Set_Zombie3_Visuals()
func void Set_Zombie4_Visuals()
func void set_zombie5_visuals()
instance Zombie(Mst_Default_Zombie)
instance Zombie2(Mst_Default_Zombie)
instance Zombie3(Mst_Default_Zombie)
instance Zombie4(Mst_Default_Zombie)
instance ZombieTheKeeper(Mst_Default_Zombie)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_InitOrcAttitudes.d
func void B_InitOrcAttitudes(var int OrcsvsHuman)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_OrcSlave_Quicklook.d
func void B_OrcSlave_Quicklook()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_AssessDamage.d
func void B_Orc_AssessDamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_AssessDefeat.d
func void B_Orc_AssessDefeat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_AssessMurder.d
func void B_Orc_AssessMurder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_AssessSomethingEvil.d
func void B_Orc_AssessSomethingEvil()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_AssessWarn.d
func void B_Orc_AssessWarn()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_CheerFight.d
func void B_Orc_CheerFight()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_DrawWeapon.d
func void B_Orc_DrawWeapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_Item.d
func void B_Orc_ItemHorn()
func void B_Orc_ItemEat()
func void B_Orc_ItemPotion()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\B_Orc_SmartTurn.d
func void B_Orc_SmartTurn()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\Orc_Perc.d
func void OrcSlavePerc()
func void OrcDefaultPerc()
func void OrcDefaultPercDoing()
func void OrcDeepSleepPerc()
func void OrcLightSleepPerc()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\TA_Orc.d
func void TA_Orc_Stonemill(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Stomper(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Drum(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Sleep(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Pray(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Eat(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_DrinkAlcohol(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_EatAndDrink(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Speech(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_SitOnFloor(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Dance(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_WalkAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_GotoWP(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_GuardSleepy(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orc_Guard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\TestOrc.d
prototype ORC_TESTTYPE(C_Npc)
instance Orc01(ORC_TESTTYPE)
instance Orc02(ORC_TESTTYPE)
instance Orc03(ORC_TESTTYPE)
instance Orc04(ORC_TESTTYPE)
instance Orc05(ORC_TESTTYPE)
instance Orc06(ORC_TESTTYPE)
instance Orc07(ORC_TESTTYPE)
instance Orc08(ORC_TESTTYPE)
instance Orc09(ORC_TESTTYPE)
instance Orc10(ORC_TESTTYPE)
instance Orc11(ORC_TESTTYPE)
instance Orc12(ORC_TESTTYPE)
func void Rtn_Orc01()
func void Rtn_Orc02()
func void Rtn_Orc03()
func void Rtn_Orc04()
func void Rtn_Orc05()
func void Rtn_Orc06()
func void Rtn_Orc07()
func void Rtn_Orc08()
func void Rtn_Orc09()
func void Rtn_Orc10()
func void Rtn_Orc11()
func void Rtn_Orc12()
func void STARTUP_WORLD_Orcs()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\TestOrcSlave.d
prototype ORCSLAVE_TESTTYPE(C_Npc)
instance Slave0(ORCSLAVE_TESTTYPE)
instance Slave1(ORCSLAVE_TESTTYPE)
instance Slave2(ORCSLAVE_TESTTYPE)
func void Rtn_OrcSlaveA()
func void Rtn_OrcSlaveB()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\ZS_OrcSlave_AssessDamage.d
func void ZS_OrcSlave_AssessDamage()
func int ZS_OrcSlave_AssessDamage_Loop()
func void ZS_OrcSlave_AssessDamage_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\ZS_Orc_Attack.d
func void ZS_Orc_Attack()
func int ZS_Orc_Attack_Loop()
func void ZS_Orc_Attack_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\ZS_Orc_ObserveIntruder.d
func void B_OrcGuard_ObserveIntruder()
func void B_OrcWarrior_ObserveIntruder()
func void B_OrcScout_ObserveIntruder()
func void B_OrcShaman_ObserveIntruder()
func void B_Orc_ObserveIntruder()
func void ZS_OrcGuard_ObserveIntruder()
func int ZS_OrcGuard_ObserveIntruder_Loop()
func void ZS_OrcGuard_ObserveIntruder_End()
func void ZS_OrcWarrior_ObserveIntruder()
func int ZS_OrcWarrior_ObserveIntruder_Loop()
func void ZS_OrcWarrior_ObserveIntruder_End()
func void ZS_OrcScout_ObserveIntruder()
func int ZS_OrcScout_ObserveIntruder_Loop()
func void ZS_OrcScout_ObserveIntruder_End()
func void ZS_OrcShaman_ObserveIntruder()
func int ZS_OrcShaman_ObserveIntruder_Loop()
func void ZS_OrcShaman_ObserveIntruder_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\ZS_Orc_TA.d
func void B_Orc_Idle_Ani()
func void ZS_Orc_Stonemill()
func void ZS_Orc_Stonemill_Loop()
func void ZS_Orc_Stonemill_End()
func void ZS_Orc_Stomper()
func void ZS_Orc_Stomper_Loop()
func void ZS_Orc_Stomper_End()
func void ZS_Orc_Eat()
func int ZS_Orc_Eat_Loop()
func void ZS_Orc_Eat_End()
func void ZS_Orc_Sleep()
func int ZS_Orc_Sleep_Loop()
func void ZS_Orc_Sleep_End()
func void ZS_Orc_Pray()
func void ZS_Orc_Pray_Loop()
func void ZS_Orc_Pray_End()
func void ZS_Orc_Drum()
func int ZS_Orc_Drum_Loop()
func int ZS_Orc_Drum_End()
func void ZS_Orc_Speech()
func void ZS_Orc_Speech_Loop()
func void ZS_Orc_Speech_End()
func void ZS_Orc_GotoWP()
func void ZS_Orc_GotoWp_Loop()
func void ZS_Orc_GotoWP_End()
func void ZS_Orc_WalkAround()
func void ZS_Orc_WalkAround_Loop()
func void ZS_Orc_WalkAround_End()
func void ZS_Orc_DrinkAlcohol()
func int ZS_Orc_DrinkAlcohol_Loop()
func void ZS_Orc_DrinkAlcohol_End()
func void ZS_Orc_Dance()
func void ZS_Orc_Dance_Loop()
func void ZS_Orc_Dance_End()
func void ZS_Orc_EatAndDrink()
func void ZS_Orc_EatAndDrink_Loop()
func void ZS_Orc_EatAndDrink_End()
func void ZS_Orc_GuardSleepy()
func void ZS_Orc_GuardSleepy_Loop()
func void ZS_Orc_GuardSleepy_End()
func void ZS_Orc_Guard()
func void ZS_Orc_Guard_Loop()
func void ZS_Orc_Guard_End()
func void ZS_Orc_SitOnFloor()
func void ZS_Orc_SitOnFloor_Loop()
func void ZS_Orc_SitOnFloor_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Orc\ZS_Orc_WatchFight.d
func int ZS_Orc_WatchFight()
func int ZS_Orc_WatchFight_Loop()
func void ZS_Orc_WatchFight_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Prototypes\Npc_Default.d
prototype Npc_Default(C_Npc)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\Babes.d
instance Babe(Npc_Default)
instance Babe2(Npc_Default)
instance Babe3(Npc_Default)
instance Babe4(Npc_Default)
instance Babe5(Npc_Default)
instance Babe6(Npc_Default)
instance Babe7(Npc_Default)
instance akh_Babe(Npc_Default)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\B_TestReaction.d
func void B_TestReaction()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\CharacterHelper.d
instance CH(Npc_Default)
func void ZS_CH_Hangaround()
func void ZS_CH_Hangaround_Loop()
func void ZS_CH_Hangaround_End()
func void B_SetHeroExp()
func void B_SetHeroEquipment()
func void B_SetHeroAttributes(var int selection,var int increase,var int LP_Cost)
func void B_SetHeroWeapon()
instance CH_Exit(C_Info)
func int CH_Exit_Condition()
func void CH_Exit_Info()
func void CH_Level_BACK()
instance CH_Level(C_Info)
func int CH_Level_Condition()
func void CH_Level_Info()
func void CH_Level26()
func void CH_Level21()
func void CH_Level16()
func void CH_Level11()
func void CH_Level6()
func void CH_Level1()
func void CH_Level_1()
func void CH_Level_2()
func void CH_Level_3()
func void CH_Level_4()
func void CH_Level_5()
func void CH_Level_6()
func void CH_Level_7()
func void CH_Level_8()
func void CH_Level_9()
func void CH_Level_10()
func void CH_Level_11()
func void CH_Level_12()
func void CH_Level_13()
func void CH_Level_14()
func void CH_Level_15()
func void CH_Level_16()
func void CH_Level_17()
func void CH_Level_18()
func void CH_Level_19()
func void CH_Level_20()
func void CH_Level_21()
func void CH_Level_22()
func void CH_Level_23()
func void CH_Level_24()
func void CH_Level_25()
func void CH_Level_26()
func void CH_Level_27()
func void CH_Level_28()
func void CH_Level_29()
func void CH_Level_30()
func void CH_Guild_BACK()
instance CH_DIFF(C_Info)
func int ch_diff_condition()
func void ch_diff_info()
func void ch_diff_back()
func void ch_diff_hard()
func void ch_diff_standart()
instance CH_Guild(C_Info)
func int CH_Guild_Condition()
func void CH_Guild_Info()
func void ch_ebr()
func void ch_gur()
func void ch_dmb()
func void CH_Templar()
func void CH_Novice()
func void CH_Watermage()
func void CH_Mercenary()
func void CH_Bandit()
func void CH_Firemage()
func void CH_Guard()
func void CH_Shadow()
instance CH_Training_STR(C_Info)
func int CH_Training_STR_Condition()
func void CH_Training_STR_Info()
func void CH_Strength1()
func void CH_Strength5()
func void CH_Strength10()
func void CH_Strength20()
func void CH_Strength_Weapon()
func void CH_Strength_all()
func void CH_Training_STR_BACK()
instance CH_Training_DEX(C_Info)
func int CH_Training_DEX_Condition()
func void CH_Training_DEX_Info()
func void CH_Dexterity1()
func void CH_Dexterity5()
func void CH_Dexterity10()
func void CH_Dexterity20()
func void CH_Dexterity_Weapon()
func void CH_Dexterity_all()
func void CH_Training_DEX_BACK()
instance CH_Training_Mana(C_Info)
func int CH_Training_Mana_Condition()
func void CH_Training_Mana_Info()
func void CH_Mana1()
func void CH_Mana5()
func void CH_Mana10()
func void CH_Mana20()
func void CH_Mana_all()
func void CH_Training_Mana_BACK()
instance CH_Training_Combat(C_Info)
func int CH_Training_Combat_Condition()
func void CH_Training_Combat_Info()
func void CH_1hL1()
func void CH_1hL2()
func void CH_2hL1()
func void CH_2hL2()
func void CH_BowL1()
func void CH_BowL2()
func void CH_CrossbowL1()
func void CH_CrossbowL2()
func void CH_Training_Combat_BACK()
instance CH_Training_Magic(C_Info)
func int CH_Training_Magic_Condition()
func void CH_Training_Magic_Info()
func void CH_Magic1()
func void CH_Magic2()
func void CH_Magic3()
func void CH_Magic4()
func void CH_Magic5()
func void CH_Magic6()
func void CH_Training_Magic_BACK()
instance CH_Training_Thievery(C_Info)
func int CH_Training_Thievery_Condition()
func void CH_Training_Thievery_Info()
func void CH_Picklock1()
func void CH_Picklock2()
func void CH_Pickpocket1()
func void CH_Pickpocket2()
func void CH_Sneak()
func void CH_Acrobat()
func void CH_Training_Thievery_BACK()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\ExternalsTest.d
func void ExternalsTest()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\Orc_Rockefeller.d
instance Orc_Rockefeller(Mst_Default_OrcWarrior)
instance Shaman_Rockefeller(Mst_Default_OrcWarrior)
instance UdShaman_Rockefeller(Mst_Default_OrcWarrior)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\PerceptionTestmodell.d
instance Perception_Testmodell(Npc_Default)
func void ZS_PTM_Hangaround()
func void ZS_PTM_Hangaround_Loop()
func void ZS_PTM_Hangaround_End()
func void B_PTM_AssessPlayer()
func void B_PTM_AssessEnemy()
func void B_PTM_AssessFighter()
func void B_PTM_AssessBody()
func void B_PTM_AssessItem()
func void B_PTM_AssessMurder()
func void B_PTM_AssessDefeat()
func void B_PTM_AssessDamage()
func void B_PTM_AssessOhtersDamage()
func void B_PTM_AssessThreat()
func void B_PTM_AssessRemoveWeapon()
func void B_PTM_ObserveIntruder()
func void B_PTM_AssessFightSound()
func void B_PTM_AssessQuietSound()
func void B_PTM_AssessWarn()
func void B_PTM_CatchThief()
func void B_PTM_AssessTheft()
func void B_PTM_AssessCall()
func void B_PTM_AssessTalk()
func void B_PTM_AssessGivenItem()
func void B_PTM_AssessFakeGuild()
func void B_PTM_MoveMob()
func void B_PTM_MoveNpc()
func void B_PTM_DrawWeapon()
func void B_PTM_ObserveSuspect()
func void B_PTM_NpcCommand()
func void B_PTM_AssessMagic()
func void B_PTM_AssessStopMagic()
func void B_PTM_AssessCaster()
func void B_PTM_AssessSurprise()
func void B_PTM_AssessEnterRoom()
func void B_PTM_AssessUseMob()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\startup_AI_Testlevel.d
func void startup_AI_Testlevel()
func void startup_SPACER_CHECKLIST_OUTDOOR()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\startup_AI_Testlevel_Monster.d
func void startup_AI_Testlevel_Monster()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\startup_AI_Testlevel_Monsterparse.d
func void startup_AI_Testlevel_Monsterparse()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\startup_world_demo.d
func void startup_world_demo()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\StoryHelper.d
instance SH(Npc_Default)
func void ZS_SH_Hangaround()
func void ZS_SH_Hangaround_Loop()
func void ZS_SH_Hangaround_End()
instance StoryHelper_Exit(C_Info)
func int StoryHelper_Exit_Condition()
func void StoryHelper_Exit_Info()
instance StoryHelper_INFO2(C_Info)
func int StoryHelper_INFO2_Condition()
func void StoryHelper_INFO2_Info()
func void StoryHelper_Chapter2Start()
func void StoryHelper_YBerion_BringFocus_SUCCESS()
func void StoryHelper_CorKalom_BringMCQBalls_RUNNING()
func void StoryHelper_CorKalom_BringBook_RUNNING()
func void StoryHelper_PrepareRitual()
func void StoryHelper_BACK2()
instance StoryHelper_INFO3(C_Info)
func int StoryHelper_INFO3_Condition()
func void StoryHelper_INFO3_Info()
func void StoryHelper_OrcGraveyard()
func void StoryHelper_BaalLukor_DEFEAT()
func void StoryHelper_CorAngar_SendToNC()
func void StoryHelper_SaturasBringFoci_RUNNING()
func void StoryHelper_BACK3()
instance StoryHelper_INFO4(C_Info)
func int StoryHelper_INFO4_Condition()
func void StoryHelper_INFO4_Info()
func void StoryHelper_SaturasBringFoci_SUCCESS()
func void StoryHelper_FreeMineAmbush()
func void StoryHelper_SaturasFindXardas()
func void StoryHelper_XardasIntro()
func void StoryHelper_XardasFindOrcShaman()
func void StoryHelper_AttackFreeMine()
func void StoryHelper_SearchForUluMulu()
func void StoryHelper_BACK4()
instance StoryHelper_INFO5(C_Info)
func int StoryHelper_INFO5_Condition()
func void StoryHelper_INFO5_Info()
func void StoryHelper_ReadyForOrcCity()
func void StoryHelper_FoundUriziel()
func void StoryHelper_ExploreSunkenTower()
func void StoryHelper_LoadUriziel()
func void StoryHelper_UrizielLoaded()
func void StoryHelper_BACK5()
instance STORYHELPER_INFO6(C_Info)
func int storyhelper_info6_condition()
func void storyhelper_info6_info()
func void storyhelper_back6()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle.d
prototype Npc_TestDefault(C_Npc)
instance ATestmodell(Npc_TestDefault)
func void Rtn_start_3001()
instance BTestmodell(Npc_TestDefault)
func void Rtn_start_3002()
instance CTestmodell(Npc_TestDefault)
func void Rtn_start_3003()
instance DTestmodell(Npc_TestDefault)
func void Rtn_start_3004()
instance FTestmodell(Npc_TestDefault)
func void Rtn_start_3006()
instance GTestmodell(Npc_TestDefault)
func void Rtn_start_3007()
instance HTestmodell(Npc_TestDefault)
func void Rtn_start_3008()
instance ITestmodell(Npc_TestDefault)
func void Rtn_start_3009()
instance JTestmodell(Npc_TestDefault)
func void Rtn_start_3010()
instance SLD1_Testmodell(Npc_TestDefault)
func void Rtn_start_SLD1_Testmodell()
instance SLD2_Testmodell(Npc_TestDefault)
func void Rtn_start_SLD2_Testmodell()
instance SLD3_Testmodell(Npc_TestDefault)
func void Rtn_start_SLD3_Testmodell()
instance GRD1_Testmodell(Npc_TestDefault)
instance TestInfo_001_07_700(C_Info)
func int TestInfo_001_07_700_Condition()
func void TestInfo_001_07_700_Info()
func void Rtn_start_GRD1_Testmodell()
instance GRD1_Testmodell_Trade_01(C_ITEMREACT)
func int GRD1_Testmodell_Trade_01_Func()
instance GRD1_Testmodell_Trade_01_Info_01(C_Info)
func int GRD1_Testmodell_Trade_01_Info_01_Condition()
func void GRD1_Testmodell_Trade_01_Info_01_Info()
instance GRD2_Testmodell(Npc_TestDefault)
func void Rtn_start_GRD2_Testmodell()
instance GRD3_Testmodell(Npc_TestDefault)
func void Rtn_start_GRD3_Testmodell()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle_Alex.d
instance OverlayHuman(C_Npc)
instance OverlayOrc(C_Npc)
instance Babe_Rockefeller(Npc_Default)
instance L5(Npc_Default)
instance L10(Npc_Default)
instance L15(Npc_Default)
instance L20(Npc_Default)
instance L25(Npc_Default)
instance Testratte(Mst_Default_Molerat)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle_Kalveram.d
instance Lukor_Bugfixbook(C_Item)
func void UseLukor_Bugfixbook()
instance Lester_Bugfixbook(C_Item)
func void UseLester_Bugfixbook()
instance STT_Test_Schatten(Npc_TestDefault)
instance GRD_Test_Gardist(Npc_TestDefault)
instance VLK_Test_Buddler(Npc_TestDefault)
instance SLD_Test_Soeldner(Npc_TestDefault)
instance SFB_Test_Schuerfer(Npc_TestDefault)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle_Markus.d
instance PC_Mini(C_Npc)
instance OverlayTestmodell(C_Npc)
instance BathBabe(C_Npc)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle_Nyul.d
instance PC_Nyul(Npc_Default)
instance Nyul_16(Npc_Default)
instance Nyul_21(Npc_Default)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestModelle_Roman.d
instance ItWrLevelMap(C_Item)
func void UseLevelMap()
instance ItWrBookOfTales(C_Item)
func void UseBookOfTales()
instance ItMw1hSwordBurning(C_Item)
instance ItMw2hSwordBurning(C_Item)
instance ItRwWarBowBurning(C_Item)
instance ItArRobeMithril(C_Item)
instance PC_Roman(Npc_Default)
instance Allround_Testmodell(Npc_Default)
func void ZS_TestEmpty()
func void ZS_TestEmpty_Loop()
func void ZS_TestEmpty_End()
func void ZS_TestSmoke()
func int ZS_TestSmoke_Loop()
func void ZS_TestSmoke_End()
var int m_nGuild;
func void ZS_TestGuild()
func int ZS_TestGuild_Loop()
func void ZS_TestGuild_End()
func void ZS_TestInfos()
func int ZS_TestInfos_Loop()
func void ZS_TestInfos_End()
var int g_nMana;
func void ZS_TestSpell()
func int ZS_TestSpell_Loop()
func void ZS_TestSpell_End()
var int g_nSpell;
func void ZS_TestMagic()
func int ZS_TestMagic_Loop()
func void ZS_TestMagic_End()
func void ZS_TestPatrol()
func void ZS_TestPatrol_Loop()
func void ZS_TestPatrol_End()
func void ZS_TestMoveMob()
func void ZS_TestMoveMob_Loop()
func void ZS_TestMoveMob_End()
func void ZS_TestDraw()
func void ZS_TestDraw_Loop()
func void ZS_TestDraw_End()
func void ZS_TestShoot()
func int ZS_TestShoot_Loop()
func void ZS_TestShoot_End()
func void ZS_TestFinishMove()
func void ZS_TestFinishMove_Loop()
func void ZS_TestFinishMove_End()
func void DailyRoute_Test_Empty()
instance Mission_Test_Empty(C_Mission)
func int Mis_Con_Off_TE()
func int Mis_Con_Suc_TE()
func int Mis_Con_Fai_TE()
func int Mis_Con_Obs_TE()
func void Mis_Off_TE()
func void Mis_Suc_TE()
func void Mis_Fai_TE()
func void Mis_Obs_TE()
func void Mis_Run_TE()
instance Mission_Test_Default(C_Mission)
func int Mis_Con_Off_TD()
func int Mis_Con_Suc_TD()
func int Mis_Con_Fai_TD()
func int Mis_Con_Obs_TD()
func void Mis_Off_TD()
func void Mis_Suc_TD()
func void Mis_Fai_TD()
func void Mis_Obs_TD()
func void Mis_Run_TD()
instance Trade_Test(C_ITEMREACT)
func int Trade_Test_Check()
instance Info_Test_Trade(C_Info)
func int Info_Test_Trade_Success()
func void Info_Test_Trade_Procedure()
instance Info_Test_Trade_Permanent(C_Info)
func int Info_Test_Trade_Permanent_Success()
func void Info_Test_Trade_Permanent_Procedure()
instance Info_Test_Permanent(C_Info)
func int Info_Test_Permanent_Success()
func void Info_Test_Permanent_Procedure()
instance Info_Test_Important(C_Info)
func int Info_Test_Important_Success()
func void Info_Test_Important_Procedure()
instance Info_Test_Important_Permanent(C_Info)
func int Info_Test_Important_Permanent_Success()
func void Info_Test_Important_Permanent_Procedure()
instance Info_Test_Normal(C_Info)
func int Info_Test_Success_Normal()
func void Info_Test_Procedure_Normal()
instance Info_Test_Choice(C_Info)
func int Info_Test_Success_Choice()
func void Info_Test_Procedure_Choice()
func void Info_Test_Procedure_Choice_Yes()
func void Info_Test_Procedure_Choice_No()
func void Info_Test_Procedure_Choice_Unsure()
func void Info_Test_Procedure_Choice_Exit()
instance Info_Test_Permanent_Choice(C_Info)
func int Info_Test_Success_Permanent_Choice()
func void Info_Test_Procedure_Permanent_Choice()
func void Info_Test_Procedure_Permanent_Choice_Yes()
func void Info_Test_Procedure_Permanent_Choice_No()
func void Info_Test_Procedure_Permanent_Choice_Unsure()
func void Info_Test_Procedure_Permanent_Choice_Exit()
instance Info_Test_Permanent_Important_Choice(C_Info)
func int Info_Test_Success_Permanent_Important_Choice()
func void Info_Test_Procedure_Permanent_Important_Choice()
func void Info_Test_Procedure_Permanent_Important_Choice_Yes()
func void Info_Test_Procedure_Permanent_Important_Choice_No()
func void Info_Test_Procedure_Permanent_Important_Choice_Unsure()
func void Info_Test_Procedure_Permanent_Important_Choice_Exit()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestZustaende\B_Hurt.d
func void B_Hurt()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestZustaende\ZS_TestGoto.d
func void ZS_TestGotoWP()
func void ZS_TestGotoWP_Loop()
func void ZS_TestGotoWP_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\Test_Scripts\TestZustaende\ZS_TestHangAround.d
func void ZS_TestHangAround()
func void ZS_TestHangAround_Loop()
func void ZS_TestHangAround_End()
func void ZS_TestPerception()
func void ZS_TestPerception_Loop()
func void ZS_TestPerception_End()
func void TestPrint()
func void ZS_TestPerception1()
func void ZS_TestPerception1_Loop()
func void ZS_TestPerception1_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\BabeTestmodell.d
prototype TestBabe(C_Npc)
instance ABabeTestmodell(TestBabe)
instance test_babe(TestBabe)
func void a_ff()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\B_Babe_AssessPlayer.d
func void B_Babe_AssessPlayer()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\B_Babe_LookAround.d
func void B_Babe_LookAround()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\B_Babe_RefuseTalk.d
func void B_Babe_RefuseTalk()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\B_SetBabeDefaultPerceptions.d
func void B_SetBabeDefaultPerceptions()
func void b_babe_assessfighter()
func void b_babe_assessdamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_AssessPlayer.d
func void ZS_Babe_AssessPlayer()
func int ZS_Babe_AssessPlayer_Loop()
func void ZS_Babe_AssessPlayer_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_Dance.d
func void ZS_Babe_Dance()
func void ZS_Babe_Dance_Loop()
func void ZS_Babe_Dance_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_Fan.d
func void ZS_Babe_Fan()
func void ZS_Babe_Fan_Loop()
func void ZS_Babe_Fan_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_Flee.d
func void ZS_Babe_Flee()
func void ZS_Babe_Flee_Loop()
func void ZS_Babe_Flee_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_SitAround.d
func void ZS_Babe_SitAround()
func int ZS_Babe_SitAround_Loop()
func void ZS_Babe_SitAround_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_Sleep.d
func void ZS_Babe_Sleep()
func void ZS_Babe_Sleep_Loop()
func void ZS_Babe_Sleep_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Babe_Sweep.d
func void ZS_Babe_Sweep()
func void ZS_Babe_Sweep_Loop()
func void ZS_Babe_Sweep_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Bathing_Babe.d
func void ZS_Bathing_Babe()
func void ZS_Bathing_Babe_Loop()
func void ZS_Bathing_Babe_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Babe\ZS_Charlotte_Dance.d
func void ZS_Charlotte_Dance()
func void ZS_Charlotte_Dance_Loop()
func void ZS_Charlotte_Dance_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessDefeat.d
func void ZS_AssessDefeat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessEnemy.d
func void ZS_AssessEnemy()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessFighter.d
func void ZS_AssessFighter()
func int ZS_AssessFighter_Loop()
func void ZS_AssessFighter_End()
func void ZS_AssessFighterWait()
func int ZS_AssessFighterWait_Loop()
func void ZS_AssessFighterWait_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessMonster.d
func void ZS_AssessMonster()
func int ZS_AssessMonster_Loop()
func void ZS_AssessMonster_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessMurder.d
func void ZS_AssessMurder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessQuietSound.d
func int ZS_AssessQuietSound()
func int ZS_AssessQuietSound_Loop()
func void ZS_AssessQuietSound_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessSurprise.d
func void ZS_AssessSurprise()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_AssessWarn.d
func void ZS_AssessWarn()
func int ZS_AssessWarn_Loop()
func void ZS_AssessWarn_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Attack.d
func void ZS_Attack()
func int ZS_Attack_Loop()
func void ZS_Attack_End()
func void B_CombatRemoveWeapon()
func void B_CombatAssessEnterRoom()
func void B_CombatCatchThief()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_CallGuards.d
func void ZS_CallGuards()
func void ZS_CallGuardsOnEnterRoom()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_CatchThief.d
func void ZS_CatchThief()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ClearRoom.d
func void ZS_ClearRoom()
func int ZS_ClearRoom_Loop()
func void ZS_ClearRoom_End()
func void ZS_ClearRoomWait()
func void ZS_ClearRoomWait_Loop()
func void ZS_ClearRoomWait_End()
func void B_ClearRoomEnterRoom()
func void B_ClearRoomUseMob()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Dead.d
func void ZS_Dead()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Flee.d
func void ZS_Flee()
func int ZS_Flee_Loop()
func void ZS_Flee_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_GetBackBelongings.d
func void ZS_GetBackBelongings()
func void ZS_GetBackBelongingsWait()
func void ZS_GetBackBelongingsWait_Loop()
func void ZS_GetBackBelongingsWait_End()
func void B_GetBackBelongingsThreat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_GetBackItem.d
func void ZS_GetBackItem()
func int ZS_GetBackItem_Loop()
func void ZS_GetBackItem_End()
func void B_GetBackItem_Seen()
func void B_GetBackItem_Given()
func void ZS_GetBackItem_DrawWeapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_GotoFight.d
func void B_Stop()
func void ZS_GotoFight()
func int ZS_GotoFight_Loop()
func void ZS_GotoFight_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_HealSelf.d
func void ZS_HealSelf()
func int ZS_HealSelf_Loop()
func void ZS_HealSelf_End()
func void ZS_HealSelfMana()
func int ZS_HealSelfMana_Loop()
func void ZS_HealSelfMana_End()
func void ZS_HealAlly()
func int ZS_HealAlly_Loop()
func void ZS_HealAlly_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_IntruderAlert.d
func void ZS_IntruderAlert()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_MoveNpc.d
func void ZS_MoveNpcWait()
func void ZS_MoveNpcWait_Loop()
func void ZS_MoveNpcWait_End()
func void ZS_MoveNpcWait1()
func void ZS_MoveNpcWait1_Loop()
func void ZS_MoveNpcWait1_End()
func void ZS_MoveNpcFriendlyWait()
func void ZS_MoveNpcFriendlyWait_Loop()
func void ZS_MoveNpcFriendlyWait_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ObserveIntruder.d
func void ZS_ObserveIntruder()
func void ZS_ObserveIntruderWaitNeutral()
func int ZS_ObserveIntruderWaitNeutral_Loop()
func void ZS_ObserveIntruderWaitNeutral_End()
func void ZS_ObserveIntruderWaitNeutral2()
func int ZS_ObserveIntruderWaitNeutral2_Loop()
func void ZS_ObserveIntruderWaitNeutral2_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ObservePerson.d
func void ZS_ObservePerson()
func int ZS_ObservePerson_Loop()
func void ZS_ObservePerson_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ObserveSuspect.d
func void ZS_ObserveSuspect()
func int ZS_ObserveSuspect_Loop()
func void ZS_ObserveSuspect_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ProclaimAndPunish.d
func void ZS_ProclaimAndPunish()
func int ZS_ProclaimAndPunish_Loop()
func void ZS_ProclaimAndPunish_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ReactToCall.d
func void ZS_ReactToCall()
func void ZS_ReactToCall_Wait()
func int ZS_ReactToCall_Wait_Loop()
func int ZS_ReactToCall_Wait_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_ReactToDamage.d
func void ZS_ReactToDamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Talk.d
func void B_RefuseTalk()
func void ZS_Talk()
func int ZS_Talk_Loop()
func void ZS_Talk_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_TurnAway.d
func void ZS_TurnAway()
func int ZS_TurnAway_Loop()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Unconscious.d
func void ZS_Unconscious()
func int ZS_Unconscious_Loop()
func void ZS_Unconscious_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_Upset.d
func void ZS_Upset()
func int ZS_Upset_Loop()
func void ZS_Upset_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_WaitForPassage.d
func void ZS_WaitForPassage()
func int ZS_WaitForPassage_Loop()
func void ZS_WaitForPassage_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_WakeUp.d
func void ZS_WakeUp()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Human\ZS_WatchFight.d
func void ZS_WatchFight()
func int ZS_WatchFight_Loop()
func void ZS_WatchFight_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Monster\ZS_MM_AttackMage.d
func void ZS_MM_AttackMage()
func int ZS_MM_AttackMage_Loop()
func void ZS_MM_AttackMage_End()
func void B_MMM_CombatReactToDamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Monster\ZS_MM_Master.d
func int C_PreyToPredator(var C_Npc prey,var C_Npc predator)
func void B_MM_DeSynchronize()
func void B_MM_ObserveIntruder()
func void B_MM_AssessBody()
func void ZS_MM_EatBody()
func int ZS_MM_EatBody_loop()
func void ZS_MM_EatBody_end()
func void B_MM_AssessEnemy()
func void ZS_MM_AssessEnemy()
func int ZS_MM_AssessEnemy_loop()
func void ZS_MM_AssessEnemy_end()
func void B_MM_ReactToDamage()
func void B_MM_ReactToOthersDamage()
func void B_MM_ReactToCombatDamage()
func void ZS_MM_Attack()
func int ZS_MM_Attack_Loop()
func void ZS_MM_Attack_End()
func void ZS_MM_Flee()
func int ZS_MM_Flee_Loop()
func void ZS_MM_Flee_End()
func void B_MM_AssessWarn()
func void ZS_MM_AllScheduler()
func void ZS_MM_Rtn_Default()
func void ZS_MM_Rtn_Default_loop()
func void ZS_MM_Rtn_Default_end()
func void B_MM_AssessEnemy_Sleep()
func void B_MM_AssessQuietSound_Sleep()
func void ZS_MM_Rtn_Sleep()
func void ZS_MM_Rtn_Sleep_loop()
func void ZS_MM_Rtn_Sleep_end()
func void ZS_MM_Rtn_Roam()
func void ZS_MM_Rtn_Roam_loop()
func void ZS_MM_Rtn_Roam_end()
func void ZS_MM_Rtn_Rest()
func void ZS_MM_Rtn_Rest_Loop()
func void ZS_MM_Rtn_Rest_End()
func void ZS_MM_Rtn_EatGround()
func void ZS_MM_Rtn_EatGround_Loop()
func void ZS_MM_Rtn_EatGround_End()
func void ZS_MM_Rtn_Wusel()
func void ZS_MM_Rtn_Wusel_loop()
func void ZS_MM_Rtn_Wusel_end()
func void ZS_MM_Summoned()
func int ZS_MM_Summoned_loop()
func void ZS_MM_Summoned_End()
func void zs_mm_minecrawler_omgate()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\AI\ZS_Monster\ZS_MM_SummonedByPC.d
func void ZS_MM_SummonedByPC()
func int ZS_MM_SummonedByPC_Loop()
func void ZS_MM_SummonedByPC_End()
func void B_SummonedByPC_AssessSC()
func void B_SummonedByPC_AssessEnemy()
func void B_MM_SummonedByPCAssessOthersDamage()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\ANIMS\Focus.d
instance Focus_Normal(C_Focus)
instance Focus_Melee(C_Focus)
instance Focus_Ranged(C_Focus)
instance Focus_Throw_Item(C_Focus)
instance Focus_Throw_Mob(C_Focus)
instance Focus_Magic(C_Focus)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\ANIMS\Species.d
instance Gil_Values(C_GILVALUES)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Amulette.d
instance ItMi_Amulet_Psi_01(C_Item)
instance Schutzamulett_Feuer(C_Item)
func void Equip_Schutzamulett_Feuer()
func void UnEquip_Schutzamulett_Feuer()
instance Schutzamulett_Waffen(C_Item)
func void Equip_Schutzamulett_Waffen()
func void UnEquip_Schutzamulett_Waffen()
instance Schutzamulett_Geschosse(C_Item)
func void Equip_Schutzamulett_Geschosse()
func void UnEquip_Schutzamulett_Geschosse()
instance Schutzamulett_Magie(C_Item)
func void Equip_Schutzamulett_Magie()
func void UnEquip_Schutzamulett_Magie()
instance Schutzamulett_Magie_Feuer(C_Item)
func void Equip_Schutzamulett_Magie_Feuer()
func void UnEquip_Schutzamulett_Magie_Feuer()
instance Schutzamulett_Waffen_Geschosse(C_Item)
func void Equip_Schutzamulett_Waffen_Geschosse()
func void UnEquip_Schutzamulett_Waffen_Geschosse()
instance Schutzamulett_Total(C_Item)
func void Equip_Schutzamulett_Total()
func void UnEquip_Schutzamulett_Total()
instance Gewandtheitsamulett(C_Item)
func void Equip_Gewandtheitsamulett()
func void UnEquip_Gewandtheitsamulett()
instance Gewandtheitsamulett2(C_Item)
func void Equip_Gewandtheitsamulett2()
func void UnEquip_Gewandtheitsamulett2()
instance Staerkeamulett(C_Item)
func void Equip_Staerkeamulett()
func void UnEquip_Staerkeamulett()
instance Staerkeamulett2(C_Item)
func void Equip_Staerkeamulett2()
func void UnEquip_Staerkeamulett2()
instance Lebensamulett(C_Item)
func void Equip_Lebensamulett()
func void UnEquip_Lebensamulett()
instance Amulett_der_Magie(C_Item)
func void Equip_Amulett_der_Magie()
func void UnEquip_Amulett_der_Magie()
instance Amulett_der_Macht(C_Item)
func void Equip_Amulett_der_Macht()
func void UnEquip_Amulett_der_Macht()
instance Amulett_der_Erleuchtung(C_Item)
func void Equip_Amulett_der_Erleuchtung()
func void UnEquip_Amulett_der_Erleuchtung()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Animaltrophy.d
const int Value_Zдhne = 10;
const int Value_Krallen = 8;
const int Value_Wolfsfell = 10;
const int Value_Orkhundfell = 20;
const int Value_Panzerplatte = 20;
const int Value_Crawlerzangen = 10;
const int Value_Shadowbeastfell = 400;
const int Value_Lurkerklaue = 10;
const int Value_Lurkerhaut = 20;
const int Value_Sumpfhaihaut = 200;
const int Value_Trollfell = 300;
const int Value_Flьgel = 8;
const int Value_Stachel = 10;
const int Value_Feuerzunge = 100;
const int Value_Sumpfhaizдhne = 100;
const int Value_Shadowbeasthorn = 100;
const int Value_Trollhauer = 100;
const int Value_Steinherz = 300;
const int Value_Feuerherz = 300;
const int Value_Eisherz = 300;
const int Value_Eistueck = 100;
instance ItAt_Teeth_01(C_Item)
instance ItAt_Wolf_01(C_Item)
instance ItAt_Wolf_02(C_Item)
instance ItAt_Waran_01(C_Item)
instance ItAt_Claws_01(C_Item)
instance ItAt_Crawler_02(C_Item)
instance ItAt_Crawler_01(C_Item)
instance ItAt_Shadow_01(C_Item)
instance ItAt_Shadow_02(C_Item)
instance ItAt_Lurker_01(C_Item)
instance ItAt_Lurker_02(C_Item)
instance ItAt_Troll_02(C_Item)
instance ItAt_Troll_01(C_Item)
instance ItAt_Swampshark_01(C_Item)
instance ItAt_Swampshark_02(C_Item)
instance ItAt_Bloodfly_01(C_Item)
instance ItAt_Bloodfly_02(C_Item)
instance ItAt_StoneGolem_01(C_Item)
instance ItAt_FireGolem_01(C_Item)
instance ItAt_IceGolem_01(C_Item)
instance ItAt_IceGolem_02(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Food.d
const int Value_Bugmeat = 2;
const int HP_Bugmeat = 4;
const int Value_Apfel = 4;
const int HP_Apfel = 8;
const int Value_Weintrauben = 6;
const int HP_Weintrauben = 8;
const int Value_Wasser = 2;
const int HP_Wasser = 10;
const int Value_Bier = 10;
const int HP_Bier = 3;
const int Value_Wein = 12;
const int HP_Wein = 5;
const int Value_Reisschnaps = 14;
const int HP_Reisschnaps = 7;
const int Value_Reis = 4;
const int HP_Reis = 10;
const int Value_Wurzelsuppe = 2;
const int HP_Wurzelsuppe = 7;
const int Value_Ragout = 4;
const int HP_Ragout = 9;
const int Value_CrawlerSuppe = 10;
const int HP_CrawlerSuppe = 15;
const int Value_FleischRoh = 4;
const int HP_FleischRoh = 6;
const int Value_Brot = 8;
const int HP_Brot = 12;
const int Value_Kдse = 10;
const int HP_Kдse = 15;
const int Value_Fleisch = 8;
const int HP_Fleisch = 15;
const int Value_Schinken = 12;
const int HP_Schinken = 18;
const int Value_Waldbeeren = 4;
const int HP_Waldbeeren = 10;
const int Value_Flammendorn = 6;
const int HP_Flammendorn = 12;
const int Value_Seraphis = 6;
const int HP_Seraphis = 5;
const int Value_Velayis = 8;
const int HP_Velayis = 16;
const int Value_Bergmoos = 50;
const int HP_Bergmoos = 18;
const int Value_Grabmoos = 70;
const int HP_Grabmoos = 20;
const int Value_Nachtschatten = 10;
const int HP_Nachtschatten = 22;
const int Value_Mondschatten = 10;
const int HP_Mondschatten = 24;
const int Value_Orkblatt = 12;
const int HP_Orkblatt = 26;
const int Value_Eichenblatt = 14;
const int HP_Eichenblatt = 28;
const int Value_Hцllenpilz = 2;
const int HP_Hцllenpilz = 6;
const int Value_Sklavenbrot = 8;
const int HP_Sklavenbrot = 15;
const int Value_Heilkrдuter1 = 14;
const int HP_Heilkrдuter1 = 30;
const int Value_Heilkrдuter2 = 18;
const int HP_Heilkrдuter2 = 39;
const int Value_Heilkrдuter3 = 24;
const int HP_Heilkrдuter3 = 49;
const int Value_Trollkirsche = 10;
const int HP_Trollkirsche = -20;
const int Value_Blutbuche = 2;
const int Mana_Blutbuche = 5;
const int Value_Turmeiche = 8;
const int Mana_Turmeiche = 10;
const int Value_Rabenkraut = 12;
const int Mana_Rabenkraut = 15;
const int Value_Dunkelkraut = 16;
const int Mana_Dunkelkraut = 20;
const int Value_Steimwurzel = 20;
const int Mana_Steinwurzel = 25;
const int Value_Drachenwurzel = 20;
const int Mana_Drachenwurzel = 30;
instance ItAt_Meatbug_01(C_Item)
func void UseBugmeat()
instance ItFoApple(C_Item)
func void UseApple()
instance ItFo_wineberrys_01(C_Item)
func void Usewineberrys()
instance ItFoLoaf(C_Item)
func void UseLoaf()
instance ItFoMutton(C_Item)
func void UseMutton()
instance ItFoMuttonRaw(C_Item)
func void UseMuttonRaw()
instance ItFo_mutton_01(C_Item)
func void UseMutton1()
instance ItFoCheese(C_Item)
func void UseCheese()
instance ItFoRice(C_Item)
func void UseRice()
instance ItFoSoup(C_Item)
func void UseSoup()
instance ItFoMeatbugragout(C_Item)
func void UseMeatbugragout()
instance ItFoCrawlersoup(C_Item)
func void UseCrawlersoup()
instance ItFo_Potion_Water_01(C_Item)
func void UseWaterPotion()
instance ItFoBeer(C_Item)
instance ItFoWine(C_Item)
instance ItFoBooze(C_Item)
func void UseBooze()
instance ItFo_Plants_Berrys_01(C_Item)
func void UseBerrys()
instance ItFo_Plants_Flameberry_01(C_Item)
func void Useflame()
instance ItFo_Plants_Seraphis_01(C_Item)
func void Useseraphis()
instance ItFo_Plants_Velayis_01(C_Item)
func void UseVelayis()
instance ItFo_Plants_mountainmoos_01(C_Item)
func void Usemoos()
instance ItFo_Plants_mountainmoos_02(C_Item)
func void Usemoos2()
instance ItFo_Plants_Nightshadow_01(C_Item)
func void Usenight()
instance ItFo_Plants_Nightshadow_02(C_Item)
func void Usemoon()
instance ItFo_Plants_OrcHerb_01(C_Item)
func void Useorc()
instance ItFo_Plants_OrcHerb_02(C_Item)
func void Useorc2()
instance ItFo_Plants_mushroom_01(C_Item)
func void Usemush()
instance ItFo_Plants_mushroom_02(C_Item)
func void Usemush2()
instance ItFo_Plants_Herb_01(C_Item)
func void UsePlants1()
instance ItFo_Plants_Herb_02(C_Item)
func void UsePlants2()
instance ItFo_Plants_Herb_03(C_Item)
func void UsePlants3()
instance ItFo_Plants_Bloodwood_01(C_Item)
func void Useblood()
instance ItFo_Plants_Towerwood_01(C_Item)
func void usehoneycomb()
instance ItFo_Plants_RavenHerb_01(C_Item)
func void Useraven()
instance ItFo_Plants_RavenHerb_02(C_Item)
func void Useraven2()
instance ItFo_Plants_Stoneroot_01(C_Item)
func void Useroot()
instance ItFo_Plants_Stoneroot_02(C_Item)
func void Useroot2()
instance ItFo_Plants_Trollberrys_01(C_Item)
func void UseTrollberrys()
instance ITFO_PLANTS_DEADLEAF(C_Item)
func void usedeadleaf()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Melee_weapons.d
const int Value_1H_Sword_01 = 100;
instance ItMw_1H_FistsOfMaster_01(C_Item)
func void ItMw_1H_FistsOfMaster_01_Equip()
func void ItMw_1H_FistsOfMaster_01_UnEquip()
instance ItMw_1H_Club_01(C_Item)
instance ItMw_1H_Poker_01(C_Item)
instance ItMw_1H_Sickle_01(C_Item)
instance ItMwPickaxe(C_Item)
instance ItMw_1H_Sledgehammer_01(C_Item)
instance ItMw_1H_Mace_Light_01(C_Item)
instance ItMw_1H_Hatchet_01(C_Item)
instance ITMW_SKELETON_SWORD(C_Item)
instance ItMw_1H_Sword_Old_01(C_Item)
instance ItMw_1H_Nailmace_01(C_Item)
instance ItMw_1H_Sword_Short_01(C_Item)
instance ItMw_1H_Sword_Short_02(C_Item)
instance ItMw_1H_Sword_Short_03(C_Item)
instance ItMw_1H_Sword_Short_04(C_Item)
instance ItMw_1H_Sword_Short_05(C_Item)
instance ItMw_1H_Axe_Old_01(C_Item)
instance ITMW_SKELETON_AXE(C_Item)
instance ItMw_1H_Scythe_01(C_Item)
instance ITMW_SKELETON_SCYTHE(C_Item)
instance ItMw_2H_Staff_01(C_Item)
instance ItMw_2H_Staff_02(C_Item)
instance ItMw_2H_Staff_03(C_Item)
instance ItMw_1H_LightGuardsSword_03(C_Item)
instance ItMw_1H_Mace_01(C_Item)
instance ItMw_1H_Mace_02(C_Item)
instance ItMw_1H_Mace_03(C_Item)
instance ItMw_1H_Mace_04(C_Item)
instance ItMw_1H_Axe_01(C_Item)
instance ItMw_1H_Sword_01(C_Item)
instance ItMw_1H_Sword_02(C_Item)
instance ItMw_1H_Sword_03(C_Item)
instance ItMw_1H_Sword_04(C_Item)
instance ItMw_1H_Sword_05(C_Item)
instance ItMw_1H_Mace_War_01(C_Item)
instance ItMw_1H_Mace_War_02(C_Item)
instance ItMw_1H_Mace_War_03(C_Item)
instance ItMw_1H_Mace_War_04(C_Item)
instance ItMw_1H_Sword_Long_01(C_Item)
instance ItMw_1H_Sword_Long_02(C_Item)
instance ItMw_1H_Sword_Long_03(C_Item)
instance ItMw_1H_Sword_Long_04(C_Item)
instance ItMw_1H_Sword_Long_05(C_Item)
instance ItMw_1H_Warhammer_01(C_Item)
instance ItMw_1H_Warhammer_02(C_Item)
instance ItMw_1H_Warhammer_03(C_Item)
instance ItMw_1H_Axe_02(C_Item)
instance ItMw_1H_Axe_03(C_Item)
instance ItMw_1H_Sword_Broad_01(C_Item)
instance ItMw_1H_Sword_Broad_02(C_Item)
instance ItMw_1H_Sword_Broad_03(C_Item)
instance ItMw_1H_Sword_Broad_04(C_Item)
instance ItMw_2H_Sword_Old_01(C_Item)
instance ItMw_1H_Sword_Bastard_01(C_Item)
instance ItMw_1H_Sword_Bastard_02(C_Item)
instance ItMw_1H_Sword_Bastard_03(C_Item)
instance ItMw_1H_Sword_Bastard_04(C_Item)
instance ItMw_2H_Axe_Old_01(C_Item)
instance ItMw_2H_Axe_Old_02(C_Item)
instance ItMw_2H_Axe_Old_03(C_Item)
instance ItMw_2H_Sword_Light_01(C_Item)
instance ITMW_2H_SWORD_LIGHT_01_PRICED(C_Item)
instance ItMw_2H_Sword_Light_02(C_Item)
instance ITMW_2H_SWORD_LIGHT_02_PRICED(C_Item)
instance ItMw_2H_Sword_Light_03(C_Item)
instance ItMw_2H_Sword_Light_04(C_Item)
instance ItMw_2H_Sword_Light_05(C_Item)
instance ItMw_2H_Axe_light_01(C_Item)
instance ItMw_2H_Axe_light_02(C_Item)
instance ItMw_2H_Axe_light_03(C_Item)
instance ItMw_2H_Sword_01(C_Item)
instance ItMw_2H_Sword_02(C_Item)
instance ItMw_2H_Sword_03(C_Item)
instance ItMw_2H_Sword_Heavy_01(C_Item)
instance ItMw_2H_Sword_Heavy_02(C_Item)
instance ItMw_2H_Sword_Heavy_03(C_Item)
instance ItMw_2H_Sword_Heavy_04(C_Item)
instance ItMw_2H_Axe_Heavy_01(C_Item)
instance ItMw_2H_Axe_Heavy_02(C_Item)
instance ItMw_2H_Axe_Heavy_03(C_Item)
instance ItMw_2H_Axe_Heavy_04(C_Item)
instance ItMw2hOrcSword01(C_Item)
instance ItMw2hOrcAxe01(C_Item)
instance ItMw2hOrcAxe02(C_Item)
instance ItMw2hOrcAxe03(C_Item)
instance ItMw2hOrcAxe04(C_Item)
instance ItMw2hOrcMace01(C_Item)
instance ItRwOrcstaff(C_Item)
instance ItRwUdOrcstaff(C_Item)
instance GOLDENSWORD(C_Item)
instance GS1H(C_Item)
instance GS2H(C_Item)
instance ITMW_TRAINSWORD(C_Item)
func void equip_2hbonus()
func void unequip_2hbonus()
func void equip_1hbonus()
func void unequip_1hbonus()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Misk.d
const int Value_MobsiItem = 2;
const int Value_SwordBlade = 50;
const int Value_SwordBladeHot = 50;
const int Value_SwordRawHot = 40;
const int Value_SwordRaw = 40;
const int Value_Dietrich = 10;
const int Value_Schlьssel = 2;
const int Value_Joint1 = 8;
const int Value_Joint2 = 10;
const int Value_Joint3 = 16;
const int Value_Laute = 10;
const int Value_Erzbrocken = 1;
const int Value_Fackel = 2;
const int Value_Sumpfkraut = 4;
const int Value_Pfeife = 4;
const int Value_Rasiermesser = 2;
const int Value_Mьnze = 0;
const int Value_Schьssel = 2;
const int Value_Kerzenstдnder = 2;
const int Value_Becher = 2;
const int Value_Pokal = 10;
const int Value_Besteck = 6;
const int Value_Pfanne = 2;
const int Value_Krug = 2;
const int Value_Amphore = 2;
const int Value_Statue = 4;
const int Value_Schwefel = 6;
const int Value_Quecksilber = 8;
const int Value_Salz = 10;
const int Value_Цl = 8;
const int Value_Moleratfett = 5;
const int Value_Alcohol = 18;
instance ItKeLockpick(C_Item)
instance ItKeKey1(C_Item)
instance ItKeKey2(C_Item)
instance ItKeKey3(C_Item)
instance ItKeKey4(C_Item)
instance ItKeCavalorn01(C_Item)
instance ItMiStomper(C_Item)
instance ItMiHammer(C_Item)
instance ItMiScoop(C_Item)
instance ItMiFlask(C_Item)
instance ItMiSwordraw(C_Item)
instance ItMiSwordrawhot(C_Item)
instance ItMiSwordbladehot(C_Item)
instance ItMiSwordblade(C_Item)
instance ItLsTorchFirespit(C_Item)
instance ItMiLute(C_Item)
func void UseLute()
instance ItMiWedel(C_Item)
instance ItMiBrush(C_Item)
instance ItMiJoint_1(C_Item)
func void UseItMiJoint_1()
instance ItMiJoint_2(C_Item)
func void UseItMiJoint_2()
instance ItMiJoint_3(C_Item)
func void UseItMiJoint_3()
instance ItMiNugget(C_Item)
instance ItLsTorch(C_Item)
instance ItLsTorchburning(C_Item)
instance ItLsTorchburned(C_Item)
instance ItMi_Plants_Swampherb_01(C_Item)
instance ItMi_Stuff_Pipe_01(C_Item)
instance ItMi_Stuff_Barbknife_01(C_Item)
instance ItMi_Stuff_OldCoin_01(C_Item)
instance ItMi_Stuff_Plate_01(C_Item)
instance ItMi_Stuff_Candel_01(C_Item)
instance ItMi_Stuff_Cup_01(C_Item)
instance ItMi_Stuff_Cup_02(C_Item)
instance ItMi_Stuff_Silverware_01(C_Item)
instance ItMi_Stuff_Pan_01(C_Item)
instance ItMi_Stuff_Mug_01(C_Item)
instance ItMi_Stuff_Amphore_01(C_Item)
instance ItMi_Stuff_Idol_Ogront_01(C_Item)
instance ItMi_Alchemy_Sulphur_01(C_Item)
instance ItMi_Alchemy_Quicksilver_01(C_Item)
instance ItMi_Alchemy_Salt_01(C_Item)
instance ItMi_Alchemy_Syrianoil_01(C_Item)
instance ItMi_Alchemy_Moleratlubric_01(C_Item)
instance ItMi_Alchemy_Alcohol_01(C_Item)
instance ITKE_QUENTIN(C_Item)
instance ITKE_GILBERT(C_Item)
instance ORIK_KEY(C_Item)
instance ITKE_TOWER_01(C_Item)
instance ITKE_YBERION(C_Item)
instance ALEXSTUFF(C_Item)
instance WEEDPACK(C_Item)
instance FAKEITEM(C_Item)
func void usefakeitem()
instance FAKEITEM2(C_Item)
func void usefakeitem2()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\MissionItems_1.d
instance MordragsRing(C_Item)
func void Equip_MordragsRing()
func void UnEquip_MordragsRing()
instance SpecialJoint(C_Item)
func void UseSpecialJoint()
instance ItAt_DamLurker_01(C_Item)
instance ItWrOMMap(C_Item)
func void UseOMmap()
instance AltesSchwertVM(C_Item)
instance AltesSchwert(C_Item)
instance JackalsSword(C_Item)
instance KdW_Amulett(C_Item)
func void equip_kdw_amulett()
func void unequip_kdw_amulett()
instance Cronos_Brief(C_Item)
func void UseCronosBrief()
instance Neks_Amulett(C_Item)
func void Equip_Schutzamulett_Nek()
func void UnEquip_Schutzamulett_Nek()
instance RecruitJoint(C_Item)
instance HealthWater(C_Item)
func void usehealthwater()
instance TheList(C_Item)
func void UseTheList()
instance TheListNC(C_Item)
func void UseTheListNC()
instance Lares_Ring(C_Item)
func void Equip_Lares_Ring()
func void UnEquip_Lares_Ring()
instance Heiltrank(C_Item)
func void UseHeiltrank()
instance SpecialWater(C_Item)
instance KalomsRecipe(C_Item)
func void Use_KalomsRecipe()
instance ItWrWorldmap(C_Item)
func void UseWorldmap()
instance ItWrOCmap(C_Item)
func void UseOCmap()
instance ItWrNCmap(C_Item)
func void UseNCmap()
instance ItWrPSImap(C_Item)
func void UsePSImap()
instance ItWrPinup(C_Item)
func void UsePinUp()
instance ItWrDieVerurteilten(C_Item)
instance ItWr_Fire_Letter_01(C_Item)
func void UseFireletter()
instance ItWr_Fire_Letter_02(C_Item)
func void UseFireletter2()
instance ItKe_Gomez_01(C_Item)
instance ItKey_RB_01(C_Item)
instance ITKEY_OB_SMITH_01(C_Item)
instance ItKe_Storage_01(C_Item)
instance ItKe_OM_01(C_Item)
instance ItKe_OM_02(C_Item)
instance ItKe_OM_03(C_Item)
instance ItKe_OM_04(C_Item)
instance ITKE_WEAPONRY(C_Item)
instance ItFo_OM_Beer_01(C_Item)
func void UseStarkBeer()
var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;
instance theriddle1(C_Item)
func void Usetheriddle1()
instance theriddle2(C_Item)
func void Usetheriddle2()
instance theriddle3(C_Item)
func void Usetheriddle3()
instance theriddle4(C_Item)
func void Usetheriddle4()
instance theriddle5(C_Item)
func void Usetheriddle5()
instance theriddle6(C_Item)
func void Usetheriddle6()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\MissionItems_2.d
instance ItWrFocusmapPsi(C_Item)
func void UseFocusmapPsi()
instance Focus_1(C_Item)
instance ItMi_Stuff_Gearwheel_01(C_Item)
instance ItAt_Crawlerqueen(C_Item)
instance ItWrFokusbuch(C_Item)
func void UseItWrFokusbuch()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\MissionItems_3.d
instance OrkParchmentOne(C_Item)
instance OrkParchmentTwo(C_Item)
instance ITKE_PSI_KALOM_01(C_Item)
instance ItWrFocimap(C_Item)
func void UseFocimap()
instance ItWr_Troll_01(C_Item)
func void UseTroll()
instance Focus_2(C_Item)
instance ItKe_BERG_01(C_Item)
instance ItWr_Urkunde_01(C_Item)
func void UseUrkunde()
instance Fakescroll(C_Item)
instance Focus_3(C_Item)
instance ItKe_Focus4(C_Item)
instance Focus_4(C_Item)
instance ItMi_OrcTalisman(C_Item)
func void Equip_OrcTalisman()
func void UnEquip_OrcTalisman()
instance ItKe_Focus5(C_Item)
instance Focus_5(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\MissionItems_4.d
instance ItWr_GolemBook1(C_Item)
func void UseGolemBook1()
instance ItWr_GolemBook2(C_Item)
func void UseGolemBook2()
instance ItWrWorldmap_Orc(C_Item)
func void UseWorldmap_Orc()
instance ItKe_Freemine(C_Item)
instance OrcMedicine(C_Item)
func void UseOrcMedicine()
instance UluMulu(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\MissionItems_5.d
instance ItWrTemplemap(C_Item)
func void UseTemplemap()
instance ItMiAlarmhorn(C_Item)
instance ItMi_Stuff_Idol_Sleeper_01(C_Item)
instance Weltenspalter(C_Item)
instance Lichtbringer(C_Item)
instance Zeitenklinge(C_Item)
instance Daemonenstreich(C_Item)
instance Bannklinge(C_Item)
instance Mythrilklinge(C_Item)
instance Mythrilklinge01(C_Item)
instance Mythrilklinge02(C_Item)
instance Mythrilklinge03(C_Item)
instance DEMOURIZEL(C_Item)
instance Scroll4Milten(C_Item)
instance ItKe_SunkenTower(C_Item)
instance DungeonKey(C_Item)
instance ITARRUNE_6_6_URIZIELRUNE(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Potions.d
const int Value_HpEssenz = 25;
const int HP_Essenz = 50;
const int Value_HpExtrakt = 35;
const int HP_Extrakt = 70;
const int Value_HpElixier = 50;
const int HP_Elixier = 100;
const int Value_ManaEssenz = 25;
const int Mana_Essenz = 30;
const int Value_ManaExtrakt = 45;
const int Mana_Extrakt = 50;
const int Value_ManaElixier = 65;
const int Mana_Elixier = 70;
const int Value_Elixier1 = 95;
const int Mana_Elixier1 = 100;
const int Value_ElixierEgg = 1000;
const int ManaMax_ElixierEgg = 10;
const int Value_StrEssenz = 300;
const int Value_StrExtrakt = 500;
const int Value_StrElixier = 800;
const int Value_DexEssenz = 300;
const int Value_DexExtrakt = 500;
const int Value_DexElixier = 800;
const int STR_Essenz = 3;
const int STR_Extrakt = 5;
const int STR_Elixier = 8;
const int DEX_Essenz = 3;
const int DEX_Extrakt = 5;
const int DEX_Elixier = 8;
const int Value_StrDex_Macht = 800;
const int StrDex_Macht = 4;
const int Value_StrDex_Herrschaft = 1200;
const int StrDex_Herrschaft = 6;
const int Value_HpMaxEssenz = 500;
const int HPMax_Essenz = 5;
const int Value_HpMaxExtrakt = 1000;
const int HPMax_Extrakt = 10;
const int Value_HpMaxElixier = 1500;
const int HPMax_Elixier = 15;
const int Value_ManaMaxEssenz = 500;
const int ManaMax_Essenz = 5;
const int Value_ManaMaxExtrakt = 1000;
const int ManaMax_Extrakt = 10;
const int Value_ManaMaxElixier = 1500;
const int ManaMax_Elixier = 15;
const int Value_Haste1 = 100;
const int Time_Haste1 = 60000;
const int Value_Haste2 = 200;
const int Time_Haste2 = 120000;
const int Value_Haste3 = 500;
const int Time_Haste3 = 300000;
instance ItFo_Potion_Mana_01(C_Item)
func void UseManaPotion()
instance ItFo_Potion_Mana_02(C_Item)
func void UseMana2Potion()
instance ItFo_Potion_Mana_03(C_Item)
func void UseMana3Potion()
instance ItFo_Potion_Elixier(C_Item)
func void UseElixier()
instance ItFo_Potion_Health_01(C_Item)
func void UseHealthPotion()
instance ItFo_Potion_Health_02(C_Item)
func void UseHealth2Potion()
instance ItFo_Potion_Health_03(C_Item)
func void UseHealth3Potion()
instance ItFo_Potion_Elixier_Egg(C_Item)
func void UseEggElixier()
instance ItFo_Potion_Strength_01(C_Item)
func void UseStrengthPotion()
instance ItFo_Potion_Strength_02(C_Item)
func void UseStrength2Potion()
instance ItFo_Potion_Strength_03(C_Item)
func void UseStrength3Potion()
instance ItFo_Potion_Dex_01(C_Item)
func void UseDexPotion()
instance ItFo_Potion_Dex_02(C_Item)
func void UseDex2Potion()
instance ItFo_Potion_Dex_03(C_Item)
func void UseDex3Potion()
instance ItFo_Potion_Master_01(C_Item)
func void UseMasterPotion()
instance ItFo_Potion_Master_02(C_Item)
func void UseMaster2Potion()
instance ItFo_Potion_Health_Perma_01(C_Item)
func void UseLifePotion()
instance ItFo_Potion_Health_Perma_02(C_Item)
func void UseLife2Potion()
instance ItFo_Potion_Health_Perma_03(C_Item)
func void UseLife3Potion()
instance ItFo_Potion_Mana_Perma_01(C_Item)
func void UseNectarPotion()
instance ItFo_Potion_Mana_Perma_02(C_Item)
func void UseNectar2Potion()
instance ItFo_Potion_Mana_Perma_03(C_Item)
func void UseNectar3Potion()
instance ItFo_Potion_Haste_01(C_Item)
func void UseHastePotion()
instance ItFo_Potion_Haste_02(C_Item)
func void UseHastePotion2()
instance ItFo_Potion_Haste_03(C_Item)
func void UseHastePotion3()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Ranged_weapons.d
instance ItRw_Bow_Small_01(C_Item)
instance ItRw_Bow_Small_02(C_Item)
instance ItRw_Bow_Small_03(C_Item)
instance ItRw_Bow_Small_04(C_Item)
instance ItRw_Bow_Small_05(C_Item)
instance ItRw_Bow_Long_01(C_Item)
instance ItRw_Bow_Long_02(C_Item)
instance ItRw_Bow_Long_03(C_Item)
instance ItRw_Bow_Long_04(C_Item)
instance ItRw_Bow_Long_05(C_Item)
instance ItRw_Bow_Long_06(C_Item)
instance ItRw_Bow_Long_07(C_Item)
instance ItRw_Bow_Long_08(C_Item)
instance ItRw_Bow_Long_09(C_Item)
instance ItRw_Bow_War_01(C_Item)
instance ItRw_Bow_War_02(C_Item)
instance ItRw_Bow_War_03(C_Item)
instance ItRw_Bow_War_04(C_Item)
instance ItRw_Bow_War_05(C_Item)
instance ItRw_Crossbow_01(C_Item)
instance ItRw_Crossbow_02(C_Item)
instance ItRw_Crossbow_03(C_Item)
instance ItRw_Crossbow_04(C_Item)
instance ItAmArrow(C_Item)
instance ItAmBolt(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Ringe.d
instance Schutzring_Feuer1(C_Item)
func void Equip_Schutzring_Feuer1()
func void UnEquip_Schutzring_Feuer1()
instance Schutzring_Feuer2(C_Item)
func void Equip_Schutzring_Feuer2()
func void UnEquip_Schutzring_Feuer2()
instance Schutzring_Geschosse1(C_Item)
func void Equip_Schutzring_Geschosse1()
func void UnEquip_Schutzring_Geschosse1()
instance Schutzring_Geschosse2(C_Item)
func void Equip_Schutzring_Geschosse2()
func void UnEquip_Schutzring_Geschosse2()
instance Schutzring_Waffen1(C_Item)
func void Equip_Schutzring_Waffen1()
func void UnEquip_Schutzring_Waffen1()
instance Schutzring_Waffen2(C_Item)
func void Equip_Schutzring_Waffen2()
func void UnEquip_Schutzring_Waffen2()
instance Schutzring_Magie1(C_Item)
func void Equip_Schutzring_Magie1()
func void UnEquip_Schutzring_Magie1()
instance Schutzring_Magie2(C_Item)
func void Equip_Schutzring_Magie2()
func void UnEquip_Schutzring_Magie2()
instance Schutzring_Magie1_Fire1(C_Item)
func void Equip_Schutzring_Magie1_Fire1()
func void UnEquip_Schutzring_Magie1_Fire1()
instance Schutzring_Magie2_Fire2(C_Item)
func void Equip_Schutzring_Magie2_Fire2()
func void UnEquip_Schutzring_Magie2_Fire2()
instance Schutzring_Geschosse1_Waffen1(C_Item)
func void Equip_Schutzring_Geschosse1_Waffen1()
func void UnEquip_Schutzring_Geschosse1_Waffen1()
instance Schutzring_Geschosse2_Waffen2(C_Item)
func void Equip_Schutzring_Geschosse2_Waffen2()
func void UnEquip_Schutzring_Geschosse2_Waffen2()
instance Schutzring_Total1(C_Item)
func void Equip_Schutzring_Total1()
func void UnEquip_Schutzring_Total1()
instance Schutzring_Total2(C_Item)
func void Equip_Schutzring_Total2()
func void UnEquip_Schutzring_Total2()
instance Ring_des_Geschicks(C_Item)
func void Equip_Ring_des_Geschicks()
func void UnEquip_Ring_des_Geschicks()
instance Ring_des_Geschicks2(C_Item)
func void Equip_Ring_des_Geschicks2()
func void UnEquip_Ring_des_Geschicks2()
instance Ring_des_Lebens(C_Item)
func void Equip_Ring_des_Lebens()
func void UnEquip_Ring_des_Lebens()
instance Ring_des_Lebens2(C_Item)
func void Equip_Ring_des_Lebens2()
func void UnEquip_Ring_des_Lebens2()
instance Staerkering(C_Item)
func void Equip_Staerkering()
func void UnEquip_Staerkering()
instance Staerkering2(C_Item)
func void Equip_Staerkering2()
func void UnEquip_Staerkering2()
instance Ring_der_Magie(C_Item)
func void Equip_Ring_der_Magie()
func void UnEquip_Ring_der_Magie()
instance Ring_der_Erleuchtung(C_Item)
func void Equip_Ring_der_Erleuchtung()
func void UnEquip_Ring_der_Erleuchtung()
instance Machtring(C_Item)
func void Equip_Machtring()
func void UnEquip_Machtring()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Weapons.d
instance Thorus_Schwert(C_Item)
instance Innos_Zorn(C_Item)
instance Scars_Schwert(C_Item)
instance Artos_Schwert(C_Item)
instance Rabenrecht(C_Item)
instance Prankenhieb(C_Item)
instance Diegos_Bogen(C_Item)
instance Whistlers_Schwert(C_Item)
instance Stab_des_Lichts(C_Item)
instance Kaloms_Schwert(C_Item)
instance Streitschlichter(C_Item)
instance Roter_Wind(C_Item)
instance Namibs_Keule(C_Item)
instance Oruns_Keule(C_Item)
instance Fortunos_Keule(C_Item)
instance Lees_Axt(C_Item)
instance Oriks_Axt(C_Item)
instance Torlofs_Axt(C_Item)
instance Cords_Spalter(C_Item)
instance Gorns_Rache(C_Item)
instance Lares_Axt(C_Item)
instance Wolfs_Bogen(C_Item)
instance Silas_Axt(C_Item)
instance Heerscherstab(C_Item)
instance ITRW_SCORPIO_CROSSBOW(C_Item)
instance ITMW_GORHANIS(C_Item)
instance ITMW_KIRGO(C_Item)
instance ITMW_KHARIM(C_Item)
instance TR_M_CAVALORN(C_Item)
instance TR_R_CAVALORN(C_Item)
instance TR_M_DARRION(C_Item)
instance TR_M_FISK(C_Item)
instance TR_M_SCORPIO(C_Item)
instance TR_M_SHARKY(C_Item)
instance TR_M_SKIP(C_Item)
instance TR_R_WOLF(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Items\Written.d
instance ItWr_Book_Circle_01(C_Item)
func void UseItWr_Book_Circle_01()
instance ItWr_Book_Circle_02(C_Item)
func void UseItWr_Book_Circle_02()
instance ItWr_Book_Circle_03(C_Item)
func void UseItWr_Book_Circle_03()
instance ItWr_Book_Circle_04(C_Item)
func void UseItWr_Book_Circle_04()
instance ItWr_Book_Circle_05(C_Item)
func void UseItWr_Book_Circle_05()
instance ItWr_Book_Circle_06(C_Item)
func void UseItWr_Book_Circle_06()
instance Goettergabe(C_Item)
func void UseGoettergabe()
instance Geheimnisse_der_Zauberei(C_Item)
func void UseGeheimnisse_der_Zauberei()
instance Machtvolle_Kunst(C_Item)
func void UseMachtvolle_Kunst()
instance Elementare_Arcanei(C_Item)
func void UseElementare_Arcanei()
instance Wahre_Macht(C_Item)
func void UseWahre_Macht()
instance Das_magische_Erz(C_Item)
func void UseDas_magische_Erz()
instance Schlacht_um_Varant1(C_Item)
func void UseSchlacht_um_Varant1()
instance Schlacht_um_Varant2(C_Item)
func void UseSchlacht_um_Varant2()
instance Myrtanas_Lyrik(C_Item)
func void UseMyrtanas_Lyrik()
instance Lehren_der_Goetter1(C_Item)
func void UseLehren_der_Goetter1()
instance Lehren_der_Goetter2(C_Item)
func void UseLehren_der_Goetter2()
instance Lehren_der_Goetter3(C_Item)
func void UseLehren_der_Goetter3()
instance Jagd_und_Beute(C_Item)
func void UseJagd_und_Beute()
instance Kampfkunst(C_Item)
func void UseKampfkunst()
instance Die_Gruft(C_Item)
func void usegruft()
instance Astronomie(C_Item)
func void UseAstronomie()
instance Rezepturen(C_Item)
func void UseRezepturen()
instance Rezepturen2(C_Item)
func void UseRezepturen2()
instance TagebuchOT(C_Item)
func void UseTagebuchOT()
instance ItWr_Bloodfly_01(C_Item)
func void UseItWr_Bloodfly_01()
instance BALORONOTE(C_Item)
func void usebaloronote()
instance QUENTINNOTE(C_Item)
func void usequentinnote()
instance CALASHNOTE(C_Item)
func void usecalashnote()
instance CALASHNOTE2(C_Item)
func void usecalashnote2()
instance ALCH200(C_Item)
instance ALCHEMYBOOK(C_Item)
func void usealchemybook()
instance ALCHEMY_HP1(C_Item)
func void usehp1recipe()
instance ALCHEMY_HP2(C_Item)
func void usehp2recipe()
instance ALCHEMY_HP3(C_Item)
func void usehp3recipe()
instance ALCHEMY_MP1(C_Item)
func void usemp1recipe()
instance ALCHEMY_MP2(C_Item)
func void usemp2recipe()
instance ALCHEMY_MP3(C_Item)
func void usemp3recipe()
instance ALCHEMY_MPMAX(C_Item)
func void usempmaxrecipe()
instance ALCHEMY_HPMAX(C_Item)
func void usehpmaxrecipe()
instance ALCHEMY_DEX(C_Item)
func void usedexrecipe()
instance ALCHEMY_STR(C_Item)
func void usestrrecipe()
instance ALCHEMY_EGG(C_Item)
func void useeggrecipe()
instance ALCHEMY_FORTUNO(C_Item)
func void usefortunorecipe()
instance ALCHEMY_MASTER(C_Item)
func void usemasterrecipe()
instance ALCHEMY_HP1_PRICED(C_Item)
instance ALCHEMY_HP2_PRICED(C_Item)
instance ALCHEMY_HP3_PRICED(C_Item)
instance ALCHEMY_MP1_PRICED(C_Item)
instance ALCHEMY_MP2_PRICED(C_Item)
instance ALCHEMY_MP3_PRICED(C_Item)
instance ALCHEMY_MPMAX_PRICED(C_Item)
instance ALCHEMY_JOINT2(C_Item)
instance ALCHEMY_JOINT3(C_Item)
func void usehp1recipe_priced()
func void usehp2recipe_priced()
func void usehp3recipe_priced()
func void usemp1recipe_priced()
func void usemp2recipe_priced()
func void usemp3recipe_priced()
func void usempmaxrecipe_priced()
func void usejoint2recipe()
func void usejoint3recipe()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\B_AssessMagic.d
func void B_AssessMagic_Firebolt()
func void B_AssessMagic_FireBall()
func void B_AssessMagic_Firestorm()
func void B_AssessMagic_Firerain()
func void B_AssessMagic_ChainLightning()
func void B_AssessMagic_Thunderbolt()
func void B_AssessMagic_ThunderBall()
func void B_AssessMagic_IceCube()
func void B_AssessMagic_Fear()
func void B_Assessmagic_Massdeath()
func void B_AssessMagic_Destroyundead()
func void B_AssessMagic_Windfist()
func void B_AssessMagic_Stormfist()
func void B_AssessMagic_Charm()
func void B_AssessMagic_Pyrokinesis()
func void B_AssessMagic_Berzerk()
func void B_AssessMagic_Breathofdeath()
func void B_AssessMagic_New1()
func void B_AssessMagic_Shrink()
func void B_AssessMagic_Control()
func void B_AssessMagic()
const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\spells_params.d
const int SPELL_GOOD = 0;
const int SPELL_NEUTRAL = 1;
const int SPELL_BAD = 2;
const int SPL_DONTINVEST = 0;
const int SPL_RECEIVEINVEST = 1;
const int SPL_SENDCAST = 2;
const int SPL_SENDSTOP = 3;
const int SPL_NEXTLEVEL = 4;
const int SPL_SENDCAST_LIGHT = 1;
const int SPL_SENDCAST_FIREBOLT = 1;
const int SPL_SENDCAST_FIREBALL = 5;
const int SPL_SENDCAST_FIRESTORM = 10;
const int SPL_SENDCAST_FIRERAIN = 15;
const int SPL_SENDCAST_TELEPORT = 5;
const int SPL_SENDCAST_TRF_MEATBUG = 5;
const int SPL_SENDCAST_TRF_MOLERAT = 5;
const int SPL_SENDCAST_TRF_SCAVENGER = 5;
const int SPL_SENDCAST_TRF_BLOODFLY = 10;
const int SPL_SENDCAST_TRF_WOLF = 10;
const int SPL_SENDCAST_TRF_LURKER = 15;
const int SPL_SENDCAST_TRF_WARAN = 15;
const int SPL_SENDCAST_TRF_ORCDOG = 20;
const int SPL_SENDCAST_TRF_CRAWLER = 20;
const int SPL_SENDCAST_TRF_SNAPPER = 25;
const int SPL_SENDCAST_TRF_SHADOWBEAST = 25;
const int SPL_SENDCAST_THUNDERBOLT = 1;
const int SPL_SENDCAST_THUNDERBALL = 5;
const int SPL_SENDCAST_ICECUBE = 3;
const int SPL_SENDCAST_ICEWAVE = 8;
const int SPL_SENDCAST_SUMMONDEMON = 20;
const int SPL_SENDCAST_SUMMONSKELETON = 10;
const int SPL_SENDCAST_SUMMONGOLEM = 15;
const int SPL_SENDCAST_ARMYOFDARKNESS = 25;
const int SPL_SENDCAST_MASSDEATH = 10;
const int SPL_SENDCAST_DESTROYUNDEAD = 5;
const int SPL_SENDCAST_WINDFIST = 3;
const int SPL_SENDCAST_STORMFIST = 8;
const int SPL_SENDCAST_CHARM = 5;
const int SPL_SENDCAST_SLEEP = 3;
const int SPL_SENDCAST_FEAR = 5;
const int SPL_SENDCAST_BERZERK = 10;
const int SPL_SENDCAST_BREATHOFDEATH = 5;
const int SPL_SENDCAST_NEW1 = 5;
const int SPL_SENDCAST_SHRINK = 5;
const int SPL_DAMAGE_FIREBOLT = 30;
const int SPL_DAMAGE_FIREBALL = 30;
const int SPL_DAMAGE_FIRESTORM = 50;
const int SPL_DAMAGE_FIRERAIN = 100;
const int SPL_DAMAGE_THUNDERBOLT = 20;
const int SPL_DAMAGE_THUNDERBALL = 20;
const int SPL_DAMAGE_MASSDEATH = 200;
const int SPL_DAMAGE_BREATHOFDEATH = 100;
const int SPL_DAMAGE_DESTROYUNDEAD = 9999;
const int SPL_DAMAGE_WINDFIST = 10;
const int SPL_DAMAGE_STORMFIST = 15;
const int SPL_FREEZE_DAMAGE = 50;
const int SPL_ZAPPED_DAMAGE_PER_SEC = 25;
const int SPL_PYRO_DAMAGE_PER_SEC = 20;
const int SPL_HEALING_HP_PER_MP = 10;
const int SPL_TIME_SHORTZAPPED = 2;
const int SPL_TIME_FREEZE = 9;
const int SPL_TIME_SLEEP = 30;
const int SPL_TIME_BERZERK = 30;
const int SPL_RANGE_ICEATTACK = 300;
const int SPL_RANGE_WINDFIST = 1200;
const int SPL_RANGE_STORMFIST = 1200;
const int SPL_RANGE_SLEEP = 1000;
const int SPL_RANGE_CHAINLIGHTNING = 1000;
const string spellFXInstanceNames[59] =
const string spellFXAniLetters[59] =
instance Spell_Light(C_Spell_Proto)
instance Spell_Firebolt(C_Spell_Proto)
instance Spell_Fireball(C_Spell_Proto)
instance Spell_Firestorm(C_Spell_Proto)
instance Spell_FireRain(C_Spell_Proto)
instance Spell_Teleport(C_Spell_Proto)
instance Spell_Heal(C_Spell_Proto)
instance Spell_Transform(C_Spell_Proto)
instance Spell_ChainLightning(C_Spell_Proto)
instance Spell_Thunderbolt(C_Spell_Proto)
instance Spell_Thunderball(C_Spell_Proto)
instance Spell_IceCube(C_Spell_Proto)
instance Spell_IceWave(C_Spell_Proto)
instance Spell_Demon(C_Spell_Proto)
instance Spell_Skeleton(C_Spell_Proto)
instance Spell_Golem(C_Spell_Proto)
instance Spell_ArmyOfDarkness(C_Spell_Proto)
instance Spell_MassDeath(C_Spell_Proto)
instance Spell_DestroyUndead(C_Spell_Proto)
instance Spell_WindFist(C_Spell_Proto)
instance Spell_StormFist(C_Spell_Proto)
instance Spell_Telekinesis(C_Spell_Proto)
instance Spell_Charm(C_Spell_Proto)
instance Spell_Sleep(C_Spell_Proto)
instance Spell_Pyrokinesis(C_Spell_Proto)
instance Spell_Control(C_Spell_Proto)
instance Spell_Fear(C_Spell_Proto)
instance Spell_Berzerk(C_Spell_Proto)
instance Spell_BreathOfDeath(C_Spell_Proto)
instance Spell_New1(C_Spell_Proto)
instance Spell_Shrink(C_Spell_Proto)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_ArmyOfDarkness.d
func int Spell_Logic_ArmyOfDarkness(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Berzerk.d
func int Spell_Logic_Berzerk(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_BreathOfDeath.d
func int Spell_Logic_BreathOfDeath(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_ChainLightning.d
func int Spell_Logic_ChainLightning(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Charm.d
func int Spell_Logic_Charm(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Control.d
func int Spell_Logic_Control(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_DestroyUndead.d
func int Spell_Logic_DestroyUndead(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Fear.d
func int Spell_Logic_Fear(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Fireball.d
func int Spell_Logic_Fireball(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Firebolt.d
func int Spell_Logic_Firebolt(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Firerain.d
func int Spell_Logic_Firerain(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Firestorm.d
func int Spell_Logic_Firestorm(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Heal.d
func int Spell_Logic_Heal(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_IceCube.d
func int Spell_Logic_IceCube(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_IceWave.d
func int Spell_Logic_IceWave(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Light.d
func int Spell_Logic_Light(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Massdeath.d
func int Spell_Logic_Massdeath(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_New1.d
func int Spell_Logic_New1(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Pyrokinesis.d
func int Spell_Logic_Pyrokinesis(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Shrink.d
func int Spell_Logic_Shrink(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Sleep.d
func int Spell_Logic_Sleep(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Stormfist.d
func int Spell_Logic_Stormfist(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_SummonDemon.d
func int Spell_Logic_SummonDemon(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_SummonGolem.d
func int Spell_Logic_SummonGolem(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_SummonSkeleton.d
func int Spell_Logic_SummonSkeleton(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Telekinesis.d
func int Spell_Logic_Telekinesis(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Teleport1.d
func int Spell_Logic_Teleport1(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Teleport2.d
func int Spell_Logic_Teleport2(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Teleport3.d
func int Spell_Logic_Teleport3(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Teleport4.d
func int Spell_Logic_Teleport4(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Teleport5.d
func int Spell_Logic_Teleport5(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Thunderball.d
func int Spell_Logic_Thunderball(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Thunderbolt.d
func int Spell_Logic_Thunderbolt(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Bloodfly.d
func int Spell_Logic_Trf_Bloodfly(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Crawler.d
func int Spell_Logic_Trf_Crawler(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Lurker.d
func int Spell_Logic_Trf_Lurker(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Meatbug.d
func int Spell_Logic_Trf_Meatbug(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Molerat.d
func int Spell_Logic_Trf_Molerat(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Orcdog.d
func int Spell_Logic_Trf_Orcdog(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Scavenger.d
func int Spell_Logic_Trf_Scavenger(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Shadowbeast.d
func int Spell_Logic_Trf_Shadowbeast(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Snapper.d
func int Spell_Logic_Trf_Snapper(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Waran.d
func int Spell_Logic_Trf_Waran(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Trf_Wolf.d
func int Spell_Logic_Trf_Wolf(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_Logic_Windfist.d
func int Spell_Logic_Windfist(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_ProcessMana.d
func int Spell_ProcessMana(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\Spell_ProcessMana_Release.d
func int Spell_ProcessMana_Release(var int manaInvested)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_Berzerk.d
func void ZS_Berzerk()
func int ZS_Berzerk_Loop()
func void ZS_Berzerk_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_Controlled.d
func void ZS_Controlled()
func void ZS_Controlled_Loop()
func void ZS_Controlled_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_MagicFreeze.d
func void B_StopMagicFreeze()
func void ZS_MagicFreeze()
func int ZS_MagicFreeze_Loop()
func void ZS_MagicFreeze_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_MagicShrink.d
func void ZS_MagicShrink()
func int ZS_MagicShrink_Loop()
func void ZS_MagicShrink_End()
func void ZS_MagicShrunk()
func int ZS_MagicShrunk_Loop()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_MagicSleep.d
func void B_StopMagicSleep()
func void ZS_MagicSleep()
func void ZS_MagicSleep_Loop()
func void ZS_MagicSleep_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_PC_Controlling.d
func void ZS_PC_Controlling()
func void ZS_PC_Controlling_Loop()
func void ZS_PC_Controlling_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_PsiDefense.d
func void ZS_PsiDefense()
func void ZS_PsiDefense_Loop()
func void ZS_PsiDefense_End()
func void B_StopPsiDefense()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_Pyro.d
func void B_StopPyro()
func void ZS_Pyro()
func int ZS_Pyro_Loop()
func void ZS_Pyro_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_ShortZapped.d
func void B_StopShortZapped()
func void ZS_ShortZapped()
func void ZS_ShortZapped_Loop()
func void ZS_ShortZapped_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Magic\ZS\ZS_Zapped.d
func void B_StopZapped()
func void ZS_Zapped()
func int ZS_Zapped_Loop()
func void ZS_Zapped_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\guilds.d
const int TAB_ANZAHL = 256;
const int GIL_ATTITUDES[256] =
const int GIL_ATTITUDES_FMTAKEN[256] =
const int GIL_ATTITUDES_ORCASSAULT[256] =
const int GIL_ATTITUDES_NEMESIS[256] =
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Log_Constants.d
const string Baloros_Waffe = "Оружие Балоро";
const string theriddle_log = "Чужак";
const string GE_BecomeShadow = "Зачисление в Призраки";
const string GE_BecomeTemplar = "Назначение Стражем";
const string GE_BecomeGuard = "Назначение стражником";
const string GE_BecomeFiremage = "Круг магов Огня";
const string GE_BecomeMercenary = "Зачисление в наемники";
const string GE_TraderOC = "Торговцы в Старом лагере";
const string GE_TraderNC = "Торговцы в Новом лагере";
const string GE_TraderPSI = "Торговцы в Болотном лагере";
const string GE_TraderOW = "Торговцы вне лагерей";
const string GE_TRADEROM = "Торговцы в Старой шахте";
const string GE_TeacherOC = "Учителя в Старом лагере";
const string GE_TeacherNC = "Учителя в Новом лагере";
const string GE_TeacherPSI = "Учителя в Болотном лагере";
const string GE_TeacherOW = "Учителя вне лагерей";
const string GE_AnimalTrophies = "Навыки разделывания добычи";
const string GE_URIZELRUNE = "Руна древней силы";
const string CH1_MordragKO = "Задание от Торуса";
const string CH1_JoinOC = "Принятие в Старый лагерь";
const string CH1_SnafsRecipe = "Просьба Снэфа";
const string CH1_LostNek = "Исчезнувший стражник";
const string CH1_FiskNewDealer = "Новый партнер для Фиска";
const string CH1_KalomsRecipe = "Рецепт из секты";
const string CH1_BringList = "Испытание на преданность";
const string CH1_GoToPsi = "Великие планы Братства";
const string CH1_JoinNC = "Принятие в Новый лагерь";
const string CH1_CarryWater = "Водонос для Лефти";
const string CH1_DamLurker = "Шныг и плотина";
const string CH1_SpreadJoints = "Поиск новых покупателей";
const string CH1_DealerJob = "Продавец болотника";
const string CH1_ShrikesHut = "Дом Шрайка";
const string CH1_HoratiosTeachings = "Крестьянин Горацио";
const string CH1_GotoPsiCamp = "Великие планы Братства";
const string CH1_JoinPsi = "Принятие в Болотный лагерь";
const string CH1_GhorimsRelief = "Сменщик для Горима";
const string CH1_DeliverWeed = "Урожай болотника";
const string CH1_RecruitDusty = "Новый человек для Братства";
const string CH1_KrautBote = "Доставка болотника Гомезу";
const string CH1_DrugMonopol = "Монополия на торговлю болотником";
const string CH2_Focus = "Юнитор для Гуру";
const string CH2_MCEggs = "Слюна ползунов";
const string CH2_Book = "Альманах";
const string CH2_SnipesDeal = "Сундук Аарона";
const string CH2_StorageShed = "Склад Ульберта";
const string CH3_OrcGraveyard = "Кладбище орков";
const string CH3_FindHerbs = "Целебные травы для Юбериона";
const string CH3_EscapePlanNC = "Помощь магам Нового лагеря";
const string CH3_BringFoci = "Поиск юниторов";
const string CH3_Stonehenge = "Юнитор из круга камней";
const string CH3_Fortress = "Юнитор из горного форта";
const string CH3_MonasteryRuin = "Юнитор из развалин монастыря";
const string CH3_TrollCanyon = "Юнитор из ущелья тролля";
const string CH4_Firemages = "Помощь магов Огня";
const string CH4_4Friends = "Встреча друзей";
const string CH4_BannedFromOC = "Изгнание из Старого лагеря";
const string CH4_FindXardas = "Некромант Ксардас";
const string CH4_FindOrcShaman = "Изгнанный орк-шаман";
const string CH4_MCPlateArmor = "Доспех из панцирных пластин ползунов";
const string CH4_UluMulu = "Поиски составляющих для Улу-Мулу";
const string CH4_EnterTemple = "Путь в храм Спящего";
const string CH4_SldToKdW = "Принятие к магам Воды";
const string CH5_Uriziel = "Волшебный меч УРИЗЕЛЬ";
const string CH6_Sleeper = "Пробуждение Спящего";
const string QUENTIN_GANG = "Банда Квентина";
const string THELISTFORNC = "Список припасов";
const string KDWLETTER = "Посланник магов Воды";
const string KDFLETTER = "Письмо из внешнего мира";
const string RATFORDMAPS = "Карта для охотника";
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Startup.d
func void Startup_Sub_Psicamp()
func void INIT_Sub_Psicamp()
func void Startup_Sub_Newcamp()
func void INIT_Sub_Newcamp()
func void Startup_Sub_Oldcamp()
func void INIT_Sub_Oldcamp()
func void Startup_Sub_Demontower()
func void INIT_Sub_Demontower()
func void Startup_Sub_Freeminecamp()
func void INIT_Sub_Freeminecamp()
func void Startup_Sub_Surface()
func void INIT_Sub_Surface()
func void startup_demontower()
func void init_demontower()
func void startup_freemincamp()
func void init_freemincamp()
func void startup_psicamp()
func void init_psicamp()
func void startup_newcamp()
func void init_newcamp()
func void startup_oldcamp()
func void init_oldcamp()
func void startup_surface()
func void init_surface()
func void init_world()
func void startup_world()
func void startup_orcgraveyard()
func void init_orcgraveyard()
func void startup_orctempel()
func void init_orctempel()
func void startup_oldmine()
func void init_oldmine()
func void startup_freemine()
func void init_freemine()
func void startup_abandonedmine()
func void init_abandonedmine()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Story_Globals.d
const int ZivilAnquatschDist = 300;
const int DurstigeBauern = 10;
const int OTHERCAMPLEARNPAY = 10;
var int slf_fire;
var int Kapitel;
var int Play_Lute;
var int Firstjoint;
var int Secondjoint;
var int Thirdjoint;
var int Wissen_Almanach;
var int Points_OC;
var int Points_NC;
var int Points_ST;
var int LesterGuide;
var int Bloodwyn_ProtectionPaid;
var int Bloodwyn_PayDay;
var int Herek_ProtectionBully;
var int Grim_ProtectionBully;
var int Jesse_PayForMe;
var int NC_Joints_verteilt;
var int Cronos_Messenger;
var int Thorus_MordragMageMessenger;
var int Fisk_SCknows110;
var int Fisk_ForgetSword;
var int Fisk_SwordSold;
var int Mordrag_GotoNC_Day;
var int EnteredOldMine;
var int Kalom_TalkedTo;
var int Kalom_Krautbote;
var int Kalom_DeliveredWeed;
var int Lefty_WorkDay;
var int Lefty_Mission;
var int Ricelord_AskedForWater;
var int An_Bauern_verteilt;
var int Lares_InformMordrag;
var int Psi_Walk;
var int Ghorim_KickHarlok;
var int BaalNamib_Ansprechbar;
var int BaalNamib_Sakrileg;
var int BaalOrun_FetchWeed;
var int Kalom_DrugMonopol;
var int Stooges_Fled;
var int idiots_deal;
var int InExtremoPlaying;
var int Aaron_lock;
var int Snipes_deal;
var int Ian_gearwheel;
var int CorKalom_BringBook;
var int CorKalom_BringMCQBalls;
var int YBerion_BringFocus;
var int PresseTourJanuar2001;
var int Corristo_KDFAufnahme;
var int Saturas_KDWAufnahme;
var int CorAngar_GotoOGY;
var int CorAngar_FindHerb;
var int Fortuno_HasYBerionHerbs;
var int Yberion_dead;
var int BaalLukor_BringParchment;
var int CorAngar_SendToNC;
var int Saturas_BringFoci;
var int MonasteryRuin_GateOpen;
var int Troll_Wheel;
var int warned_gorn_or_lester;
var int oldHeroGuild;
var int FMTaken;
var int Lee_freeminereport;
var int FindXardas;
var int Raven_SpySect;
var int FindGolemHearts;
var int FindOrcShaman;
var int UrShak_SpokeOfUluMulu;
var int FriendOfUrShak;
var int Gorn_JoinedForFM;
var int Gorn_GotoWolf;
var int EnteredFreeMine;
var int FreemineOrc_SuchePotion;
var int FreemineOrc_LookingUlumulu;
var int MCPlatesDelivered;
var int OrcCity_Sanctum_OuterGateOpen;
var int OrcCity_Sanctum_OuterGateTried;
var int EnteredTemple;
const int HighPriest_MaxHit = 2;
var int EncounteredHighPriest;
var int ExploreSunkenTower;
var int LoadSword;
var int StartChaptersSix;
var int KnowStone;
var int Dexter_GetKalomsRecipe;
var int dexter_ore_prepaid;
var int Fisk_GetNewHehler;
const int XP_DiegoBringlist = 750;
const int XP_Fingerstrain = 100;
const int XP_Whistlerssword = 200;
const int XP_kirgovictory = 150;
const int XP_Kharimlost = 50;
const int XP_kharimvictory = 200;
const int XP_Snafcook = 100;
const int XP_Slysearchfornek = 250;
const int XP_Thorusmordragko = 250;
const int XP_Thorusmordragdead = 300;
const int XP_fiskdealer = 300;
const int XP_BecomeShadow = 1000;
const int XP_DexterKalom = 350;
const int XP_GilbertFound = 100;
const int XP_XardasLetter = 200;
const int XP_XardasLetterOPEN = 100;
const int XP_ArrivedAtPsiCamp = 200;
const int XP_WeedForJoru = 50;
const int XP_ImpressBaalCadar = 250;
const int XP_ImpressBaalNamib = 250;
const int XP_DustyJoined = 250;
const int XP_BribedDustyGuard = 250;
const int XP_DeliveredDusty = 500;
const int XP_SentHarlok = 300;
const int XP_BaalOrunTalks = 100;
const int XP_WeedFromBalor = 100;
const int XP_BalorNamedCipher = 50;
const int XP_WeedFromViran = 500;
const int XP_DeliveredWeedHarvest = 100;
const int XP_ReportToBaalOrun = 200;
const int XP_ImpressedBaalOrun = 250;
const int XP_ImpressedBaalTyon = 200;
const int XP_BecomeNovice = 1000;
const int XP_WeedShipmentDelivered = 200;
const int XP_WeedShipmentReported = 200;
const int XP_JackoRetired = 500;
const int XP_DrugMonopol = 750;
const int XP_ArrivedWithMordrag = 200;
const int XP_LeftyCarriedWater = 100;
const int XP_LeftyConfronted = 300;
const int XP_KickedShrike = 200;
const int XP_ReportedKickedShrike = 100;
const int XP_ReportDeadDamLurker = 300;
const int XP_CronosLetter = 200;
const int XP_CheatedIntoLaresHut = 250;
const int XP_GiveRingToLares = 250;
const int XP_GiveListToLares = 250;
const int XP_ReportListDeliveryToLares = 750;
const int XP_DistributedWeedForKagan = 200;
const int XP_BaalIsidroSpendDrink = 100;
const int XP_BaalIsidroTellPlans = 200;
const int XP_BaalIsidroPayShare = 500;
const int XP_BaalIsidroPayLares = 500;
const int XP_BecomeBandit = 1000;
const int XP_AssistMordrag = 250;
const int XP_BringFocusToYBerion = 750;
const int XP_BringFocusToCorKalom = 250;
const int XP_LureAaronAway = 75;
const int XP_SellKeyToAaron = 75;
const int XP_LureUlbertAway = 75;
const int XP_BringGearWheel = 750;
const int XP_HireGorNaKosh = 250;
const int XP_HireGorNaBar = 250;
const int XP_HireGorNaVid = 250;
const int XP_OpenAsghansGate = 1500;
const int XP_BringMCEggs = 2500;
const int XP_BringBook = 2500;
const int XP_ReportToMordrag = 500;
const int XP_ReportToRaven = 500;
const int XP_SaveBaalLukor = 750;
const int XP_ReportToCorAngar = 2000;
const int XP_FindHerbs = 1500;
const int XP_GetCronosPermission = 250;
const int XP_SayCorrectParole = 250;
const int XP_DeliverFocusToSaturas = 500;
const int XP_DeliverBookToSaturas = 500;
const int XP_DeliverSecondFocus = 3500;
const int XP_DeliverThirdFocus = 3500;
const int XP_DeliverFourthFocus = 3500;
const int XP_DeliverFifthFocus = 4000;
const int XP_MessageForGorn = 1000;
const int XP_ReportToSaturas = 1000;
const int XP_DeliveredGolemhearts = 2000;
const int XP_FoundOrcShaman = 1000;
const int XP_ReturnedFromUrShak = 1000;
const int XP_GornJoins = 1000;
const int XP_FoundOrcSlave = 2000;
const int XP_CuredOrcSlave = 2000;
const int XP_DeliveredMCPlates = 2000;
const int XP_GotUluMulu = 10000;
const int XP_GorMCPlateArmor = 1000;
const int XP_RetreatFromLastPriest = 1000;
const int XP_ShowUrizielToXardas = 1000;
const int XP_ReturnedFromSunkenTower = 2000;
const int XP_LoadedUriziel = 5000;
const int LPCOST_ATTRIBUTE_STRENGTH = 1;
const int LPCOST_ATTRIBUTE_DEXTERITY = 1;
const int LPCOST_ATTRIBUTE_MANA = 1;
const int LPCOST_TALENT_MAGE_1 = 10;
const int LPCOST_TALENT_MAGE_2 = 15;
const int LPCOST_TALENT_MAGE_3 = 20;
const int LPCOST_TALENT_MAGE_4 = 25;
const int LPCOST_TALENT_MAGE_5 = 30;
const int LPCOST_TALENT_MAGE_6 = 40;
const int LPCOST_TALENT_1H_1 = 10;
const int LPCOST_TALENT_1H_2 = 20;
const int LPCOST_TALENT_2H_1 = 30;
const int LPCOST_TALENT_2H_2 = 40;
const int LPCOST_TALENT_BOW_1 = 10;
const int LPCOST_TALENT_BOW_2 = 20;
const int LPCOST_TALENT_CROSSBOW_1 = 10;
const int LPCOST_TALENT_CROSSBOW_2 = 20;
const int LPCOST_TALENT_ACROBAT = 10;
const int LPCOST_TALENT_SNEAK = 10;
const int LPCOST_TALENT_PICKLOCK_1 = 5;
const int LPCOST_TALENT_PICKLOCK_2 = 10;
const int LPCOST_TALENT_PICKPOCKET_1 = 5;
const int LPCOST_TALENT_PICKPOCKET_2 = 10;
const int FIX_VERSION_START = 14;
var int fix_version_save;
var int log_wolftrain;
var int log_baalcadarsell;
var int log_baalcadarrunes;
var int log_scorpiocrossbow;
var int log_wedgelearn;
var int log_scattytrain;
var int log_cavalorntrain_sneak;
var int log_cavalorntrain_bow;
var int log_damaroktrain;
var int gravo_log;
var int Scorpio_Exile;
var int LeftyDead;
var int Kharim_Charged;
var int kharim_charged_end;
var int Kirgo_Charged;
var int kirgo_charged_end;
var int hanis_charged;
var int hanis_charged_end;
var int asghan_gate_was_opened;
var int SLD_753_Baloro_SC_besorgt_den_Kram;
var int BaalTondral_GetNewGuy;
var int getnewguy_started;
var int getnewguy_dusty_joined;
var int getnewguy_dusty_moving;
var int getnewguy_dusty_stopped;
var int thorus_krautbote_pass;
var int thorus_passgate;
var int oc_banned;
var int nc_banned;
var int starkbeer;
var int honeycomb;
var int honeycombbook;
var int sleeper_awaken;
var int quentin_gang_quest_started;
var int grd216passed;
var int snipes_key;
var int aleph_key;
var int got_nov_l_armor;
var int gate_01_state;
var int gate_02_state;
var int gate_03_state;
var int gate_04_state;
var int gate_05_state;
var int gate_06_state;
var int gate_07_state;
var int gate_08_state;
var int gate_09_state;
var int gate_10_state;
var int gate_11_state;
var int gate_12_state;
var int gate_13_state;
var int gate_d01_state;
var int gate_d02_state;
var int gate_d03_state;
var int gate_d04_state;
var int gate_d05_state;
var int gate_d06_state;
var int gate_d07_state;
var int milten_heal;
var int lester_heal;
var int drake_beer;
var int lares_stop;
var int Diego_BringList;
var int Lares_BringListBack;
var int pyrocar_messenger;
var int letter_told;
var int alchemyactive;
var int hp0recipe;
var int hp1recipe;
var int hp2recipe;
var int hp3recipe;
var int mp1recipe;
var int mp2recipe;
var int mp3recipe;
var int hpmaxrecipe;
var int mpmaxrecipe;
var int strrecipe;
var int dexrecipe;
var int eggrecipe;
var int fortunorecipe;
var int masterrecipe;
var int joint2recipe;
var int joint3recipe;
var int Balor_TellsNCDealer;
var int enteredabandonedmine;
var int kirgo_killed;
var int kharim_killed;
var int gorhanis_killed;
var int playerinarena;
var int arena_bet_day;
var int arena_bet_kirgo;
var int arena_bet_kharim;
var int arena_bet_gorhanis;
var int arena_bet_kirgo_won;
var int arena_bet_kharim_won;
var int arena_bet_gorhanis_won;
var int balor_can_give;
var int balor_trade_count;
var int yberion_died;
var int yberion_healed;
var int can_buy_grd_armor_h;
var int huno_goldensword;
var int ratford_itwrommap;
var int ratford_itwrfocusmappsi;
var int ratford_itwrworldmap;
var int russobitmfixv13;
var int Mordrag_Traded;
var int baalisidro_joints_started;
var int BaalIsidro_DealerJob;
var int yberion_key_stolen;
var int gopstopped;
var int corkalomleft;
var int psiambientnpcsbeaten;
var int ocambientnpcsbeaten;
var int ncambientnpcsbeaten;
var int kdw_tp_used;
var int manabook1;
var int manabook2;
var int manabook3;
var int manabook4;
var int manabook5;
var int manabook6;
var int Snaf_Zutaten;
var int Snaf_FreeMBRagout;
var int Homer_DamLurker;
var int Thorus_MordragKo;
var int diff_hard;
var int lester_focus3_found;
var int gorn_focus4_found;
var int trf_meatbug_used;
var int riddle1insert;
var int riddle2insert;
var int riddle3insert;
var int riddle4insert;
var int riddle5insert;
var int mud_hit;
var int Whistler_BuyMySword;
var int Whistler_BuyMySword_Day;
var int fisk_refusetrade;
var int oldmine_gate_open;
var int drax_can_learn;
var int aidan_can_learn;
var int aaron_key_taken;
var int freelearn_oc;
var int freelearn_nc;
var int freelearn_psi;
var int orik_key_used;
var int lord_key_used;
var int cavalorn_key_used;
var int freemine_key_used;
var int psilabkey_used;
var int ob_smith_key_used;
var int itke_om_02_used;
var int itke_om_03_01_used;
var int itke_om_03_02_used;
var int gilbert_key_used;
var int itke_quentin_used;
var int itke_gomez_01_used;
var int itke_gomez_02_used;
var int itke_gomez_03_used;
var int itke_weaponry_01_used;
var int itke_weaponry_02_used;
var int itke_weaponry_03_used;
var int itke_weaponry_04_used;
var int itke_storage_01_used;
var int itke_storage_02_used;
var int itke_storage_03_used;
var int itke_sunkentower_01_used;
var int itke_sunkentower_02_used;
var int itke_tower_01_used;
var int itke_tower_02_used;
var int dungeonkey_01_used;
var int dungeonkey_02_used;
var int dungeonkey_03_used;
var int itke_focus4_used;
var int itke_focus5_used;
var int itke_berg_used;
var int itke_yberion_used;
var int str_essenz_val;
var int str_extrakt_val;
var int str_elixier_val;
var int dex_essenz_val;
var int dex_extrakt_val;
var int dex_elixier_val;
var int gopstopped_bridge;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\svm.d
class C_SVM
instance SVM_0(C_SVM)
instance SVM_1(C_SVM)
instance SVM_2(C_SVM)
instance SVM_3(C_SVM)
instance SVM_4(C_SVM)
instance SVM_5(C_SVM)
instance SVM_6(C_SVM)
instance SVM_7(C_SVM)
instance SVM_8(C_SVM)
instance SVM_9(C_SVM)
instance SVM_10(C_SVM)
instance SVM_11(C_SVM)
instance SVM_12(C_SVM)
instance SVM_13(C_SVM)
instance SVM_14(C_SVM)
instance SVM_15(C_SVM)
instance SVM_16(C_SVM)
instance SVM_17(C_SVM)
instance SVM_18(C_SVM)
instance SVM_19(C_SVM)
const int SVM_MODULES = 20;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Text.d
const string MOBNAME_BACKPACK_1 = "";
const string MOBNAME_CRATE = "Ящик";
const string MOBNAME_CHEST = "Сундук";
const string MOBNAME_BED = "Кровать";
const string MOBNAME_BE2 = "Лежак";
const string MOBNAME_DOOR = "Дверь";
const string MOBNAME_CAMP = "";
const string MOBNAME_TORCH = "";
const string MOBNAME_TORCHHOLDER = "";
const string MOBNAME_BARBQ_SCAV = "";
const string MOBNAME_BARRELO_OC = "";
const string MOBNAME_BENCH = "";
const string MOBNAME_ANVIL = "Наковальня";
const string MOBNAME_BUCKET = "Ведро с водой";
const string MOBNAME_FORGE = "Кузнечный горн";
const string MOBNAME_GRINDSTONE = "Точильный камень";
const string MOBNAME_WHEEL = "Лебедка";
const string MOBNAME_LAB = "";
const string MOBNAME_BOOK = "";
const string MOBNAME_CHAIR = "";
const string MOBNAME_CAULDRON = "Котел";
const string MOBNAME_THRONE = "";
const string MOBNAME_PAN = "Сковорода";
const string MOBNAME_REPAIR = "";
const string MOBNAME_WATERPIPE = "Кальян";
const string MOBNAME_LADDER = "";
const string MOBNAME_SWITCH = "Переключатель";
const string MOBNAME_BARONSTHRONE = "";
const string MOBNAME_ORE = "Залежи руды";
const string MOBNAME_ROPEWAY = "";
const string MOBNAME_STOMPER = "";
const string MOBNAME_BELLOW = "Кузнечный мех";
const string MOBNAME_STONEMILL = "";
const string MOBNAME_ORC_MUMMY = "Мумия";
const string MOBNAME_PILLAR = "Колонна";
const string MOBNAME_BASKET_RICE = "";
const string MOBNAME_DRUM = "";
const string MOBNAME_GROUND_SLOT = "";
const string MOBNAME_HERB_PSI = "Ступа";
const string MOBNAME_HERBSTOMPER = "Ступа";
const string MOBNAME_IDOL = "Статуя";
const string MOBNAME_LEAN_WALL = "";
const string MOBNAME_ORCDRUM = "";
const string MOBNAME_TARGETSTONE = "Мишень";
const string MOBNAME_SHRINE = "Саркофаг с сердцем орка";
const string MOBNAME_SWORDSTONE = "Необычный камень";
const string MOBNAME_OLD_CHEST = "Старый сундук";
const string TXT_GUILDS[42] =
const string TXT_SPELLS[59] =
const string TXT_TALENTS[12] =
const string TXT_TALENTS_SKILLS[12] =
const string TXT_INV_CAT[9] =
const string NAME_Buddler = "Рудокоп";
const string NAME_Schatten = "Призрак";
const string NAME_ConvoiTraeger = "Грузчик";
const string NAME_ConvoiWache = "Охранник";
const string NAME_Torwache = "Привратник";
const string NAME_Brueckenwache = "Стражник";
const string NAME_Gardist = "Стражник";
const string NAME_Bauer = "Крестьянин";
const string NAME_Schlaeger = "Охранник";
const string NAME_Schuerfer = "Рудокоп";
const string NAME_Organisator = "Вор";
const string NAME_Soeldner = "Наемник";
const string NAME_Novize = "Послушник";
const string NAME_Templer = "Страж";
const string NAME_Raeuber = "Грабитель";
const string NAME_Tuersteher = "Вышибала";
const string NAME_MadNovice = "Одержимый послушник";
const string NAME_MadTemplar = "Фанатичный Страж";
const string NAME_MadTemplar2 = "Страж Апокалипсиса";
const string DIALOG_ENDE = "ЗАКОНЧИТЬ РАЗГОВОР";
const string DIALOG_BACK = "НАЗАД";
const string DIALOG_TRADE = "(обмен)";
const string DIALOG_LEARN = "(обучение)";
const string NAME_Ring = "Кольцо";
const string NAME_Amulett = "Амулет";
const string NAME_Trank = "Зелье";
const string NAME_Rune = "Руна";
const string NAME_Spruchrolle = "Свиток";
const string NAME_Value = "Цена:";
const string NAME_Mag_Circle = "Круг:";
const string NAME_Manakosten = "Магическая сила:";
const string NAME_ManakostenMax = "Магическая сила (макс.):";
const string NAME_ManaPerSec = "Магическая сила в сек.:";
const string NAME_Duration = "Длительность (мин.):";
const string NAME_Mana_needed = "Требуемая магическая сила:";
const string NAME_Str_needed = "Требуемая сила:";
const string NAME_Dex_needed = "Требуемая ловкость:";
const string NAME_Spell_Load = "Зарядное заклинание";
const string NAME_Spell_Invest = "Инвестируемое заклинание";
const string NAME_Dam_Edge = "Урон от оружия";
const string NAME_Dam_Point = "Урон от стрел";
const string NAME_Dam_Fire = "Огненный урон:";
const string NAME_Dam_Magic = "Магический урон:";
const string NAME_Dam_Fly = "Урон от падения";
const string NAME_Damage = "Урон:";
const string NAME_PerMana = " (за ед. маг. силы)";
const string NAME_DamagePerSec = "Урон в сек.:";
const string NAME_Prot_Edge = "Защита от оружия:";
const string NAME_Prot_Point = "Защита от стрел:";
const string NAME_Prot_Fire = "Защита от огня:";
const string NAME_Prot_Magic = "Защита от магии:";
const string NAME_Bonus_HP = "Бонус к жизненной силе:";
const string NAME_Bonus_Mana = "Бонус к магической силе:";
const string NAME_Bonus_HpMax = "Бонус к макс. жизненной силе:";
const string NAME_Bonus_ManaMax = "Бонус к макс. магической силе:";
const string NAME_Bonus_Dex = "Бонус к ловкости:";
const string NAME_Bonus_Str = "Бонус к силе:";
const string NAME_OneHanded = "Одноручное оружие";
const string NAME_TwoHanded = "Двуручное оружие";
const string NAME_ONEHANDED_BONUS = "Одноручное оружие, бонус +3%";
const string NAME_TWOHANDED_BONUS = "Двуручное оружие, бонус +3%";
const string NAME_HealingPerMana = "Лечение (за ед. маг. силы):";
const string NAME_BuyAttributeSTR = "Сила +";
const string NAME_BuyAttributeDEX = "Ловкость +";
const string NAME_BuyAttributeMAN = "Магическая сила +";
const string NAME_XPGained = "Опыт +";
const string NAME_LevelUp = "Достигнут новый уровень!";
const string NAME_NewLogEntry = "В дневнике появилась новая запись.";
const string _STR_INVALID = "(Неизвестно)-";
const string _STR_ATTRIBUTE_HITPOINTS = "жизненной силы ";
const string _STR_ATTRIBUTE_HITPOINTS_MAX = "макс. жизненной силы ";
const string _STR_ATTRIBUTE_MANA = "магической силы ";
const string _STR_ATTRIBUTE_MANA_MAX = "макс. магической силы ";
const string _STR_ATTRIBUTE_STRENGTH = "силы ";
const string _STR_ATTRIBUTE_DEXTERITY = "ловкости ";
const string _STR_ATTRIBUTE_MAGIC_CIRCLE = "Необходимо знание ";
const string _STR_CANNOTUSE_PRE_PLAYER = "Недостаточно ";
const string _STR_CANNOTUSE_POINTS = "ед. ";
const string _STR_CANNOTUSE_LEVELS = "Круга магии ";
const string _STR_CANNOTUSE_POST = "для использования.";
const string _STR_CANNOTUSE_PRE_NPC = " (";
const string _STR_CANNOTUSE_POST_NPC = ") отсутствует.";
const string _STR_CANNOTUSE_LOCKS_NO_SKILL = "Я не умею взламывать замки.";
const string _STR_CANNOTUSE_LOCKS_LOW_SKILL = "Моего навыка взлома недостаточно.";
const string _STR_MESSAGE_INTERACT_NO_KEY_NO_LOCKPICK = "Нет отмычки или подходящего ключа.";
const string _STR_MESSAGE_INTERACT_NO_KEY = "Нет подходящего ключа.";
const string _STR_MESSAGE_PICKLOCK_SUCCESS = "Слышу щелчок. Все идет как надо.";
const string _STR_MESSAGE_PICKLOCK_UNLOCK = "Замок взломан.";
const string _STR_MESSAGE_PICKLOCK_FAILURE = "Черт... Ничего на вышло.";
const string _STR_MESSAGE_PICKLOCK_BROKEN = "Отмычка сломалась.";
const string _STR_MESSAGE_OCLEVER_STUCKS = "Я не могу сдвинуть рычаг.";
const string _STR_MESSAGE_OCLEVER_MOVES = "Рычаг подвинулся с помощью статуи.";
const string _STR_MESSAGE_WHEEL_STUCKS = "Лебедка застопорилась.";
const string _STR_MESSAGE_ITEM_GIVEN = "Отдан 1 предмет.";
const string _STR_MESSAGE_ITEMS_GIVEN = "Предметов отдано: ";
const string _STR_MESSAGE_ORE_GIVEN = "Кусков руды отдано: ";
const string _STR_MESSAGE_ITEM_TAKEN = "Получен 1 предмет.";
const string _STR_MESSAGE_ITEMS_TAKEN = "Предметов получено: ";
const string _STR_MESSAGE_ORE_TAKEN = "Кусков руды получено: ";
const string _STR_MESSAGE_TRADE_FAILURE = "Это неравноценный обмен.";
const string _STR_MESSAGE_Joincamp = "Условие: уровень ";
const string _STR_MESSAGE_CANNOTSTEAL = "Воровство невозможно.";
const string _STR_MESSAGE_OREPICKED = "Добыта руда.";
const int _YPOS_MESSAGE_GIVEN = 37;
const int _YPOS_MESSAGE_TAKEN = 40;
const int _YPOS_MESSAGE_LOGENTRY = 45;
const int _YPOS_MESSAGE_XPGAINED = 50;
const int _YPOS_MESSAGE_LEVELUP = 55;
const int _YPOS_MESSAGE_Joincamp = 50;
const int _YPOS_MESSAGE_PICKLOCK_SUCCESS = 6;
const int _YPOS_MESSAGE_PICKLOCK_UNLOCK = 9;
const int _YPOS_MESSAGE_PICKLOCK_FAILURE = 12;
const int _YPOS_MESSAGE_PICKLOCK_BROKEN = 15;
const int _YPOS_MESSAGE_CANNOTSTEAL = 6;
const int _TIME_MESSAGE_GIVEN = 4;
const int _TIME_MESSAGE_TAKEN = 4;
const int _TIME_MESSAGE_LOGENTRY = 4;
const int _TIME_MESSAGE_XPGAINED = 3;
const int _TIME_MESSAGE_LEVELUP = 5;
const int _TIME_MESSAGE_RAISEATTRIBUTE = 3;
const int _TIME_MESSAGE_Joincamp = 5;
const int _TIME_MESSAGE_PICKLOCK = 3;
const int _TIME_MESSAGE_CANNOTSTEAL = 2;
const string NAME_BuyArmorPrefix = " (";
const string NAME_BuyArmorPostfix = " руды)";
const string NAME_LearnPrefix = " (";
const string NAME_LearnMidfix = " руды, ";
const string NAME_LearnPostfixS = " очко обучения)";
const string NAME_LearnPostfixP = " очков обучения)";
const string NAME_LearnStrength_1 = "Сила +1";
const string NAME_LearnStrength_5 = "Сила +5";
const string NAME_LearnStrength_10 = "Сила +10";
const string NAME_LearnStrength_20 = "Сила +20";
const string NAME_LearnDexterity_1 = "Ловкость +1";
const string NAME_LearnDexterity_5 = "Ловкость +5";
const string NAME_LearnDexterity_10 = "Ловкость +10";
const string NAME_LearnDexterity_20 = "Ловкость +20";
const string NAME_LearnMana_1 = "Магическая сила +1";
const string NAME_LearnMana_5 = "Магическая сила +5";
const string NAME_LearnMana_10 = "Магическая сила +10";
const string NAME_LearnMana_20 = "Магическая сила +20";
const string NAME_Learn1h_1 = "Одноручное оружие - первый уровень";
const string NAME_Learn1h_2 = "Одноручное оружие - второй уровень";
const string NAME_Learn2h_1 = "Двуручное оружие - первый уровень";
const string NAME_Learn2h_2 = "Двуручное оружие - второй уровень";
const string NAME_LearnBow_1 = "Лук - первый уровень";
const string NAME_LearnBow_2 = "Лук - второй уровень";
const string NAME_LearnCrossbow_1 = "Арбалет - первый уровень";
const string NAME_LearnCrossbow_2 = "Арбалет - второй уровень";
const string NAME_LearnMage_1 = "1-й Круг магии";
const string NAME_LearnMage_2 = "2-й Круг магии";
const string NAME_LearnMage_3 = "3-й Круг магии";
const string NAME_LearnMage_4 = "4-й Круг магии";
const string NAME_LearnMage_5 = "5-й Круг магии";
const string NAME_LearnMage_6 = "6-й Круг магии";
const string NAME_LearnPickpocket_1 = "Воровство - первый уровень";
const string NAME_LearnPickpocket_2 = "Воровство - второй уровень";
const string NAME_LearnPicklock_1 = "Взлом замков - первый уровень";
const string NAME_LearnPicklock_2 = "Взлом замков - второй уровень";
const string NAME_LearnAcrobat = "Акробатика";
const string NAME_LearnSneak = "Подкрадывание";
const string NAME_RaiseStrength = "Сила +";
const string NAME_RaiseDexterity = "Ловкость +";
const string NAME_RaiseStrDex = "Сила и ловкость +";
const string NAME_RaiseManaMax = "Макс. магическая сила +";
const string NAME_RaiseHealthMax = "Макс. жизненная сила +";
const string MENU_TEXT_NEEDS_APPLY = "";
const string MENU_TEXT_NEEDS_RESTART = "Некоторые настройки будут задействованы только после повторного запуска игры.";
const string STR_INFO_TRADE_ACCEPT = "Подтвердить";
const string STR_INFO_TRADE_RESET = "Сброс";
const string STR_INFO_TRADE_EXIT = "ОТМЕНА";
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_aidanlearn.d
func void b_aidanlearn()
instance DIA_Aidan_Exit(C_Info)
func int DIA_Aidan_Exit_Condition()
func void DIA_Aidan_Exit_Info()
instance DIA_Aidan_Hello(C_Info)
func int DIA_Aidan_Hello_Condition()
func void DIA_Aidan_Hello_Info()
instance Org_859_Aidan_Creatures(C_Info)
func int Org_859_Aidan_Creatures_Condition()
func void Org_859_Aidan_Creatures_Info()
func void Org_859_Aidan_Creatures_BACK()
func void Org_859_Aidan_Creatures_Zahn()
func void Org_859_Aidan_Creatures_Fell()
func void Org_859_Aidan_Creatures_Kralle()
func void Org_859_Aidan_Creatures_Haut()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_AssignAmbientInfos.d
func void B_AssignAmbientInfos(var C_Npc amb_self)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_baalcadarlearn.d
func void b_baalcadarlearn()
instance DIA_BaalCadar_Exit(C_Info)
func int DIA_BaalCadar_Exit_Condition()
func void DIA_BaalCadar_Exit_Info()
var int BaalCadar_Ansprechbar;
var int BaalCadar_Sakrileg;
instance DIA_BaalCadar_NoTalk(C_Info)
func int DIA_BaalCadar_NoTalk_Condition()
func void DIA_BaalCadar_NoTalk_Info()
func void DIA_BaalCadar_NoTalk_Hi()
func void DIA_BaalCadar_NoTalk_Sleeper()
func void DIA_BaalCadar_NoTalk_Imp()
func void DIA_BaalCadar_NoTalk_ENDE()
instance DIA_BaalCadar_SleepSpell(C_Info)
func int DIA_BaalCadar_SleepSpell_Condition()
func void DIA_BaalCadar_SleepSpell_Info()
instance GUR_1208_BAALCADAR_TEACH_PRE(C_Info)
func int gur_1208_baalcadar_teach_pre_condition()
func void gur_1208_baalcadar_teach_pre_info()
instance Gur_1208_BaalCadar_FIRSTTEST(C_Info)
func int Gur_1208_BaalCadar_FIRSTTEST_Condition()
func void Gur_1208_BaalCadar_FIRSTTEST_Info()
instance Gur_1208_BaalCadar_Teach(C_Info)
func int Gur_1208_BaalCadar_Teach_Condition()
func void Gur_1208_BaalCadar_Teach_Info()
func void Gur_1208_BaalCadar_Teach_BACK()
func void Gur_1208_BaalCadar_Teach_MAN_1()
func void Gur_1208_BaalCadar_Teach_MAN_5()
func void Gur_1208_BaalCadar_KREIS1()
func void Gur_1208_BaalCadar_KREIS2()
func void Gur_1208_BaalCadar_KREIS3()
func void Gur_1208_BaalCadar_KREIS4()
instance Gur_1208_BaalCadar_SELLSTUFF(C_Info)
func int Gur_1208_BaalCadar_SELLSTUFF_Condition()
func void Gur_1208_BaalCadar_SELLSTUFF_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_BuildBuyArmorString.d
func string B_BuildBuyArmorString(var string text,var int price)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_BuildLearnString.d
func string B_BuildLearnString(var string text,var int lp,var int ore)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_busterlearn.d
func void b_busterlearn()
instance DIA_ORG_833_Buster(C_Info)
func int DIA_ORG_833_Buster_Condition()
func void DIA_ORG_833_Buster_Info()
instance DIA_ORG_833_Buster_Exit(C_Info)
func int DIA_ORG_833_Buster_Exit_Condition()
func void DIA_ORG_833_Buster_Exit_Info()
instance DIA_ORG_833_Buster3(C_Info)
func int DIA_ORG_833_Buster3_Condition()
func void DIA_ORG_833_Buster3_Info()
instance DIA_ORG_833_BUSTER4(C_Info)
func int dia_org_833_buster4_condition()
func void dia_org_833_buster4_info()
func void DIA_ORG_833_Buster_Train1()
func void DIA_ORG_833_Buster_Back()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_BuyAttributePoints.d
func void B_BuyAttributePoints(var C_Npc typ,var int atr,var int AtrPlus)
func void learn_str_1()
func void learn_str_5()
func void learn_dex_1()
func void learn_dex_5()
func void learn_mana_1()
func void learn_mana_5()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_cavalornearn.d
func void b_cavalornearn()
instance DIA_Cavalorn_Exit(C_Info)
func int DIA_Cavalorn_Exit_Condition()
func void DIA_Cavalorn_Exit_Info()
instance DIA_cavalorn_Hunter(C_Info)
func int DIA_cavalorn_Hunter_Condition()
func void DIA_cavalorn_Hunter_Info()
instance DIA_cavalorn_Lehrer(C_Info)
func int DIA_cavalorn_Lehrer_Condition()
func void DIA_cavalorn_Lehrer_Info()
instance DIA_CAVALORN_LEARN(C_Info)
func int dia_cavalorn_learn_condition()
func void dia_cavalorn_learn_info()
func void dia_cavalorn_learn_back()
func void DIA_cavalorn_Lehrer_Bow()
func void DIA_cavalorn_Lehrer_Bow_2()
func void DIA_cavalorn_Lehrer_Schleichen()
instance STT_336_cavalorn_SELLBOW(C_Info)
func int STT_336_cavalorn_SELLBOW_Condition()
func void STT_336_cavalorn_SELLBOW_Info()
instance STT_336_cavalorn_TRADE(C_Info)
func int STT_336_cavalorn_TRADE_Condition()
func void STT_336_cavalorn_TRADE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_CheckDeadMissionNPCs.d
func void B_CheckDeadMissionNPCs()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_ClearFMC.d
func void B_ClearFMC()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_clearquentincamp.d
func void b_clearquentincamp()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_corangarlearn.d
func void b_corangarlearn()
instance DIA_GUR_1202_CorAngar_Exit(C_Info)
func int DIA_GUR_1202_CorAngar_Exit_Condition()
func void DIA_GUR_1202_CorAngar_Exit_Info()
instance DIA_CorAngar_LaterTrainer(C_Info)
func int DIA_CorAngar_LaterTrainer_Condition()
func void DIA_CorAngar_LaterTrainer_Info()
instance DIA_CORANGAR_LATERTRAINER2(C_Info)
func int dia_corangar_latertrainer2_condition()
func void dia_corangar_latertrainer2_info()
instance DIA_CorAngar_WieTempler(C_Info)
func int DIA_CorAngar_WieTempler_Condition()
func void DIA_CorAngar_WieTempler_Info()
instance GUR_1202_CorAngar_Teach(C_Info)
func int GUR_1202_CorAngar_Teach_Condition()
func void GUR_1202_CorAngar_Teach_Info()
func void GUR_1202_CorAngar_Teach_BACK()
func void GUR_1202_CorAngar_Teach_STR_1()
func void GUR_1202_CorAngar_Teach_STR_5()
func void GUR_1202_CorAngar_Teach_DEX_1()
func void GUR_1202_CorAngar_Teach_DEX_5()
func void GUR_1202_CorAngar_ZWEIHAND1()
func void GUR_1202_CorAngar_ZWEIHAND2()
instance GUR_1202_CorAngar_WANNABETPL(C_Info)
func int GUR_1202_CorAngar_WANNABETPL_Condition()
func void GUR_1202_CorAngar_WANNABETPL_Info()
instance GUR_1202_CorAngar_SENDS(C_Info)
func int GUR_1202_CorAngar_SENDS_Condition()
func void GUR_1202_CorAngar_SENDS_Info()
func void GUR_1202_CorAngar_SENDS_EARN()
func void GUR_1202_CorAngar_SENDS_KNOW()
instance GUR_1202_CorAngar_WHERE(C_Info)
func int GUR_1202_CorAngar_WHERE_Condition()
func void GUR_1202_CorAngar_WHERE_Info()
instance GUR_1202_CorAngar_AFTER(C_Info)
func int GUR_1202_CorAngar_AFTER_Condition()
func void GUR_1202_CorAngar_AFTER_Info()
var int yberion_day;
instance Info_CorAngar_FindHerb(C_Info)
func int Info_CorAngar_FindHerb_Condition()
func void Info_CorAngar_FindHerb_Info()
instance Info_CorAngar_FindHerb_WHERE(C_Info)
func int Info_CorAngar_FindHerb_WHERE_Condition()
func void Info_CorAngar_FindHerb_WHERE_Info()
instance Info_CorAngar_FindHerb_LOOK(C_Info)
func int Info_CorAngar_FindHerb_LOOK_Condition()
func void Info_CorAngar_FindHerb_LOOK_Info()
instance Info_CorAngar_FindHerb_Running(C_Info)
func int Info_CorAngar_FindHerb_Running_Condition()
func void Info_CorAngar_FindHerb_Running_Info()
instance Info_CorAngar_FindHerb_Success(C_Info)
func int Info_CorAngar_FindHerb_Success_Condition()
func void Info_CorAngar_FindHerb_Success_Info()
instance Info_CorAngar_TELEPORT(C_Info)
func int Info_CorAngar_TELEPORT_Condition()
func void Info_CorAngar_TELEPORT_Info()
instance CORANGAR_STEALKEY(C_Info)
func int corangar_stealkey_condition()
func void corangar_stealkey_info()
instance INFO_CORANGAR_YBERION_DIED(C_Info)
func int info_corangar_yberion_died_condition()
func void info_corangar_yberion_died_info()
instance INFO_CORANGAR_HEALTHWATER(C_Info)
func int info_corangar_healthwater_condition()
func void info_corangar_healthwater_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_corkalomleft.d
func void b_corkalomleft()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_corristolearn.d
func void b_corristolearn()
instance KDF_402_Corristo_Exit(C_Info)
func int KDF_402_Corristo_Exit_Condition()
func void KDF_402_Corristo_Exit_Info()
instance Info_Corristo_Intruder(C_Info)
func int Info_Corristo_Intruder_Condition()
func void Info_Corristo_Intruder_Info()
instance KDF_402_Corristo_EXPLAINMAGE(C_Info)
func int KDF_402_Corristo_EXPLAINMAGE_Condition()
func void KDF_402_Corristo_EXPLAINMAGE_Info()
instance KDF_402_Corristo_WANNBEKDF(C_Info)
func int KDF_402_Corristo_WANNBEKDF_Condition()
func void KDF_402_Corristo_WANNBEKDF_Info()
instance KDF_402_Corristo_KDFTEST(C_Info)
func int KDF_402_Corristo_KDFTEST_Condition()
func void KDF_402_Corristo_KDFTEST_Info()
func void KDF_402_Corristo_KDFTEST_JA()
func void KDF_402_Corristo_KDFTEST_NO()
func void KDF_402_Corristo_KDFTEST_ADANOS()
func void KDF_402_Corristo_KDFTEST_SLEEPER()
func void KDF_402_Corristo_KDFTEST_INNOS()
func void KDF_402_Corristo_KDFTEST_GOMEZ()
func void KDF_402_Corristo_KDFTEST_FIGHT()
func void KDF_402_Corristo_KDFTEST_DEMUT()
func void KDF_402_Corristo_KDFTEST_DISZIPLIN()
func void KDF_402_Corristo_KDFTEST_EHRFURCHT()
instance KDF_402_Corristo_AUFNAHME(C_Info)
func int KDF_402_Corristo_AUFNAHME_Condition()
func void KDF_402_Corristo_AUFNAHME_Info()
instance KDF_402_Corristo_ROBE(C_Info)
func int KDF_402_Corristo_ROBE_Condition()
func void KDF_402_Corristo_ROBE_Info()
instance KDF_401_Damarok_HEALINFO(C_Info)
func int KDF_401_Damarok_HEALINFO_Condition()
func void KDF_401_Damarok_HEALINFO_Info()
instance KDF_402_Corristo_MANA(C_Info)
func int KDF_402_Corristo_MANA_Condition()
func void KDF_402_Corristo_MANA_Info()
func void KDF_402_Corristo_MANA_BACK()
func void KDF_402_Corristo_MANA_MAN_1()
func void KDF_402_Corristo_MANA_MAN_5()
func void KDF_402_Corristo_KREIS1()
func void KDF_402_Corristo_KREIS2()
func void KDF_402_Corristo_KREIS3()
func void KDF_402_Corristo_KREIS4()
instance KDF_402_Corristo_EXPLAINCIRCLES(C_Info)
func int KDF_402_Corristo_EXPLAINCIRCLES_Condition()
func void KDF_402_Corristo_EXPLAINCIRCLES_Info()
var int kdf_armor_h_was_bought;
instance KDF_402_Corristo_HEAVYARMOR(C_Info)
func int KDF_402_Corristo_HEAVYARMOR_Condition()
func void KDF_402_Corristo_HEAVYARMOR_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_cronoslearn.d
func void b_cronoslearn()
instance KDW_604_Cronos_Exit(C_Info)
func int KDW_604_Cronos_Exit_Condition()
func void KDW_604_Cronos_Exit_Info()
instance KDW_604_Cronos_Brief(C_Info)
func int KDW_604_Cronos_Brief_Condition()
func void KDW_604_Cronos_Brief_Info()
instance KDW_604_Cronos_Barrier(C_Info)
func int KDW_604_Cronos_Barrier_Condition()
func void KDW_604_Cronos_Barrier_Info()
instance KDW_604_Cronos_WannaJoin(C_Info)
func int KDW_604_Cronos_WannaJoin_Condition()
func void KDW_604_Cronos_WannaJoin_Info()
instance KDW_604_Cronos_WannaMage(C_Info)
func int KDW_604_Cronos_WannaMage_Condition()
func void KDW_604_Cronos_WannaMage_Info()
instance KDW_604_Cronos_Bandit(C_Info)
func int KDW_604_Cronos_Bandit_Condition()
func void KDW_604_Cronos_Bandit_Info()
instance KDW_604_Cronos_BriefBack(C_Info)
func int KDW_604_Cronos_BriefBack_Condition()
func void KDW_604_Cronos_BriefBack_Info()
instance Info_Cronos_NEWS(C_Info)
func int Info_Cronos_NEWS_Condition()
func void Info_Cronos_NEWS_Info()
instance Info_Cronos_KALOM(C_Info)
func int Info_Cronos_KALOM_Condition()
func void Info_Cronos_KALOM_Info()
instance Info_Cronos_YBERION(C_Info)
func int Info_Cronos_YBERION_Condition()
func void Info_Cronos_YBERION_Info()
instance Info_Cronos_SLEEPER(C_Info)
func int Info_Cronos_SLEEPER_Condition()
func void Info_Cronos_SLEEPER_Info()
instance Info_Cronos_PAROLE(C_Info)
func int Info_Cronos_PAROLE_Condition()
func void Info_Cronos_PAROLE_Info()
instance Info_Cronos_REWARD(C_Info)
func int Info_Cronos_REWARD_Condition()
func void Info_Cronos_REWARD_Info()
instance KDW_604_Cronos_WELCOME(C_Info)
func int KDW_604_Cronos_WELCOME_Condition()
func void KDW_604_Cronos_WELCOME_Info()
instance KDW_604_Cronos_MANA(C_Info)
func int KDW_604_Cronos_MANA_Condition()
func void KDW_604_Cronos_MANA_Info()
func void KDW_604_Cronos_MANA_BACK()
func void KDW_604_Cronos_MANA_MAN_1()
func void KDW_604_Cronos_MANA_MAN_5()
instance KDW_604_Cronos_SELLSTUFF(C_Info)
func int KDW_604_Cronos_SELLSTUFF_Condition()
func void KDW_604_Cronos_SELLSTUFF_Info()
instance KDW_604_Cronos_Greet(C_Info)
func int KDW_604_Cronos_GREET_Condition()
func void KDW_604_Cronos_GREET_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_cycle_function.d
var int bFatnessFlag;
var int fatness;
func void b_cycle_function()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_cycle_hero.d
func void hero_OrePicking()
func void b_cycle_hero()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_diegolearn.d
func void b_diegolearn()
var int Diego_After_Gamestart;
instance Info_Diego_Gamestart(C_Info)
func int Info_Diego_Gamestart_Condition()
func void Info_Diego_Gamestart_Info()
instance Info_Diego_EXIT_Gamestart(C_Info)
func int Info_Diego_EXIT_Gamestart_Condition()
func void Info_Diego_EXIT_Gamestart_Info()
instance Info_Diego_EXIT_Later(C_Info)
func int Info_Diego_EXIT_Later_Condition()
func void Info_Diego_EXIT_Later_Info()
instance Info_Diego_Brief(C_Info)
func int Info_Diego_Brief_Condition()
func void Info_Diego_Brief_Info()
instance Info_Diego_WarumGeholfen(C_Info)
func int Info_Diego_WarumGeholfen_Condition()
func void Info_Diego_WarumGeholfen_Info()
instance Info_Diego_Bullit(C_Info)
func int Info_Diego_Bullit_Condition()
func void Info_Diego_Bullit_Info()
instance Info_Diego_Kolonie(C_Info)
func int Info_Diego_Kolonie_Condition()
func void Info_Diego_Kolonie_Info()
instance Info_Diego_Barriere(C_Info)
func int Info_Diego_Barriere_Condition()
func void Info_Diego_Barriere_Info()
instance Info_Diego_OtherCamps(C_Info)
func int Info_Diego_OtherCamps_Condition()
func void Info_Diego_OtherCamps_Info()
instance Info_Diego_OldCamp(C_Info)
func int Info_Diego_OldCamp_Condition()
func void Info_Diego_OldCamp_Info()
instance Info_Diego_WhosGomez(C_Info)
func int Info_Diego_WhosGomez_Condition()
func void Info_Diego_WhosGomez_Info()
instance Info_Diego_JoinOldcamp(C_Info)
func int Info_Diego_JoinOldcamp_Condition()
func void Info_Diego_JoinOldcamp_Info()
instance Info_Diego_WayToOldcamp(C_Info)
func int Info_Diego_WayToOldcamp_Condition()
func void Info_Diego_WayToOldcamp_Info()
instance Info_Diego_WoWaffe(C_Info)
func int Info_Diego_WoWaffe_Condition()
func void Info_Diego_WoWaffe_Info()
instance Info_Diego_ThorusSays(C_Info)
func int Info_Diego_ThorusSays_Condition()
func void Info_Diego_ThorusSays_Info()
instance Info_Diego_Rules(C_Info)
func int Info_Diego_Rules_Condition()
func void Info_Diego_Rules_Info()
instance Info_Diego_Celebs(C_Info)
func int Info_Diego_Celebs_Condition()
func void Info_Diego_Celebs_Info()
instance Info_Diego_Teachers(C_Info)
func int Info_Diego_Teachers_Condition()
func void Info_Diego_Teachers_Info()
var int Diego_Merke_STR;
var int Diego_Merke_DEX;
instance INFO_DIEGO_TEACH_PRE(C_Info)
func int info_diego_teach_pre_condition()
func void info_diego_teach_pre_info()
instance Info_Diego_Teach(C_Info)
func int Info_Diego_Teach_Condition()
func void Info_Diego_Teach_Info()
func void Info_Diego_Teach_BACK()
func void Info_Diego_Teach_STR_1()
func void Info_Diego_Teach_STR_5()
func void Info_Diego_Teach_DEX_1()
func void Info_Diego_Teach_DEX_5()
instance Info_Diego_BringList_Offer(C_Info)
func int Info_Diego_BringList_Offer_Condition()
func void Info_Diego_BringList_Offer_Info()
instance Info_Diego_IanPassword(C_Info)
func int Info_Diego_IanPassword_Condition()
func void Info_Diego_IanPassword_Info()
instance Info_Diego_MapToOldMine(C_Info)
func int Info_Diego_MapToOldMine_Condition()
func void Info_Diego_MapToOldMine_Info()
instance Info_Diego_BringList_Success(C_Info)
func int Info_Diego_BringList_Success_Condition()
func void Info_Diego_BringList_Success_Info()
var int Diego_GomezAudience;
instance Info_Diego_JoinAnalyze(C_Info)
func int Info_Diego_JoinAnalyze_Condition()
func void Info_Diego_JoinAnalyze_Info()
instance Info_Diego_WhatToSayToGomez(C_Info)
func int Info_Diego_WhatToSayToGomez_Condition()
func void Info_Diego_WhatToSayToGomez_Info()
instance PC_Thief_ARMOR(C_Info)
func int PC_Thief_ARMOR_Condition()
func void PC_Thief_ARMOR_Info()
instance PC_Thief_MEETAGAIN(C_Info)
func int PC_Thief_MEETAGAIN_Condition()
func void PC_Thief_MEETAGAIN_Info()
instance PC_Thief_SHOWFOCUS(C_Info)
func int PC_Thief_SHOWFOCUS_Condition()
func void PC_Thief_SHOWFOCUS_Info()
instance PC_Thief_AFTERTROLL(C_Info)
func int PC_Thief_AFTERTROLL_Condition()
func void PC_Thief_AFTERTROLL_Info()
instance PC_Thief_WHEEL(C_Info)
func int PC_Thief_WHEEL_Condition()
func void PC_Thief_WHEEL_Info()
instance PC_Thief_FIXWHEEL(C_Info)
func int PC_Thief_FIXWHEEL_Condition()
func void PC_Thief_FIXWHEEL_Info()
instance PC_Thief_WAITATFOCUS(C_Info)
func int PC_Thief_WAITATFOCUS_Condition()
func void PC_Thief_WAITATFOCUS_Info()
instance PC_Thief_GOTIT(C_Info)
func int PC_Thief_GOTIT_Condition()
func void PC_Thief_GOTIT_Info()
instance Info_Diego_OCWARN(C_Info)
func int Info_Diego_OCWARN_Condition()
func void Info_Diego_OCWARN_Info()
instance Info_Diego_OCMINE(C_Info)
func int Info_Diego_OCMINE_Condition()
func void Info_Diego_OCMINE_Info()
instance Info_Diego_OCKDF(C_Info)
func int Info_Diego_OCKDF_Condition()
func void Info_Diego_OCKDF_Info()
instance Info_Diego_OCFM(C_Info)
func int Info_Diego_OCFM_Condition()
func void Info_Diego_OCFM_Info()
instance Info_Diego_OCSTORY(C_Info)
func int Info_Diego_OCSTORY_Condition()
func void Info_Diego_OCSTORY_Info()
instance Info_Diego_OCWARNNC(C_Info)
func int Info_Diego_OCWARNNC_Condition()
func void Info_Diego_OCWARNNC_Info()
instance Info_Diego_OCGUARDS(C_Info)
func int Info_Diego_OCGUARDS_Condition()
func void Info_Diego_OCGUARDS_Info()
instance Info_Diego_OCMURDER(C_Info)
func int Info_Diego_OCMURDER_Condition()
func void Info_Diego_OCMURDER_Info()
instance Info_Diego_OCRETREAT(C_Info)
func int Info_Diego_OCRETREAT_Condition()
func void Info_Diego_OCRETREAT_Info()
instance Info_Diego_OCFAVOR(C_Info)
func int Info_Diego_OCFAVOR_Condition()
func void Info_Diego_OCFAVOR_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_draxlearn.d
func void b_draxlearn()
instance Org_819_Drax_Exit(C_Info)
func int Org_819_Drax_Exit_Condition()
func void Org_819_Drax_Exit_Info()
instance Org_819_Drax_HuntHere(C_Info)
func int Org_819_Drax_HuntHere_Condition()
func void Org_819_Drax_HuntHere_Info()
var int drax_Lehrer_frei;
instance Org_819_Drax_Scavenger(C_Info)
func int Org_819_Drax_Scavenger_Condition()
func void Org_819_Drax_Scavenger_Info()
instance Org_819_Drax_Creatures(C_Info)
func int Org_819_Drax_Creatures_Condition()
func void Org_819_Drax_Creatures_Info()
instance ORG_819_DRAX_TOOMUCH(C_Info)
func int org_819_drax_toomuch_condition()
func void org_819_drax_toomuch_info()
instance ORG_819_DRAX_LEARN(C_Info)
func int org_819_drax_learn_condition()
func void org_819_drax_learn_info()
func void org_819_drax_learn_back()
func void Org_819_Drax_Creatures_Zahn()
func void Org_819_Drax_Creatures_Fell()
func void Org_819_Drax_Creatures_Kralle()
func void Org_819_Drax_Creatures_Haut()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_failch4quests.d
func void b_failch4quests()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_GiveDeathInv.d
func void B_GiveDeathInv()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_GiveRiordianChapter1Potions.d
func void B_GiveRiordianChapter1Potions()
func void B_GiveRiordianChapter2Potions()
func void B_GiveRiordianChapter3Potions()
func void B_GiveRiordianChapter4Potions()
func void B_GiveRiordianChapter5Potions()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_GiveSkill.d
func int B_GiveSkill(var C_Npc typ,var int tal,var int NEW_Wert,var int LP_Cost)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_GiveXP.d
const int LP_PER_LEVEL = 10;
const int HP_PER_LEVEL = 12;
const int XP_PER_LEVEL_UNCONSCIOUS = 5;
const int XP_PER_LEVEL_DEAD = 10;
func void B_GiveXP(var int add_xp)
func void B_DeathXP()
func void B_UnconciousXP()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_albertochapter1crap.d
func void b_give_albertochapter1crap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_BaalCadarChapter1Runes.d
func void B_Give_BaalCadarChapter1Runes()
func void B_Give_BaalCadarChapter2Runes()
func void B_Give_BaalCadarChapter3Runes()
func void B_Give_BaalCadarChapter4Runes()
func void B_Give_BaalCadarChapter5Runes()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_bartholochapter1food.d
func void b_give_bartholochapter1food()
func void b_give_bartholochapter2food()
func void b_give_bartholochapter3food()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_CavalornChapter1Weapons.d
func void B_Give_CavalornChapter1Weapons()
func void B_Give_CavalornChapter2Weapons()
func void B_Give_CavalornChapter3Weapons()
func void B_Give_CavalornChapter4Weapons()
func void B_Give_CavalornChapter5Weapons()
func void B_Give_CavalornChapter6Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_cipherchapter1crap.d
func void b_give_cipherchapter1crap()
func void b_give_cipherchapter2crap()
func void b_give_cipherchapter3crap()
func void b_give_cipherchapter4crap()
func void b_give_cipherchapter5crap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_CronosChapter1Runes.d
func void B_Give_CronosChapter1Runes()
func void B_Give_CronosChapter2Runes()
func void B_Give_CronosChapter3Runes()
func void B_Give_CronosChapter4Runes()
func void B_Give_CronosChapter5Runes()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_DarrionChapter1Weapons.d
func void B_Give_DarrionChapter1Weapons()
func void B_Give_DarrionChapter2Weapons()
func void B_Give_DarrionChapter3Weapons()
func void B_Give_DarrionChapter4Weapons()
func void B_Give_DarrionChapter5Weapons()
func void B_Give_DarrionChapter6Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_FiskChapter1Weapons.d
func void B_Give_FiskChapter1Weapons()
func void B_Give_FiskChapter2Weapons()
func void B_Give_FiskChapter3Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_fortunochapter1herbs.d
func void b_give_fortunochapter1herbs()
func void b_give_fortunochapter2herbs()
func void b_give_fortunochapter3herbs()
func void b_give_fortunochapter4herbs()
func void b_give_fortunochapter5herbs()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_gornchapter1crap.d
func void b_give_gornchapter1crap()
func void b_give_gornchapter2crap()
func void b_give_gornchapter3crap()
func void b_give_gornchapter4crap()
func void b_give_gornchapter5crap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_mordragchapter1crap.d
func void b_give_mordragchapter1crap()
func void b_give_mordragchapter2crap()
func void b_give_mordragchapter3crap()
func void b_give_mordragchapter4crap()
func void b_give_mordragchapter5crap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_santinochapter1crap.d
func void b_give_santinochapter1crap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_ScorpioChapter4Weapons.d
func void B_Give_ScorpioChapter4Weapons()
func void B_Give_ScorpioChapter5Weapons()
func void B_Give_ScorpioChapter6Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_SharkyChapter1Weapons.d
func void B_Give_SharkyChapter1Weapons()
func void B_Give_SharkyChapter2Weapons()
func void B_Give_SharkyChapter3Weapons()
func void B_Give_SharkyChapter4Weapons()
func void B_Give_SharkyChapter5Weapons()
func void B_Give_SharkyChapter6Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_silaschapter1food.d
func void b_give_silaschapter1food()
func void b_give_silaschapter2food()
func void b_give_silaschapter3food()
func void b_give_silaschapter4food()
func void b_give_silaschapter5food()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_skipchapter1weapons.d
func void b_give_skipchapter1weapons()
func void B_Give_SkipChapter2Weapons()
func void B_Give_SkipChapter3Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_TorrezChapter1Runes.d
func void B_Give_TorrezChapter1Runes()
func void B_Give_TorrezChapter2Runes()
func void B_Give_TorrezChapter3Runes()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_give_viperchapter1nugget.d
func void b_give_viperchapter1nugget()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_WolfChapter1Weapons.d
func void B_Give_WolfChapter1Weapons()
func void B_Give_WolfChapter2Weapons()
func void B_Give_WolfChapter3Weapons()
func void B_Give_WolfChapter4Weapons()
func void B_Give_WolfChapter5Weapons()
func void B_Give_WolfChapter6Weapons()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Give_XardasChapter4Runes.d
func void B_Give_XardasChapter4Runes()
func void B_Give_XardasChapter5Runes()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_gornatothlearn.d
func void b_gornatothlearn()
instance DIA_TPL_1402_GorNaToth_Exit(C_Info)
func int DIA_TPL_1402_GorNaToth_Exit_Condition()
func void DIA_TPL_1402_GorNaToth_Exit_Info()
instance DIA_GorNaToth_Abweisend(C_Info)
func int DIA_GorNaToth_Abweisend_Condition()
func void DIA_GorNaToth_Abweisend_Info()
instance DIA_GorNaToth_AngarTalked(C_Info)
func int DIA_GorNaToth_AngarTalked_Condition()
func void DIA_GorNaToth_AngarTalked_Info()
func void DIA_GorNaToth_AngarTalked_Normal()
func void DIA_GorNaToth_AngarTalked_Shark()
func void DIA_GorNaToth_AngarTalked_Unworthy()
instance TPL_1402_GorNaToth_GETSTUFF(C_Info)
func int TPL_1402_GorNaToth_GETSTUFF_Condition()
func void TPL_1402_GorNaToth_GETSTUFF_Info()
var int gornatoth_armor_m_was_bought;
var int gornatoth_armor_h_was_bought;
instance TPL_1402_GorNaToth_ARMOR(C_Info)
func int TPL_1402_GorNaToth_ARMOR_Condition()
func void TPL_1402_GorNaToth_ARMOR_Info()
func void TPL_1402_GorNaToth_ARMOR_M()
func void TPL_1402_GorNaToth_ARMOR_H()
func void TPL_1402_GorNaToth_ARMOR_BACK()
instance TPL_1402_GORNATOTH_TEACH_PRE(C_Info)
func int tpl_1402_gornatoth_teach_pre_condition()
func void tpl_1402_gornatoth_teach_pre_info()
instance TPL_1402_GorNaToth_Teach(C_Info)
func int TPL_1402_GorNaToth_Teach_Condition()
func void TPL_1402_GorNaToth_Teach_Info()
func void TPL_1402_GorNaToth_Teach_BACK()
func void TPL_1402_GorNaToth_Teach_STR_1()
func void TPL_1402_GorNaToth_Teach_STR_5()
func void TPL_1402_GorNaToth_Teach_DEX_1()
func void TPL_1402_GorNaToth_Teach_DEX_5()
func void TPL_1402_GorNaToth_Teach_MAN_1()
func void TPL_1402_GorNaToth_Teach_MAN_5()
func void tpl_1402_gornatoth_teach_1h_1()
func void tpl_1402_gornatoth_teach_1h_2()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_InitializeStory.d
func void B_InitializeStory()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_InsertInExtremo.d
func void B_InsertInExtremo()
func void B_KillInExtremo()
func void B_InExtremoStartMusic()
func void B_InExtremoStopMusic()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_lareslearn.d
func void b_lareslearn()
instance ORG_801_Lares_Exit(C_Info)
func int ORG_801_Lares_Exit_Condition()
func void ORG_801_Lares_Exit_Info()
var int Lares_vorbeigemogelt;
instance ORG_801_Lares_YouHere(C_Info)
func int ORG_801_Lares_YouHere_Condition()
func void ORG_801_Lares_YouHere_Info()
instance ORG_801_Lares_WannaJoin(C_Info)
func int ORG_801_Lares_WannaJoin_Condition()
func void ORG_801_Lares_WannaJoin_Info()
instance ORG_801_Lares_BringList(C_Info)
func int ORG_801_Lares_BringList_Condition()
func void ORG_801_Lares_BringList_Info()
instance ORG_801_Lares_BringListBack(C_Info)
func int ORG_801_Lares_BringListBack_Condition()
func void ORG_801_Lares_BringListBack_Info()
instance ORG_801_Lares_BringListAnteil(C_Info)
func int ORG_801_Lares_BringListAnteil_Condition()
func void ORG_801_Lares_BringListAnteil_Info()
instance ORG_801_Lares_MordragSentMe(C_Info)
func int ORG_801_Lares_MordragSentMe_Condition()
func void ORG_801_Lares_MordragSentMe_Info()
instance ORG_801_Lares_Vorbeigemogelt(C_Info)
func int ORG_801_Lares_Vorbeigemogelt_Condition()
func void ORG_801_Lares_Vorbeigemogelt_Info()
var int Lares_Get400Ore;
instance ORG_801_Lares_GetKraut(C_Info)
func int ORG_801_Lares_GetKraut_Condition()
func void ORG_801_Lares_GetKraut_Info()
instance ORG_801_Lares_400Ore(C_Info)
func int ORG_801_Lares_400Ore_Condition()
func void ORG_801_Lares_400Ore_Info()
instance ORG_801_Lares_Reicht(C_Info)
func int ORG_801_Lares_Reicht_Condition()
func void ORG_801_Lares_Reicht_Info()
instance ORG_801_Lares_GotoKalom(C_Info)
func int ORG_801_Lares_GotoKalom_Condition()
func void ORG_801_Lares_GotoKalom_Info()
instance ORG_801_Lares_WhereLearn(C_Info)
func int ORG_801_Lares_WhereLearn_Condition()
func void ORG_801_Lares_WhereLearn_Info()
instance ORG_801_Lares_Teach(C_Info)
func int ORG_801_Lares_Teach_Condition()
func void ORG_801_Lares_Teach_Info()
func void ORG_801_Lares_Teach_BACK()
func void ORG_801_Lares_Teach_STR_1()
func void ORG_801_Lares_Teach_STR_5()
func void ORG_801_Lares_Teach_DEX_1()
func void ORG_801_Lares_Teach_DEX_5()
instance ORG_801_LARES_NEWLIST(C_Info)
func int org_801_lares_newlist_condition()
func void org_801_lares_newlist_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_leelearn.d
func void b_leelearn()
instance Sld_700_Lee_Exit(C_Info)
func int Sld_700_Lee_Exit_Condition()
func void Sld_700_Lee_Exit_Info()
instance Sld_700_Lee_Greet(C_Info)
func int Sld_700_Lee_Greet_Condition()
func void Sld_700_Lee_Greet_Info()
instance Sld_700_Lee_Define(C_Info)
func int Sld_700_Lee_Define_Condition()
func void Sld_700_Lee_Define_Info()
instance Sld_700_Lee_Mitmachen(C_Info)
func int Sld_700_Lee_Mitmachen_Condition()
func void Sld_700_Lee_Mitmachen_Info()
var int Lee_SldPossible;
instance Sld_700_Lee_NowReady(C_Info)
func int Sld_700_Lee_NowReady_Condition()
func void Sld_700_Lee_NowReady_Info()
instance Sld_700_Lee_BECOMESLDNOW(C_Info)
func int Sld_700_Lee_BECOMESLDNOW_Condition()
func void Sld_700_Lee_BECOMESLDNOW_Info()
func void Sld_700_Lee_BECOMESLDNOW_NOOTHER()
func void Sld_700_Lee_BECOMESLDNOW_FREEDOM()
func void Sld_700_Lee_BECOMESLDNOW_JUSTBECAUSE()
instance Sld_700_Lee_DAMNPAST(C_Info)
func int Sld_700_Lee_DAMNPAST_Condition()
func void Sld_700_Lee_DAMNPAST_Info()
instance Sld_700_Lee_FMTaken(C_Info)
func int Sld_700_Lee_FMTaken_Condition()
func void Sld_700_Lee_FMTaken_Info()
var int lee_armor_m_was_bought;
var int lee_armor_h_was_bought;
instance Sld_700_Lee_CHANGESIDE(C_Info)
func int Sld_700_Lee_CHANGESIDE_Condition()
func void Sld_700_Lee_CHANGESIDE_Info()
instance Sld_700_Lee_ARMOR(C_Info)
func int Sld_700_Lee_ARMOR_Condition()
func void Sld_700_Lee_ARMOR_Info()
func void Sld_700_Lee_ARMOR_BACK()
func void Sld_700_Lee_ARMOR_M()
func void Sld_700_Lee_ARMOR_H()
instance SLD_700_LEE_TEACH_PRE(C_Info)
func int sld_700_lee_teach_pre_condition()
func void sld_700_lee_teach_pre_info()
instance Sld_700_Lee_Teach(C_Info)
func int Sld_700_Lee_Teach_Condition()
func void Sld_700_Lee_Teach_Info()
func void Sld_700_Lee_Teach_BACK()
func void Sld_700_Lee_Teach_STR_1()
func void Sld_700_Lee_Teach_STR_5()
func void Sld_700_Lee_Teach_DEX_1()
func void Sld_700_Lee_Teach_DEX_5()
func void Sld_700_Lee_ZWEIHAND1()
func void Sld_700_Lee_ZWEIHAND2()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_MagicHurtNpc.d
func void B_MagicHurtNpc(var C_Npc attacker,var int damage)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_PointAtNpc.d
func void B_PointAtNpc(var C_Npc slf,var C_Npc oth,var C_Npc targ)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_RaiseAttribute.d
func void B_RaiseAttribute(var int attribute,var int value)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_Respawn.d
func void B_Respawn(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_SetDayTolerance.d
func int B_SetDayTolerance()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_setorg2hostile.d
func void b_setorg2hostile()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_SetRoguesToHostile.d
func void B_SetRoguesToHostile()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\B_SitUp.d
func void B_SitUp()
func void B_AwakeSit()
func void ZS_WaitForRescue()
func void ZS_WaitForRescue_Loop()
func void ZS_WaitForRescue_End()
instance FreemineOrc(C_Npc)
func void Rtn_FMstart_2101()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_thoruslearn.d
func void b_thoruslearn()
instance Info_Thorus_EXIT(C_Info)
func int Info_Thorus_EXIT_Condition()
func void Info_Thorus_EXIT_Info()
instance Info_Thorus_EnterCastle(C_Info)
func int Info_Thorus_EnterCastle_Condition()
func void Info_Thorus_EnterCastle_Info()
instance Info_Thorus_WorkForGomez(C_Info)
func int Info_Thorus_WorkForGomez_Condition()
func void Info_Thorus_WorkForGomez_Info()
instance Info_Thorus_DiegoSentMe(C_Info)
func int Info_Thorus_DiegoSentMe_Condition()
func void Info_Thorus_DiegoSentMe_Info()
instance Info_Thorus_TryMe(C_Info)
func int Info_Thorus_TryMe_Condition()
func void Info_Thorus_TryMe_Info()
instance Info_Thorus_TryMeAgain(C_Info)
func int Info_Thorus_TryMeAgain_Condition()
func void Info_Thorus_TryMeAgain_Info()
instance Info_Thorus_TryMeICanDoIt(C_Info)
func int Info_Thorus_TryMeICanDoIt_Condition()
func void Info_Thorus_TryMeICanDoIt_Info()
instance Info_Thorus_MordragKo_Offer(C_Info)
func int Info_Thorus_MordragKo_Offer_Condition()
func void Info_Thorus_MordragKo_Offer_Info()
func void Info_Thorus_MordragKo_OFFER_BACK()
func void Info_Thorus_MordragKo_KillHim()
func void Info_Thorus_MordragKo_Where()
func void Info_Thorus_MordragKo_MagesProtect()
func void Info_Thorus_MordragKo_MageProblem()
instance Info_Thorus_MordragKo_Analyze(C_Info)
func int Info_Thorus_MordragKo_Analyze_Condition()
func void Info_Thorus_MordragKo_Analyze_Info()
func void Info_Thorus_MordragKo_ANALYZE_BACK()
func void Info_Thorus_MordragKo_MordragDead()
func void Info_Thorus_MordragKo_MordragGone()
instance Info_Thorus_MordragFailed(C_Info)
func int Info_Thorus_MordragFailed_Condition()
func void Info_Thorus_MordragFailed_Info()
instance Info_Thorus_BribeGuard(C_Info)
func int Info_Thorus_BribeGuard_Condition()
func void Info_Thorus_BribeGuard_Info()
instance Info_Thorus_Give1000Ore(C_Info)
func int Info_Thorus_Give1000Ore_Condition()
func void Info_Thorus_Give1000Ore_Info()
instance Info_Thorus_LetterForMages(C_Info)
func int Info_Thorus_LetterForMages_Condition()
func void Info_Thorus_LetterForMages_Info()
func void info_thorus_letter_yes()
func void info_thorus_letter_no()
instance Info_Thorus_ReadyForGomez(C_Info)
func int Info_Thorus_ReadyForGomez_Condition()
func void Info_Thorus_ReadyForGomez_Info()
instance Info_Thorus_Krautbote(C_Info)
func int Info_Thorus_Krautbote_Condition()
func void Info_Thorus_Krautbote_Info()
var int thorus_Amulettgezeigt;
instance Info_Thorus_KdWSiegel(C_Info)
func int Info_Thorus_KdWSiegel_Condition()
func void Info_Thorus_KdWSiegel_Info()
instance Info_Thorus_SttGeschafft(C_Info)
func int Info_Thorus_SttGeschafft_Condition()
func void Info_Thorus_SttGeschafft_Info()
instance Info_Thorus_PERM2(C_Info)
func int Info_Thorus_PERM2_Condition()
func void Info_Thorus_PERM2_Info()
instance GRD_200_Thorus_GARDIST(C_Info)
func int GRD_200_Thorus_GARDIST_Condition()
func void GRD_200_Thorus_GARDIST_Info()
instance GRD_200_Thorus_AUFNAHME(C_Info)
func int GRD_200_Thorus_AUFNAHME_Condition()
func void GRD_200_Thorus_AUFNAHME_Info()
instance GRD_200_Thorus_NOCHWAS(C_Info)
func int GRD_200_Thorus_NOCHWAS_Condition()
func void GRD_200_Thorus_NOCHWAS_Info()
instance GRD_200_Thorus_WANNABEMAGE(C_Info)
func int GRD_200_Thorus_WANNABEMAGE_Condition()
func void GRD_200_Thorus_WANNABEMAGE_Info()
instance GRD_200_THORUS_TEACH_PRE(C_Info)
func int grd_200_thorus_teach_pre_condition()
func void grd_200_thorus_teach_pre_info()
instance GRD_200_Thorus_Teach(C_Info)
func int GRD_200_Thorus_Teach_Condition()
func void GRD_200_Thorus_Teach_Info()
func void GRD_200_Thorus_Teach_BACK()
func void GRD_200_Thorus_Teach_STR_1()
func void GRD_200_Thorus_Teach_STR_5()
func void GRD_200_Thorus_Teach_DEX_1()
func void GRD_200_Thorus_Teach_DEX_5()
func void GRD_200_Thorus_ZWEIHAND1()
func void GRD_200_Thorus_ZWEIHAND2()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_torrezlearn.d
func void b_torrezlearn()
instance DIA_Torrez_Exit(C_Info)
func int DIA_Torrez_Exit_Condition()
func void DIA_Torrez_Exit_Info()
instance DIA_Torrez_Hello(C_Info)
func int DIA_Torrez_Hello_Condition()
func void DIA_Torrez_Hello_Info()
instance DIA_Torrez_Belohnung(C_Info)
func int DIA_Torrez_Belohnung_Condition()
func void DIA_Torrez_Belohnung_Info()
func void DIA_Torrez_Belohnung_Str()
func void DIA_Torrez_Belohnung_Dex()
func void DIA_Torrez_Belohnung_Scrolls()
func void DIA_Torrez_Belohnung_ManaMax()
instance DIA_Torrez_BriefTausch(C_Info)
func int DIA_Torrez_BriefTausch_Condition()
func void DIA_Torrez_BriefTausch_Info()
instance DIA_Torrez_PERM(C_Info)
func int DIA_Torrez_PERM_Condition()
func void DIA_Torrez_PERM_Info()
instance KDF_405_Torrez_BOOK(C_Info)
func int KDF_405_Torrez_BOOK_Condition()
func void KDF_405_Torrez_BOOK_Info()
instance KDF_405_Torrez_SELLBOOKS(C_Info)
func int KDF_405_Torrez_SELLBOOKS_Condition()
func void KDF_405_Torrez_SELLBOOKS_Info()
instance KDF_405_Torrez_GREET(C_Info)
func int KDF_405_Torrez_GREET_Condition()
func void KDF_405_Torrez_GREET_Info()
instance KDF_405_Torrez_MANA(C_Info)
func int KDF_405_Torrez_MANA_Condition()
func void KDF_405_Torrez_MANA_Info()
func void KDF_405_Torrez_MANA_BACK()
func void KDF_405_Torrez_MANA_MAN_1()
func void KDF_405_Torrez_MANA_MAN_5()
instance KDF_405_Torrez_WANNABEMAGE(C_Info)
func int KDF_405_Torrez_WANNABEMAGE_Condition()
func void KDF_405_Torrez_WANNABEMAGE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_wedgelearn.d
func void b_wedgelearn()
instance DIA_Wedge_Exit(C_Info)
func int DIA_Wedge_Exit_Condition()
func void DIA_Wedge_Exit_Info()
instance DIA_Wedge_Psst(C_Info)
func int DIA_Wedge_Psst_Condition()
func void DIA_Wedge_Psst_Info()
instance DIA_Wedge_Hello(C_Info)
func int DIA_Wedge_Hello_Condition()
func void DIA_Wedge_Hello_Info()
instance DIA_Wedge_WarnsOfButch(C_Info)
func int DIA_Wedge_WarnsOfButch_Condition()
func void DIA_Wedge_WarnsOfButch_Info()
instance DIA_Wedge_Lehrer(C_Info)
func int DIA_Wedge_Lehrer_Condition()
func void DIA_Wedge_Lehrer_Info()
func void DIA_Wedge_Lehrer_Schleichen()
func void DIA_Wedge_Lehrer_Lockpick()
func void DIA_Wedge_Lehrer_Lockpick2()
func void DIA_Wedge_Lehrer_Pickpocket()
func void DIA_Wedge_Lehrer_Pickpocket2()
func void DIA_Wedge_Lehrer_BACK()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\b_wolflearn.d
func void b_wolflearn()
instance DIA_ORG_855_Wolf_Exit(C_Info)
func int DIA_ORG_855_Wolf_Exit_Condition()
func void DIA_ORG_855_Wolf_Exit_Info()
instance DIA_Wolf_Hello(C_Info)
func int DIA_Wolf_Hello_Condition()
func void DIA_Wolf_Hello_Info()
instance DIA_Wolf_GreetORG(C_Info)
func int DIA_Wolf_GreetORG_Condition()
func void DIA_Wolf_GreetORG_Info()
instance Org_855_Wolf_TRADE(C_Info)
func int Org_855_Wolf_TRADE_Condition()
func void Org_855_Wolf_TRADE_Info()
instance Org_855_Wolf_WhereHunter(C_Info)
func int Org_855_Wolf_WhereHunter_Condition()
func void Org_855_Wolf_WhereHunter_Info()
var int wolf_armor_m_was_bought;
var int wolf_armor_h_was_bought;
instance DIA_Wolf_SellArmor(C_Info)
func int DIA_Wolf_SellArmor_Condition()
func void DIA_Wolf_SellArmor_Info()
func void DIA_Wolf_SellArmor_BACK()
func void DIA_Wolf_SellArmor_M()
func void DIA_Wolf_SellArmor_H()
func void ORG_855_Wolf_TRAIN_Info()
func void ORG_855_Wolf_TRAINAGAIN_Info()
instance ORG_855_Wolf_Teach(C_Info)
func int ORG_855_Wolf_Teach_Condition()
func void ORG_855_Wolf_Teach_Info()
func void ORG_855_Wolf_Teach_BACK()
func void ORG_855_Wolf_Teach_DEX_1()
func void ORG_855_Wolf_Teach_DEX_5()
instance Info_Wolf_GOOD(C_Info)
func int Info_Wolf_GOOD_Condition()
func void Info_Wolf_GOOD_Info()
instance Info_Wolf_SPEAK(C_Info)
func int Info_Wolf_SPEAK_Condition()
func void Info_Wolf_SPEAK_Info()
instance Info_Wolf_SKIN(C_Info)
func int Info_Wolf_SKIN_Condition()
func void Info_Wolf_SKIN_Info()
instance Info_Wolf_PROFIT(C_Info)
func int Info_Wolf_PROFIT_Condition()
func void Info_Wolf_PROFIT_Info()
instance Info_Wolf_MCPLATESFEW(C_Info)
func int Info_Wolf_MCPLATESFEW_Condition()
func void Info_Wolf_MCPLATESFEW_Info()
instance Info_Wolf_MCPLATESENOUGH(C_Info)
func int Info_Wolf_MCPLATESENOUGH_Condition()
func void Info_Wolf_MCPLATESENOUGH_Info()
instance Info_Wolf_ARMORINWORK(C_Info)
func int Info_Wolf_ARMORINWORK_Condition()
func void Info_Wolf_ARMORINWORK_Info()
instance Info_Wolf_ARMORFINISHED(C_Info)
func int Info_Wolf_ARMORFINISHED_Condition()
func void Info_Wolf_ARMORFINISHED_Info()
instance Org_855_Wolf_SELLBOW(C_Info)
func int Org_855_Wolf_SELLBOW_Condition()
func void Org_855_Wolf_SELLBOW_Info()
instance ORG_855_WOLF_FISK(C_Info)
func int org_855_wolf_fisk_condition()
func void org_855_wolf_fisk_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\db_say.d
func void db_say(var C_Npc slf,var C_Npc oth,var string text)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Bau_2_EXIT.d
instance Info_Bau_2_EXIT(C_Info)
func int Info_Bau_2_EXIT_Condition()
func void Info_Bau_2_EXIT_Info()
instance Info_Bau_2_WichtigePersonen(C_Info)
func int Info_Bau_2_WichtigePersonen_Condition()
func void Info_Bau_2_WichtigePersonen_Info()
instance Info_Bau_2_DasLager(C_Info)
func int Info_Bau_2_DasLager_Condition()
func void Info_Bau_2_DasLager_Info()
instance Info_Bau_2_DieLage(C_Info)
func int Info_Bau_2_DieLage_Condition()
func void Info_Bau_2_DieLage_Info()
instance Info_Bau_2_Wasser(C_Info)
func int Info_Bau_2_Wasser_Condition()
func void Info_Bau_2_Wasser_Info()
instance INFO_BAU_2_WASSER_NOLEFTY(C_Info)
func int info_bau_2_wasser_nolefty_condition()
func void info_bau_2_wasser_nolefty_info()
func void B_AssignAmbientInfos_Bau_2(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Bau_4_EXIT.d
instance Info_Bau_4_EXIT(C_Info)
func int Info_Bau_4_EXIT_Condition()
func void Info_Bau_4_EXIT_Info()
instance Info_Bau_4_WichtigePersonen(C_Info)
func int Info_Bau_4_WichtigePersonen_Condition()
func void Info_Bau_4_WichtigePersonen_Info()
instance Info_Bau_4_DasLager(C_Info)
func int Info_Bau_4_DasLager_Condition()
func void Info_Bau_4_DasLager_Info()
instance Info_Bau_4_DieLage(C_Info)
func int Info_Bau_4_DieLage_Condition()
func void Info_Bau_4_DieLage_Info()
instance Info_Bau_4_Wasser(C_Info)
func int Info_Bau_4_Wasser_Condition()
func void Info_Bau_4_Wasser_Info()
instance INFO_BAU_4_WASSER_NOLEFTY(C_Info)
func int info_bau_4_wasser_nolefty_condition()
func void info_bau_4_wasser_nolefty_info()
func void B_AssignAmbientInfos_Bau_4(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Bau_9_EXIT.d
instance Info_Bau_9_EXIT(C_Info)
func int Info_Bau_9_EXIT_Condition()
func void Info_Bau_9_EXIT_Info()
instance Info_Bau_9_WichtigePersonen(C_Info)
func int Info_Bau_9_WichtigePersonen_Condition()
func void Info_Bau_9_WichtigePersonen_Info()
instance Info_Bau_9_DasLager(C_Info)
func int Info_Bau_9_DasLager_Condition()
func void Info_Bau_9_DasLager_Info()
instance Info_Bau_9_DieLage(C_Info)
func int Info_Bau_9_DieLage_Condition()
func void Info_Bau_9_DieLage_Info()
instance Info_Bau_9_Wasser(C_Info)
func int Info_Bau_9_Wasser_Condition()
func void Info_Bau_9_Wasser_Info()
instance INFO_BAU_9_WASSER_NOLEFTY(C_Info)
func int info_bau_9_wasser_nolefty_condition()
func void info_bau_9_wasser_nolefty_info()
func void B_AssignAmbientInfos_Bau_9(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_FindNPC_NC.d
instance Info_FindNPC_NC(C_Info)
func int Info_FindNPC_NC_Condition()
func void Info_FindNPC_NC_Info()
func void Info_FindNPC_NC_BACK()
func void Info_FindNPC_NC_Gorn()
func void Info_FindNPC_NC_Lares()
func void Info_FindNPC_NC_Lee()
func void Info_FindNPC_NC_Mage()
func void B_AssignFindNpc_NC(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_FindNPC_OC.d
instance Info_FindNPC_OC(C_Info)
func int Info_FindNPC_OC_Condition()
func void Info_FindNPC_OC_Info()
func void Info_FindNPC_OC_BACK()
func void Info_FindNPC_OC_Diego()
func void Info_FindNPC_OC_Thorus()
func void B_AssignFindNpc_OC(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_FindNPC_ST.d
instance Info_FindNPC_ST(C_Info)
func int Info_FindNPC_ST_Condition()
func void Info_FindNPC_ST_Info()
func void Info_FindNPC_ST_BACK()
func void Info_FindNPC_ST_CorAngar()
func void Info_FindNPC_ST_CorKalom()
func void Info_FindNPC_ST_YBerion()
func void B_AssignFindNpc_ST(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_grd_13_EXIT.d
instance Info_grd_13_EXIT(C_Info)
func int Info_grd_13_EXIT_Condition()
func void Info_grd_13_EXIT_Info()
instance Info_grd_13_EinerVonEuchWerden(C_Info)
func int Info_grd_13_EinerVonEuchWerden_Condition()
func void Info_grd_13_EinerVonEuchWerden_Info()
instance Info_grd_13_WichtigePersonen(C_Info)
func int Info_grd_13_WichtigePersonen_Condition()
func void Info_grd_13_WichtigePersonen_Info()
instance Info_grd_13_DasLager(C_Info)
func int Info_grd_13_DasLager_Condition()
func void Info_grd_13_DasLager_Info()
func void Info_grd_13_DasLager_Verstehe()
func void Info_grd_13_DasLager_WachenBestechen()
func void Info_grd_13_DasLager_GomezSprechen()
instance Info_grd_13_DieLage(C_Info)
func int Info_grd_13_DieLage_Condition()
func void Info_grd_13_DieLage_Info()
func void B_AssignAmbientInfos_grd_13(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Grd_6_EXIT.d
instance Info_Grd_6_EXIT(C_Info)
func int Info_Grd_6_EXIT_Condition()
func void Info_Grd_6_EXIT_Info()
instance Info_Grd_6_EinerVonEuchWerden(C_Info)
func int Info_Grd_6_EinerVonEuchWerden_Condition()
func void Info_Grd_6_EinerVonEuchWerden_Info()
instance Info_Grd_6_WichtigePersonen(C_Info)
func int Info_Grd_6_WichtigePersonen_Condition()
func void Info_Grd_6_WichtigePersonen_Info()
instance Info_Grd_6_DasLager(C_Info)
func int Info_Grd_6_DasLager_Condition()
func void Info_Grd_6_DasLager_Info()
func void Info_Grd_6_DasLager_Verstehe()
func void Info_Grd_6_DasLager_WasIstAerger()
instance Info_Grd_6_DieLage(C_Info)
func int Info_Grd_6_DieLage_Condition()
func void Info_Grd_6_DieLage_Info()
func void B_AssignAmbientInfos_GRD_6(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_grd_7_EXIT.d
instance Info_grd_7_EXIT(C_Info)
func int Info_grd_7_EXIT_Condition()
func void Info_grd_7_EXIT_Info()
instance Info_grd_7_EinerVonEuchWerden(C_Info)
func int Info_grd_7_EinerVonEuchWerden_Condition()
func void Info_grd_7_EinerVonEuchWerden_Info()
instance Info_grd_7_WichtigePersonen(C_Info)
func int Info_grd_7_WichtigePersonen_Condition()
func void Info_grd_7_WichtigePersonen_Info()
instance Info_grd_7_DasLager(C_Info)
func int Info_grd_7_DasLager_Condition()
func void Info_grd_7_DasLager_Info()
func void Info_grd_7_DasLager_Zurueck()
func void Info_grd_7_DasLager_Gardisten()
func void Info_grd_7_DasLager_Schatten()
func void Info_grd_7_DasLager_Buddler()
instance Info_grd_7_DieLage(C_Info)
func int Info_grd_7_DieLage_Condition()
func void Info_grd_7_DieLage_Info()
func void B_AssignAmbientInfos_grd_7(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Grd_13_EXIT.d
instance Info_Mine_Grd_13_EXIT(C_Info)
func int Info_Mine_Grd_13_EXIT_Condition()
func void Info_Mine_Grd_13_EXIT_Info()
instance Info_Mine_Grd_13_Mine(C_Info)
func int Info_Mine_Grd_13_Mine_Condition()
func void Info_Mine_Grd_13_Mine_Info()
instance Info_Mine_Grd_13_WichtigePersonen(C_Info)
func int Info_Mine_Grd_13_WichtigePersonen_Condition()
func void Info_Mine_Grd_13_WichtigePersonen_Info()
instance Info_Mine_Grd_13_DasLager(C_Info)
func int Info_Mine_Grd_13_DasLager_Condition()
func void Info_Mine_Grd_13_DasLager_Info()
instance Info_Mine_Grd_13_DieLage(C_Info)
func int Info_Mine_Grd_13_DieLage_Condition()
func void Info_Mine_Grd_13_DieLage_Info()
func void B_AssignAmbientInfos_Mine_grd_13(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Grd_6_EXIT.d
instance Info_Mine_Grd_6_EXIT(C_Info)
func int Info_Mine_Grd_6_EXIT_Condition()
func void Info_Mine_Grd_6_EXIT_Info()
instance Info_Mine_Grd_6_Mine(C_Info)
func int Info_Mine_Grd_6_Mine_Condition()
func void Info_Mine_Grd_6_Mine_Info()
instance Info_Mine_Grd_6_WichtigePersonen(C_Info)
func int Info_Mine_Grd_6_WichtigePersonen_Condition()
func void Info_Mine_Grd_6_WichtigePersonen_Info()
instance Info_Mine_Grd_6_Minecrawler(C_Info)
func int Info_Mine_Grd_6_Minecrawler_Condition()
func void Info_Mine_Grd_6_Minecrawler_Info()
instance Info_Mine_Grd_6_DieLage(C_Info)
func int Info_Mine_Grd_6_DieLage_Condition()
func void Info_Mine_Grd_6_DieLage_Info()
func void B_AssignAmbientInfos_Mine_GRD_6(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Grd_7_EXIT.d
instance Info_Mine_Grd_7_EXIT(C_Info)
func int Info_Mine_Grd_7_EXIT_Condition()
func void Info_Mine_Grd_7_EXIT_Info()
instance Info_Mine_Grd_7_Mine(C_Info)
func int Info_Mine_Grd_7_Mine_Condition()
func void Info_Mine_Grd_7_Mine_Info()
instance Info_Mine_Grd_7_WichtigePersonen(C_Info)
func int Info_Mine_Grd_7_WichtigePersonen_Condition()
func void Info_Mine_Grd_7_WichtigePersonen_Info()
instance Info_Mine_Grd_7_Minecrawler(C_Info)
func int Info_Mine_Grd_7_Minecrawler_Condition()
func void Info_Mine_Grd_7_Minecrawler_Info()
instance Info_Mine_Grd_7_DieLage(C_Info)
func int Info_Mine_Grd_7_DieLage_Condition()
func void Info_Mine_Grd_7_DieLage_Info()
func void B_AssignAmbientInfos_Mine_grd_7(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Org_13_EXIT.d
instance Info_Mine_Org_13_EXIT(C_Info)
func int Info_Mine_Org_13_EXIT_Condition()
func void Info_Mine_Org_13_EXIT_Info()
instance Info_Mine_Org_13_Mine(C_Info)
func int Info_Mine_Org_13_Mine_Condition()
func void Info_Mine_Org_13_Mine_Info()
instance Info_Mine_Org_13_WichtigePersonen(C_Info)
func int Info_Mine_Org_13_WichtigePersonen_Condition()
func void Info_Mine_Org_13_WichtigePersonen_Info()
instance Info_Mine_Org_13_DieLage(C_Info)
func int Info_Mine_Org_13_DieLage_Condition()
func void Info_Mine_Org_13_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Org_13(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Org_6_EXIT.d
instance Info_Mine_Org_6_EXIT(C_Info)
func int Info_Mine_Org_6_EXIT_Condition()
func void Info_Mine_Org_6_EXIT_Info()
instance Info_Mine_Org_6_Mine(C_Info)
func int Info_Mine_Org_6_Mine_Condition()
func void Info_Mine_Org_6_Mine_Info()
instance Info_Mine_Org_6_WichtigePersonen(C_Info)
func int Info_Mine_Org_6_WichtigePersonen_Condition()
func void Info_Mine_Org_6_WichtigePersonen_Info()
instance Info_Mine_Org_6_DieLage(C_Info)
func int Info_Mine_Org_6_DieLage_Condition()
func void Info_Mine_Org_6_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Org_6(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Org_7_EXIT.d
instance Info_Mine_Org_7_EXIT(C_Info)
func int Info_Mine_Org_7_EXIT_Condition()
func void Info_Mine_Org_7_EXIT_Info()
instance Info_Mine_Org_7_Mine(C_Info)
func int Info_Mine_Org_7_Mine_Condition()
func void Info_Mine_Org_7_Mine_Info()
instance Info_Mine_Org_7_WichtigePersonen(C_Info)
func int Info_Mine_Org_7_WichtigePersonen_Condition()
func void Info_Mine_Org_7_WichtigePersonen_Info()
instance Info_Mine_Org_7_DieLage(C_Info)
func int Info_Mine_Org_7_DieLage_Condition()
func void Info_Mine_Org_7_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Org_7(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Sld_11_EXIT.d
instance Info_Mine_Sld_11_EXIT(C_Info)
func int Info_Mine_Sld_11_EXIT_Condition()
func void Info_Mine_Sld_11_EXIT_Info()
instance Info_Mine_Sld_11_EinerVonEuchWerden(C_Info)
func int Info_Mine_Sld_11_EinerVonEuchWerden_Condition()
func void Info_Mine_Sld_11_EinerVonEuchWerden_Info()
instance Info_Mine_Sld_11_WichtigePersonen(C_Info)
func int Info_Mine_Sld_11_WichtigePersonen_Condition()
func void Info_Mine_Sld_11_WichtigePersonen_Info()
instance Info_Mine_Sld_11_DasLager(C_Info)
func int Info_Mine_Sld_11_DasLager_Condition()
func void Info_Mine_Sld_11_DasLager_Info()
instance Info_Mine_Sld_11_DieLage(C_Info)
func int Info_Mine_Sld_11_DieLage_Condition()
func void Info_Mine_Sld_11_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Sld_11(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Sld_8_EXIT.d
instance Info_Mine_Sld_8_EXIT(C_Info)
func int Info_Mine_Sld_8_EXIT_Condition()
func void Info_Mine_Sld_8_EXIT_Info()
instance Info_Mine_Sld_8_EinerVonEuchWerden(C_Info)
func int Info_Mine_Sld_8_EinerVonEuchWerden_Condition()
func void Info_Mine_Sld_8_EinerVonEuchWerden_Info()
instance Info_Mine_Sld_8_WichtigePersonen(C_Info)
func int Info_Mine_Sld_8_WichtigePersonen_Condition()
func void Info_Mine_Sld_8_WichtigePersonen_Info()
instance Info_Mine_Sld_8_DasLager(C_Info)
func int Info_Mine_Sld_8_DasLager_Condition()
func void Info_Mine_Sld_8_DasLager_Info()
instance Info_Mine_Sld_8_DieLage(C_Info)
func int Info_Mine_Sld_8_DieLage_Condition()
func void Info_Mine_Sld_8_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Sld_8(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Vlk_1_EXIT.d
instance Info_Mine_Vlk_1_EXIT(C_Info)
func int Info_Mine_Vlk_1_EXIT_Condition()
func void Info_Mine_Vlk_1_EXIT_Info()
instance Info_Mine_Vlk_1_Mine(C_Info)
func int Info_Mine_Vlk_1_Mine_Condition()
func void Info_Mine_Vlk_1_Mine_Info()
instance Info_Mine_Vlk_1_WichtigePersonen(C_Info)
func int Info_Mine_Vlk_1_WichtigePersonen_Condition()
func void Info_Mine_Vlk_1_WichtigePersonen_Info()
instance Info_Mine_Vlk_1_Minecrawler(C_Info)
func int Info_Mine_Vlk_1_Minecrawler_Condition()
func void Info_Mine_Vlk_1_Minecrawler_Info()
instance Info_Mine_Vlk_1_DieLage(C_Info)
func int Info_Mine_Vlk_1_DieLage_Condition()
func void Info_Mine_Vlk_1_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Vlk_1(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Vlk_2_EXIT.d
instance Info_Mine_Vlk_2_EXIT(C_Info)
func int Info_Mine_Vlk_2_EXIT_Condition()
func void Info_Mine_Vlk_2_EXIT_Info()
instance Info_Mine_Vlk_2_Mine(C_Info)
func int Info_Mine_Vlk_2_Mine_Condition()
func void Info_Mine_Vlk_2_Mine_Info()
instance Info_Mine_Vlk_2_WichtigePersonen(C_Info)
func int Info_Mine_Vlk_2_WichtigePersonen_Condition()
func void Info_Mine_Vlk_2_WichtigePersonen_Info()
instance Info_Mine_Vlk_2_Minecrawler(C_Info)
func int Info_Mine_Vlk_2_Minecrawler_Condition()
func void Info_Mine_Vlk_2_Minecrawler_Info()
instance Info_Mine_Vlk_2_DieLage(C_Info)
func int Info_Mine_Vlk_2_DieLage_Condition()
func void Info_Mine_Vlk_2_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Vlk_2(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Vlk_3_EXIT.d
instance Info_Mine_Vlk_3_EXIT(C_Info)
func int Info_Mine_Vlk_3_EXIT_Condition()
func void Info_Mine_Vlk_3_EXIT_Info()
instance Info_Mine_Vlk_3_Mine(C_Info)
func int Info_Mine_Vlk_3_Mine_Condition()
func void Info_Mine_Vlk_3_Mine_Info()
instance Info_Mine_Vlk_3_WichtigePersonen(C_Info)
func int Info_Mine_Vlk_3_WichtigePersonen_Condition()
func void Info_Mine_Vlk_3_WichtigePersonen_Info()
instance Info_Mine_Vlk_3_Minecrawler(C_Info)
func int Info_Mine_Vlk_3_Minecrawler_Condition()
func void Info_Mine_Vlk_3_Minecrawler_Info()
instance Info_Mine_Vlk_3_DieLage(C_Info)
func int Info_Mine_Vlk_3_DieLage_Condition()
func void Info_Mine_Vlk_3_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Vlk_3(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Mine_Vlk_4_EXIT.d
instance Info_Mine_Vlk_4_EXIT(C_Info)
func int Info_Mine_Vlk_4_EXIT_Condition()
func void Info_Mine_Vlk_4_EXIT_Info()
instance Info_Mine_Vlk_4_Mine(C_Info)
func int Info_Mine_Vlk_4_Mine_Condition()
func void Info_Mine_Vlk_4_Mine_Info()
instance Info_Mine_Vlk_4_WichtigePersonen(C_Info)
func int Info_Mine_Vlk_4_WichtigePersonen_Condition()
func void Info_Mine_Vlk_4_WichtigePersonen_Info()
instance Info_Mine_Vlk_4_Minecrawler(C_Info)
func int Info_Mine_Vlk_4_Minecrawler_Condition()
func void Info_Mine_Vlk_4_Minecrawler_Info()
instance Info_Mine_Vlk_4_DieLage(C_Info)
func int Info_Mine_Vlk_4_DieLage_Condition()
func void Info_Mine_Vlk_4_DieLage_Info()
func void B_AssignAmbientInfos_Mine_Vlk_4(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Nov_2_EXIT.d
instance Info_Nov_2_EXIT(C_Info)
func int Info_Nov_2_EXIT_Condition()
func void Info_Nov_2_EXIT_Info()
instance Info_Nov_2_EinerVonEuchWerden(C_Info)
func int Info_Nov_2_EinerVonEuchWerden_Condition()
func void Info_Nov_2_EinerVonEuchWerden_Info()
instance Info_Nov_2_WichtigePersonen(C_Info)
func int Info_Nov_2_WichtigePersonen_Condition()
func void Info_Nov_2_WichtigePersonen_Info()
instance Info_Nov_2_DasLager(C_Info)
func int Info_Nov_2_DasLager_Condition()
func void Info_Nov_2_DasLager_Info()
instance Info_Nov_2_DieLage(C_Info)
func int Info_Nov_2_DieLage_Condition()
func void Info_Nov_2_DieLage_Info()
func void B_AssignAmbientInfos_Nov_2(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Nov_3_EXIT.d
instance Info_Nov_3_EXIT(C_Info)
func int Info_Nov_3_EXIT_Condition()
func void Info_Nov_3_EXIT_Info()
instance Info_Nov_3_EinerVonEuchWerden(C_Info)
func int Info_Nov_3_EinerVonEuchWerden_Condition()
func void Info_Nov_3_EinerVonEuchWerden_Info()
instance Info_Nov_3_WichtigePersonen(C_Info)
func int Info_Nov_3_WichtigePersonen_Condition()
func void Info_Nov_3_WichtigePersonen_Info()
instance Info_Nov_3_DasLager(C_Info)
func int Info_Nov_3_DasLager_Condition()
func void Info_Nov_3_DasLager_Info()
instance Info_Nov_3_DieLage(C_Info)
func int Info_Nov_3_DieLage_Condition()
func void Info_Nov_3_DieLage_Info()
func void B_AssignAmbientInfos_Nov_3(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Nov_5_EXIT.d
instance Info_Nov_5_EXIT(C_Info)
func int Info_Nov_5_EXIT_Condition()
func void Info_Nov_5_EXIT_Info()
instance Info_Nov_5_EinerVonEuchWerden(C_Info)
func int Info_Nov_5_EinerVonEuchWerden_Condition()
func void Info_Nov_5_EinerVonEuchWerden_Info()
instance Info_Nov_5_WichtigePersonen(C_Info)
func int Info_Nov_5_WichtigePersonen_Condition()
func void Info_Nov_5_WichtigePersonen_Info()
instance Info_Nov_5_DasLager(C_Info)
func int Info_Nov_5_DasLager_Condition()
func void Info_Nov_5_DasLager_Info()
instance Info_Nov_5_DieLage(C_Info)
func int Info_Nov_5_DieLage_Condition()
func void Info_Nov_5_DieLage_Info()
func void B_AssignAmbientInfos_Nov_5(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Org_13_EXIT.d
instance Info_Org_13_EXIT(C_Info)
func int Info_Org_13_EXIT_Condition()
func void Info_Org_13_EXIT_Info()
instance Info_Org_13_EinerVonEuchWerden(C_Info)
func int Info_Org_13_EinerVonEuchWerden_Condition()
func void Info_Org_13_EinerVonEuchWerden_Info()
instance Info_Org_13_WichtigePersonen(C_Info)
func int Info_Org_13_WichtigePersonen_Condition()
func void Info_Org_13_WichtigePersonen_Info()
instance Info_Org_13_DasLager(C_Info)
func int Info_Org_13_DasLager_Condition()
func void Info_Org_13_DasLager_Info()
instance Info_Org_13_DieLage(C_Info)
func int Info_Org_13_DieLage_Condition()
func void Info_Org_13_DieLage_Info()
instance Info_Org_13_Krautprobe(C_Info)
func int Info_Org_13_Krautprobe_Condition()
func void Info_Org_13_Krautprobe_Info()
func void B_AssignAmbientInfos_Org_13(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Org_6_EXIT.d
instance Info_Org_6_EXIT(C_Info)
func int Info_Org_6_EXIT_Condition()
func void Info_Org_6_EXIT_Info()
instance Info_Org_6_EinerVonEuchWerden(C_Info)
func int Info_Org_6_EinerVonEuchWerden_Condition()
func void Info_Org_6_EinerVonEuchWerden_Info()
instance Info_Org_6_WichtigePersonen(C_Info)
func int Info_Org_6_WichtigePersonen_Condition()
func void Info_Org_6_WichtigePersonen_Info()
instance Info_Org_6_DasLager(C_Info)
func int Info_Org_6_DasLager_Condition()
func void Info_Org_6_DasLager_Info()
instance Info_Org_6_DieLage(C_Info)
func int Info_Org_6_DieLage_Condition()
func void Info_Org_6_DieLage_Info()
instance Info_Org_6_Krautprobe(C_Info)
func int Info_Org_6_Krautprobe_Condition()
func void Info_Org_6_Krautprobe_Info()
func void B_AssignAmbientInfos_Org_6(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Org_7_EXIT.d
instance Info_Org_7_EXIT(C_Info)
func int Info_Org_7_EXIT_Condition()
func void Info_Org_7_EXIT_Info()
instance Info_Org_7_EinerVonEuchWerden(C_Info)
func int Info_Org_7_EinerVonEuchWerden_Condition()
func void Info_Org_7_EinerVonEuchWerden_Info()
instance Info_Org_7_WichtigePersonen(C_Info)
func int Info_Org_7_WichtigePersonen_Condition()
func void Info_Org_7_WichtigePersonen_Info()
instance Info_Org_7_DasLager(C_Info)
func int Info_Org_7_DasLager_Condition()
func void Info_Org_7_DasLager_Info()
instance Info_Org_7_DieLage(C_Info)
func int Info_Org_7_DieLage_Condition()
func void Info_Org_7_DieLage_Info()
instance Info_Org_7_Krautprobe(C_Info)
func int Info_Org_7_Krautprobe_Condition()
func void Info_Org_7_Krautprobe_Info()
func void B_AssignAmbientInfos_Org_7(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\info_sfb_13_exit.d
instance INFO_SFB_13_EXIT(C_Info)
func int info_sfb_13_exit_condition()
func void info_sfb_13_exit_info()
instance INFO_SFB_13_HI(C_Info)
func int info_sfb_13_hi_condition()
func void info_sfb_13_hi_info()
func void b_assignambientinfos_sfb_13(var C_Npc slf)
instance INFO_SFB_14_EXIT(C_Info)
func int info_sfb_14_exit_condition()
func void info_sfb_14_exit_info()
instance INFO_SFB_14_HI(C_Info)
func int info_sfb_14_hi_condition()
func void info_sfb_14_hi_info()
func void b_assignambientinfos_sfb_14(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_SFB_1_EXIT.d
instance Info_SFB_1_EXIT(C_Info)
func int Info_SFB_1_EXIT_Condition()
func void Info_SFB_1_EXIT_Info()
instance Info_SFB_1_EinerVonEuchWerden(C_Info)
func int Info_SFB_1_EinerVonEuchWerden_Condition()
func void Info_SFB_1_EinerVonEuchWerden_Info()
instance Info_SFB_1_WichtigePersonen(C_Info)
func int Info_SFB_1_WichtigePersonen_Condition()
func void Info_SFB_1_WichtigePersonen_Info()
instance Info_SFB_1_DasLager(C_Info)
func int Info_SFB_1_DasLager_Condition()
func void Info_SFB_1_DasLager_Info()
instance Info_SFB_1_DieLage(C_Info)
func int Info_SFB_1_DieLage_Condition()
func void Info_SFB_1_DieLage_Info()
func void B_AssignAmbientInfos_SFB_1(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_SFB_2_Pre.d
instance Info_SFB_2_Pre(C_Info)
func int Info_SFB_2_Pre_Condition()
func void Info_SFB_2_Pre_Info()
instance Info_SFB_2_EXIT(C_Info)
func int Info_SFB_2_EXIT_Condition()
func void Info_SFB_2_EXIT_Info()
instance Info_SFB_2_EinerVonEuchWerden(C_Info)
func int Info_SFB_2_EinerVonEuchWerden_Condition()
func void Info_SFB_2_EinerVonEuchWerden_Info()
instance Info_SFB_2_WichtigePersonen(C_Info)
func int Info_SFB_2_WichtigePersonen_Condition()
func void Info_SFB_2_WichtigePersonen_Info()
instance Info_SFB_2_DasLager(C_Info)
func int Info_SFB_2_DasLager_Condition()
func void Info_SFB_2_DasLager_Info()
instance Info_SFB_2_DieLage(C_Info)
func int Info_SFB_2_DieLage_Condition()
func void Info_SFB_2_DieLage_Info()
func void B_AssignAmbientInfos_SFB_2(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_SFB_5_Pre.d
instance Info_SFB_5_Pre(C_Info)
func int Info_SFB_5_Pre_Condition()
func void Info_SFB_5_Pre_Info()
instance Info_SFB_5_EXIT(C_Info)
func int Info_SFB_5_EXIT_Condition()
func void Info_SFB_5_EXIT_Info()
instance Info_SFB_5_EinerVonEuchWerden(C_Info)
func int Info_SFB_5_EinerVonEuchWerden_Condition()
func void Info_SFB_5_EinerVonEuchWerden_Info()
instance Info_SFB_5_WichtigePersonen(C_Info)
func int Info_SFB_5_WichtigePersonen_Condition()
func void Info_SFB_5_WichtigePersonen_Info()
instance Info_SFB_5_DasLager(C_Info)
func int Info_SFB_5_DasLager_Condition()
func void Info_SFB_5_DasLager_Info()
instance Info_SFB_5_DieLage(C_Info)
func int Info_SFB_5_DieLage_Condition()
func void Info_SFB_5_DieLage_Info()
func void B_AssignAmbientInfos_SFB_5(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Sld_11_EXIT.d
instance Info_Sld_11_EXIT(C_Info)
func int Info_Sld_11_EXIT_Condition()
func void Info_Sld_11_EXIT_Info()
instance Info_Sld_11_EinerVonEuchWerden(C_Info)
func int Info_Sld_11_EinerVonEuchWerden_Condition()
func void Info_Sld_11_EinerVonEuchWerden_Info()
instance Info_Sld_11_WichtigePersonen(C_Info)
func int Info_Sld_11_WichtigePersonen_Condition()
func void Info_Sld_11_WichtigePersonen_Info()
instance Info_Sld_11_DasLager(C_Info)
func int Info_Sld_11_DasLager_Condition()
func void Info_Sld_11_DasLager_Info()
instance Info_Sld_11_DieLage(C_Info)
func int Info_Sld_11_DieLage_Condition()
func void Info_Sld_11_DieLage_Info()
instance Info_Sld_11_Krautprobe(C_Info)
func int Info_Sld_11_Krautprobe_Condition()
func void Info_Sld_11_Krautprobe_Info()
func void B_AssignAmbientInfos_Sld_11(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Sld_8_EXIT.d
instance Info_Sld_8_EXIT(C_Info)
func int Info_Sld_8_EXIT_Condition()
func void Info_Sld_8_EXIT_Info()
instance Info_Sld_8_EinerVonEuchWerden(C_Info)
func int Info_Sld_8_EinerVonEuchWerden_Condition()
func void Info_Sld_8_EinerVonEuchWerden_Info()
instance Info_Sld_8_WichtigePersonen(C_Info)
func int Info_Sld_8_WichtigePersonen_Condition()
func void Info_Sld_8_WichtigePersonen_Info()
instance Info_Sld_8_DasLager(C_Info)
func int Info_Sld_8_DasLager_Condition()
func void Info_Sld_8_DasLager_Info()
instance Info_Sld_8_DieLage(C_Info)
func int Info_Sld_8_DieLage_Condition()
func void Info_Sld_8_DieLage_Info()
instance Info_Sld_8_Krautprobe(C_Info)
func int Info_Sld_8_Krautprobe_Condition()
func void Info_Sld_8_Krautprobe_Info()
func void B_AssignAmbientInfos_Sld_8(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Stt_10_EXIT.d
instance Info_Stt_10_EXIT(C_Info)
func int Info_Stt_10_EXIT_Condition()
func void Info_Stt_10_EXIT_Info()
instance Info_Stt_10_EinerVonEuchWerden(C_Info)
func int Info_Stt_10_EinerVonEuchWerden_Condition()
func void Info_Stt_10_EinerVonEuchWerden_Info()
func void Info_Stt_10_EinerVonEuchWerden_Nein()
func void Info_Stt_10_EinerVonEuchWerden_Ja()
instance Info_Stt_10_WichtigePersonen(C_Info)
func int Info_Stt_10_WichtigePersonen_Condition()
func void Info_Stt_10_WichtigePersonen_Info()
instance Info_Stt_10_DasLager(C_Info)
func int Info_Stt_10_DasLager_Condition()
func void Info_Stt_10_DasLager_Info()
instance Info_Stt_10_DieLage(C_Info)
func int Info_Stt_10_DieLage_Condition()
func void Info_Stt_10_DieLage_Info()
func void B_AssignAmbientInfos_Stt_10(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Stt_12_EXIT.d
instance Info_Stt_12_EXIT(C_Info)
func int Info_Stt_12_EXIT_Condition()
func void Info_Stt_12_EXIT_Info()
instance Info_Stt_12_EinerVonEuchWerden(C_Info)
func int Info_Stt_12_EinerVonEuchWerden_Condition()
func void Info_Stt_12_EinerVonEuchWerden_Info()
instance Info_Stt_12_WichtigePersonen(C_Info)
func int Info_Stt_12_WichtigePersonen_Condition()
func void Info_Stt_12_WichtigePersonen_Info()
instance Info_Stt_12_DasLager(C_Info)
func int Info_Stt_12_DasLager_Condition()
func void Info_Stt_12_DasLager_Info()
instance Info_Stt_12_DieLage(C_Info)
func int Info_Stt_12_DieLage_Condition()
func void Info_Stt_12_DieLage_Info()
func void B_AssignAmbientInfos_Stt_12(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Tpl_13_EXIT.d
instance Info_Tpl_13_EXIT(C_Info)
func int Info_Tpl_13_EXIT_Condition()
func void Info_Tpl_13_EXIT_Info()
instance Info_Tpl_13_EinerVonEuchWerden(C_Info)
func int Info_Tpl_13_EinerVonEuchWerden_Condition()
func void Info_Tpl_13_EinerVonEuchWerden_Info()
instance Info_Tpl_13_WichtigePersonen(C_Info)
func int Info_Tpl_13_WichtigePersonen_Condition()
func void Info_Tpl_13_WichtigePersonen_Info()
instance Info_Tpl_13_DasLager(C_Info)
func int Info_Tpl_13_DasLager_Condition()
func void Info_Tpl_13_DasLager_Info()
instance Info_Tpl_13_DieLage(C_Info)
func int Info_Tpl_13_DieLage_Condition()
func void Info_Tpl_13_DieLage_Info()
func void B_AssignAmbientInfos_Tpl_13(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Tpl_8_EXIT.d
instance Info_Tpl_8_EXIT(C_Info)
func int Info_Tpl_8_EXIT_Condition()
func void Info_Tpl_8_EXIT_Info()
instance Info_Tpl_8_EinerVonEuchWerden(C_Info)
func int Info_Tpl_8_EinerVonEuchWerden_Condition()
func void Info_Tpl_8_EinerVonEuchWerden_Info()
instance Info_Tpl_8_WichtigePersonen(C_Info)
func int Info_Tpl_8_WichtigePersonen_Condition()
func void Info_Tpl_8_WichtigePersonen_Info()
instance Info_Tpl_8_DasLager(C_Info)
func int Info_Tpl_8_DasLager_Condition()
func void Info_Tpl_8_DasLager_Info()
instance Info_Tpl_8_DieLage(C_Info)
func int Info_Tpl_8_DieLage_Condition()
func void Info_Tpl_8_DieLage_Info()
func void B_AssignAmbientInfos_Tpl_8(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Vlk_1_EXIT.d
instance Info_Vlk_1_EXIT(C_Info)
func int Info_Vlk_1_EXIT_Condition()
func void Info_Vlk_1_EXIT_Info()
instance Info_Vlk_1_EinerVonEuchWerden(C_Info)
func int Info_Vlk_1_EinerVonEuchWerden_Condition()
func void Info_Vlk_1_EinerVonEuchWerden_Info()
instance Info_Vlk_1_WichtigePersonen(C_Info)
func int Info_Vlk_1_WichtigePersonen_Condition()
func void Info_Vlk_1_WichtigePersonen_Info()
instance Info_Vlk_1_DasLager(C_Info)
func int Info_Vlk_1_DasLager_Condition()
func void Info_Vlk_1_DasLager_Info()
instance Info_Vlk_1_DieLage(C_Info)
func int Info_Vlk_1_DieLage_Condition()
func void Info_Vlk_1_DieLage_Info()
func void B_AssignAmbientInfos_Vlk_1(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Vlk_2_EXIT.d
instance Info_Vlk_2_EXIT(C_Info)
func int Info_Vlk_2_EXIT_Condition()
func void Info_Vlk_2_EXIT_Info()
instance Info_Vlk_2_EinerVonEuchWerden(C_Info)
func int Info_Vlk_2_EinerVonEuchWerden_Condition()
func void Info_Vlk_2_EinerVonEuchWerden_Info()
instance Info_Vlk_2_WichtigePersonen(C_Info)
func int Info_Vlk_2_WichtigePersonen_Condition()
func void Info_Vlk_2_WichtigePersonen_Info()
instance Info_Vlk_2_DasLager(C_Info)
func int Info_Vlk_2_DasLager_Condition()
func void Info_Vlk_2_DasLager_Info()
instance Info_Vlk_2_DieLage(C_Info)
func int Info_Vlk_2_DieLage_Condition()
func void Info_Vlk_2_DieLage_Info()
func void B_AssignAmbientInfos_Vlk_2(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Vlk_3_EXIT.d
instance Info_Vlk_3_EXIT(C_Info)
func int Info_Vlk_3_EXIT_Condition()
func void Info_Vlk_3_EXIT_Info()
instance Info_Vlk_3_EinerVonEuchWerden(C_Info)
func int Info_Vlk_3_EinerVonEuchWerden_Condition()
func void Info_Vlk_3_EinerVonEuchWerden_Info()
instance Info_Vlk_3_WichtigePersonen(C_Info)
func int Info_Vlk_3_WichtigePersonen_Condition()
func void Info_Vlk_3_WichtigePersonen_Info()
instance Info_Vlk_3_DasLager(C_Info)
func int Info_Vlk_3_DasLager_Condition()
func void Info_Vlk_3_DasLager_Info()
instance Info_Vlk_3_DieLage(C_Info)
func int Info_Vlk_3_DieLage_Condition()
func void Info_Vlk_3_DieLage_Info()
func void B_AssignAmbientInfos_Vlk_3(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\B\Info_Vlk_4_EXIT.d
instance Info_Vlk_4_EXIT(C_Info)
func int Info_Vlk_4_EXIT_Condition()
func void Info_Vlk_4_EXIT_Info()
instance Info_Vlk_4_EinerVonEuchWerden(C_Info)
func int Info_Vlk_4_EinerVonEuchWerden_Condition()
func void Info_Vlk_4_EinerVonEuchWerden_Info()
instance Info_Vlk_4_WichtigePersonen(C_Info)
func int Info_Vlk_4_WichtigePersonen_Condition()
func void Info_Vlk_4_WichtigePersonen_Info()
instance Info_Vlk_4_DasLager(C_Info)
func int Info_Vlk_4_DasLager_Condition()
func void Info_Vlk_4_DasLager_Info()
instance Info_Vlk_4_DieLage(C_Info)
func int Info_Vlk_4_DieLage_Condition()
func void Info_Vlk_4_DieLage_Info()
func void B_AssignAmbientInfos_Vlk_4(var C_Npc slf)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Kapitelwechsel.d
func void B_Kapitelwechsel(var int neues_Kapitel)
func int C_IsChapter(var int chapter)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_AccessToXardas.d
func void B_Story_AccessToXardas()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_BackFromOrcGraveyard.d
func void B_Story_BackFromOrcGraveyard()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_BringFirstFocus.d
func void B_Story_BringFirstFocus()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_BringFoci.d
func void B_Story_BringFoci()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_BroughtFoci.d
func void B_Story_BroughtFoci()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_CancelFindXardas.d
func void B_Story_CancelFindXardas()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_CordsPost.d
func void B_Story_CordsPost()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_CuredOrc.d
func void B_Story_CuredOrc()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_EncounteredHighPriest.d
func void B_Story_EncounteredHighPriest()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_EnteredTemple.d
func void B_Story_EnteredTemple()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_ExploreSunkenTower.d
func void B_Story_ExploreSunkenTower()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_Feueraufnahme.d
func void B_Story_Feueraufnahme()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FindOrcShaman.d
func void B_Story_FindOrcShaman()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FindXardas.d
func void B_Story_FindXardas()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FMTaken.d
func void B_Story_FMTaken()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FoundOrcSlave.d
func void B_Story_FoundOrcSlave()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FoundUriziel.d
func void B_Story_FoundUriziel()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FoundUrShak.d
func void B_Story_FoundUrShak()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_FriendOfUrShak.d
func void B_Story_FriendOfUrShak()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_GornJoins.d
func void B_Story_GornJoins()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_GotoOrcGraveyard.d
func void B_Story_GotoOrcGraveyard()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_GotUluMulu.d
func void B_Story_GotUluMulu()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_JackalFight.d
func void B_Story_JackalFight()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_LeftFM.d
func void B_Story_LeftFM()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_LoadSword.d
func void B_Story_LoadSword()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_PrepareRitual.d
func void B_Story_PrepareRitual()
func int C_TimeForGreatPrayer()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_PrepareShowdown.d
func void B_Story_PrepareShowdown()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_RespawnOW.d
func void B_Story_RespawnOW()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_ReturnedFromUrShak.d
func void B_Story_ReturnedFromUrShak()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_SentToNC.d
func void B_Story_SentToNC()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_ShowedUrizielToXardas.d
func void B_Story_ShowedUrizielToXardas()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\CHAPTERS\B_Story_UrizielLoaded.d
func void B_Story_UrizielLoaded()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Events\EventsOldmine.d
func void event_om_crawler_01()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Events\EventsTemple.d
func void evt_tpl_01_func_01()
func void evt_tpl_07_func_01()
func void evt_tpl_07_func_02()
func void evt_tpl_07_func_03()
func void evt_tpl_08_func_01()
func void evt_tpl_13_func_01()
func void evt_tpl_13_func_02()
func void evt_tpl_13_func_03()
func void evt_tpl_16_func_01()
func void evt_tpl_sleeperdemon_01()
func void evt_tpl_sleeperdemon_02()
func void evt_tpl_sleeperdemon_03()
func void evt_tpl_sleeperdemon_04()
func void evt_tpl_sleeperdemon_05()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Events\MOB.d
func int mc_oldmine_asghan()
func int mc_oldmine_entrance()
func int mc_monasteryruin_gate()
func int mc_ogy_gate()
var int FM_GateOpen;
func int mc_fm_gate()
func int evt_trollschlucht_gate_trigger()
var int OrcCity_GateOpen;
func int MC_OrcCity_Gate()
func int MC_OrcCity_Sunctum_OuterGate()
func int evt_wheel_01_conditionfunc()
func void evt_wheel_01_s0()
func void evt_wheel_01_s1()
func int evt_wheel_02_conditionfunc()
func void evt_wheel_02_s0()
func void evt_wheel_02_s1()
func int evt_wheel_03_conditionfunc()
func void evt_wheel_03_s0()
func void evt_wheel_03_s1()
func int evt_wheel_04_conditionfunc()
func void evt_wheel_04_s0()
func void evt_wheel_04_s1()
func int evt_wheel_05_conditionfunc()
func void evt_wheel_05_s0()
func void evt_wheel_05_s1()
func int evt_wheel_06_conditionfunc()
func void evt_wheel_06_s0()
func void evt_wheel_06_s1()
func int evt_wheel_07_conditionfunc()
func void evt_wheel_07_s0()
func void evt_wheel_07_s1()
func int evt_wheel_d01_conditionfunc()
func void evt_wheel_d01_s0()
func void evt_wheel_d01_s1()
func int evt_wheel_d02_conditionfunc()
func void evt_wheel_d02_s0()
func void evt_wheel_d02_s1()
func int evt_wheel_d03_conditionfunc()
func void evt_wheel_d03_s0()
func void evt_wheel_d03_s1()
func int evt_wheel_d05_conditionfunc()
func void evt_wheel_d05_s0()
func void evt_wheel_d05_s1()
func int evt_wheel_d06_conditionfunc()
func void evt_wheel_d06_s0()
func void evt_wheel_d06_s1()
func int evt_wheel_d07_conditionfunc()
func void evt_wheel_d07_s1()
func int evt_wheel_08_conditionfunc()
func void evt_wheel_08_s0()
func void evt_wheel_08_s1()
func int evt_wheel_09_conditionfunc()
func void evt_wheel_09_s0()
func void evt_wheel_09_s1()
func int evt_wheel_10_conditionfunc()
func void evt_wheel_10_s0()
func void evt_wheel_10_s1()
func int evt_wheel_11_conditionfunc()
func void evt_wheel_11_s0()
func void evt_wheel_11_s1()
func int evt_wheel_12_conditionfunc()
func void evt_wheel_12_s0()
func void evt_wheel_12_s1()
func int evt_wheel_13_conditionfunc()
func void evt_wheel_13_s0()
func void evt_wheel_13_s1()
func int evt_wheel_d04_conditionfunc()
func void evt_wheel_d04_s0()
func void evt_wheel_d04_s1()
func void evt_teleportstation_func()
func void evt_ogy_calom_func()
func int ll1_cf()
func int ll2_cf()
func int ll2_itke_gomez_01_cf()
func int itke_gomez_01_cf()
func int itke_gomez_02_cf()
func int itke_gomez_03_cf()
func int itke_quentin_cf()
func int itke_weaponry_01_cf()
func int itke_weaponry_02_cf()
func int itke_weaponry_03_cf()
func int itke_weaponry_04_cf()
func int itke_berg_01_cf()
func int itke_focus5_cf()
func int itke_sunkentower_01_cf()
func int itke_sunkentower_02_cf()
func int itke_focus4_cf()
func int itkecavalorn01_cf()
func int itke_freemine_cf()
func int itke_yberion_cf()
func int itke_psi_kalom_01_cf()
func int dungeonkey_01_cf()
func int dungeonkey_02_cf()
func int dungeonkey_03_cf()
func int itke_gilbert_cf()
func int itkey_ob_smith_01_cf()
func int itke_storage_01_cf()
func int itke_storage_02_cf()
func int itke_storage_03_cf()
func int ll2_itkey_rb_01_cf()
func int ll2_orik_key_cf()
func int ll2_itke_tower_01_cf()
func int ll2_itke_tower_02_cf()
func int itke_om_02_cf()
func int itke_om_03_01_cf()
func int itke_om_03_02_cf()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\Events\Sleepabit.d
func void PC_Sleep(var int t)
func void sleepabit_s1()
instance PC_NoSleep(C_Info)
func int PC_NoSleep_Condition()
func void PC_NoSleep_Info()
instance PC_SleepTime_Morning(C_Info)
func int PC_SleepTime_Morning_Condition()
func void PC_SleepTime_Morning_Info()
instance PC_SleepTime_Noon(C_Info)
func int PC_SleepTime_Noon_Condition()
func void PC_SleepTime_Noon_Info()
instance PC_SleepTime_Evening(C_Info)
func int PC_SleepTime_Evening_Condition()
func void PC_SleepTime_Evening_Info()
instance PC_SleepTime_Midnight(C_Info)
func int PC_SleepTime_Midnight_Condition()
func void PC_SleepTime_Midnight_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Bau_900_Ricelord.d
instance DIA_Ricelord_EXIT(C_Info)
func int DIA_Ricelord_EXIT_Condition()
func void DIA_Ricelord_EXIT_Info()
instance DIA_Ricelord_Hello(C_Info)
func int DIA_Ricelord_Hello_Condition()
func void DIA_Ricelord_Hello_Info()
instance DIA_Ricelord_Arbeit(C_Info)
func int DIA_Ricelord_Arbeit_Condition()
func void DIA_Ricelord_Arbeit_Info()
instance DIA_Ricelord_TRADE(C_Info)
func int DIA_Ricelord_TRADE_Condition()
func void DIA_Ricelord_TRADE_Info()
var int ricelord_askedforwater_day;
instance DIA_Ricelord_LeftySentMe(C_Info)
func int DIA_Ricelord_LeftySentMe_Condition()
func void DIA_Ricelord_LeftySentMe_Info()
instance DIA_Ricelord_GetWater(C_Info)
func int DIA_Ricelord_GetWater_Condition()
func void DIA_Ricelord_GetWater_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_BAU_901_Horatio.d
instance DIA_Horatio_EXIT(C_Info)
func int DIA_Horatio_EXIT_Condition()
func void DIA_Horatio_EXIT_Info()
instance Info_Horatio_Wasser(C_Info)
func int Info_Horatio_Wasser_Condition()
func void Info_Horatio_Wasser_Info()
var int horatio_trouble;
instance DIA_Horatio_Hello(C_Info)
func int DIA_Horatio_Hello_Condition()
func void DIA_Horatio_Hello_Info()
func void DIA_Horatio_Hello_BeCool()
func void DIA_Horatio_Hello_PissOff()
instance DIA_Horatio_SORRY(C_Info)
func int DIA_Horatio_SORRY_Condition()
func void DIA_Horatio_SORRY_Info()
instance DIA_Horatio_Story(C_Info)
func int DIA_Horatio_Story_Condition()
func void DIA_Horatio_Story_Info()
instance DIA_Horatio_WhyHere(C_Info)
func int DIA_Horatio_WhyHere_Condition()
func void DIA_Horatio_WhyHere_Info()
var int horatio_StrFree;
instance DIA_Horatio_PleaseTeachSTR(C_Info)
func int DIA_Horatio_PleaseTeachSTR_Condition()
func void DIA_Horatio_PleaseTeachSTR_Info()
func void DIA_Horatio_PleaseTeachSTR_Attack()
func void DIA_Horatio_PleaseTeachSTR_Defend()
func void DIA_Horatio_PleaseTeachSTR_BACK()
func void DIA_Horatio_PleaseTeachSTR_Ricelord()
instance DIA_Horatio_ThoughtSTR(C_Info)
func int DIA_Horatio_ThoughtSTR_Condition()
func void DIA_Horatio_ThoughtSTR_Info()
func void DIA_Horatio_ThoughtSTR_NoIdea()
func void DIA_Horatio_ThoughtSTR_Ricelord()
func void DIA_Horatio_HelpSTR_LEARN_NOW()
instance DIA_Horatio_HelpSTR(C_Info)
func int DIA_Horatio_HelpSTR_Condition()
func void DIA_Horatio_HelpSTR_Info()
instance DIA_Horatio_Thanks(C_Info)
func int DIA_Horatio_Thanks_Condition()
func void DIA_Horatio_Thanks_Info()
instance INFO_HORATIO_WASSER_NOLEFTY(C_Info)
func int info_horatio_wasser_nolefty_condition()
func void info_horatio_wasser_nolefty_info()
instance DIA_HORATIO_HELLO2(C_Info)
func int dia_horatio_hello2_condition()
func void dia_horatio_hello2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_BAU_902_Pock.d
var int Pock_ForgetAll;
instance DIA_Pock_EXIT(C_Info)
func int DIA_Pock_EXIT_Condition()
func void DIA_Pock_EXIT_Info()
instance Info_Pock_Wasser(C_Info)
func int Info_Pock_Wasser_Condition()
func void Info_Pock_Wasser_Info()
instance DIA_Pock_Hello(C_Info)
func int DIA_Pock_Hello_Condition()
func void DIA_Pock_Hello_Info()
instance DIA_Pock_KnowMuch(C_Info)
func int DIA_Pock_KnowMuch_Condition()
func void DIA_Pock_KnowMuch_Info()
instance DIA_Pock_WhyJail(C_Info)
func int DIA_Pock_WhyJail_Condition()
func void DIA_Pock_WhyJail_Info()
instance DIA_Pock_ForgotAll(C_Info)
func int DIA_Pock_ForgotAll_Condition()
func void DIA_Pock_ForgotAll_Info()
instance INFO_POCK_WASSER_NOLEFTY(C_Info)
func int info_pock_wasser_nolefty_condition()
func void info_pock_wasser_nolefty_info()
instance DIA_POCK_HELLO2(C_Info)
func int dia_pock_hello2_condition()
func void dia_pock_hello2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_BAU_903_Rufus.d
instance DIA_Rufus_EXIT(C_Info)
func int DIA_Rufus_EXIT_Condition()
func void DIA_Rufus_EXIT_Info()
instance Info_Rufus_Wasser(C_Info)
func int Info_Rufus_Wasser_Condition()
func void Info_Rufus_Wasser_Info()
instance DIA_Rufus_Hello(C_Info)
func int DIA_Rufus_Hello_Condition()
func void DIA_Rufus_Hello_Info()
instance DIA_Rufus_Why(C_Info)
func int DIA_Rufus_Why_Condition()
func void DIA_Rufus_Why_Info()
instance DIA_Rufus_Ricelord(C_Info)
func int DIA_Rufus_Ricelord_Condition()
func void DIA_Rufus_Ricelord_Info()
instance INFO_RUFUS_WASSER_NOLEFTY(C_Info)
func int info_rufus_wasser_nolefty_condition()
func void info_rufus_wasser_nolefty_info()
instance DIA_RUFUS_HELLO2(C_Info)
func int dia_rufus_hello2_condition()
func void dia_rufus_hello2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_BAU_912_Jeremiah.d
instance DIA_Jeremiah_EXIT(C_Info)
func int DIA_Jeremiah_EXIT_Condition()
func void DIA_Jeremiah_EXIT_Info()
instance DIA_Jeremiah_Hallo(C_Info)
func int DIA_Jeremiah_Hallo_Condition()
func void DIA_Jeremiah_Hallo_Info()
var int Jeremiah_Bauer;
instance DIA_Jeremiah_PERM(C_Info)
func int DIA_Jeremiah_PERM_Condition()
func void DIA_Jeremiah_PERM_Info()
instance DIA_Jeremiah_Horatio(C_Info)
func int DIA_Jeremiah_Horatio_Condition()
func void DIA_Jeremiah_Horatio_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_BAU_935_Homer.d
instance DIA_Homer_EXIT(C_Info)
func int DIA_Homer_EXIT_Condition()
func void DIA_Homer_EXIT_Info()
instance DIA_Homer_Hello(C_Info)
func int DIA_Homer_Hello_Condition()
func void DIA_Homer_Hello_Info()
instance DIA_Homer_BuiltDam(C_Info)
func int DIA_Homer_BuiltDam_Condition()
func void DIA_Homer_BuiltDam_Info()
instance DIA_Homer_WannaHelp(C_Info)
func int DIA_Homer_WannaHelp_Condition()
func void DIA_Homer_WannaHelp_Info()
instance DIA_Homer_Running(C_Info)
func int DIA_Homer_Running_Condition()
func void DIA_Homer_Running_Info()
instance DIA_Homer_Success(C_Info)
func int DIA_Homer_Success_Condition()
func void DIA_Homer_Success_Info()
instance DIA_Homer_PERM(C_Info)
func int DIA_Homer_PERM_Condition()
func void DIA_Homer_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_EBR_100_Gomez.d
instance DIA_Gomez_Exit(C_Info)
func int DIA_Gomez_Exit_Condition()
func void DIA_Gomez_Exit_Info()
instance DIA_Gomez_Fault(C_Info)
func int DIA_Gomez_Fault_Condition()
func void DIA_Gomez_Fault_Info()
var int gomez_kontakte;
instance DIA_Gomez_Hello(C_Info)
func int DIA_Gomez_Hello_Condition()
func void DIA_Gomez_Hello_Info()
func void DIA_Gomez_Hello_ThorusSays()
func void DIA_Gomez_Hello_Kontakte()
func void DIA_Gomez_Hello_Spinner()
func void DIA_Gomez_Hello_KopfAb()
func void DIA_Gomez_Hello_Kontakte_YBerion()
func void DIA_Gomez_Hello_Kontakte_Kalom()
func void DIA_Gomez_Hello_Kontakte_Baals()
func void DIA_Gomez_Hello_Kontakte_Lares()
func void DIA_Gomez_Hello_Kontakte_NLHehler()
func void DIA_Gomez_Hello_Kontakte_ThatsAll()
instance DIA_Gomez_Dabei(C_Info)
func int DIA_Gomez_Dabei_Condition()
func void DIA_Gomez_Dabei_Info()
instance DIA_Gomez_NurSo(C_Info)
func int DIA_Gomez_NurSo_Condition()
func void DIA_Gomez_NurSo_Info()
instance DIA_EBR_100_Gomez_Wait4SC(C_Info)
func int DIA_EBR_100_Gomez_Wait4SC_Condition()
func void DIA_EBR_100_Gomez_Wait4SC_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_EBR_101_Scar.d
instance DIA_SCAR_EXIT(C_Info)
func int DIA_SCAR_EXIT_Condition()
func void DIA_SCAR_EXIT_Info()
instance DIA_SCAR_Hello(C_Info)
func int DIA_SCAR_Hello_Condition()
func void DIA_SCAR_Hello_Info()
instance DIA_SCAR_What(C_Info)
func int DIA_SCAR_What_Condition()
func void DIA_SCAR_What_Info()
instance DIA_SCAR_Frau(C_Info)
func int DIA_SCAR_Frau_Condition()
func void DIA_SCAR_Frau_Info()
instance DIA_SCAR_PERM(C_Info)
func int DIA_SCAR_PERM_Condition()
func void DIA_SCAR_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_EBR_102_Arto.d
instance DIA_ARTO_EXIT(C_Info)
func int DIA_ARTO_EXIT_Condition()
func void DIA_ARTO_EXIT_Info()
instance DIA_ARTO_Hello(C_Info)
func int DIA_ARTO_Hello_Condition()
func void DIA_ARTO_Hello_Info()
instance DIA_ARTO_What(C_Info)
func int DIA_ARTO_What_Condition()
func void DIA_ARTO_What_Info()
instance DIA_ARTO_PERM(C_Info)
func int DIA_ARTO_PERM_Condition()
func void DIA_ARTO_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_EBR_105_Raven.d
instance DIA_Raven_Exit(C_Info)
func int DIA_Raven_Exit_Condition()
func void DIA_Raven_Exit_Info()
instance DIA_Raven_FirstIn(C_Info)
func int DIA_Raven_FirstIn_Condition()
func void DIA_Raven_FirstIn_Info()
instance DIA_Raven_Who(C_Info)
func int DIA_Raven_Who_Condition()
func void DIA_Raven_Who_Info()
instance DIA_Raven_Krautbote(C_Info)
func int DIA_Raven_Krautbote_Condition()
func void DIA_Raven_Krautbote_Info()
instance DIA_Raven_Aufnahme(C_Info)
func int DIA_Raven_Aufnahme_Condition()
func void DIA_Raven_Aufnahme_Info()
instance DIA_Raven_There(C_Info)
func int DIA_Raven_There_Condition()
func void DIA_Raven_There_Info()
instance DIA_Raven_PERM(C_Info)
func int DIA_Raven_PERM_Condition()
func void DIA_Raven_PERM_Info()
instance DIA_Raven_BinDabei(C_Info)
func int DIA_Raven_BinDabei_Condition()
func void DIA_Raven_BinDabei_Info()
instance DIA_Raven_SpySect(C_Info)
func int DIA_Raven_SpySect_Condition()
func void DIA_Raven_SpySect_Info()
instance DIA_Raven_Equipment(C_Info)
func int DIA_Raven_Equipment_Condition()
func void DIA_Raven_Equipment_Info()
instance DIA_Raven_SpyBericht(C_Info)
func int DIA_Raven_SpyBericht_Condition()
func void DIA_Raven_SpyBericht_Info()
instance DIA_RAVEN_QUENTIN(C_Info)
func int dia_raven_quentin_condition()
func void dia_raven_quentin_info()
instance DIA_RAVEN_QUENTIN_DONE(C_Info)
func int dia_raven_quentin_done_condition()
func void dia_raven_quentin_done_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_EBR_106_Bartholo.d
var int bartholo_key_removed;
instance DIA_Bartholo_Exit(C_Info)
func int DIA_Bartholo_Exit_Condition()
func void DIA_Bartholo_Exit_Info()
instance Info_Bartholo_HAllo(C_Info)
func int Info_Bartholo_HAllo_Condition()
func void Info_Bartholo_HAllo_Info()
instance Info_Bartholo_PERM(C_Info)
func int Info_Bartholo_PERM_Condition()
func void Info_Bartholo_PERM_Info()
instance Info_Bartholo_Krautbote(C_Info)
func int Info_Bartholo_Krautbote_Condition()
func void Info_Bartholo_Krautbote_Info()
instance DIA_EBR_106_Bartholo_Wait4SC(C_Info)
func int DIA_EBR_106_Bartholo_Wait4SC_Condition()
func void DIA_EBR_106_Bartholo_Wait4SC_Info()
instance DIA_EBR_106_BARTHOLO_WAIT4SC2(C_Info)
func int dia_ebr_106_bartholo_wait4sc2_condition()
func void dia_ebr_106_bartholo_wait4sc2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_extro_avi.d
func void dia_extro_avi()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_FreemineOrc.d
instance Info_FreemineOrc_EXIT(C_Info)
func int Info_FreemineOrc_EXIT_Condition()
func void Info_FreemineOrc_EXIT_Info()
instance Info_FreemineOrc_INTRO(C_Info)
func int Info_FreemineOrc_INTRO_Condition()
func void Info_FreemineOrc_INTRO_Info()
instance Info_FreemineOrc_WASPASSIERT(C_Info)
func int Info_FreemineOrc_WASPASSIERT_Condition()
func void Info_FreemineOrc_WASPASSIERT_Info()
instance Info_FreemineOrc_WASTUN(C_Info)
func int Info_FreemineOrc_WASTUN_Condition()
func void Info_FreemineOrc_WASTUN_Info()
instance Info_FreemineOrc_OFFER(C_Info)
func int Info_FreemineOrc_OFFER_Condition()
func void Info_FreemineOrc_OFFER_Info()
instance Info_FreemineOrc_CRAWLER(C_Info)
func int Info_FreemineOrc_CRAWLER_Condition()
func void Info_FreemineOrc_CRAWLER_Info()
instance Info_FreemineOrc_TONGUE(C_Info)
func int Info_FreemineOrc_TONGUE_Condition()
func void Info_FreemineOrc_TONGUE_Info()
instance Info_FreemineOrc_SEARCHPOTION(C_Info)
func int Info_FreemineOrc_SEARCHPOTION_Condition()
func void Info_FreemineOrc_SEARCHPOTION_Info()
instance Info_FreemineOrc_SUCHEULUMULU(C_Info)
func int Info_FreemineOrc_SUCHEULUMULU_Condition()
func void Info_FreemineOrc_SUCHEULUMULU_Info()
instance Info_FreemineOrc_GIVEPOTION(C_Info)
func int Info_FreemineOrc_GIVEPOTION_Condition()
func void Info_FreemineOrc_GIVEPOTION_Info()
instance Info_FreemineOrc_FIREWARAN(C_Info)
func int Info_FreemineOrc_FIREWARAN_Condition()
func void Info_FreemineOrc_FIREWARAN_Info()
instance Info_FreemineOrc_FIREWARAN2(C_Info)
func int Info_FreemineOrc_FIREWARAN2_Condition()
func void Info_FreemineOrc_FIREWARAN2_Info()
instance Info_FreemineOrc_SHADOWBEAST(C_Info)
func int Info_FreemineOrc_SHADOWBEAST_Condition()
func void Info_FreemineOrc_SHADOWBEAST_Info()
instance Info_FreemineOrc_SHADOWBEAST2(C_Info)
func int Info_FreemineOrc_SHADOWBEAST2_Condition()
func void Info_FreemineOrc_SHADOWBEAST2_Info()
instance Info_FreemineOrc_SWAMPSHARK(C_Info)
func int Info_FreemineOrc_SWAMPSHARK_Condition()
func void Info_FreemineOrc_SWAMPSHARK_Info()
instance Info_FreemineOrc_SWAMPSHARK2(C_Info)
func int Info_FreemineOrc_SWAMPSHARK2_Condition()
func void Info_FreemineOrc_SWAMPSHARK2_Info()
instance Info_FreemineOrc_TROLL(C_Info)
func int Info_FreemineOrc_TROLL_Condition()
func void Info_FreemineOrc_TROLL_Info()
instance Info_FreemineOrc_TROLL2(C_Info)
func int Info_FreemineOrc_TROLL2_Condition()
func void Info_FreemineOrc_TROLL2_Info()
instance Info_FreemineOrc_LOOKINGULUMULU(C_Info)
func int Info_FreemineOrc_LOOKINGULUMULU_Condition()
func void Info_FreemineOrc_LOOKINGULUMULU_Info()
instance Info_FreemineOrc_EveryUlumulu(C_Info)
func int Info_FreemineOrc_EVERYULUMULU_Condition()
func void Info_FreemineOrc_EVERYULUMULU_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Grd_201_Jackal.d
instance Info_Jackal_EXIT(C_Info)
func int Info_Jackal_EXIT_Condition()
func void Info_Jackal_EXIT_Info()
var int Jackal_ProtectionPaid;
var int Jackal_PayDay;
instance Info_Jackal_Hello(C_Info)
func int Info_Jackal_Hello_Condition()
func void Info_Jackal_Hello_Info()
func void Info_Jackal_Hello_Pay()
func void info_jackal_hello_noore()
func void Info_Jackal_Hello_WhatDoIGet()
func void Info_Jackal_Hello_WhatIf()
func void Info_Jackal_Hello_Later()
instance Info_Jackal_Schutz(C_Info)
func int Info_Jackal_Schutz_Condition()
func void Info_Jackal_Schutz_Info()
instance Info_Jackal_PermPaid(C_Info)
func int Info_Jackal_PermPaid_Condition()
func void Info_Jackal_PermPaid_Info()
instance GRD_201_Jackal_WELCOME(C_Info)
func int GRD_201_Jackal_WELCOME_Condition()
func void GRD_201_Jackal_WELCOME_Info()
instance Info_Jackal_PAYDAY(C_Info)
func int Info_Jackal_PAYDAY_Condition()
func void Info_Jackal_PAYDAY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_203_Bullit.d
instance DIA_Bullit_Exit(C_Info)
func int DIA_Bullit_Exit_Condition()
func void DIA_Bullit_Exit_Info()
instance DIA_Bullit_First(C_Info)
func int DIA_Bullit_First_Condition()
func void DIA_Bullit_First_Info()
instance DIA_Bullit_AufsMAul(C_Info)
func int DIA_Bullit_AufsMAul_Condition()
func void DIA_Bullit_AufsMAul_Info()
instance DIA_GRD_203_Bullit_Wait4SC(C_Info)
func int DIA_GRD_203_Bullit_Wait4SC_Condition()
func void DIA_GRD_203_Bullit_Wait4SC_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_205_Scorpio.d
instance DIA_Scorpio_Exit(C_Info)
func int DIA_Scorpio_Exit_Condition()
func void DIA_Scorpio_Exit_Info()
instance DIA_Scorpio_Hello(C_Info)
func int DIA_Scorpio_Hello_Condition()
func void DIA_Scorpio_Hello_Info()
func void dia_scorpio_hello_cronosbrief()
func void DIA_Scorpio_Hello_JustLooking()
func void DIA_Scorpio_Hello_Mages()
func void DIA_Scorpio_Hello_Kraut()
func void DIA_Scorpio_Hello_Join()
instance DIA_Scorpio_REFUSETRAIN(C_Info)
func int DIA_Scorpio_REFUSETRAIN_Condition()
func void DIA_Scorpio_REFUSETRAIN_Info()
instance GRD_205_Scorpio_WELCOME(C_Info)
func int GRD_205_Scorpio_WELCOME_Condition()
func void GRD_205_Scorpio_WELCOME_Info()
instance GRD_205_Scorpio_CROSSBOW(C_Info)
func int GRD_205_Scorpio_CROSSBOW_Condition()
func void GRD_205_Scorpio_CROSSBOW_Info()
func void GRD_205_Scorpio_CROSSBOW_BACK()
func void GRD_205_Scorpio_CROSSBOW_OK()
instance GRD_205_Scorpio_CROSSBOW2(C_Info)
func int GRD_205_Scorpio_CROSSBOW2_Condition()
func void GRD_205_Scorpio_CROSSBOW2_Info()
func void GRD_205_Scorpio_CROSSBOW2_BACK()
func void GRD_205_Scorpio_CROSSBOW2_OK()
instance GRD_205_Scorpio_HeyPC(C_Info)
func int GRD_205_Scorpio_HeyPC_Condition()
func void GRD_205_Scorpio_HeyPC_Info()
instance GRD_205_Scorpio_BANISHED(C_Info)
func int GRD_205_Scorpio_BANISHED_Condition()
func void GRD_205_Scorpio_BANISHED_Info()
instance GRD_205_Scorpio_TRADE(C_Info)
func int GRD_205_Scorpio_TRADE_Condition()
func void GRD_205_Scorpio_TRADE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_208_Cutter.d
instance DIA_Cutter_Exit(C_Info)
func int DIA_Cutter_Exit_Condition()
func void DIA_Cutter_Exit_Info()
instance DIA_Cutter_Hello(C_Info)
func int DIA_Cutter_Hello_Condition()
func void DIA_Cutter_Hello_Info()
instance DIA_Cutter_Burg(C_Info)
func int DIA_Cutter_Burg_Condition()
func void DIA_Cutter_Burg_Info()
instance DIA_Cutter_PERM(C_Info)
func int DIA_Cutter_PERM_Condition()
func void DIA_Cutter_PERM_Info()
instance GRD_208_Cutter_WELCOME(C_Info)
func int GRD_208_Cutter_WELCOME_Condition()
func void GRD_208_Cutter_WELCOME_Info()
instance INFO_CUTTER_DIE(C_Info)
func int info_cutter_die_condition()
func void info_cutter_die_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_210_Scatty.d
instance DIA_Scatty_Exit(C_Info)
func int DIA_Scatty_Exit_Condition()
func void DIA_Scatty_Exit_Info()
instance DIA_Scatty_WhatDoYouDo(C_Info)
func int DIA_Scatty_WhatDoYouDo_Condition()
func void DIA_Scatty_WhatDoYouDo_Info()
var int Scatty_ChargeKirgo;
var int Scatty_ChargeKharim;
var int Scatty_ChargeGorHanis;
instance DIA_Scatty_JoinOC(C_Info)
func int DIA_Scatty_JoinOC_Condition()
func void DIA_Scatty_JoinOC_Info()
instance DIA_Scatty_KirgoSuccess(C_Info)
func int DIA_Scatty_KirgoSuccess_Condition()
func void DIA_Scatty_KirgoSuccess_Info()
instance DIA_Scatty_KHARIMSuccess(C_Info)
func int DIA_Scatty_KHARIMSuccess_Condition()
func void DIA_Scatty_KHARIMSuccess_Info()
instance DIA_Scatty_OtherCamps(C_Info)
func int DIA_Scatty_OtherCamps_Condition()
func void DIA_Scatty_OtherCamps_Info()
instance DIA_Scatty_WannaFight(C_Info)
func int DIA_Scatty_WannaFight_Condition()
func void DIA_Scatty_WannaFight_Info()
instance DIA_Scatty_TRAIN(C_Info)
func int DIA_Scatty_TRAIN_Condition()
func void DIA_Scatty_TRAIN_Info()
func void DIA_Scatty_TRAIN_BACK()
func void DIA_Scatty_TRAIN_1h()
func void DIA_Scatty_TRAIN_2h()
instance DIA_SCATTY_GORHANISSUCCESS(C_Info)
func int dia_scatty_gorhanissuccess_condition()
func void dia_scatty_gorhanissuccess_info()
instance DIA_SCATTY_WTF(C_Info)
func int dia_scatty_wtf_condition()
func void dia_scatty_wtf_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Grd_211_Skip.d
instance DIA_Skip_Exit(C_Info)
func int DIA_Skip_Exit_Condition()
func void DIA_Skip_Exit_Info()
var int Skip_TradeFree;
instance DIA_Skip_First(C_Info)
func int DIA_Skip_First_Condition()
func void DIA_Skip_First_Info()
func void DIA_Skip_First_Gomez()
func void DIA_Skip_First_Thorus()
func void DIA_Skip_First_BACK()
func void DIA_Skip_First_Thorus_Stranger()
func void DIA_Skip_First_Thorus_KickAss()
func void DIA_Skip_First_Thorus_AskHim()
func void DIA_Skip_First_Thorus_KickAssAGAIN()
instance DIA_Skip_VERPATZT(C_Info)
func int DIA_Skip_VERPATZT_Condition()
func void DIA_Skip_VERPATZT_Info()
instance GRD_211_Skip_TRADE(C_Info)
func int GRD_211_Skip_TRADE_Condition()
func void GRD_211_Skip_TRADE_Info()
instance GRD_211_Skip_WELCOME(C_Info)
func int GRD_211_Skip_WELCOME_Condition()
func void GRD_211_Skip_WELCOME_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Grd_212_Torwache.d
const string Grd_212_CHECKPOINT = "OCC_GATE_INSIDE";
instance Info_Grd_212_FirstWarn(C_Info)
func int Info_Grd_212_FirstWarn_Condition()
func void Info_Grd_212_FirstWarn_Info()
instance Info_Grd_212_LastWarn(C_Info)
func int Info_Grd_212_LastWarn_Condition()
func void Info_Grd_212_LastWarn_Info()
instance Info_Grd_212_Attack(C_Info)
func int Info_Grd_212_Attack_Condition()
func void Info_Grd_212_Attack_Info()
instance Info_Grd_212_EXIT(C_Info)
func int Info_Grd_212_EXIT_Condition()
func void Info_Grd_212_EXIT_Info()
instance Info_Grd_212_Abblitzen(C_Info)
func int Info_Grd_212_Abblitzen_Condition()
func void Info_Grd_212_Abblitzen_Info()
instance Info_Grd_212_FirstIn(C_Info)
func int Info_Grd_212_FirstIn_Condition()
func void Info_Grd_212_FirstIn_Info()
instance Info_Grd_212_Passgate(C_Info)
func int Info_Grd_212_Passgate_Condition()
func void Info_Grd_212_Passgate_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Grd_213_Torwache.d
const string Grd_213_CHECKPOINT = "OCC_GATE_INSIDE";
instance Info_Grd_213_FirstWarn(C_Info)
func int Info_Grd_213_FirstWarn_Condition()
func void Info_Grd_213_FirstWarn_Info()
instance Info_Grd_213_LastWarn(C_Info)
func int Info_Grd_213_LastWarn_Condition()
func void Info_Grd_213_LastWarn_Info()
instance Info_Grd_213_Attack(C_Info)
func int Info_Grd_213_Attack_Condition()
func void Info_Grd_213_Attack_Info()
instance Grd_213_Torwache_WELCOME(C_Info)
func int Grd_213_Torwache_WELCOME_Condition()
func void Grd_213_Torwache_WELCOME_Info()
instance Info_Grd_213_EXIT(C_Info)
func int Info_Grd_213_EXIT_Condition()
func void Info_Grd_213_EXIT_Info()
instance Info_Grd_213_Abblitzen(C_Info)
func int Info_Grd_213_Abblitzen_Condition()
func void Info_Grd_213_Abblitzen_Info()
instance Info_Grd_213_Passgate(C_Info)
func int Info_Grd_213_Passgate_Condition()
func void Info_Grd_213_Passgate_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_214_Torwache.d
instance DIA_Grd_214_Torwache_Exit(C_Info)
func int DIA_Grd_214_Torwache_Exit_Condition()
func void DIA_Grd_214_Torwache_Exit_Info()
instance DIA_Grd_214_Torwache_job(C_Info)
func int DIA_Grd_214_Torwache_job_Condition()
func void DIA_Grd_214_Torwache_job_Info()
instance Grd_214_Torwache_SEETHORUS(C_Info)
func int Grd_214_Torwache_SEETHORUS_Condition()
func void Grd_214_Torwache_SEETHORUS_Info()
instance Grd_214_Torwache_NODUSTY(C_Info)
func int Grd_214_Torwache_NODUSTY_Condition()
func void Grd_214_Torwache_NODUSTY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_215_Torwache.d
instance DIA_Grd_215_Torwache_Exit(C_Info)
func int DIA_Grd_215_Torwache_Exit_Condition()
func void DIA_Grd_215_Torwache_Exit_Info()
instance DIA_Grd_215_Torwache_First(C_Info)
func int DIA_Grd_215_Torwache_First_Condition()
func void DIA_Grd_215_Torwache_First_Info()
func void DIA_Grd_215_Torwache_First_Trouble()
func void DIA_Grd_215_Torwache_First_JustLooking()
func void DIA_Grd_215_Torwache_First_Diego()
func void dia_grd_215_torwache_first_nomoney()
func void DIA_Grd_215_Torwache_First_NoPay()
func void DIA_Grd_215_Torwache_First_Pay()
instance DIA_Grd_215_Torwache_PERM(C_Info)
func int DIA_Grd_215_Torwache_PERM_Condition()
func void DIA_Grd_215_Torwache_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_216_Torwache.d
instance DIA_Grd_216_Exit(C_Info)
func int DIA_Grd_216_Exit_Condition()
func void DIA_Grd_216_Exit_Info()
instance DIA_Grd_216_First(C_Info)
func int DIA_Grd_216_First_Condition()
func void DIA_Grd_216_First_Info()
instance DIA_Grd_216_DustyZoll(C_Info)
func int DIA_Grd_216_DustyZoll_Condition()
func void DIA_Grd_216_DustyZoll_Info()
func void DIA_Grd_216_DustyZoll_PissOff()
func void DIA_Grd_216_DustyZoll_ToPSI()
func void DIA_Grd_216_DustyZoll_LittleWalk()
instance GRD_216_Torwache_SEETHORUS(C_Info)
func int GRD_216_Torwache_SEETHORUS_Condition()
func void GRD_216_Torwache_SEETHORUS_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_217_Torwache.d
instance DIA_Grd_217_Exit(C_Info)
func int DIA_Grd_217_Exit_Condition()
func void DIA_Grd_217_Exit_Info()
instance DIA_Grd_217_First(C_Info)
func int DIA_Grd_217_First_Condition()
func void DIA_Grd_217_First_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Grd_218_Gardist.d
instance DIA_Grd_218_FirstIn(C_Info)
func int DIA_Grd_218_FirstIn_Condition()
func void DIA_Grd_218_FirstIn_Info()
const string Grd_218_CHECKPOINT = "OCC_BARONS_HALLWAY_FRONT";
instance Info_Grd_218_FirstWarn(C_Info)
func int Info_Grd_218_FirstWarn_Condition()
func void Info_Grd_218_FirstWarn_Info()
instance Info_Grd_218_Attack(C_Info)
func int Info_Grd_218_Attack_Condition()
func void Info_Grd_218_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_219_Stone.d
instance DIA_Stone_Hello(C_Info)
func int DIA_Stone_Hello_Condition()
func void DIA_Stone_Hello_Info()
instance DIA_Stone_NotSelling(C_Info)
func int DIA_Stone_NotSelling_Condition()
func void DIA_Stone_NotSelling_Info()
instance GRD_219_Stone_GETSTUFF(C_Info)
func int GRD_219_Stone_GETSTUFF_Condition()
func void GRD_219_Stone_GETSTUFF_Info()
var int stone_armor_m_was_bought;
var int stone_armor_h_was_bought;
instance GRD_219_Stone_BETTERARMOR(C_Info)
func int GRD_219_Stone_BETTERARMOR_Condition()
func void GRD_219_Stone_BETTERARMOR_Info()
func void GRD_219_Stone_BETTERARMOR_M()
func void GRD_219_Stone_BETTERARMOR_H()
func void GRD_219_Stone_BETTERARMOR_BACK()
instance DIA_GRD_219_Stone_Exit(C_Info)
func int DIA_GRD_219_Stone_Exit_Condition()
func void DIA_GRD_219_Stone_Exit_Info()
instance DIA_GRD_219_Stone(C_Info)
func int DIA_GRD_219_Stone_Condition()
func void DIA_GRD_219_Stone_Info()
instance DIA_GRD_219_Stone1(C_Info)
func int DIA_GRD_219_Stone1_Condition()
func void DIA_GRD_219_Stone1_Info()
instance DIA_GRD_219_Stone3(C_Info)
func int DIA_GRD_219_Stone3_Condition()
func void DIA_GRD_219_Stone3_Info()
instance DIA_GRD_219_Stone2(C_Info)
func int DIA_GRD_219_Stone2_Condition()
func void DIA_GRD_219_Stone2_Info()
instance DIA_GRD_219_Stone4(C_Info)
func int DIA_GRD_219_Stone4_Condition()
func void DIA_GRD_219_Stone4_Info()
instance DIA_GRD_219_Stone5(C_Info)
func int DIA_GRD_219_Stone5_Condition()
func void DIA_GRD_219_Stone5_Info()
instance DIA_GRD_219_Stone6(C_Info)
func int DIA_GRD_219_Stone6_Condition()
func void DIA_GRD_219_Stone6_Info()
instance DIA_GRD_219_Stone7(C_Info)
func int DIA_GRD_219_Stone7_Condition()
func void DIA_GRD_219_Stone7_Info()
instance STONE_HPRING(C_Item)
func void equip_stone_hpring()
func void unequip_stone_hpring()
instance STONE_DEFRING(C_Item)
func void equip_stone_defring()
func void unequip_stone_defring()
instance STONE_AMULET(C_Item)
func void equip_stone_amulet()
func void unequip_stone_amulet()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_224_Pacho.d
instance Info_Pacho_EXIT(C_Info)
func int Info_Pacho_EXIT_Condition()
func void Info_Pacho_EXIT_Info()
instance Info_Pacho_STOP(C_Info)
func int Info_Pacho_STOP_Condition()
func void Info_Pacho_STOP_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_233_Bloodwyn.d
instance Info_Bloodwyn_EXIT_Schutzgeld(C_Info)
func int Info_Bloodwyn_EXIT_Schutzgeld_Condition()
func void Info_Bloodwyn_EXIT_Schutzgeld_Info()
instance Info_Bloodwyn_Hello(C_Info)
func int Info_Bloodwyn_Hello_Condition()
func void Info_Bloodwyn_Hello_Info()
func void Info_Bloodwyn_Hello_ForgetIt()
func void Info_Bloodwyn_Hello_SollDrohungSein()
func void Info_Bloodwyn_Hello_HowMuch()
func void Info_Bloodwyn_Hello_OkTakeIt()
func void Info_Bloodwyn_Hello_NotNow()
instance Info_Bloodwyn_PayDay(C_Info)
func int Info_Bloodwyn_PayDay_Condition()
func void Info_Bloodwyn_PayDay_Info()
func void Info_Bloodwyn_PayDay_PayAgain()
func void Info_Bloodwyn_PayDay_PayNoMore()
instance Info_Bloodwyn_Doch(C_Info)
func int Info_Bloodwyn_Doch_Condition()
func void Info_Bloodwyn_Doch_Info()
instance Info_Bloodwyn_PayForJesse(C_Info)
func int Info_Bloodwyn_PayForJesse_Condition()
func void Info_Bloodwyn_PayForJesse_Info()
instance GRD_233_Bloodwyn_WELCOME(C_Info)
func int GRD_233_Bloodwyn_WELCOME_Condition()
func void GRD_233_Bloodwyn_WELCOME_Info()
instance Info_Bloodwyn_DIE(C_Info)
func int Info_Bloodwyn_DIE_Condition()
func void Info_Bloodwyn_DIE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_237_Gardist.d
const string Grd_237_CHECKPOINT = "OW_PATH_272";
instance Info_Grd_237_FirstWarn(C_Info)
func int Info_Grd_237_FirstWarn_Condition()
func void Info_Grd_237_FirstWarn_Info()
func void Info_Grd_237_FirstWarn_Info_RETREAT()
func void Info_Grd_237_FirstWarn_Info_YES()
func void info_grd_237_firstwarn_info_noore()
func void Info_Grd_237_FirstWarn_Info_NO()
instance Info_Grd_237_LastWarn(C_Info)
func int Info_Grd_237_LastWarn_Condition()
func void Info_Grd_237_LastWarn_Info()
instance Info_Grd_237_Attack(C_Info)
func int Info_Grd_237_Attack_Condition()
func void Info_Grd_237_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_245_Gardist.d
instance DIA_GRD_245_Hello(C_Info)
func int DIA_GRD_245_Hello_Condition()
func void DIA_GRD_245_Hello_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_251_Kirgo.d
instance Info_Kirgo_Exit(C_Info)
func int Info_Kirgo_Exit_Condition()
func void Info_Kirgo_Exit_Info()
instance Info_Kirgo_What(C_Info)
func int Info_Kirgo_What_Condition()
func void Info_Kirgo_What_Info()
instance Info_Kirgo_Good(C_Info)
func int Info_Kirgo_Good_Condition()
func void Info_Kirgo_Good_Info()
instance Info_Kirgo_Charge(C_Info)
func int Info_Kirgo_Charge_Condition()
func void Info_Kirgo_Charge_Info()
func void Info_Kirgo_Charge_NOW()
func void Info_Kirgo_Charge_Beer()
var C_Npc ARENA_FIGHTER_1;
instance Info_Kirgo_ChargeREAL(C_Info)
func int Info_Kirgo_ChargeREAL_Condition()
func void Info_Kirgo_ChargeREAL_Info()
instance Info_Kirgo_InArena(C_Info)
func int Info_Kirgo_InArena_Condition()
func void Info_Kirgo_InArena_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_254_Orry.d
instance DIA_Orry_PreExit(C_Info)
func int DIA_Orry_PreExit_Condition()
func void DIA_Orry_PreExit_Info()
instance DIA_Orry_Exit(C_Info)
func int DIA_Orry_Exit_Condition()
func void DIA_Orry_Exit_Info()
instance DIA_Orry_GuardGate(C_Info)
func int DIA_Orry_GuardGate_Condition()
func void DIA_Orry_GuardGate_Info()
func void DIA_Orry_GuardGate_No()
func void DIA_Orry_GuardGate_Yes()
instance DIA_Orry_NewCamp(C_Info)
func int DIA_Orry_NewCamp_Condition()
func void DIA_Orry_NewCamp_Info()
instance DIA_Orry_OldCamp(C_Info)
func int DIA_Orry_OldCamp_Condition()
func void DIA_Orry_OldCamp_Info()
instance DIA_Orry_Shore(C_Info)
func int DIA_Orry_Shore_Condition()
func void DIA_Orry_Shore_Info()
instance DIA_Orry_Woman(C_Info)
func int DIA_Orry_Woman_Condition()
func void DIA_Orry_Woman_Info()
instance DIA_Orry_Waffe(C_Info)
func int DIA_Orry_Waffe_Condition()
func void DIA_Orry_Waffe_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_255_Fletcher.d
instance DIA_Fletcher_EXIT(C_Info)
func int DIA_Fletcher_EXIT_Condition()
func void DIA_Fletcher_EXIT_Info()
instance DIA_Fletcher_First(C_Info)
func int DIA_Fletcher_First_Condition()
func void DIA_Fletcher_First_Info()
var int fletcher_whytalk;
instance DIA_Fletcher_Hello(C_Info)
func int DIA_Fletcher_Hello_Condition()
func void DIA_Fletcher_Hello_Info()
func void DIA_Fletcher_Hello_WhereElse()
func void DIA_Fletcher_Hello_WhyTalk()
func void DIA_Fletcher_Hello_ISee()
instance DIA_Fletcher_WoNek(C_Info)
func int DIA_Fletcher_WoNek_Condition()
func void DIA_Fletcher_WoNek_Info()
instance DIA_Fletcher_TroSchu(C_Info)
func int DIA_Fletcher_TroSchu_Condition()
func void DIA_Fletcher_TroSchu_Info()
var int fletcher_foundNek;
instance DIA_Fletcher_WegenNek(C_Info)
func int DIA_Fletcher_WegenNek_Condition()
func void DIA_Fletcher_WegenNek_Info()
instance DIA_Fletcher_Problem(C_Info)
func int DIA_Fletcher_Problem_Condition()
func void DIA_Fletcher_Problem_Info()
instance Grd_255_Fletcher_WELCOME(C_Info)
func int Grd_255_Fletcher_WELCOME_Condition()
func void Grd_255_Fletcher_WELCOME_Info()
instance Info_Fletcher_DIE(C_Info)
func int Info_Fletcher_DIE_Condition()
func void Info_Fletcher_DIE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_260_Drake.d
instance Grd_260_Drake_Exit(C_Info)
func int Grd_260_Drake_Exit_Condition()
func void Grd_260_Drake_Exit_Info()
instance Grd_260_Drake_Gefahr(C_Info)
func int Grd_260_Drake_Gefahr_Condition()
func void Grd_260_Drake_Gefahr_Info()
instance Grd_260_Drake_Crawler_Okay(C_Info)
func int Grd_260_Drake_Crawler_Okay_Condition()
func void Grd_260_Drake_Crawler_Okay_Info()
instance Grd_260_Drake_Mine(C_Info)
func int Grd_260_Drake_Mine_Condition()
func void Grd_260_Drake_Mine_Info()
instance Grd_260_Drake_Mine_Mehr(C_Info)
func int Grd_260_Drake_Mine_Mehr_Condition()
func void Grd_260_Drake_Mine_Mehr_Info()
instance Grd_260_Drake_Ian(C_Info)
func int Grd_260_Drake_Ian_Condition()
func void Grd_260_Drake_Ian_Info()
instance Grd_260_Drake_GARDEAUFNAHME(C_Info)
func int Grd_260_Drake_GARDEAUFNAHME_Condition()
func void Grd_260_Drake_GARDEAUFNAHME_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_261_Brandick.d
instance GRD_261_Brandick_Exit(C_Info)
func int GRD_261_Brandick_Exit_Condition()
func void GRD_261_Brandick_Exit_Info()
instance GRD_261_Brandick_ALEPH(C_Info)
func int GRD_261_Brandick_ALEPH_Condition()
func void GRD_261_Brandick_ALEPH_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_262_Aaron.d
instance GRD_262_Aaron_Exit(C_Info)
func int GRD_262_Aaron_Exit_Condition()
func void GRD_262_Aaron_Exit_Info()
instance GRD_262_Aaron_CHEST(C_Info)
func int GRD_262_Aaron_CHEST_Condition()
func void GRD_262_Aaron_CHEST_Info()
instance GRD_262_Aaron_BLUFF(C_Info)
func int GRD_262_Aaron_BLUFF_Condition()
func void GRD_262_Aaron_BLUFF_Info()
func void GRD_262_Aaron_BLUFF_ORE()
func void GRD_262_Aaron_BLUFF_BANDIT()
func void GRD_262_Aaron_BLUFF_IAN()
func void GRD_262_Aaron_BLUFF_GOOD()
func void GRD_262_Aaron_BLUFF_BAD()
func void GRD_262_Aaron_BLUFF_UGLY()
func void GRD_262_Aaron_BLUFF_BACK()
instance GRD_262_Aaron_PISSED(C_Info)
func int GRD_262_Aaron_PISSED_Condition()
func void GRD_262_Aaron_PISSED_Info()
instance GRD_262_Aaron_SELL(C_Info)
func int GRD_262_Aaron_SELL_Condition()
func void GRD_262_Aaron_SELL_Info()
instance GRD_262_Aaron_SELLNOW(C_Info)
func int GRD_262_Aaron_SELLNOW_Condition()
func void GRD_262_Aaron_SELLNOW_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_263_Asghan.d
instance Grd_263_Asghan_Exit(C_Info)
func int Grd_263_Asghan_Exit_Condition()
func void Grd_263_Asghan_Exit_Info()
instance Grd_263_Asghan_NEST(C_Info)
func int Grd_263_Asghan_NEST_Condition()
func void Grd_263_Asghan_NEST_Info()
instance Grd_263_Asghan_OPEN(C_Info)
func int Grd_263_Asghan_OPEN_Condition()
func void Grd_263_Asghan_OPEN_Info()
instance Grd_263_Asghan_OPEN_NOW(C_Info)
func int Grd_263_Asghan_OPEN_NOW_Condition()
func void Grd_263_Asghan_OPEN_NOW_Info()
instance Grd_263_Asghan_LAIRFOUND(C_Info)
func int Grd_263_Asghan_LAIRFOUND_Condition()
func void Grd_263_Asghan_LAIRFOUND_Info()
instance Grd_263_Asghan_SMALLTALK(C_Info)
func int Grd_263_Asghan_SMALLTALK_Condition()
func void Grd_263_Asghan_SMALLTALK_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_264_Gardist.d
instance Grd_264_Gardist_GARDEAUFNAHME(C_Info)
func int Grd_264_Gardist_GARDEAUFNAHME_Condition()
func void Grd_264_Gardist_GARDEAUFNAHME_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_271_Ulbert.d
instance GRD_271_ULBERT_Exit(C_Info)
func int GRD_271_ULBERT_Exit_Condition()
func void GRD_271_ULBERT_Exit_Info()
instance GRD_271_ULBERT_KEY(C_Info)
func int GRD_271_ULBERT_KEY_Condition()
func void GRD_271_ULBERT_KEY_Info()
instance GRD_271_ULBERT_TRICK(C_Info)
func int GRD_271_ULBERT_TRICK_Condition()
func void GRD_271_ULBERT_TRICK_Info()
instance GRD_271_ULBERT_DRINK(C_Info)
func int GRD_271_ULBERT_DRINK_Condition()
func void GRD_271_ULBERT_DRINK_Info()
instance GRD_271_ULBERT_DRUNK(C_Info)
func int GRD_271_ULBERT_DRUNK_Condition()
func void GRD_271_ULBERT_DRUNK_Info()
instance GRD_271_ULBERT_LOCK(C_Info)
func int GRD_271_ULBERT_LOCK_Condition()
func void GRD_271_ULBERT_LOCK_Info()
instance GRD_271_ULBERT_ANGRY(C_Info)
func int GRD_271_ULBERT_ANGRY_Condition()
func void GRD_271_ULBERT_ANGRY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_275_Brueckenwache.d
instance Info_GRD_275_PreExit(C_Info)
func int Info_GRD_275_PreExit_Condition()
func void Info_GRD_275_PreExit_Info()
instance Info_GRD_275_Exit(C_Info)
func int Info_GRD_275_Exit_Condition()
func void Info_GRD_275_Exit_Info()
instance Info_GRD_275_WasMachtIhrHier(C_Info)
func int Info_GRD_275_WasMachtIhrHier_Condition()
func void Info_GRD_275_WasMachtIhrHier_Info()
instance Info_GRD_275_Tips(C_Info)
func int Info_GRD_275_Tips_Condition()
func void Info_GRD_275_Tips_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_276_Brueckenwache.d
instance Info_GRD_276_Exit(C_Info)
func int Info_GRD_276_Exit_Condition()
func void Info_GRD_276_Exit_Info()
instance Info_GRD_276_Tips(C_Info)
func int Info_GRD_276_Tips_Condition()
func void Info_GRD_276_Tips_Info()
instance Info_GRD_276_Bla(C_Info)
func int Info_GRD_276_Bla_Condition()
func void Info_GRD_276_Bla_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_277_Gardist.d
instance Grd_277_Gardist_SITTINGORK(C_Info)
func int Grd_277_Gardist_SITTINGORK_Condition()
func void Grd_277_Gardist_SITTINGORK_Info()
instance Grd_277_Gardist_WORKINGORK(C_Info)
func int Grd_277_Gardist_WORKINGORK_Condition()
func void Grd_277_Gardist_WORKINGORK_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GRD_281_Gardist.d
instance DIA_Grd_281_Exit(C_Info)
func int DIA_Grd_281_Exit_Condition()
func void DIA_Grd_281_Exit_Info()
instance DIA_Grd_281_GuardGate(C_Info)
func int DIA_Grd_281_GuardGate_Condition()
func void DIA_Grd_281_GuardGate_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1200_YBerion.d
instance Info_Yberion_EXIT(C_Info)
func int Info_Yberion_EXIT_Condition()
func void Info_Yberion_EXIT_Info()
instance DIA_YBerion_Wache(C_Info)
func int DIA_YBerion_Wache_Condition()
func void DIA_YBerion_Wache_Info()
instance DIA_YBerion_Kennen(C_Info)
func int DIA_YBerion_Kennen_Condition()
func void DIA_YBerion_Kennen_Info()
instance Info_YBerion_BringFocus(C_Info)
func int Info_YBerion_BringFocus_Condition()
func void Info_YBerion_BringFocus_Info()
func void Info_YBerion_BringFocus_BACK()
func void Info_YBerion_BringFocus_OK()
func void Info_YBerion_BringFocus_WO()
func void Info_YBerion_BringFocus_FOKUS()
instance Info_YBerion_BringFocus_RUNNING(C_Info)
func int Info_YBerion_BringFocus_RUNNING_Condition()
func void Info_YBerion_BringFocus_RUNNING_Info()
instance Info_YBerion_BringFocus_Success(C_Info)
func int Info_YBerion_BringFocus_Success_Condition()
func void Info_YBerion_BringFocus_Success_Info()
instance Info_YBerion_NYRAS(C_Info)
func int Info_YBerion_NYRAS_Condition()
func void Info_YBerion_NYRAS_Info()
instance GUR_1200_Yberion_EARN(C_Info)
func int GUR_1200_Yberion_EARN_Condition()
func void GUR_1200_Yberion_EARN_Info()
instance YBERION_STEALKEY(C_Info)
func int yberion_stealkey_condition()
func void yberion_stealkey_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1201_CorKalom.d
instance GUR_1201_CorKalom_FIRST(C_Info)
func int GUR_1201_CorKalom_FIRST_Condition()
func void GUR_1201_CorKalom_FIRST_Info()
instance GUR_1201_CorKalom_WannaJoin(C_Info)
func int GUR_1201_CorKalom_WannaJoin_Condition()
func void GUR_1201_CorKalom_WannaJoin_Info()
instance GUR_1201_CorKalom_Recipe(C_Info)
func int GUR_1201_CorKalom_Recipe_Condition()
func void GUR_1201_CorKalom_Recipe_Info()
instance GUR_1201_CorKalom_Experimente(C_Info)
func int GUR_1201_CorKalom_Experimente_Condition()
func void GUR_1201_CorKalom_Experimente_Info()
instance GUR_1201_CorKalom_BRINGWEED(C_Info)
func int GUR_1201_CorKalom_BRINGWEED_Condition()
func void GUR_1201_CorKalom_BRINGWEED_Info()
var int corkalom_potions;
instance GUR_1201_CorKalom_Crawlerzangen(C_Info)
func int GUR_1201_CorKalom_Crawlerzangen_Condition()
func void GUR_1201_CorKalom_Crawlerzangen_Info()
instance GUR_1201_CorKalom_JoinPSI(C_Info)
func int GUR_1201_CorKalom_JoinPSI_Condition()
func void GUR_1201_CorKalom_JoinPSI_Info()
instance GUR_1201_CorKalom_JoinPSI2(C_Info)
func int GUR_1201_CorKalom_JoinPSI2_Condition()
func void GUR_1201_CorKalom_JoinPSI2_Info()
instance Info_Kalom_DrugMonopol(C_Info)
func int Info_Kalom_DrugMonopol_Condition()
func void Info_Kalom_DrugMonopol_Info()
instance Info_Kalom_Success(C_Info)
func int Info_Kalom_Success_Condition()
func void Info_Kalom_Success_Info()
instance Info_Kalom_KrautboteBACK(C_Info)
func int Info_Kalom_KrautboteBACK_Condition()
func void Info_Kalom_KrautboteBACK_Info()
instance Info_CorKalom_BringFocus(C_Info)
func int Info_CorKalom_BringFocus_Condition()
func void Info_CorKalom_BringFocus_Info()
instance Info_CorKalom_BLUFF(C_Info)
func int Info_CorKalom_BLUFF_Condition()
func void Info_CorKalom_BLUFF_Info()
instance GUR_1201_CorKalom_SACHE(C_Info)
func int GUR_1201_CorKalom_SACHE_Condition()
func void GUR_1201_CorKalom_SACHE_Info()
func void GUR_1201_CorKalom_SACHE_NEIN()
func void GUR_1201_CorKalom_SACHE_JA()
instance GUR_1201_CorKalom_VISION(C_Info)
func int GUR_1201_CorKalom_VISION_Condition()
func void GUR_1201_CorKalom_VISION_Info()
instance GUR_1201_CorKalom_NEST(C_Info)
func int GUR_1201_CorKalom_NEST_Condition()
func void GUR_1201_CorKalom_NEST_Info()
func void GUR_1201_CorKalom_WEG_ACCEPT()
instance GUR_1201_CorKalom_WEG(C_Info)
func int GUR_1201_CorKalom_WEG_Condition()
func void GUR_1201_CorKalom_WEG_Info()
instance GUR_1201_CorKalom_RAT(C_Info)
func int GUR_1201_CorKalom_RAT_Condition()
func void GUR_1201_CorKalom_RAT_Info()
instance GUR_1201_CorKalom_RUN(C_Info)
func int GUR_1201_CorKalom_RUN_Condition()
func void GUR_1201_CorKalom_RUN_Info()
instance GUR_1201_CorKalom_CRAWLER(C_Info)
func int GUR_1201_CorKalom_CRAWLER_Condition()
func void GUR_1201_CorKalom_CRAWLER_Info()
instance GUR_1201_CorKalom_FIND(C_Info)
func int GUR_1201_CorKalom_FIND_Condition()
func void GUR_1201_CorKalom_FIND_Info()
instance Info_CorKalom_BringMCQBalls_Success(C_Info)
func int Info_CorKalom_BringMCQBalls_Success_Condition()
func void Info_CorKalom_BringMCQBalls_Success_Info()
func void Info_CorKalom_BringMCQBalls_Success_RUNE()
func void Info_CorKalom_BringMCQBalls_Success_WAFFE()
func void Info_CorKalom_BringMCQBalls_Success_HEAL()
func void Info_CorKalom_BringMCQBalls_Success_ORE()
func void Info_CorKalom_BringMCQBalls_Success_MANA()
instance Info_CorKalom_BringBook(C_Info)
func int Info_CorKalom_BringBook_Condition()
func void Info_CorKalom_BringBook_Info()
func void Info_CorKalom_BringBook_BACK()
func void Info_CorKalom_BringBook_WHERE()
func void Info_CorKalom_BringBook_WHO()
func void Info_CorKalom_BringBook_EARN()
instance Info_CorKalom_BringBook_Success(C_Info)
func int Info_CorKalom_BringBook_Success_Condition()
func void Info_CorKalom_BringBook_Success_Info()
instance Info_CorKalom_Belohnung(C_Info)
func int Info_CorKalom_Belohnung_Condition()
func void Info_CorKalom_Belohnung_Info()
func void Info_CorKalom_Belohnung_SCROLL()
func void Info_CorKalom_Belohnung_ORE()
func void Info_CorKalom_Belohnung_MANA()
instance GUR_1201_CorKalom_Exit(C_Info)
func int GUR_1201_CorKalom_Exit_Condition()
func void GUR_1201_CorKalom_Exit_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1203_BaalTondral.d
instance DIA_BaalTondral_MuteExit(C_Info)
func int DIA_BaalTondral_MuteExit_Condition()
func void DIA_BaalTondral_MuteExit_Info()
instance DIA_BaalTondral_Exit(C_Info)
func int DIA_BaalTondral_Exit_Condition()
func void DIA_BaalTondral_Exit_Info()
instance DIA_BaalTondral_FanaticTeacher(C_Info)
func int DIA_BaalTondral_FanaticTeacher_Condition()
func void DIA_BaalTondral_FanaticTeacher_Info()
instance DIA_BaalTondral_YouTalked(C_Info)
func int DIA_BaalTondral_YouTalked_Condition()
func void DIA_BaalTondral_YouTalked_Info()
instance DIA_BaalTondral_Loyality(C_Info)
func int DIA_BaalTondral_Loyality_Condition()
func void DIA_BaalTondral_Loyality_Info()
instance DIA_BaalTondral_NewMember(C_Info)
func int DIA_BaalTondral_NewMember_Condition()
func void DIA_BaalTondral_NewMember_Info()
instance DIA_BaalTondral_NewMember2(C_Info)
func int DIA_BaalTondral_NewMember2_Condition()
func void DIA_BaalTondral_NewMember2_Info()
instance DIA_BaalTondral_DustySuccess(C_Info)
func int DIA_BaalTondral_DustySuccess_Condition()
func void DIA_BaalTondral_DustySuccess_Info()
instance DIA_BaalTondral_SendToKalom(C_Info)
func int DIA_BaalTondral_SendToKalom_Condition()
func void DIA_BaalTondral_SendToKalom_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1204_BaalNamib.d
instance DIA_BaalNamib_EXIT(C_Info)
func int DIA_BaalNamib_EXIT_Condition()
func void DIA_BaalNamib_EXIT_Info()
instance DIA_BaalNamib_NoTalk(C_Info)
func int DIA_BaalNamib_NoTalk_Condition()
func void DIA_BaalNamib_NoTalk_Info()
func void DIA_BaalNamib_NoTalk_Hi()
func void DIA_BaalNamib_NoTalk_Sleeper()
func void DIA_BaalNamib_NoTalk_Imp()
func void DIA_BaalNamib_NoTalk_ENDE()
instance DIA_BaalNamib_FirstTalk(C_Info)
func int DIA_BaalNamib_FirstTalk_Condition()
func void DIA_BaalNamib_FirstTalk_Info()
func void DIA_BaalNamib_FirstTalk_Mute()
func void DIA_BaalNamib_FirstTalk_Sleeper()
var int baalnamib_armor_h_was_bought;
instance GUR_1204_BaalNamib_ARMOR(C_Info)
func int GUR_1204_BaalNamib_ARMOR_Condition()
func void GUR_1204_BaalNamib_ARMOR_Info()
func void gur_1204_baalnamib_armor_back()
func void gur_1204_baalnamib_armor_buy()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1209_BaalOrun.d
instance DIA_BaalOrun_Exit(C_Info)
func int DIA_BaalOrun_Exit_Condition()
func void DIA_BaalOrun_Exit_Info()
var int BaalOrun_Ansprechbar;
var int BaalOrun_Sakrileg;
instance DIA_BaalOrun_NoTalk(C_Info)
func int DIA_BaalOrun_NoTalk_Condition()
func void DIA_BaalOrun_NoTalk_Info()
func void DIA_BaalOrun_NoTalk_Hi()
func void DIA_BaalOrun_NoTalk_Sleeper()
func void DIA_BaalOrun_NoTalk_Imp()
func void DIA_BaalOrun_NoTalk_ENDE()
instance DIA_BaalOrun_FirstTalk(C_Info)
func int DIA_BaalOrun_FirstTalk_Condition()
func void DIA_BaalOrun_FirstTalk_Info()
func void DIA_BaalOrun_FirstTalk_Where()
func void DIA_BaalOrun_FirstTalk_MuteEnde()
instance DIA_BaalOrun_GotWeed(C_Info)
func int DIA_BaalOrun_GotWeed_Condition()
func void DIA_BaalOrun_GotWeed_Info()
instance DIA_BaalOrun_WeedAtKaloms(C_Info)
func int DIA_BaalOrun_WeedAtKaloms_Condition()
func void DIA_BaalOrun_WeedAtKaloms_Info()
instance DIA_BaalOrun_Perm(C_Info)
func int DIA_BaalOrun_Perm_Condition()
func void DIA_BaalOrun_Perm_Info()
instance DIA_BAALORUN_HARLOKDEAD(C_Info)
func int dia_baalorun_harlokdead_condition()
func void dia_baalorun_harlokdead_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1210_BaalTyon.d
instance DIA_BaalTyon_Exit(C_Info)
func int DIA_BaalTyon_Exit_Condition()
func void DIA_BaalTyon_Exit_Info()
var int BaalTyon_Ansprechbar;
var int BaalTyon_Sakrileg;
instance DIA_BaalTyon_NoTalk(C_Info)
func int DIA_BaalTyon_NoTalk_Condition()
func void DIA_BaalTyon_NoTalk_Info()
func void DIA_BaalTyon_NoTalk_Hi()
func void DIA_BaalTyon_NoTalk_Sleeper()
func void DIA_BaalTyon_NoTalk_Imp()
func void DIA_BaalTyon_NoTalk_ENDE()
func void DIA_BaalTyon_SpecialJoint()
instance DIA_BaalTyon_Vision(C_Info)
func int DIA_BaalTyon_Vision_Condition()
func void DIA_BaalTyon_Vision_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1211_BaalLukor.d
instance Info_BaalLukor_EXIT(C_Info)
func int Info_BaalLukor_EXIT_Condition()
func void Info_BaalLukor_EXIT_Info()
instance Info_BaalLukor_MEET(C_Info)
func int Info_BaalLukor_MEET_Condition()
func void Info_BaalLukor_MEET_Info()
instance Info_BaalLukor_DEAD(C_Info)
func int Info_BaalLukor_DEAD_Condition()
func void Info_BaalLukor_DEAD_Info()
instance Info_BaalLukor_SUMMONING(C_Info)
func int Info_BaalLukor_SUMMONING_Condition()
func void Info_BaalLukor_SUMMONING_Info()
instance Info_BaalLukor_HELP(C_Info)
func int Info_BaalLukor_HELP_Condition()
func void Info_BaalLukor_HELP_Info()
instance Info_BaalLukor_FOUNDNONE(C_Info)
func int Info_BaalLukor_FOUNDNONE_Condition()
func void Info_BaalLukor_FOUNDNONE_Info()
instance Info_BaalLukor_FOUNDONE(C_Info)
func int Info_BaalLukor_FOUNDONE_Condition()
func void Info_BaalLukor_FOUNDONE_Info()
instance Info_BaalLukor_FIRSTWAIT(C_Info)
func int Info_BaalLukor_FIRSTWAIT_Condition()
func void Info_BaalLukor_FIRSTWAIT_Info()
instance Info_BaalLukor_FIRSTSCROLL(C_Info)
func int Info_BaalLukor_FIRSTSCROLL_Condition()
func void Info_BaalLukor_FIRSTSCROLL_Info()
instance Info_BaalLukor_SECONDWAIT(C_Info)
func int Info_BaalLukor_SECONDWAIT_Condition()
func void Info_BaalLukor_SECONDWAIT_Info()
instance Info_BaalLukor_SECONDSCROLL(C_Info)
func int Info_BaalLukor_SECONDSCROLL_Condition()
func void Info_BaalLukor_SECONDSCROLL_Info()
instance Info_BaalLukor_BOTHSCROLLS(C_Info)
func int Info_BaalLukor_BOTHSCROLLS_Condition()
func void Info_BaalLukor_BOTHSCROLLS_Info()
instance Info_BaalLukor_RUNES(C_Info)
func int Info_BaalLukor_RUNES_Condition()
func void Info_BaalLukor_RUNES_Info()
instance Info_BaalLukor_WHATNOW(C_Info)
func int Info_BaalLukor_WHATNOW_Condition()
func void Info_BaalLukor_WHATNOW_Info()
instance Info_BaalLukor_HALLWITHOUT(C_Info)
func int Info_BaalLukor_HALLWITHOUT_Condition()
func void Info_BaalLukor_HALLWITHOUT_Info()
instance Info_BaalLukor_HALLWITH(C_Info)
func int Info_BaalLukor_HALLWITH_Condition()
func void Info_BaalLukor_HALLWITH_Info()
instance Info_BaalLukor_DOOR(C_Info)
func int Info_BaalLukor_DOOR_Condition()
func void Info_BaalLukor_DOOR_Info()
instance Info_BaalLukor_TELEPORT(C_Info)
func int Info_BaalLukor_TELEPORT_Condition()
func void Info_BaalLukor_TELEPORT_Info()
instance Info_BaalLukor_ALTAR(C_Info)
func int Info_BaalLukor_ALTAR_Condition()
func void Info_BaalLukor_ALTAR_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_GUR_1212_MadCorKalom.d
instance GUR_1212_MadCorKalom_Talk2SC(C_Info)
func int GUR_1212_MadCorKalom_Talk2SC_Condition()
func void GUR_1212_MadCorKalom_Talk2SC_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_IE_397_Announcer.d
instance IE_397_Announcer_Exit(C_Info)
func int IE_397_Announcer_Exit_Condition()
func void IE_397_Announcer_Exit_Info()
instance IE_397_Announcer_ANNOUNCE(C_Info)
func int IE_397_Announcer_ANNOUNCE_Condition()
func void IE_397_Announcer_ANNOUNCE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDF_400_Rodriguez.d
instance DIA_Rodriguez_Exit(C_Info)
func int DIA_Rodriguez_Exit_Condition()
func void DIA_Rodriguez_Exit_Info()
instance DIA_Rodriguez_Hello(C_Info)
func int DIA_Rodriguez_Hello_Condition()
func void DIA_Rodriguez_Hello_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDF_401_Damarok.d
instance KDF_401_Damarok_WELCOME(C_Info)
func int KDF_401_Damarok_WELCOME_Condition()
func void KDF_401_Damarok_WELCOME_Info()
instance KDF_401_Damarok_Exit(C_Info)
func int KDF_401_Damarok_Exit_Condition()
func void KDF_401_Damarok_Exit_Info()
instance KDF_401_DAMAROK_TEACH(C_Info)
func int kdf_401_damarok_teach_condition()
func void kdf_401_damarok_teach_info()
func void kdf_401_damarok_teach_back()
func void kdf_401_damarok_teach_alchemy()
instance KDF_401_DAMAROK_TRADE(C_Info)
func int kdf_401_damarok_trade_condition()
func void kdf_401_damarok_trade_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDF_403_Drago.d
instance KDF_403_Drago_RUNE(C_Info)
func int KDF_403_Drago_RUNE_Condition()
func void KDF_403_Drago_RUNE_Info()
instance KDF_403_Drago_Exit(C_Info)
func int KDF_403_Drago_Exit_Condition()
func void KDF_403_Drago_Exit_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDF_404_Xardas.d
instance Info_Xardas_EXIT(C_Info)
func int Info_Xardas_EXIT_Condition()
func void Info_Xardas_EXIT_Info()
instance Info_Xardas_DISTURB(C_Info)
func int Info_Xardas_DISTURB_Condition()
func void Info_Xardas_DISTURB_Info()
instance Info_Xardas_OTHERS(C_Info)
func int Info_Xardas_OTHERS_Condition()
func void Info_Xardas_OTHERS_Info()
instance Info_Xardas_SATURAS(C_Info)
func int Info_Xardas_SATURAS_Condition()
func void Info_Xardas_SATURAS_Info()
instance Info_Xardas_KDW(C_Info)
func int Info_Xardas_KDW_Condition()
func void Info_Xardas_KDW_Info()
instance Info_Xardas_SLEEPER(C_Info)
func int Info_Xardas_SLEEPER_Condition()
func void Info_Xardas_SLEEPER_Info()
instance Info_Xardas_DANGER(C_Info)
func int Info_Xardas_DANGER_Condition()
func void Info_Xardas_DANGER_Info()
instance Info_Xardas_BARRIER(C_Info)
func int Info_Xardas_BARRIER_Condition()
func void Info_Xardas_BARRIER_Info()
instance Info_Xardas_EVENT(C_Info)
func int Info_Xardas_EVENT_Condition()
func void Info_Xardas_EVENT_Info()
instance Info_Xardas_EVENTWHY(C_Info)
func int Info_Xardas_EVENTWHY_Condition()
func void Info_Xardas_EVENTWHY_Info()
instance Info_Xardas_EVENTHOW(C_Info)
func int Info_Xardas_EVENTHOW_Condition()
func void Info_Xardas_EVENTHOW_Info()
instance Info_Xardas_EVENTWHERE(C_Info)
func int Info_Xardas_EVENTWHERE_Condition()
func void Info_Xardas_EVENTWHERE_Info()
instance Info_Xardas_ACCEPT(C_Info)
func int Info_Xardas_ACCEPT_Condition()
func void Info_Xardas_ACCEPT_Info()
instance Kdf_404_Xardas_SELLMAGICSTUFF(C_Info)
func int Kdf_404_Xardas_SELLMAGICSTUFF_Condition()
func void Kdf_404_Xardas_SELLMAGICSTUFF_Info()
instance Info_Xardas_RETURN(C_Info)
func int Info_Xardas_RETURN_Condition()
func void Info_Xardas_RETURN_Info()
instance Info_Xardas_FOUNDTEMPLE(C_Info)
func int Info_Xardas_FOUNDTEMPLE_Condition()
func void Info_Xardas_FOUNDTEMPLE_Info()
instance Info_Xardas_PROPHECY(C_Info)
func int Info_Xardas_PROPHECY_Condition()
func void Info_Xardas_PROPHECY_Info()
instance Info_Xardas_LOADSWORD(C_Info)
func int Info_Xardas_LOADSWORD_Condition()
func void Info_Xardas_LOADSWORD_Info()
instance Info_Xardas_LOADSWORD01(C_Info)
func int Info_Xardas_LOADSWORD01_Condition()
func void Info_Xardas_LOADSWORD01_Info()
instance Info_Xardas_LOADSWORD02(C_Info)
func int Info_Xardas_LOADSWORD02_Condition()
func void Info_Xardas_LOADSWORD02_Info()
instance Info_Xardas_BETTERARMOR(C_Info)
func int Info_Xardas_BETTERARMOR_Condition()
func void Info_Xardas_BETTERARMOR_Info()
instance Info_Xardas_OREARMOR(C_Info)
func int Info_Xardas_OREARMOR_Condition()
func void Info_Xardas_OREARMOR_Info()
instance Info_Xardas_FORMULA(C_Info)
func int Info_Xardas_FORMULA_Condition()
func void Info_Xardas_FORMULA_Info()
instance Info_Xardas_ALTRUNE(C_Info)
func int Info_Xardas_ALTRUNE_Condition()
func void Info_Xardas_ALTRUNE_Info()
instance Info_Xardas_SWORDLOADED(C_Info)
func int Info_Xardas_SWORDLOADED_Condition()
func void Info_Xardas_SWORDLOADED_Info()
instance Info_Xardas_MAKERUNE(C_Info)
func int Info_Xardas_MAKERUNE_Condition()
func void Info_Xardas_MAKERUNE_Info()
instance Info_Xardas_MAKERUNEDOIT(C_Info)
func int Info_Xardas_MAKERUNEDOIT_Condition()
func void Info_Xardas_MAKERUNEDOIT_Info()
func void Info_Xardas_MAKERUNE_YES()
func void Info_Xardas_MAKERUNE_NO()
instance INFO_XARDAS_LOADSWORD09_0(C_Info)
func int info_xardas_loadsword09_0_condition()
func void info_xardas_loadsword09_0_info()
instance Info_Xardas_LOADSWORD09(C_Info)
func int Info_Xardas_LOADSWORD09_Condition()
func void Info_Xardas_LOADSWORD09_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDF_406_OTXardas.d
instance Info_Xardas_OT(C_Info)
func int Info_Xardas_OT_Condition()
func void Info_Xardas_OT_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Kdw_600_Saturas.d
instance Info_Saturas_EXIT(C_Info)
func int Info_Saturas_EXIT_Condition()
func void Info_Saturas_EXIT_Info()
instance Info_Saturas_Intruder(C_Info)
func int Info_Saturas_Intruder_Condition()
func void Info_Saturas_Intruder_Info()
instance Info_Saturas_NEWS(C_Info)
func int Info_Saturas_NEWS_Condition()
func void Info_Saturas_NEWS_Info()
instance Info_Saturas_YBERION(C_Info)
func int Info_Saturas_YBERION_Condition()
func void Info_Saturas_YBERION_Info()
instance Info_Saturas_BOOK(C_Info)
func int Info_Saturas_BOOK_Condition()
func void Info_Saturas_BOOK_Info()
instance Info_Saturas_FOCUS(C_Info)
func int Info_Saturas_FOCUS_Condition()
func void Info_Saturas_FOCUS_Info()
instance Info_Saturas_WHATNOW(C_Info)
func int Info_Saturas_WHATNOW_Condition()
func void Info_Saturas_WHATNOW_Info()
instance Info_Saturas_OFFER(C_Info)
func int Info_Saturas_OFFER_Condition()
func void Info_Saturas_OFFER_Info()
func void B_DeliverFocus()
instance Info_Saturas_BRINGFOCUS2(C_Info)
func int Info_Saturas_BRINGFOCUS2_Condition()
func void Info_Saturas_BRINGFOCUS2_Info()
instance Info_Saturas_BRINGFOCUS3(C_Info)
func int Info_Saturas_BRINGFOCUS3_Condition()
func void Info_Saturas_BRINGFOCUS3_Info()
instance Info_Saturas_BRINGFOCUS4(C_Info)
func int Info_Saturas_BRINGFOCUS4_Condition()
func void Info_Saturas_BRINGFOCUS4_Info()
instance Info_Saturas_BRINGFOCUS5(C_Info)
func int Info_Saturas_BRINGFOCUS5_Condition()
func void Info_Saturas_BRINGFOCUS5_Info()
instance Info_Saturas_ALLFOCI(C_Info)
func int Info_Saturas_ALLFOCI_Condition()
func void Info_Saturas_ALLFOCI_Info()
instance Info_Saturas_FAVOR(C_Info)
func int Info_Saturas_FAVOR_Condition()
func void Info_Saturas_FAVOR_Info()
instance Info_Saturas_ACCEPT(C_Info)
func int Info_Saturas_ACCEPT_Condition()
func void Info_Saturas_ACCEPT_Info()
instance Info_Saturas_AMBUSH(C_Info)
func int Info_Saturas_AMBUSH_Condition()
func void Info_Saturas_AMBUSH_Info()
instance Info_Saturas_COLLAPSE(C_Info)
func int Info_Saturas_COLLAPSE_Condition()
func void Info_Saturas_COLLAPSE_Info()
instance Info_Saturas_MURDER(C_Info)
func int Info_Saturas_MURDER_Condition()
func void Info_Saturas_MURDER_Info()
instance KDW_600_Saturas_NOMOREOC(C_Info)
func int KDW_600_Saturas_NOMOREOC_Condition()
func void KDW_600_Saturas_NOMOREOC_Info()
instance KDW_600_Saturas_GOTOLEE(C_Info)
func int KDW_600_Saturas_GOTOLEE_Condition()
func void KDW_600_Saturas_GOTOLEE_Info()
instance KDW_600_Saturas_OATH(C_Info)
func int KDW_600_Saturas_OATH_Condition()
func void KDW_600_Saturas_OATH_Info()
instance KDW_600_Saturas_KDWAUFNAHME(C_Info)
func int KDW_600_Saturas_KDWAUFNAHME_Condition()
func void KDW_600_Saturas_KDWAUFNAHME_Info()
instance KDW_600_Saturas_LESSON(C_Info)
func int KDW_600_Saturas_LESSON_Condition()
func void KDW_600_Saturas_LESSON_Info()
instance KDW_600_Saturas_KREIS1(C_Info)
func int KDW_600_Saturas_KREIS1_Condition()
func void KDW_600_Saturas_KREIS1_Info()
instance KDW_600_Saturas_KREIS2(C_Info)
func int KDW_600_Saturas_KREIS2_Condition()
func void KDW_600_Saturas_KREIS2_Info()
instance KDW_600_Saturas_KREIS3(C_Info)
func int KDW_600_Saturas_KREIS3_Condition()
func void KDW_600_Saturas_KREIS3_Info()
instance KDW_600_Saturas_KREIS4(C_Info)
func int KDW_600_Saturas_KREIS4_Condition()
func void KDW_600_Saturas_KREIS4_Info()
instance KDW_600_Saturas_KREIS5(C_Info)
func int KDW_600_Saturas_KREIS5_Condition()
func void KDW_600_Saturas_KREIS5_Info()
var int kdw_armor_h_was_bought;
instance KDW_600_Saturas_HEAVYARMOR(C_Info)
func int KDW_600_Saturas_HEAVYARMOR_Condition()
func void KDW_600_Saturas_HEAVYARMOR_Info()
instance Info_Saturas_NOWSLD(C_Info)
func int Info_Saturas_NOWSLD_Condition()
func void Info_Saturas_NOWSLD_Info()
instance Info_Saturas_XARDAS(C_Info)
func int Info_Saturas_XARDAS_Condition()
func void Info_Saturas_XARDAS_Info()
instance Info_Saturas_XARDASWHO(C_Info)
func int Info_Saturas_XARDASWHO_Condition()
func void Info_Saturas_XARDASWHO_Info()
instance Info_Saturas_XARDASWHY(C_Info)
func int Info_Saturas_XARDASWHY_Condition()
func void Info_Saturas_XARDASWHY_Info()
instance Info_Saturas_XARDASWHERE(C_Info)
func int Info_Saturas_XARDASWHERE_Condition()
func void Info_Saturas_XARDASWHERE_Info()
instance Info_Saturas_XARDASHELP(C_Info)
func int Info_Saturas_XARDASHELP_Condition()
func void Info_Saturas_XARDASHELP_Info()
instance Info_Saturas_XARDASPROBLEM(C_Info)
func int Info_Saturas_XARDASPROBLEM_Condition()
func void Info_Saturas_XARDASPROBLEM_Info()
instance Info_Saturas_XARDASGO(C_Info)
func int Info_Saturas_XARDASGO_Condition()
func void Info_Saturas_XARDASGO_Info()
instance KDW_600_Saturas_TIMESUP(C_Info)
func int KDW_600_Saturas_TIMESUP_Condition()
func void KDW_600_Saturas_TIMESUP_Info()
func void KDW_600_Saturas_TIMESUP_JA1()
func void KDW_600_Saturas_TIMESUP_JA2()
func void KDW_600_Saturas_TIMESUP_JA3()
instance KDW_600_Saturas_HogeAUFNAHME(C_Info)
func int KDW_600_Saturas_HogeAUFNAHME_Condition()
func void KDW_600_Saturas_HogeAUFNAHME_Info()
instance KDW_600_Saturas_HogeAUFNAHMETeil2(C_Info)
func int KDW_600_Saturas_HogeAUFNAHMETeil2_Condition()
func void KDW_600_Saturas_HogeAUFNAHMETeil2_Info()
instance KDW_600_SATURAS_NOLESSON(C_Info)
func int kdw_600_saturas_nolesson_condition()
func void kdw_600_saturas_nolesson_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Kdw_601_Myxir.d
instance Info_Myxir_EXIT(C_Info)
func int Info_Myxir_EXIT_Condition()
func void Info_Myxir_EXIT_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Kdw_602_Merdarion.d
instance Info_Merdarion_EXIT(C_Info)
func int Info_Merdarion_EXIT_Condition()
func void Info_Merdarion_EXIT_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Kdw_603_Nefarius.d
instance Info_Nefarius_EXIT(C_Info)
func int Info_Nefarius_EXIT_Condition()
func void Info_Nefarius_EXIT_Info()
instance Info_Nefarius_Hallo(C_Info)
func int Info_Nefarius_Hallo_Condition()
func void Info_Nefarius_Hallo_Info()
instance Info_Nefarius_WoSaturas(C_Info)
func int Info_Nefarius_WoSaturas_Condition()
func void Info_Nefarius_WoSaturas_Info()
instance Info_Nefarius_WannaMage(C_Info)
func int Info_Nefarius_WannaMage_Condition()
func void Info_Nefarius_WannaMage_Info()
instance Info_Nefarius_NowReady(C_Info)
func int Info_Nefarius_NowReady_Condition()
func void Info_Nefarius_NowReady_Info()
instance Info_Nefarius_OCNews(C_Info)
func int Info_Nefarius_OCNews_Condition()
func void Info_Nefarius_OCNews_Info()
instance INFO_NEFARIUS_OCNEWS2(C_Info)
func int info_nefarius_ocnews2_condition()
func void info_nefarius_ocnews2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_KDW_605_Riordian.d
instance Info_Riordian_EXIT(C_Info)
func int Info_Riordian_EXIT_Condition()
func void Info_Riordian_EXIT_Info()
instance Info_Riordian_NEWS(C_Info)
func int Info_Riordian_NEWS_Condition()
func void Info_Riordian_NEWS_Info()
instance Info_Riordian_REWARD(C_Info)
func int Info_Riordian_REWARD_Condition()
func void Info_Riordian_REWARD_Info()
instance Info_Riordian_MESSAGE(C_Info)
func int Info_Riordian_MESSAGE_Condition()
func void Info_Riordian_MESSAGE_Info()
instance Info_Riordian_MESSAGEWHY(C_Info)
func int Info_Riordian_MESSAGEWHY_Condition()
func void Info_Riordian_MESSAGEWHY_Info()
instance KDW_605_Riordian_WELCOME(C_Info)
func int KDW_605_Riordian_WELCOME_Condition()
func void KDW_605_Riordian_WELCOME_Info()
instance KDW_605_Riordian_HEAL(C_Info)
func int KDW_605_Riordian_HEAL_Condition()
func void KDW_605_Riordian_HEAL_Info()
instance KDW_605_Riordian_HEALINFO(C_Info)
func int KDW_605_Riordian_HEALINFO_Condition()
func void KDW_605_Riordian_HEALINFO_Info()
instance KDW_605_Riordian_GREET(C_Info)
func int KDW_605_Riordian_GREET_Condition()
func void KDW_605_Riordian_GREET_Info()
instance KDW_605_Riordian_TRADE(C_Info)
func int KDW_605_Riordian_TRADE_Condition()
func void KDW_605_Riordian_TRADE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Non_1500_Gilbert.d
instance DIA_Gilbert_EXIT(C_Info)
func int DIA_Gilbert_EXIT_Condition()
func void DIA_Gilbert_EXIT_Info()
instance DIA_Gilbert_First(C_Info)
func int DIA_Gilbert_First_Condition()
func void DIA_Gilbert_First_Info()
instance DIA_Gilbert_Hallo(C_Info)
func int DIA_Gilbert_Hallo_Condition()
func void DIA_Gilbert_Hallo_Info()
instance DIA_GILBERT_HALLO2(C_Info)
func int dia_gilbert_hallo2_condition()
func void dia_gilbert_hallo2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Nov_1300_Talas.d
instance Nov_1300_Talas_Exit(C_Info)
func int Nov_1300_Talas_Exit_Condition()
func void Nov_1300_Talas_Exit_Info()
instance Nov_1300_Talas_UR(C_Info)
func int Nov_1300_Talas_UR_Condition()
func void Nov_1300_Talas_UR_Info()
instance Nov_1300_Talas_HELP(C_Info)
func int Nov_1300_Talas_HELP_Condition()
func void Nov_1300_Talas_HELP_Info()
func void Nov_1300_Talas_HELP_OK()
func void Nov_1300_Talas_HELP_BRING()
func void Nov_1300_Talas_HELP_MORE()
instance Nov_1300_Talas_READY(C_Info)
func int Nov_1300_Talas_READY_Condition()
func void Nov_1300_Talas_READY_Info()
instance Nov_1300_Talas_BRIDGE(C_Info)
func int Nov_1300_Talas_BRIDGE_Condition()
func void Nov_1300_Talas_BRIDGE_Info()
instance Nov_1300_Talas_BACK(C_Info)
func int Nov_1300_Talas_BACK_Condition()
func void Nov_1300_Talas_BACK_Info()
instance Nov_1300_Talas_RETURNED(C_Info)
func int Nov_1300_Talas_RETURNED_Condition()
func void Nov_1300_Talas_RETURNED_Info()
instance Nov_1300_Talas_OGY(C_Info)
func int Nov_1300_Talas_OGY_Condition()
func void Nov_1300_Talas_OGY_Info()
instance Nov_1300_Talas_BACKAGAIN(C_Info)
func int Nov_1300_Talas_BACKAGAIN_Condition()
func void Nov_1300_Talas_BACKAGAIN_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1301_Caine.d
instance DIA_Caine_Exit(C_Info)
func int DIA_Caine_Exit_Condition()
func void DIA_Caine_Exit_Info()
instance DIA_Caine_Hallo(C_Info)
func int DIA_Caine_Hallo_Condition()
func void DIA_Caine_Hallo_Info()
func void DIA_Caine_Hallo_Ja()
func void DIA_Caine_Hallo_Nein()
instance DIA_Caine_Job(C_Info)
func int DIA_Caine_Job_Condition()
func void DIA_Caine_Job_Info()
instance DIA_Caine_WoSekret(C_Info)
func int DIA_Caine_WoSekret_Condition()
func void DIA_Caine_WoSekret_Info()
instance DIA_Caine_AddInfoKalom(C_Info)
func int DIA_Caine_AddInfoKalom_Condition()
func void DIA_Caine_AddInfoKalom_Info()
instance Nov_1301_Caine_CHEST(C_Info)
func int Nov_1301_Caine_CHEST_Condition()
func void Nov_1301_Caine_CHEST_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1302_Viran.d
instance DIA_Viran_Exit(C_Info)
func int DIA_Viran_Exit_Condition()
func void DIA_Viran_Exit_Info()
instance DIA_Viran_What(C_Info)
func int DIA_Viran_What_Condition()
func void DIA_Viran_What_Info()
instance DIA_Viran_FetchWeed(C_Info)
func int DIA_Viran_FetchWeed_Condition()
func void DIA_Viran_FetchWeed_Info()
func void DIA_Viran_FetchWeed_Really()
func void DIA_Viran_FetchWeed_GotoHim()
var int Viran_Bloodflies;
instance DIA_Viran_Bloodflies(C_Info)
func int DIA_Viran_Bloodflies_Condition()
func void DIA_Viran_Bloodflies_Info()
var int Viran_BotenDay;
instance DIA_Viran_Running(C_Info)
func int DIA_Viran_Running_Condition()
func void DIA_Viran_Running_Info()
instance DIA_Viran_Perm(C_Info)
func int DIA_Viran_Perm_Condition()
func void DIA_Viran_Perm_Info()
instance DIA_Viran_RipOff(C_Info)
func int DIA_Viran_RipOff_Condition()
func void DIA_Viran_RipOff_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Nov_1303_Nyras.d
instance DIA_Nyras_Exit(C_Info)
func int DIA_Nyras_Exit_Condition()
func void DIA_Nyras_Exit_Info()
instance DIA_Nyras_Hallo(C_Info)
func int DIA_Nyras_Hallo_Condition()
func void DIA_Nyras_Hallo_Info()
instance DIA_Nyras_Ort(C_Info)
func int DIA_Nyras_Ort_Condition()
func void DIA_Nyras_Ort_Info()
func void DIA_Nyras_Ort_Casual()
func void DIA_Nyras_Ort_Holy()
instance Nov_1303_Nyras_GREET(C_Info)
func int Nov_1303_Nyras_GREET_Condition()
func void Nov_1303_Nyras_GREET_Info()
instance Nov_1303_Nyras_LEAVE(C_Info)
func int Nov_1303_Nyras_LEAVE_Condition()
func void Nov_1303_Nyras_LEAVE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1304_Balor.d
instance DIA_Balor_Exit(C_Info)
func int DIA_Balor_Exit_Condition()
func void DIA_Balor_Exit_Info()
var int Balor_BotenDay;
instance DIA_Balor_FetchWeed(C_Info)
func int DIA_Balor_FetchWeed_Condition()
func void DIA_Balor_FetchWeed_Info()
var int Balor_PlayerCheating;
instance DIA_Balor_SellUnder(C_Info)
func int DIA_Balor_SellUnder_Condition()
func void DIA_Balor_SellUnder_Info()
func void DIA_Balor_SellUnder_ForgetIt()
func void DIA_Balor_SellUnder_HalfHalf()
func void DIA_Balor_SellUnder_ComeOn()
instance DIA_Balor_TellDealer(C_Info)
func int DIA_Balor_TellDealer_Condition()
func void DIA_Balor_TellDealer_Info()
func void DIA_Balor_TellDealer_Pay()
func void DIA_Balor_TellDealer_ForgetIt()
instance DIA_Balor_RipOff(C_Info)
func int DIA_Balor_RipOff_Condition()
func void DIA_Balor_RipOff_Info()
func void dia_balor_telldealer_pay2()
func void dia_balor_telldealer_forgetit2()
instance DIA_Balor_Perm(C_Info)
func int DIA_Balor_Perm_Condition()
func void DIA_Balor_Perm_Info()
instance BALOR_GETLOST(C_Info)
func int balor_getlost_condition()
func void balor_getlost_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1305_Joru.d
instance DIA_Joru_Exit(C_Info)
func int DIA_Joru_Exit_Condition()
func void DIA_Joru_Exit_Info()
instance DIA_Joru_Greet(C_Info)
func int DIA_Joru_Greet_Condition()
func void DIA_Joru_Greet_Info()
instance DIA_Joru_Tester(C_Info)
func int DIA_Joru_Tester_Condition()
func void DIA_Joru_Tester_Info()
instance DIA_Joru_SleeperContact(C_Info)
func int DIA_Joru_SleeperContact_Condition()
func void DIA_Joru_SleeperContact_Info()
var int Joru_BringJoints;
instance DIA_Joru_JoinPsi(C_Info)
func int DIA_Joru_JoinPsi_Condition()
func void DIA_Joru_JoinPsi_Info()
func void DIA_Joru_JoinPsi_Ja()
func void DIA_Joru_JoinPsi_Nein()
instance DIA_Joru_JointsRunning(C_Info)
func int DIA_Joru_JointsRunning_Condition()
func void DIA_Joru_JointsRunning_Info()
instance DIA_Joru_ImpressGurus(C_Info)
func int DIA_Joru_ImpressGurus_Condition()
func void DIA_Joru_ImpressGurus_Info()
instance DIA_Joru_GetMagic(C_Info)
func int DIA_Joru_GetMagic_Condition()
func void DIA_Joru_GetMagic_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1310_Ghorim.d
instance DIA_Ghorim_Exit(C_Info)
func int DIA_Ghorim_Exit_Condition()
func void DIA_Ghorim_Exit_Info()
instance DIA_Ghorim_MissingHarlok(C_Info)
func int DIA_Ghorim_MissingHarlok_Condition()
func void DIA_Ghorim_MissingHarlok_Info()
instance DIA_Ghorim_SUCCESS(C_Info)
func int DIA_Ghorim_SUCCESS_Condition()
func void DIA_Ghorim_SUCCESS_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1312_Darrion.d
instance DIA_Darrion_Exit(C_Info)
func int DIA_Darrion_Exit_Condition()
func void DIA_Darrion_Exit_Info()
instance DIA_Darrion_Hello(C_Info)
func int DIA_Darrion_Hello_Condition()
func void DIA_Darrion_Hello_Info()
instance DIA_Darrion_Trade(C_Info)
func int DIA_Darrion_Trade_Condition()
func void DIA_Darrion_Trade_Info()
instance DIA_DARRION_TRADE2(C_Info)
func int dia_darrion_trade2_condition()
func void dia_darrion_trade2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1319_Novize.d
instance NOV_1319_Novize_CALLSLEEPER(C_Info)
func int NOV_1319_Novize_CALLSLEEPER_Condition()
func void NOV_1319_Novize_CALLSLEEPER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1320_Novize.d
instance NOV_1320_Novize_CALLSLEEPER(C_Info)
func int NOV_1320_Novize_CALLSLEEPER_Condition()
func void NOV_1320_Novize_CALLSLEEPER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Nov_1330_BaalParvez.d
instance DIA_BaalParvez_EXIT(C_Info)
func int DIA_BaalParvez_EXIT_Condition()
func void DIA_BaalParvez_EXIT_Info()
instance DIA_BaalParvez_Greet(C_Info)
func int DIA_BaalParvez_Greet_Condition()
func void DIA_BaalParvez_Greet_Info()
instance DIA_BaalParvez_RightWay(C_Info)
func int DIA_BaalParvez_RightWay_Condition()
func void DIA_BaalParvez_RightWay_Info()
instance DIA_BaalParvez_MyAdvantage(C_Info)
func int DIA_BaalParvez_MyAdvantage_Condition()
func void DIA_BaalParvez_MyAdvantage_Info()
instance DIA_BaalParvez_Sleeper(C_Info)
func int DIA_BaalParvez_Sleeper_Condition()
func void DIA_BaalParvez_Sleeper_Info()
instance DIA_BaalParvez_SleeperSaid(C_Info)
func int DIA_BaalParvez_SleeperSaid_Condition()
func void DIA_BaalParvez_SleeperSaid_Info()
instance DIA_BaalParvez_PSIMagic(C_Info)
func int DIA_BaalParvez_PSIMagic_Condition()
func void DIA_BaalParvez_PSIMagic_Info()
var int BaalParvez_GotoPSI_Day;
instance DIA_BaalParvez_GotoPSI(C_Info)
func int DIA_BaalParvez_GotoPSI_Condition()
func void DIA_BaalParvez_GotoPSI_Info()
instance DIA_BaalParvez_AtPSI(C_Info)
func int DIA_BaalParvez_AtPSI_Condition()
func void DIA_BaalParvez_AtPSI_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Nov_1331_BaalTaran.d
instance DIA_BaalTaran_EXIT(C_Info)
func int DIA_BaalTaran_EXIT_Condition()
func void DIA_BaalTaran_EXIT_Info()
instance DIA_BaalTaran_Greet(C_Info)
func int DIA_BaalTaran_Greet_Condition()
func void DIA_BaalTaran_Greet_Info()
instance DIA_BaalTaran_Bruderschaft(C_Info)
func int DIA_BaalTaran_Bruderschaft_Condition()
func void DIA_BaalTaran_Bruderschaft_Info()
instance DIA_BaalTaran_Sleeper(C_Info)
func int DIA_BaalTaran_Sleeper_Condition()
func void DIA_BaalTaran_Sleeper_Info()
instance DIA_BaalTaran_Lehre(C_Info)
func int DIA_BaalTaran_Lehre_Condition()
func void DIA_BaalTaran_Lehre_Info()
instance DIA_BaalTaran_Freiheit(C_Info)
func int DIA_BaalTaran_Freiheit_Condition()
func void DIA_BaalTaran_Freiheit_Info()
instance DIA_BaalTaran_Beweis(C_Info)
func int DIA_BaalTaran_Beweis_Condition()
func void DIA_BaalTaran_Beweis_Info()
instance DIA_BaalTaran_WayToST(C_Info)
func int DIA_BaalTaran_WayToST_Condition()
func void DIA_BaalTaran_WayToST_Info()
instance DIA_BaalTaran_IntoCastle(C_Info)
func int DIA_BaalTaran_IntoCastle_Condition()
func void DIA_BaalTaran_IntoCastle_Info()
func void DIA_BaalTaran_IntoCastle_MeetSomeone()
func void DIA_BaalTaran_IntoCastle_Letter()
func void DIA_BaalTaran_IntoCastle_Mage()
func void DIA_BaalTaran_IntoCastle_ForgetIt()
func void DIA_BaalTaran_IntoCastle_Exactly()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1332_BaalKagan.d
instance DIA_BaalKagan_EXIT(C_Info)
func int DIA_BaalKagan_EXIT_Condition()
func void DIA_BaalKagan_EXIT_Info()
instance DIA_BaalKagan_Hello(C_Info)
func int DIA_BaalKagan_Hello_Condition()
func void DIA_BaalKagan_Hello_Info()
instance DIA_BAALKAGAN_HELLO_2(C_Info)
func int dia_baalkagan_hello_2_condition()
func void dia_baalkagan_hello_2_info()
instance DIA_BaalKagan_WhyHere(C_Info)
func int DIA_BaalKagan_WhyHere_Condition()
func void DIA_BaalKagan_WhyHere_Info()
instance DIA_BaalKagan_TRADE(C_Info)
func int DIA_BaalKagan_TRADE_Condition()
func void DIA_BaalKagan_TRADE_Info()
instance DIA_BaalKagan_OrderHelp(C_Info)
func int DIA_BaalKagan_OrderHelp_Condition()
func void DIA_BaalKagan_OrderHelp_Info()
instance DIA_BaalKagan_WannaHelp(C_Info)
func int DIA_BaalKagan_WannaHelp_Condition()
func void DIA_BaalKagan_WannaHelp_Info()
instance DIA_BaalKagan_WasDrin(C_Info)
func int DIA_BaalKagan_WasDrin_Condition()
func void DIA_BaalKagan_WasDrin_Info()
var int BaalKagan_VerteilKraut;
instance DIA_BaalKagan_GimmeKraut(C_Info)
func int DIA_BaalKagan_GimmeKraut_Condition()
func void DIA_BaalKagan_GimmeKraut_Info()
instance DIA_BaalKagan_SUCCESS(C_Info)
func int DIA_BaalKagan_SUCCESS_Condition()
func void DIA_BaalKagan_SUCCESS_Info()
func void DIA_BaalKagan_SUCCESS_WhatSpells()
func void DIA_BaalKagan_SUCCESS_Join()
func void DIA_BaalKagan_SUCCESS_Erz()
func void DIA_BaalKagan_SUCCESS_TakeScrolls()
var int BaalKagan_drei;
func void DIA_BaalKagan_SUCCESS_TakeScrolls_Windfaust()
func void DIA_BaalKagan_SUCCESS_TakeScrolls_Telekinese()
func void DIA_BaalKagan_SUCCESS_TakeScrolls_Pyrokinese()
func void DIA_BaalKagan_SUCCESS_TakeScrolls_Schlaf()
func void DIA_BaalKagan_SUCCESS_TakeScrolls_Charme()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1333_BaalIsidro.d
instance DIA_BaalIsidro_EXIT(C_Info)
func int DIA_BaalIsidro_EXIT_Condition()
func void DIA_BaalIsidro_EXIT_Info()
instance DIA_BaalIsidro_Hello(C_Info)
func int DIA_BaalIsidro_Hello_Condition()
func void DIA_BaalIsidro_Hello_Info()
instance DIA_BaalIsidro_TRADE(C_Info)
func int DIA_BaalIsidro_TRADE_Condition()
func void DIA_BaalIsidro_TRADE_Info()
instance DIA_BaalIsidro_GimmeKraut(C_Info)
func int DIA_BaalIsidro_GimmeKraut_Condition()
func void DIA_BaalIsidro_GimmeKraut_Info()
instance DIA_BaalIsidro_Problem(C_Info)
func int DIA_BaalIsidro_Problem_Condition()
func void DIA_BaalIsidro_Problem_Info()
var int BaalIsidro_GotDrink;
instance DIA_BaalIsidro_Drink(C_Info)
func int DIA_BaalIsidro_Drink_Condition()
func void DIA_BaalIsidro_Drink_Info()
instance DIA_BaalIsidro_ThinkAgain(C_Info)
func int DIA_BaalIsidro_ThinkAgain_Condition()
func void DIA_BaalIsidro_ThinkAgain_Info()
instance DIA_BaalIsidro_RUNNING(C_Info)
func int DIA_BaalIsidro_RUNNING_Condition()
func void DIA_BaalIsidro_RUNNING_Info()
instance DIA_BAALISIDRO_REVENGE(C_Info)
func int dia_baalisidro_revenge_condition()
func void dia_baalisidro_revenge_info()
func void dia_baalisidro_revenge_giveore()
func void dia_baalisidro_revenge_noore()
func void dia_baalisidro_revenge_fuckoff()
instance DIA_BAALISIDRO_HELLO_CH5(C_Info)
func int dia_baalisidro_hello_ch5_condition()
func void dia_baalisidro_hello_ch5_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1356_Shrat.d
instance DIA_Shrat_Exit(C_Info)
func int DIA_Shrat_Exit_Condition()
func void DIA_Shrat_Exit_Info()
instance DIA_Shrat_WhyHere(C_Info)
func int DIA_Shrat_WhyHere_Condition()
func void DIA_Shrat_WhyHere_Info()
instance DIA_Shrat_JoinPSI(C_Info)
func int DIA_Shrat_JoinPSI_Condition()
func void DIA_Shrat_JoinPSI_Info()
instance DIA_Shrat_ComeWithMe(C_Info)
func int DIA_Shrat_ComeWithMe_Condition()
func void DIA_Shrat_ComeWithMe_Info()
instance DIA_Shrat_LeaveMe(C_Info)
func int DIA_Shrat_LeaveMe_Condition()
func void DIA_Shrat_LeaveMe_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1357_Fortuno.d
instance DIA_Fortuno_EXIT(C_Info)
func int DIA_Fortuno_EXIT_Condition()
func void DIA_Fortuno_EXIT_Info()
instance DIA_Fortuno_Greet(C_Info)
func int DIA_Fortuno_Greet_Condition()
func void DIA_Fortuno_Greet_Info()
var int Fortuno_RationDay;
instance DIA_Fortuno_GetGeschenk(C_Info)
func int DIA_Fortuno_GetGeschenk_Condition()
func void DIA_Fortuno_GetGeschenk_Info()
instance DIA_Fortuno_DailyRation(C_Info)
func int DIA_Fortuno_DailyRation_Condition()
func void DIA_Fortuno_DailyRation_Info()
instance DIA_Fortuno_BuyJoints(C_Info)
func int DIA_Fortuno_BuyJoints_Condition()
func void DIA_Fortuno_BuyJoints_Info()
instance DIA_FORTUNO_BUYJOINTS2(C_Info)
func int dia_fortuno_buyjoints2_condition()
func void dia_fortuno_buyjoints2_info()
instance DIA_FORTUNO_HELP(C_Info)
func int dia_fortuno_help_condition()
func void dia_fortuno_help_info()
instance DIA_FORTUNO_DEADLEAFFOUND(C_Info)
func int dia_fortuno_deadleaffound_condition()
func void dia_fortuno_deadleaffound_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1358_Harlok.d
instance DIA_Harlok_Exit(C_Info)
func int DIA_Harlok_Exit_Condition()
func void DIA_Harlok_Exit_Info()
instance DIA_Harlok_FetchHarlok(C_Info)
func int DIA_Harlok_FetchHarlok_Condition()
func void DIA_Harlok_FetchHarlok_Info()
func void DIA_Harlok_FetchHarlok_Please()
func void DIA_Harlok_FetchHarlok_OrElse()
func void DIA_Harlok_FetchHarlok_BACK()
instance DIA_Harlok_HarlokAgain(C_Info)
func int DIA_Harlok_HarlokAgain_Condition()
func void DIA_Harlok_HarlokAgain_Info()
instance DIA_Harlok_SendHarlok(C_Info)
func int DIA_Harlok_SendHarlok_Condition()
func void DIA_Harlok_SendHarlok_Info()
instance DIA_Harlok_Angry(C_Info)
func int DIA_Harlok_Angry_Condition()
func void DIA_Harlok_Angry_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_NOV_1371_BaalNetbek.d
instance Nov_1371_BaalNetbek_Exit(C_Info)
func int Nov_1371_BaalNetbek_Exit_Condition()
func void Nov_1371_BaalNetbek_Exit_Info()
instance Nov_1371_BaalNetbek_CRAZY(C_Info)
func int Nov_1371_BaalNetbek_CRAZY_Condition()
func void Nov_1371_BaalNetbek_CRAZY_Info()
instance Nov_1371_BaalNetbek_AGAIN(C_Info)
func int Nov_1371_BaalNetbek_AGAIN_Condition()
func void Nov_1371_BaalNetbek_AGAIN_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_nov_1372_dusty.d
instance DIA_DUSTY2_EXIT(C_Info)
func int dia_dusty2_exit_condition()
func void dia_dusty2_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_nov_1373_melvin.d
instance DIA_MELVIN2_EXIT(C_Info)
func int dia_melvin2_exit_condition()
func void dia_melvin2_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_OrcWarrior1.d
instance INFO_ORCWARRIOR1_EXIT(C_Info)
func int info_orc_exit_condition()
func void info_orc_exit_info()
instance INFO_ORCWARRIOR2_EXIT(C_Info)
instance INFO_ORCWARRIOR3_EXIT(C_Info)
instance INFO_ORCWARRIOR4_EXIT(C_Info)
instance INFO_ORCSCOUT_EXIT(C_Info)
instance INFO_ORCPEASANTDRUM_EXIT(C_Info)
instance INFO_ORCPEASANTDANCE_EXIT(C_Info)
instance INFO_ORCPEASANTEATANDDRINK_EXIT(C_Info)
instance INFO_ORCSCOUTGYD_EXIT(C_Info)
instance INFO_ORCSHAMAN2_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_2200_Shaman.d
instance Info_OrcShaman_EXIT(C_Info)
func int Info_OrcShaman_EXIT_Condition()
func void Info_OrcShaman_EXIT_Info()
instance Info_OrcShaman_THX(C_Info)
func int Info_OrcShaman_THX_Condition()
func void Info_OrcShaman_THX_Info()
instance Info_OrcShaman_WHO(C_Info)
func int Info_OrcShaman_WHO_Condition()
func void Info_OrcShaman_WHO_Info()
instance Info_OrcShaman_TONGUE(C_Info)
func int Info_OrcShaman_TONGUE_Condition()
func void Info_OrcShaman_TONGUE_Info()
instance Info_OrcShaman_MINE(C_Info)
func int Info_OrcShaman_MINE_Condition()
func void Info_OrcShaman_MINE_Info()
instance Info_OrcShaman_WHY(C_Info)
func int Info_OrcShaman_WHY_Condition()
func void Info_OrcShaman_WHY_Info()
instance Info_OrcShaman_KRUSHAK(C_Info)
func int Info_OrcShaman_KRUSHAK_Condition()
func void Info_OrcShaman_KRUSHAK_Info()
instance Info_OrcShaman_SLEEPER(C_Info)
func int Info_OrcShaman_SLEEPER_Condition()
func void Info_OrcShaman_SLEEPER_Info()
instance Info_OrcShaman_CURSE(C_Info)
func int Info_OrcShaman_CURSE_Condition()
func void Info_OrcShaman_CURSE_Info()
instance Info_OrcShaman_OUTSIDE(C_Info)
func int Info_OrcShaman_OUTSIDE_Condition()
func void Info_OrcShaman_OUTSIDE_Info()
instance Info_OrcShaman_INTEMPLE(C_Info)
func int Info_OrcShaman_INTEMPLE_Condition()
func void Info_OrcShaman_INTEMPLE_Info()
instance Info_OrcShaman_MAP(C_Info)
func int Info_OrcShaman_MAP_Condition()
func void Info_OrcShaman_MAP_Info()
instance Info_OrcShaman_FIGHT(C_Info)
func int Info_OrcShaman_FIGHT_Condition()
func void Info_OrcShaman_FIGHT_Info()
instance Info_OrcShaman_OTHERWAY(C_Info)
func int Info_OrcShaman_OTHERWAY_Condition()
func void Info_OrcShaman_OTHERWAY_Info()
instance Info_OrcShaman_ULUMULU(C_Info)
func int Info_OrcShaman_ULUMULU_Condition()
func void Info_OrcShaman_ULUMULU_Info()
func void Info_OrcShaman_ULUMULU_VM()
func void Info_OrcShaman_ULUMULU_AM()
func void Info_OrcShaman_ULUMULU_FM()
instance Info_OrcShaman_BYEBYE(C_Info)
func int Info_OrcShaman_BYEBYE_Condition()
func void Info_OrcShaman_BYEBYE_Info()
instance Info_OrcShaman_FRIENDLYHELLO(C_Info)
func int Info_OrcShaman_FRIENDLYHELLO_Condition()
func void Info_OrcShaman_FRIENDLYHELLO_Info()
instance Info_OrcShaman_ORCCITY(C_Info)
func int Info_OrcShaman_ORCCITY_Condition()
func void Info_OrcShaman_ORCCITY_Info()
instance Info_OrcShaman_YOUHERE(C_Info)
func int Info_OrcShaman_YOUHERE_Condition()
func void Info_OrcShaman_YOUHERE_Info()
instance Info_OrcShaman_SEAL(C_Info)
func int Info_OrcShaman_SEAL_Condition()
func void Info_OrcShaman_SEAL_Info()
instance Info_OrcShaman_SCROLL(C_Info)
func int Info_OrcShaman_SCROLL_Condition()
func void Info_OrcShaman_SCROLL_Info()
instance Info_OrcShaman_IDOL(C_Info)
func int Info_OrcShaman_IDOL_Condition()
func void Info_OrcShaman_IDOL_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_Priest_1.d
instance Info_HighPriest1(C_Info)
func int Info_HighPriest1_Condition()
func void Info_HighPriest1_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_Priest_2.d
instance Info_HighPriest2(C_Info)
func int Info_HighPriest2_Condition()
func void Info_HighPriest2_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_Priest_3.d
instance Info_HighPriest3(C_Info)
func int Info_HighPriest3_Condition()
func void Info_HighPriest3_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_Priest_4.d
instance Info_HighPriest4(C_Info)
func int Info_HighPriest4_Condition()
func void Info_HighPriest4_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORC_Priest_5.d
var int highpriest5ishostile;
instance Info_HighPriest5(C_Info)
func int Info_HighPriest5_Condition()
func void Info_HighPriest5_Info()
instance Info_HighPriest5FAILED(C_Info)
func int Info_HighPriest5FAILED_Condition()
func void Info_HighPriest5FAILED_Info()
instance INFO_HIGHPRIEST5_2(C_Info)
func int info_highpriest5_2_condition()
func void info_highpriest5_2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_804_Organisator.d
instance Org_804_Organisator_Exit(C_Info)
func int Org_804_Organisator_Exit_Condition()
func void Org_804_Organisator_Exit_Info()
instance ORG_804_ORGANISATOR_HELLO(C_Info)
func int org_804_organisator_hello_condition()
func void org_804_organisator_hello_info()
instance Org_804_Organisator_Greet(C_Info)
func int Org_804_Organisator_Greet_Condition()
func void Org_804_Organisator_Greet_Info()
const string Org_804_CHECKPOINT = "NC_HUT23_OUT";
instance Info_Org_804_FirstWarn(C_Info)
func int Info_Org_804_FirstWarn_Condition()
func void Info_Org_804_FirstWarn_Info()
instance Info_Org_804_LastWarn(C_Info)
func int Info_Org_804_LastWarn_Condition()
func void Info_Org_804_LastWarn_Info()
instance Info_Org_804_Attack(C_Info)
func int Info_Org_804_Attack_Condition()
func void Info_Org_804_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_818_Ratford.d
instance Org_818_Ratford_Exit(C_Info)
func int Org_818_Ratford_Exit_Condition()
func void Org_818_Ratford_Exit_Info()
instance Org_818_Ratford_WrongWay(C_Info)
func int Org_818_Ratford_WrongWay_Condition()
func void Org_818_Ratford_WrongWay_Info()
instance Org_818_Ratford_WhatGame(C_Info)
func int Org_818_Ratford_WhatGame_Condition()
func void Org_818_Ratford_WhatGame_Info()
instance Org_818_Ratford_WhyDangerous(C_Info)
func int Org_818_Ratford_WhyDangerous_Condition()
func void Org_818_Ratford_WhyDangerous_Info()
instance Org_818_Ratford_WoEquipment(C_Info)
func int Org_818_Ratford_WoEquipment_Condition()
func void Org_818_Ratford_WoEquipment_Info()
instance Org_818_Ratford_MoreLocations(C_Info)
func int Org_818_Ratford_MoreLocations_Condition()
func void Org_818_Ratford_MoreLocations_Info()
instance Org_818_Ratford_WoKarte(C_Info)
func int Org_818_Ratford_WoKarte_Condition()
func void Org_818_Ratford_WoKarte_Info()
func void Org_818_Ratford_WoKarte_Stehlen()
func void Org_818_Ratford_WoKarte_Kaufen()
instance Org_818_Ratford_Thanks(C_Info)
func int Org_818_Ratford_Thanks_Condition()
func void Org_818_Ratford_Thanks_Info()
instance ORG_818_RATFORD_QUEST1(C_Info)
func int org_818_ratford_quest1_condition()
func void org_818_ratford_quest1_info()
instance ORG_818_RATFORD_QUEST2(C_Info)
func int org_818_ratford_quest2_condition()
func void org_818_ratford_quest2_info()
func void org_818_ratford_back()
func void org_818_ratford_itwrworldmap()
func void org_818_ratford_itwrommap()
func void org_818_ratford_itwrfocusmappsi()
func void org_818_ratford_itwrfocimap()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_825_Organisator.d
instance Org_825_Organisator_Exit(C_Info)
func int Org_825_Organisator_Exit_Condition()
func void Org_825_Organisator_Exit_Info()
instance Org_825_Organisator_PERM(C_Info)
func int Org_825_Organisator_PERM_Condition()
func void Org_825_Organisator_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_826_Mordrag.d
var int MordragKO_PlayerChoseOreBarons;
var int MordragKO_PlayerChoseThorus;
var int MordragKO_HauAb;
var int MordragKO_StayAtNC;
instance Org_826_Mordrag_Exit(C_Info)
func int Org_826_Mordrag_Exit_Condition()
func void Org_826_Mordrag_Exit_Info()
instance Org_826_Mordrag_Greet(C_Info)
func int Org_826_Mordrag_Greet_Condition()
func void Org_826_Mordrag_Greet_Info()
instance Org_826_Mordrag_Trade(C_Info)
func int Org_826_Mordrag_Trade_Condition()
func void Org_826_Mordrag_Trade_Info()
instance Org_826_Mordrag_Courier(C_Info)
func int Org_826_Mordrag_Courier_Condition()
func void Org_826_Mordrag_Courier_Info()
func void org_826_mordrag_courier_letter()
func void org_826_mordrag_courier_notletter()
instance Org_826_Mordrag_Problem(C_Info)
func int Org_826_Mordrag_Problem_Condition()
func void Org_826_Mordrag_Problem_Info()
instance Org_826_Mordrag_NCInfo(C_Info)
func int Org_826_Mordrag_NCInfo_Condition()
func void Org_826_Mordrag_NCInfo_Info()
instance Org_826_Mordrag_JoinNewcamp(C_Info)
func int Org_826_Mordrag_JoinNewcamp_Condition()
func void Org_826_Mordrag_JoinNewcamp_Info()
instance Org_826_Mordrag_GotoNewcamp(C_Info)
func int Org_826_Mordrag_GotoNewcamp_Condition()
func void Org_826_Mordrag_GotoNewcamp_Info()
instance Org_826_Mordrag_AtNewcamp(C_Info)
func int Org_826_Mordrag_AtNewcamp_Condition()
func void Org_826_Mordrag_AtNewcamp_Info()
instance Org_826_Mordrag_Fight(C_Info)
func int Org_826_Mordrag_Fight_Condition()
func void Org_826_Mordrag_Fight_Info()
func void Info_Mordrag_Fight_GetAway()
func void Info_Mordrag_Fight_OreBarons()
func void Info_Mordrag_Fight_Thorus()
instance Org_826_Mordrag_HauAb(C_Info)
func int Org_826_Mordrag_HauAb_Condition()
func void Org_826_Mordrag_HauAb_Info()
instance Org_826_Mordrag_GotoKalom(C_Info)
func int Org_826_Mordrag_GotoKalom_Condition()
func void Org_826_Mordrag_GotoKalom_Info()
var int Mordrag_GotoKalom;
instance Org_826_Mordrag_GotoKalomNOW(C_Info)
func int Org_826_Mordrag_GotoKalomNOW_Condition()
func void Org_826_Mordrag_GotoKalomNOW_Info()
func void Org_826_Mordrag_GotoKalomNOW_Precise()
func void Org_826_Mordrag_GotoKalomNOW_DoIt()
instance Org_826_Mordrag_RUNNING(C_Info)
func int Org_826_Mordrag_RUNNING_Condition()
func void Org_826_Mordrag_RUNNING_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_829_Organisator.d
instance Info_ORG_829_EXIT(C_Info)
func int Info_ORG_829_EXIT_Condition()
func void Info_ORG_829_EXIT_Info()
instance Info_ORG_829_Hello(C_Info)
func int Info_ORG_829_Hello_Condition()
func void Info_ORG_829_Hello_Info()
var int Org_829_GotJoint;
instance Info_ORG_829_OfferJoint(C_Info)
func int Info_ORG_829_OfferJoint_Condition()
func void Info_ORG_829_OfferJoint_Info()
instance Info_ORG_829_SpecialInfo(C_Info)
func int Info_ORG_829_SpecialInfo_Condition()
func void Info_ORG_829_SpecialInfo_Info()
instance Info_ORG_829_PERM(C_Info)
func int Info_ORG_829_PERM_Condition()
func void Info_ORG_829_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_830_Organisator.d
instance Info_ORG_830_EXIT(C_Info)
func int Info_ORG_830_EXIT_Condition()
func void Info_ORG_830_EXIT_Info()
instance Info_ORG_830_Hello(C_Info)
func int Info_ORG_830_Hello_Condition()
func void Info_ORG_830_Hello_Info()
instance Info_ORG_830_What(C_Info)
func int Info_ORG_830_What_Condition()
func void Info_ORG_830_What_Info()
instance Info_ORG_830_Aufhalten(C_Info)
func int Info_ORG_830_Aufhalten_Condition()
func void Info_ORG_830_Aufhalten_Info()
instance Info_ORG_830_Perm(C_Info)
func int Info_ORG_830_Perm_Condition()
func void Info_ORG_830_Perm_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_840_Roscoe.d
instance DIA_Roscoe_Exit(C_Info)
func int DIA_Roscoe_Exit_Condition()
func void DIA_Roscoe_Exit_Info()
instance DIA_Roscoe_BringList(C_Info)
func int DIA_Roscoe_BringList_Condition()
func void DIA_Roscoe_BringList_Info()
instance DIA_Roscoe_Mordrag(C_Info)
func int DIA_Roscoe_Mordrag_Condition()
func void DIA_Roscoe_Mordrag_Info()
instance DIA_Roscoe_WannaJoin(C_Info)
func int DIA_Roscoe_WannaJoin_Condition()
func void DIA_Roscoe_WannaJoin_Info()
instance DIA_Roscoe_ComeAgain(C_Info)
func int DIA_Roscoe_ComeAgain_Condition()
func void DIA_Roscoe_ComeAgain_Info()
const string Roscoe_CHECKPOINT = "NC_HUT22_IN_MOVEMENT";
instance Info_Roscoe_FirstWarn(C_Info)
func int Info_Roscoe_FirstWarn_Condition()
func void Info_Roscoe_FirstWarn_Info()
instance Info_Roscoe_LastWarn(C_Info)
func int Info_Roscoe_LastWarn_Condition()
func void Info_Roscoe_LastWarn_Info()
instance Info_Roscoe_Attack(C_Info)
func int Info_Roscoe_Attack_Condition()
func void Info_Roscoe_Attack_Info()
instance INFO_ROSCOE_NEWWARN(C_Info)
func int info_roscoe_newwarn_condition()
func void info_roscoe_newwarn_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_841_Silas.d
instance DIA_Silas_EXIT(C_Info)
func int DIA_Silas_EXIT_Condition()
func void DIA_Silas_EXIT_Info()
instance DIA_Silas_Hehler(C_Info)
func int DIA_Silas_Hehler_Condition()
func void DIA_Silas_Hehler_Info()
instance DIA_Silas_Trade(C_Info)
func int DIA_Silas_Trade_Condition()
func void DIA_Silas_Trade_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_842_Shrike.d
instance DIA_Shrike_Exit(C_Info)
func int DIA_Shrike_Exit_Condition()
func void DIA_Shrike_Exit_Info()
instance DIA_Shrike_Hello(C_Info)
func int DIA_Shrike_Hello_Condition()
func void DIA_Shrike_Hello_Info()
instance DIA_Shrike_GetLost(C_Info)
func int DIA_Shrike_GetLost_Condition()
func void DIA_Shrike_GetLost_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_843_Sharky.d
instance Org_843_Sharky_Exit(C_Info)
func int Org_843_Sharky_Exit_Condition()
func void Org_843_Sharky_Exit_Info()
instance Org_843_Sharky_Fisk(C_Info)
func int Org_843_Sharky_Fisk_Condition()
func void Org_843_Sharky_Fisk_Info()
instance Org_843_Sharky_TRADE(C_Info)
func int Org_843_Sharky_TRADE_Condition()
func void Org_843_Sharky_TRADE_Info()
instance Org_843_Sharky_GREET(C_Info)
func int Org_843_Sharky_GREET_Condition()
func void Org_843_Sharky_GREET_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_844_Lefty.d
instance DIA_Lefty_Exit(C_Info)
func int DIA_Lefty_Exit_Condition()
func void DIA_Lefty_Exit_Info()
instance DIA_Lefty_FirstAtNight(C_Info)
func int DIA_Lefty_FirstAtNight_Condition()
func void DIA_Lefty_FirstAtNight_Info()
instance DIA_Lefty_First(C_Info)
func int DIA_Lefty_First_Condition()
func void DIA_Lefty_First_Info()
func void DIA_Lefty_First_Yes()
func void DIA_Lefty_First_Never()
func void DIA_Lefty_First_Later()
var int CarriedWaterForLefty;
var int failedwaterforlefty;
instance DIA_Lefty_WorkDay(C_Info)
func int DIA_Lefty_WorkDay_Condition()
func void DIA_Lefty_WorkDay_Info()
instance DIA_Lefty_NeverAgain(C_Info)
func int DIA_Lefty_NeverAgain_Condition()
func void DIA_Lefty_NeverAgain_Info()
var int LeftyWasBeaten;
instance DIA_Lefty_PERM(C_Info)
func int DIA_Lefty_PERM_Condition()
func void DIA_Lefty_PERM_Info()
func void DIA_Lefty_PERM_AufsMaul()
func void DIA_Lefty_PERM_Durstig()
func void DIA_Lefty_PERM_Nothing()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_845_Schlaeger.d
instance DIA_845_Exit(C_Info)
func int DIA_845_Exit_Condition()
func void DIA_845_Exit_Info()
instance DIA_845_Hello(C_Info)
func int DIA_845_Hello_Condition()
func void DIA_845_Hello_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_846_Schlaeger.d
instance DIA_846_Exit(C_Info)
func int DIA_846_Exit_Condition()
func void DIA_846_Exit_Info()
instance DIA_846_Hello(C_Info)
func int DIA_846_Hello_Condition()
func void DIA_846_Hello_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_851_Butch.d
instance DIA_Butch_Exit(C_Info)
func int DIA_Butch_Exit_Condition()
func void DIA_Butch_Exit_Info()
instance BUTCH_GETLOST(C_Info)
func int butch_getlost_condition()
func void butch_getlost_info()
func void butch_getlost_take()
func void butch_getlost_forget()
instance BUTCH_GETLOST2(C_Info)
func int butch_getlost2_condition()
func void butch_getlost2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_860_Renyu.d
instance Info_Renyu_EXIT(C_Info)
func int Info_Renyu_EXIT_Condition()
func void Info_Renyu_EXIT_Info()
instance ORG_860_Renyu_GetLost(C_Info)
func int ORG_860_Renyu_GetLost_Condition()
func void ORG_860_Renyu_GetLost_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_861_Killian.d
instance ORG_861_Killian_Exit(C_Info)
func int ORG_861_Killian_Exit_Condition()
func void ORG_861_Killian_Exit_Info()
instance ORG_861_Killian_GetLost(C_Info)
func int ORG_861_Killian_GetLost_Condition()
func void ORG_861_Killian_GetLost_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Org_862_Jacko.d
instance Info_Jacko_EXIT(C_Info)
func int Info_Jacko_EXIT_Condition()
func void Info_Jacko_EXIT_Info()
instance ORG_862_Jacko_GoAway(C_Info)
func int ORG_862_Jacko_GoAway_Condition()
func void ORG_862_Jacko_GoAway_Info()
instance ORG_862_Jacko_GUARD(C_Info)
func int ORG_862_Jacko_GUARD_Condition()
func void ORG_862_Jacko_GUARD_Info()
func void ORG_862_Jacko_GUARD_Templer()
func void ORG_862_Jacko_GUARD_InfoWert()
func void ORG_862_Jacko_GUARD_Angriff()
instance ORG_862_Jacko_Banditencamp(C_Info)
func int ORG_862_Jacko_Banditencamp_Condition()
func void ORG_862_Jacko_Banditencamp_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_873_Cipher.d
instance Org_873_Cipher_Exit(C_Info)
func int Org_873_Cipher_Exit_Condition()
func void Org_873_Cipher_Exit_Info()
instance Org_873_Cipher_Hello(C_Info)
func int Org_873_Cipher_Hello_Condition()
func void Org_873_Cipher_Hello_Info()
instance Org_873_Cipher_Fisk(C_Info)
func int Org_873_Cipher_Fisk_Condition()
func void Org_873_Cipher_Fisk_Info()
var int Cipher_Trade;
instance Org_873_Cipher_FromBalor(C_Info)
func int Org_873_Cipher_FromBalor_Condition()
func void Org_873_Cipher_FromBalor_Info()
instance Org_873_Cipher_TRADE(C_Info)
func int Org_873_Cipher_TRADE_Condition()
func void Org_873_Cipher_TRADE_Info()
instance ORG_873_CIPHER_TRADE2(C_Info)
func int org_873_cipher_trade2_condition()
func void org_873_cipher_trade2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_875_Tuersteher.d
instance DIA_Org_875_EXIT(C_Info)
func int DIA_Org_875_EXIT_Condition()
func void DIA_Org_875_EXIT_Info()
instance DIA_Org_875_PERM(C_Info)
func int DIA_Org_875_PERM_Condition()
func void DIA_Org_875_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_876_Tuersteher.d
instance DIA_Org_876_EXIT(C_Info)
func int DIA_Org_876_EXIT_Condition()
func void DIA_Org_876_EXIT_Info()
instance DIA_Org_876_AmSfb(C_Info)
func int DIA_Org_876_AmSfb_Condition()
func void DIA_Org_876_AmSfb_Info()
instance DIA_Org_876_Bribe(C_Info)
func int DIA_Org_876_Bribe_Condition()
func void DIA_Org_876_Bribe_Info()
func void DIA_Org_876_Bribe_10Erz()
func void DIA_Org_876_Bribe_50Erz()
func void DIA_Org_876_Bribe_100Erz()
instance DIA_Org_876_PERM(C_Info)
func int DIA_Org_876_PERM_Condition()
func void DIA_Org_876_PERM_Info()
instance DIA_Org_876_ScSld(C_Info)
func int DIA_Org_876_ScSld_Condition()
func void DIA_Org_876_ScSld_Info()
instance DIA_Org_876_ScSekte(C_Info)
func int DIA_Org_876_ScSekte_Condition()
func void DIA_Org_876_ScSekte_Info()
var int Org_876_GotJoint;
instance DIA_Org_876_GibKraut(C_Info)
func int DIA_Org_876_GibKraut_Condition()
func void DIA_Org_876_GibKraut_Info()
const string Org_876_CHECKPOINT = "NC_TAVERN_BAR";
instance Info_Org_876_FirstWarn(C_Info)
func int Info_Org_876_FirstWarn_Condition()
func void Info_Org_876_FirstWarn_Info()
instance Info_Org_876_LastWarn(C_Info)
func int Info_Org_876_LastWarn_Condition()
func void Info_Org_876_LastWarn_Info()
instance Info_Org_876_Attack(C_Info)
func int Info_Org_876_Attack_Condition()
func void Info_Org_876_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_888_Erpresser.d
instance Info_Erpresser(C_Info)
func int Info_Erpresser_Condition()
func void Info_Erpresser_Info()
func void Info_Erpresser_Choice_AufsMaul()
func void Info_Erpresser_Choice_Zahlen()
func void info_erpresser_choice_noore()
instance Info_BereitsErpresst(C_Info)
func int Info_BereitsErpresst_Condition()
func void Info_BereitsErpresst_Info()
instance Info_BereitsAufsMaul(C_Info)
func int Info_BereitsAufsMaul_Condition()
func void Info_BereitsAufsMaul_Info()
instance Info_Exit(C_Info)
func int Info_Exit_Condition()
func void Info_Exit_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_ORG_889_CoErpresser.d
instance INFO_COERPRESSER_EXIT(C_Info)
func int info_coerpresser_exit_condition()
func void info_coerpresser_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_PC_Fighter.d
instance Info_Gorn_EXIT(C_Info)
func int Info_Gorn_EXIT_Condition()
func void Info_Gorn_EXIT_Info()
instance DIA_Gorn_First(C_Info)
func int Dia_Gorn_First_Condition()
func void Dia_Gorn_First_Info()
instance DIA_Gorn_Leben(C_Info)
func int Dia_Gorn_Leben_Condition()
func void Dia_Gorn_Leben_Info()
var int Gorn_ShrikesHut;
instance DIA_Gorn_Hut(C_Info)
func int Dia_Gorn_Hut_Condition()
func void Dia_Gorn_Hut_Info()
instance DIA_Gorn_HutFree(C_Info)
func int Dia_Gorn_HutFree_Condition()
func void Dia_Gorn_HutFree_Info()
instance DIA_Gorn_BecomeSLD(C_Info)
func int Dia_Gorn_BecomeSLD_Condition()
func void Dia_Gorn_BecomeSLD_Info()
var int Gorn_Trade;
instance DIA_Gorn_TRADE(C_Info)
func int Dia_Gorn_TRADE_Condition()
func void Dia_Gorn_TRADE_Info()
instance DIA_Gorn_DuHehler(C_Info)
func int Dia_Gorn_DuHehler_Condition()
func void Dia_Gorn_DuHehler_Info()
instance Info_Gorn_NCWAIT(C_Info)
func int Info_Gorn_NCWAIT_Condition()
func void Info_Gorn_NCWAIT_Info()
instance Info_Gorn_MAGES(C_Info)
func int Info_Gorn_MAGES_Condition()
func void Info_Gorn_MAGES_Info()
instance Info_Gorn_CRONOS(C_Info)
func int Info_Gorn_CRONOS_Condition()
func void Info_Gorn_CRONOS_Info()
instance Info_Gorn_RUINWAIT(C_Info)
func int Info_Gorn_RUINWAIT_Condition()
func void Info_Gorn_RUINWAIT_Info()
instance Info_Gorn_RUINWHAT(C_Info)
func int Info_Gorn_RUINWHAT_Condition()
func void Info_Gorn_RUINWHAT_Info()
instance Info_Gorn_RUINFOCUS(C_Info)
func int Info_Gorn_RUINFOCUS_Condition()
func void Info_Gorn_RUINFOCUS_Info()
instance Info_Gorn_RUINJOIN(C_Info)
func int Info_Gorn_RUINJOIN_Condition()
func void Info_Gorn_RUINJOIN_Info()
instance Info_Gorn_RUINABYSS(C_Info)
func int Info_Gorn_RUINABYSS_Condition()
func void Info_Gorn_RUINABYSS_Info()
instance Info_Gorn_RUINLEAVE(C_Info)
func int Info_Gorn_RUINLEAVE_Condition()
func void Info_Gorn_RUINLEAVE_Info()
instance Info_Gorn_RUINWALL(C_Info)
func int Info_Gorn_RUINWALL_Condition()
func void Info_Gorn_RUINWALL_Info()
instance Info_Gorn_RUINWALLWHAT(C_Info)
func int Info_Gorn_RUINWALLWHAT_Condition()
func void Info_Gorn_RUINWALLWHAT_Info()
instance Info_Gorn_RUINLEDGE(C_Info)
func int Info_Gorn_RUINLEDGE_Condition()
func void Info_Gorn_RUINLEDGE_Info()
instance Info_Gorn_RUINPLATFORM(C_Info)
func int Info_Gorn_RUINPLATFORM_Condition()
func void Info_Gorn_RUINPLATFORM_Info()
instance Info_Gorn_RUINGATE(C_Info)
func int Info_Gorn_RUINGATE_Condition()
func void Info_Gorn_RUINGATE_Info()
instance Info_Gorn_RUINLEAVEINSIDE(C_Info)
func int Info_Gorn_RUINLEAVEINSIDE_Condition()
func void Info_Gorn_RUINLEAVEINSIDE_Info()
instance Info_Gorn_RUINSUCCESS(C_Info)
func int Info_Gorn_RUINSUCCESS_Condition()
func void Info_Gorn_RUINSUCCESS_Info()
instance Info_Gorn_RUINTROLL(C_Info)
func int Info_Gorn_RUINTROLL_Condition()
func void Info_Gorn_RUINTROLL_Info()
instance Info_Gorn_RUINVICTORY(C_Info)
func int Info_Gorn_RUINVICTORY_Condition()
func void Info_Gorn_RUINVICTORY_Info()
instance Info_Gorn_DIEGOMILTEN(C_Info)
func int Info_Gorn_DIEGOMILTEN_Condition()
func void Info_Gorn_DIEGOMILTEN_Info()
instance Info_Gorn_FREEMINE(C_Info)
func int Info_Gorn_FREEMINE_Condition()
func void Info_Gorn_FREEMINE_Info()
instance Info_Gorn_GUARDNC(C_Info)
func int Info_Gorn_GUARDNC_Condition()
func void Info_Gorn_GUARDNC_Info()
instance Info_Gorn_GUARDNCRUNNING(C_Info)
func int Info_Gorn_GUARDNCRUNNING_Condition()
func void Info_Gorn_GUARDNCRUNNING_Info()
instance Info_Gorn_POST(C_Info)
func int Info_Gorn_POST_Condition()
func void Info_Gorn_POST_Info()
instance Info_Gorn_TAKEBACK(C_Info)
func int Info_Gorn_TAKEBACK_Condition()
func void Info_Gorn_TAKEBACK_Info()
instance Info_Gorn_SECOND(C_Info)
func int Info_Gorn_SECOND_Condition()
func void Info_Gorn_SECOND_Info()
instance Info_Gorn_WHYME(C_Info)
func int Info_Gorn_WHYME_Condition()
func void Info_Gorn_WHYME_Info()
instance Info_Gorn_KICKBUTT(C_Info)
func int Info_Gorn_KICKBUTT_Condition()
func void Info_Gorn_KICKBUTT_Info()
instance Info_Gorn_MYWAY(C_Info)
func int Info_Gorn_MYWAY_Condition()
func void Info_Gorn_MYWAY_Info()
instance Info_Gorn_WOLF(C_Info)
func int Info_Gorn_WOLF_Condition()
func void Info_Gorn_WOLF_Info()
func void Info_Gorn_WOLF_FM()
func void Info_Gorn_WOLF_WOLF()
instance Info_Gorn_LEAVEFORPOST(C_Info)
func int Info_Gorn_LEAVEFORPOST_Condition()
func void Info_Gorn_LEAVEFORPOST_Info()
instance Info_Gorn_REJOINFORFM(C_Info)
func int Info_Gorn_REJOINFORFM_Condition()
func void Info_Gorn_REJOINFORFM_Info()
instance Info_Gorn_RAZOR(C_Info)
func int Info_Gorn_RAZOR_Condition()
func void Info_Gorn_RAZOR_Info()
instance Info_Gorn_FMCENTRANCE(C_Info)
func int Info_Gorn_FMCENTRANCE_Condition()
func void Info_Gorn_FMCENTRANCE_Info()
instance Info_Gorn_FMGATE(C_Info)
func int Info_Gorn_FMGATE_Condition()
func void Info_Gorn_FMGATE_Info()
instance Info_Gorn_AFTERFM(C_Info)
func int Info_Gorn_AFTERFM_Condition()
func void Info_Gorn_AFTERFM_Info()
instance Info_Gorn_FMWATCH(C_Info)
func int Info_Gorn_FMWATCH_Condition()
func void Info_Gorn_FMWATCH_Info()
instance INFO_GORN_FM2(C_Info)
func int info_gorn_fm2_condition()
func void info_gorn_fm2_info()
instance Info_Gorn_FOUNDULUMULU(C_Info)
func int Info_Gorn_FOUNDULUMULU_Condition()
func void Info_Gorn_FOUNDULUMULU_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_PC_FighterFM.d
instance Info_GornFM_EXIT(C_Info)
func int Info_GornFM_EXIT_Condition()
func void Info_GornFM_EXIT_Info()
instance Info_GornFM_WAIT(C_Info)
func int Info_GornFM_WAIT_Condition()
func void Info_GornFM_WAIT_Info()
instance Info_GornFM_FOLLOW(C_Info)
func int Info_GornFM_FOLLOW_Condition()
func void Info_GornFM_FOLLOW_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_PC_Mage.d
instance DIA_Milten_EXIT(C_Info)
func int DIA_Milten_EXIT_Condition()
func void DIA_Milten_EXIT_Info()
instance DIA_Milten_First(C_Info)
func int DIA_Milten_First_Condition()
func void DIA_Milten_First_Info()
instance DIA_Milten_Hello(C_Info)
func int DIA_Milten_Hello_Condition()
func void DIA_Milten_Hello_Info()
instance DIA_Milten_GotoCorristo(C_Info)
func int DIA_Milten_GotoCorristo_Condition()
func void DIA_Milten_GotoCorristo_Info()
var int milten_HasLetter;
instance DIA_Milten_Letter(C_Info)
func int DIA_Milten_Letter_Condition()
func void DIA_Milten_Letter_Info()
func void DIA_Milten_Letter_Give()
func void DIA_Milten_Letter_NO()
func void DIA_Milten_Letter_NO_AGAIN()
instance DIA_Milten_ComesBack(C_Info)
func int DIA_Milten_ComesBack_Condition()
func void DIA_Milten_ComesBack_Info()
instance DIA_Milten_WoTorrez(C_Info)
func int DIA_Milten_WoTorrez_Condition()
func void DIA_Milten_WoTorrez_Info()
instance DIA_Milten_NochEinBrief(C_Info)
func int DIA_Milten_NochEinBrief_Condition()
func void DIA_Milten_NochEinBrief_Info()
instance DIA_Milten_PERM(C_Info)
func int DIA_Milten_PERM_Condition()
func void DIA_Milten_PERM_Info()
instance DIA_Milten_WannaMage(C_Info)
func int DIA_Milten_WannaMage_Condition()
func void DIA_Milten_WannaMage_Info()
instance Info_Milten_SHWAIT(C_Info)
func int Info_Milten_SHWAIT_Condition()
func void Info_Milten_SHWAIT_Info()
instance Info_Milten_SHGORN(C_Info)
func int Info_Milten_SHGORN_Condition()
func void Info_Milten_SHGORN_Info()
instance Info_Milten_SHLESTER(C_Info)
func int Info_Milten_SHLESTER_Condition()
func void Info_Milten_SHLESTER_Info()
instance Info_Milten_SHYOU(C_Info)
func int Info_Milten_SHYOU_Condition()
func void Info_Milten_SHYOU_Info()
instance Info_Milten_SHME(C_Info)
func int Info_Milten_SHME_Condition()
func void Info_Milten_SHME_Info()
instance Info_Milten_SHPROBLEM(C_Info)
func int Info_Milten_SHPROBLEM_Condition()
func void Info_Milten_SHPROBLEM_Info()
instance Info_Milten_SHFOCUS(C_Info)
func int Info_Milten_SHFOCUS_Condition()
func void Info_Milten_SHFOCUS_Info()
instance Info_Milten_SHSEAL(C_Info)
func int Info_Milten_SHSEAL_Condition()
func void Info_Milten_SHSEAL_Info()
instance Info_Milten_SHTALISMAN(C_Info)
func int Info_Milten_SHTALISMAN_Condition()
func void Info_Milten_SHTALISMAN_Info()
instance Info_Milten_SHOFFER(C_Info)
func int Info_Milten_SHOFFER_Condition()
func void Info_Milten_SHOFFER_Info()
instance Info_Milten_SHOFFER2(C_Info)
func int Info_Milten_SHOFFER2_Condition()
func void Info_Milten_SHOFFER2_Info()
instance Info_Milten_SHACCEPT(C_Info)
func int Info_Milten_SHACCEPT_Condition()
func void Info_Milten_SHACCEPT_Info()
instance Info_Milten_SHARRIVED(C_Info)
func int Info_Milten_SHARRIVED_Condition()
func void Info_Milten_SHARRIVED_Info()
instance Info_Milten_SHHEAL(C_Info)
func int Info_Milten_SHHEAL_Condition()
func void Info_Milten_SHHEAL_Info()
instance Info_Milten_SHRUNNING(C_Info)
func int Info_Milten_SHRUNNING_Condition()
func void Info_Milten_SHRUNNING_Info()
instance Info_Milten_SHSCROLL(C_Info)
func int Info_Milten_SHSCROLL_Condition()
func void Info_Milten_SHSCROLL_Info()
instance Info_Milten_SHNEWSCROLL(C_Info)
func int Info_Milten_SHNEWSCROLL_Condition()
func void Info_Milten_SHNEWSCROLL_Info()
instance Info_Milten_SHLEAVE(C_Info)
func int Info_Milten_SHLEAVE_Condition()
func void Info_Milten_SHLEAVE_Info()
instance Info_Milten_SHCONTINUE(C_Info)
func int Info_Milten_SHCONTINUE_Condition()
func void Info_Milten_SHCONTINUE_Info()
var int orctalismanisfound;
instance Info_Milten_SHSUCCESS(C_Info)
func int Info_Milten_SHSUCCESS_Condition()
func void Info_Milten_SHSUCCESS_Info()
instance Info_Milten_OCWARN(C_Info)
func int Info_Milten_OCWARN_Condition()
func void Info_Milten_OCWARN_Info()
instance Info_Milten_OCMINE(C_Info)
func int Info_Milten_OCMINE_Condition()
func void Info_Milten_OCMINE_Info()
instance Info_Milten_OCKDW(C_Info)
func int Info_Milten_OCKDW_Condition()
func void Info_Milten_OCKDW_Info()
instance Info_Milten_OCWHY(C_Info)
func int Info_Milten_OCWHY_Condition()
func void Info_Milten_OCWHY_Info()
instance Info_Milten_OCYOU(C_Info)
func int Info_Milten_OCYOU_Condition()
func void Info_Milten_OCYOU_Info()
instance Info_Milten_OCDIEGO(C_Info)
func int Info_Milten_OCDIEGO_Condition()
func void Info_Milten_OCDIEGO_Info()
instance Info_Milten_LOADSWORD(C_Info)
func int Info_Milten_LOADSWORD_Condition()
func void Info_Milten_LOADSWORD_Info()
instance Info_Milten_LOADSWORD1(C_Info)
func int Info_Milten_LOADSWORD1_Condition()
func void Info_Milten_LOADSWORD1_Info()
instance Info_Milten_LSAWAY(C_Info)
func int Info_Milten_LSAWAY_Condition()
func void Info_Milten_LSAWAY_Info()
instance Info_Milten_LOADSWORD4(C_Info)
func int Info_Milten_LOADSWORD4_Condition()
func void Info_Milten_LOADSWORD4_Info()
instance Info_Milten_LSRISK(C_Info)
func int Info_Milten_LSRISK_Condition()
func void Info_Milten_LSRISK_Info()
instance INFO_MILTEN_OREGUARD(C_Info)
func int info_milten_oreguard_condition()
func void info_milten_oreguard_info()
instance Info_Milten_LSOREHEAP(C_Info)
func int Info_Milten_LSOREHEAP_Condition()
func void Info_Milten_LSOREHEAP_Info()
instance Info_Milten_LSNOW(C_Info)
func int Info_Milten_LSNOW_Condition()
func void Info_Milten_LSNOW_Info()
instance Info_Milten_CHAPTERSIX(C_Info)
func int Info_Milten_CHAPTERSIX_Condition()
func void Info_Milten_CHAPTERSIX_Info()
instance Info_Milten_LSDONE(C_Info)
func int Info_Milten_LSDONE_Condition()
func void Info_Milten_LSDONE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_PC_Psionic.d
instance PC_Psionic_Exit(C_Info)
func int PC_Psionic_Exit_Condition()
func void PC_Psionic_Exit_Info()
instance DIA_Lester_Sakrileg(C_Info)
func int DIA_Lester_Sakrileg_Condition()
func void DIA_Lester_Sakrileg_Info()
instance DIA_Lester_Hallo(C_Info)
func int DIA_Lester_Hallo_Condition()
func void DIA_Lester_Hallo_Info()
instance DIA_Lester_WannaTalkToMaster(C_Info)
func int DIA_Lester_WannaTalkToMaster_Condition()
func void DIA_Lester_WannaTalkToMaster_Info()
instance DIA_Lester_CampInfo(C_Info)
func int DIA_Lester_CampInfo_Condition()
func void DIA_Lester_CampInfo_Info()
func void DIA_Lester_CampInfo_BACK()
func void DIA_Lester_CampInfo_GIL()
func void DIA_Lester_CampInfo_SLEEPER()
func void DIA_Lester_CampInfo_HERB()
instance DIA_Lester_WannaJoin(C_Info)
func int DIA_Lester_WannaJoin_Condition()
func void DIA_Lester_WannaJoin_Info()
instance DIA_Lester_HowProofWorthy(C_Info)
func int DIA_Lester_HowProofWorthy_Condition()
func void DIA_Lester_HowProofWorthy_Info()
var int Lester_Show;
instance DIA_Lester_WeitWeg(C_Info)
func int DIA_Lester_WeitWeg_Condition()
func void DIA_Lester_WeitWeg_Info()
instance DIA_Lester_ShowHallo(C_Info)
func int DIA_Lester_ShowHallo_Condition()
func void DIA_Lester_ShowHallo_Info()
instance DIA_Lester_Show(C_Info)
func int DIA_Lester_Show_Condition()
func void DIA_Lester_Show_Info()
instance DIA_Lester_GuideOffer(C_Info)
func int DIA_Lester_GuideOffer_Condition()
func void DIA_Lester_GuideOffer_Info()
instance PC_Psionic_SOON(C_Info)
func int PC_Psionic_SOON_Condition()
func void PC_Psionic_SOON_Info()
instance PC_Psionic_CHANGE(C_Info)
func int PC_Psionic_CHANGE_Condition()
func void PC_Psionic_CHANGE_Info()
instance PC_Psionic_GUIDEFIRST(C_Info)
func int PC_Psionic_GUIDEFIRST_Condition()
func void PC_Psionic_GUIDEFIRST_Info()
func void PC_Psionic_GUIDEFIRST_MAINGATE()
func void PC_Psionic_GUIDEFIRST_SMITH()
func void PC_Psionic_GUIDEFIRST_TEMPEL()
func void PC_Psionic_GUIDEFIRST_TRAIN()
func void PC_Psionic_GUIDEFIRST_HERB()
func void PC_Psionic_GUIDEFIRST_BACK()
instance PC_Psionic_TRAIN(C_Info)
func int PC_Psionic_TRAIN_Condition()
func void PC_Psionic_TRAIN_Info()
instance PC_Psionic_TEMPEL(C_Info)
func int PC_Psionic_TEMPEL_Condition()
func void PC_Psionic_TEMPEL_Info()
instance PC_Psionic_SMITH(C_Info)
func int PC_Psionic_SMITH_Condition()
func void PC_Psionic_SMITH_Info()
instance PC_Psionic_HERB(C_Info)
func int PC_Psionic_HERB_Condition()
func void PC_Psionic_HERB_Info()
instance PC_Psionic_SEND(C_Info)
func int PC_Psionic_SEND_Condition()
func void PC_Psionic_SEND_Info()
instance PC_Psionic_BROTHERHOOD_TODO(C_Info)
func int PC_Psionic_BROTHERHOOD_TODO_Condition()
func void PC_Psionic_BROTHERHOOD_TODO_Info()
instance PC_Psionic_FOLLOWME(C_Info)
func int PC_Psionic_FOLLOWME_Condition()
func void PC_Psionic_FOLLOWME_Info()
instance PC_Psionic_GOLEM(C_Info)
func int PC_Psionic_GOLEM_Condition()
func void PC_Psionic_GOLEM_Info()
instance PC_Psionic_STORY(C_Info)
func int PC_Psionic_STORY_Condition()
func void PC_Psionic_STORY_Info()
instance PC_Psionic_COMEWITHME(C_Info)
func int PC_Psionic_COMEWITHME_Condition()
func void PC_Psionic_COMEWITHME_Info()
instance PC_Psionic_FOKUSPLACE(C_Info)
func int PC_Psionic_FOKUSPLACE_Condition()
func void PC_Psionic_FOKUSPLACE_Info()
instance PC_Psionic_COMEBACK(C_Info)
func int PC_Psionic_COMEBACK_Condition()
func void PC_Psionic_COMEBACK_Info()
instance PC_Psionic_IAMHURT(C_Info)
func int PC_Psionic_IAMHURT_Condition()
func void PC_Psionic_IAMHURT_Info()
instance PC_Psionic_URKUNDE(C_Info)
func int PC_Psionic_URKUNDE_Condition()
func void PC_Psionic_URKUNDE_Info()
instance PC_Psionic_TIP(C_Info)
func int PC_Psionic_TIP_Condition()
func void PC_Psionic_TIP_Info()
instance PC_Psionic_LEAVE(C_Info)
func int PC_Psionic_LEAVE_Condition()
func void PC_Psionic_LEAVE_Info()
instance PC_Psionic_BALKON(C_Info)
func int PC_Psionic_BALKON_Condition()
func void PC_Psionic_BALKON_Info()
instance PC_Psionic_FINISH(C_Info)
func int PC_Psionic_FINISH_Condition()
func void PC_Psionic_FINISH_Info()
instance PC_Psionic_CHESTCLOSED(C_Info)
func int PC_Psionic_CHESTCLOSED_Condition()
func void PC_Psionic_CHESTCLOSED_Info()
instance PC_Psionic_COMEAGAIN(C_Info)
func int PC_Psionic_COMEAGAIN_Condition()
func void PC_Psionic_COMEAGAIN_Info()
instance Info_Lester_DIEGOMILTEN(C_Info)
func int Info_Lester_DIEGOMILTEN_Condition()
func void Info_Lester_DIEGOMILTEN_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SFB_1000_Senyan.d
instance DIA_Senyan_EXIT(C_Info)
func int DIA_Senyan_EXIT_Condition()
func void DIA_Senyan_EXIT_Info()
instance DIA_Senyan_Hello(C_Info)
func int DIA_Senyan_Hello_Condition()
func void DIA_Senyan_Hello_Info()
instance DIA_Senyan_JustTalk(C_Info)
func int DIA_Senyan_JustTalk_Condition()
func void DIA_Senyan_JustTalk_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SFB_1001_Schuerfer.d
instance DIA_Sfb_1001_EXIT(C_Info)
func int DIA_Sfb_1001_EXIT_Condition()
func void DIA_Sfb_1001_EXIT_Info()
instance DIA_Sfb_1001_Hello(C_Info)
func int DIA_Sfb_1001_Hello_Condition()
func void DIA_Sfb_1001_Hello_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SFB_1037_Swiney.d
instance Info_Swiney_EXIT(C_Info)
func int Info_Swiney_EXIT_Condition()
func void Info_Swiney_EXIT_Info()
instance Info_Swiney_Hello(C_Info)
func int Info_Swiney_Hello_Condition()
func void Info_Swiney_Hello_Info()
instance Info_Swiney_Schuerfer(C_Info)
func int Info_Swiney_Schuerfer_Condition()
func void Info_Swiney_Schuerfer_Info()
func void Info_Swiney_Schuerfer_Ja()
func void Info_Swiney_Schuerfer_Nein()
instance Info_Swiney_PERM(C_Info)
func int Info_Swiney_PERM_Condition()
func void Info_Swiney_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_701_Orik.d
instance Sld_701_Orik_Exit(C_Info)
func int Sld_701_Orik_Exit_Condition()
func void Sld_701_Orik_Exit_Info()
instance SLD_701_ORIK_DIELAGE(C_Info)
func int sld_701_orik_dielage_condition()
func void sld_701_orik_dielage_info()
instance SLD_701_ORIK_DASLAGER(C_Info)
func int sld_701_orik_daslager_condition()
func void sld_701_orik_daslager_info()
instance SLD_701_ORIK_EINERVONEUCHWERDEN(C_Info)
func int sld_701_orik_einervoneuchwerden_condition()
func void sld_701_orik_einervoneuchwerden_info()
instance SLD_701_ORIK_KRAUTPROBE(C_Info)
func int sld_701_orik_krautprobe_condition()
func void sld_701_orik_krautprobe_info()
instance ORIK_STEALKEY(C_Info)
func int orik_stealkey_condition()
func void orik_stealkey_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_702_Soeldner.d
instance DIA_Sld_702_EXIT(C_Info)
func int DIA_Sld_702_EXIT_Condition()
func void DIA_Sld_702_EXIT_Info()
instance DIA_Sld_702_First(C_Info)
func int DIA_Sld_702_First_Condition()
func void DIA_Sld_702_First_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Sld_709_Cord.d
instance DIA_SLD_709_Cord_Exit(C_Info)
func int DIA_SLD_709_Cord_Exit_Condition()
func void DIA_SLD_709_Cord_Exit_Info()
instance SLD_709_Cord_TRAINOFFER(C_Info)
func int SLD_709_Cord_TRAINOFFER_Condition()
func void SLD_709_Cord_TRAINOFFER_Info()
instance SLD_709_Cord_TRAIN(C_Info)
func int SLD_709_Cord_TRAIN_Condition()
func void SLD_709_Cord_TRAIN_Info()
instance SLD_709_Cord_TRAINAGAIN(C_Info)
func int SLD_709_Cord_TRAINAGAIN_Condition()
func void SLD_709_Cord_TRAINAGAIN_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_723_Soeldner.d
const string SLD_723_CHECKPOINT = "NC_PLACE02";
instance Info_SLD_723_FirstWarn(C_Info)
func int Info_SLD_723_FirstWarn_Condition()
func void Info_SLD_723_FirstWarn_Info()
func void Info_SLD_723_Parole_CRONOS()
func void Info_SLD_723_Parole_FORGOT()
func void Info_SLD_723_Parole_FALSE1()
func void Info_SLD_723_Parole_FALSE2()
func void Info_SLD_723_Parole_TRUE()
instance Info_SLD_723_LastWarn(C_Info)
func int Info_SLD_723_LastWarn_Condition()
func void Info_SLD_723_LastWarn_Info()
instance Info_SLD_723_Attack(C_Info)
func int Info_SLD_723_Attack_Condition()
func void Info_SLD_723_Attack_Info()
instance Info_SLD_723_PAROLE(C_Info)
func int Info_SLD_723_PAROLE_Condition()
func void Info_SLD_723_PAROLE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_726_Soeldner.d
instance INFO_OREGUARD(C_Info)
func int info_oreguard_condition()
func void info_oreguard_info()
const string OREGUARD_CHECKPOINT = "NC_PATH36";
instance INFO_OREGUARD_FIRSTWARN(C_Info)
func int info_oreguard_firstwarn_condition()
func void info_oreguard_firstwarn_info()
instance INFO_OREGUARD_LASTWARN(C_Info)
func int info_oreguard_lastwarn_condition()
func void info_oreguard_lastwarn_info()
instance INFO_OREGUARD_ATTACK(C_Info)
func int info_oreguard_attack_condition()
func void info_oreguard_attack_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_728_Jarvis.d
instance DIA_Jarvis_EXIT(C_Info)
func int DIA_Jarvis_EXIT_Condition()
func void DIA_Jarvis_EXIT_Info()
instance DIA_Jarvis_First(C_Info)
func int DIA_Jarvis_First_Condition()
func void DIA_Jarvis_First_Info()
instance DIA_Jarvis_SldInfo(C_Info)
func int DIA_Jarvis_SldInfo_Condition()
func void DIA_Jarvis_SldInfo_Info()
instance DIA_Jarvis_Magier(C_Info)
func int DIA_Jarvis_Magier_Condition()
func void DIA_Jarvis_Magier_Info()
instance DIA_Jarvis_Erzhaufen(C_Info)
func int DIA_Jarvis_Erzhaufen_Condition()
func void DIA_Jarvis_Erzhaufen_Info()
instance DIA_Jarvis_WoHaufen(C_Info)
func int DIA_Jarvis_WoHaufen_Condition()
func void DIA_Jarvis_WoHaufen_Info()
instance DIA_Jarvis_Rest(C_Info)
func int DIA_Jarvis_Rest_Condition()
func void DIA_Jarvis_Rest_Info()
instance DIA_Jarvis_PERM(C_Info)
func int DIA_Jarvis_PERM_Condition()
func void DIA_Jarvis_PERM_Info()
instance Sld_728_Jarvis_AUFNAHMESOLDIER(C_Info)
func int Sld_728_Jarvis_AUFNAHMESOLDIER_Condition()
func void Sld_728_Jarvis_AUFNAHMESOLDIER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Sld_729_Kharim.d
instance Info_Kharim_Exit(C_Info)
func int Info_Kharim_Exit_Condition()
func void Info_Kharim_Exit_Info()
instance Info_Kharim_What(C_Info)
func int Info_Kharim_What_Condition()
func void Info_Kharim_What_Info()
var C_Npc ARENA_FIGHTER_2;
instance Info_Kharim_Charge(C_Info)
func int Info_Kharim_Charge_Condition()
func void Info_Kharim_Charge_Info()
func void Info_Kharim_Charge_BACK()
func void Info_Kharim_Charge_Insult()
func void Info_Kharim_Charge_Insult_Goats()
func void Info_Kharim_Charge_Insult_GomezAss()
func void Info_Kharim_Charge_Insult_Stupid()
func void Info_Kharim_Charge_Insult_Face()
instance Info_Kharim_InArena(C_Info)
func int Info_Kharim_InArena_Condition()
func void Info_Kharim_InArena_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_732_Soeldner.d
const string SLD_732_CHECKPOINT = "NC_PLACE02";
instance Info_SLD_732_FirstWarn(C_Info)
func int Info_SLD_732_FirstWarn_Condition()
func void Info_SLD_732_FirstWarn_Info()
func void Info_SLD_732_Parole_CRONOS()
func void Info_SLD_732_Parole_FORGOT()
func void Info_SLD_732_Parole_FALSE1()
func void Info_SLD_732_Parole_FALSE2()
func void Info_SLD_732_Parole_TRUE()
instance Info_SLD_732_LastWarn(C_Info)
func int Info_SLD_732_LastWarn_Condition()
func void Info_SLD_732_LastWarn_Info()
instance Info_SLD_732_Attack(C_Info)
func int Info_SLD_732_Attack_Condition()
func void Info_SLD_732_Attack_Info()
instance Info_SLD_732_PAROLE(C_Info)
func int Info_SLD_732_PAROLE_Condition()
func void Info_SLD_732_PAROLE_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_737_Torlof.d
instance DIA_Torlof_EXIT(C_Info)
func int DIA_Torlof_EXIT_Condition()
func void DIA_Torlof_EXIT_Info()
instance DIA_Torlof_Hallo(C_Info)
func int DIA_Torlof_Hallo_Condition()
func void DIA_Torlof_Hallo_Info()
instance DIA_Torlof_Mitmachen(C_Info)
func int DIA_Torlof_Mitmachen_Condition()
func void DIA_Torlof_Mitmachen_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_751_Soeldner.d
instance DIA_SLD_751_Soeldner_INTRO(C_Info)
func int DIA_SLD_751_Soeldner_INTRO_CONDITION()
func void DIA_SLD_751_Soeldner_INTRO_INFO()
instance DIA_SLD_751_Soeldner_EXIT_1(C_Info)
func int DIA_SLD_751_Soeldner_EXIT_1_CONDITION()
func void DIA_SLD_751_Soeldner_EXIT_1_INFO()
instance DIA_SLD_751_Soeldner_EXIT_2(C_Info)
func int DIA_SLD_751_Soeldner_EXIT_2_CONDITION()
func void DIA_SLD_751_Soeldner_EXIT_2_INFO()
instance DIA_SLD_751_Soeldner_UMSEHEN(C_Info)
func int DIA_SLD_751_Soeldner_UMSEHEN_CONDITION()
func void DIA_SLD_751_Soeldner_UMSEHEN_INFO()
instance DIA_SLD_751_Soeldner_INMINE(C_Info)
func int DIA_SLD_751_Soeldner_INMINE_CONDITION()
func void DIA_SLD_751_Soeldner_INMINE_INFO()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_752_Okyl.d
instance DIA_SLD_752_OKYL_INTRO(C_Info)
func int dia_sld_752_okyl_intro_condition()
func void dia_sld_752_okyl_intro_info()
instance DIA_SLD_752_OKYL_EXIT(C_Info)
func int dia_sld_752_okyl_exit_condition()
func void dia_sld_752_okyl_exit_info()
instance DIA_SLD_752_OKYL_UMSEHEN(C_Info)
func int dia_sld_752_okyl_umsehen_condition()
func void dia_sld_752_okyl_umsehen_info()
instance DIA_SLD_752_OKYL_WERBISTDU(C_Info)
func int dia_sld_752_okyl_werbistdu_condition()
func void dia_sld_752_okyl_werbistdu_info()
instance DIA_SLD_752_OKYL_INMINE(C_Info)
func int dia_sld_752_okyl_inmine_condition()
func void dia_sld_752_okyl_inmine_info()
instance DIA_SLD_752_OKYL_PERMIT(C_Info)
func int dia_sld_752_okyl_permit_condition()
func void dia_sld_752_okyl_permit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_753_Baloro.d
var int SLD_753_Baloro_SC_choice;
var int SLD_753_Baloro_SC_wills_wissen;
instance INFO_BALORO_EXIT2(C_Info)
func int info_baloro_exit2_condition()
func void info_baloro_exit2_info()
instance DIA_SLD_753_Baloro(C_Info)
func int DIA_SLD_753_Baloro_Condition()
func void DIA_SLD_753_Baloro_Intro_Info()
instance DIA_SLD_753_Baloro_Wasmeinstdu(C_Info)
func int DIA_SLD_753_Baloro_Wasmeinstdu_Condition()
func void DIA_SLD_753_Baloro_Wasmeinstdu_Info()
instance DIA_SLD_753_Baloro_Worumgehts(C_Info)
func int DIA_SLD_753_Baloro_Worumgehts_Condition()
func void DIA_SLD_753_Baloro_Worumgehts_Info()
func void DIA_SLD_753_Baloro_Worumgehts_ja()
func void DIA_SLD_753_Baloro_Worumgehts_jaklar()
func void dia_sld_753_baloro_worumgehts_nein()
instance DIA_SLD_753_Baloro_habsnichtdabei(C_Info)
func int DIA_SLD_753_Baloro_habsnichtdabei_Condition()
func void DIA_SLD_753_Baloro_habsnichtdabei_Info()
instance DIA_SLD_753_Baloro_habsdabei(C_Info)
func int DIA_SLD_753_Baloro_habsdabei_Condition()
func void DIA_SLD_753_Baloro_habsdabei_Info()
instance DIA_SLD_753_Baloro_letztes_Wort(C_Info)
func int DIA_SLD_753_Baloro_letztes_Wort_Condition()
func void DIA_SLD_753_Baloro_letztes_Wort_Info()
instance DIA_SLD_753_Baloro_SC_wills_wissen(C_Info)
func int DIA_SLD_753_Baloro_SC_wills_wissen_Condition()
func void DIA_SLD_753_Baloro_SC_wills_wissen_Info()
instance DIA_SLD_753_Baloro_Exit(C_Info)
func int DIA_SLD_753_Baloro_Exit_Condition()
func void DIA_SLD_753_Baloro_Exit_Info()
instance DIA_SLD_753_Baloro_Angebotdochannehmen(C_Info)
func int DIA_SLD_753_Baloro_Angebotdochannehmen_Condition()
func void DIA_SLD_753_Baloro_Angebotdochannehmen_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_760_Soeldner.d
instance DIA_SLD_760_Soeldner_INTRO(C_Info)
func int DIA_SLD_760_Soeldner_INTRO_CONDITION()
func void DIA_SLD_760_Soeldner_INTRO_INFO()
instance DIA_SLD_760_Soeldner_EXIT_1(C_Info)
func int DIA_SLD_760_Soeldner_EXIT_1_CONDITION()
func void DIA_SLD_760_Soeldner_EXIT_1_INFO()
instance DIA_SLD_760_Soeldner_EXIT_2(C_Info)
func int DIA_SLD_760_Soeldner_EXIT_2_CONDITION()
func void DIA_SLD_760_Soeldner_EXIT_2_INFO()
instance DIA_SLD_760_Soeldner_UMSEHEN(C_Info)
func int DIA_SLD_760_Soeldner_UMSEHEN_CONDITION()
func void DIA_SLD_760_Soeldner_UMSEHEN_INFO()
instance DIA_SLD_760_Soeldner_INMINE(C_Info)
func int DIA_SLD_760_Soeldner_INMINE_CONDITION()
func void DIA_SLD_760_Soeldner_INMINE_INFO()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_SLD_761_Soeldner.d
instance DIA_SLD_761_Soeldner_INTRO(C_Info)
func int DIA_SLD_761_Soeldner_INTRO_CONDITION()
func void DIA_SLD_761_Soeldner_INTRO_INFO()
instance DIA_SLD_761_Soeldner_EXIT_1(C_Info)
func int DIA_SLD_761_Soeldner_EXIT_1_CONDITION()
func void DIA_SLD_761_Soeldner_EXIT_1_INFO()
instance DIA_SLD_761_Soeldner_EXIT_2(C_Info)
func int DIA_SLD_761_Soeldner_EXIT_2_CONDITION()
func void DIA_SLD_761_Soeldner_EXIT_2_INFO()
instance DIA_SLD_761_Soeldner_UMSEHEN(C_Info)
func int DIA_SLD_761_Soeldner_UMSEHEN_CONDITION()
func void DIA_SLD_761_Soeldner_UMSEHEN_INFO()
instance DIA_SLD_761_Soeldner_INMINE(C_Info)
func int DIA_SLD_761_Soeldner_INMINE_CONDITION()
func void DIA_SLD_761_Soeldner_INMINE_INFO()
instance DIA_SLD_761_Soeldner_Bribe(C_Info)
func int DIA_SLD_761_Soeldner_Bribe_CONDITION()
func void DIA_SLD_761_Soeldner_Bribe_INFO()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_300_Alberto.d
instance STT_300_Alberto_Exit(C_Info)
func int STT_300_Alberto_Exit_Condition()
func void STT_300_Alberto_Exit_Info()
instance STT_300_Alberto_BUY(C_Info)
func int STT_300_Alberto_BUY_Condition()
func void STT_300_Alberto_BUY_Info()
instance STT_300_ALBERTO_BUY2(C_Info)
func int stt_300_alberto_buy2_condition()
func void stt_300_alberto_buy2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_301_Ian.d
instance STT_301_IAN_Exit(C_Info)
func int STT_301_IAN_Exit_Condition()
func void STT_301_IAN_Exit_Info()
instance STT_301_IAN_HI(C_Info)
func int STT_301_IAN_HI_Condition()
func void STT_301_IAN_HI_Info()
instance STT_301_IAN_GOMEZ(C_Info)
func int STT_301_IAN_GOMEZ_Condition()
func void STT_301_IAN_GOMEZ_Info()
instance STT_301_IAN_ORE(C_Info)
func int STT_301_IAN_ORE_Condition()
func void STT_301_IAN_ORE_Info()
instance STT_301_IAN_MORE(C_Info)
func int STT_301_IAN_MORE_Condition()
func void STT_301_IAN_MORE_Info()
instance STT_301_IAN_MAGIC(C_Info)
func int STT_301_IAN_MAGIC_Condition()
func void STT_301_IAN_MAGIC_Info()
instance STT_301_IAN_MINE(C_Info)
func int STT_301_IAN_MINE_Condition()
func void STT_301_IAN_MINE_Info()
instance STT_301_IAN_WANTLIST(C_Info)
func int STT_301_IAN_WANTLIST_Condition()
func void STT_301_IAN_WANTLIST_Info()
instance STT_301_IAN_GETLIST(C_Info)
func int STT_301_IAN_GETLIST_Condition()
func void STT_301_IAN_GETLIST_Info()
instance STT_301_IAN_NEST(C_Info)
func int STT_301_IAN_NEST_Condition()
func void STT_301_IAN_NEST_Info()
instance STT_301_IAN_GEAR_RUN(C_Info)
func int STT_301_IAN_GEAR_RUN_Condition()
func void STT_301_IAN_GEAR_RUN_Info()
instance STT_301_IAN_GEAR_SUC(C_Info)
func int STT_301_IAN_GEAR_SUC_Condition()
func void STT_301_IAN_GEAR_SUC_Info()
instance STT_301_IAN_GOTOASGHAN(C_Info)
func int STT_301_IAN_GOTOASGHAN_Condition()
func void STT_301_IAN_GOTOASGHAN_Info()
instance STT_301_IAN_AFTERALL(C_Info)
func int STT_301_IAN_AFTERALL_Condition()
func void STT_301_IAN_AFTERALL_Info()
instance STT_301_IAN_NOTENOUGH(C_Info)
func int STT_301_IAN_NOTENOUGH_Condition()
func void STT_301_IAN_NOTENOUGH_Info()
instance STT_301_IAN_STEALLIST(C_Info)
func int stt_301_ian_steallist_condition()
func void stt_301_ian_steallist_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_302_Viper.d
instance Stt_302_Viper_Exit(C_Info)
func int Stt_302_Viper_Exit_Condition()
func void Stt_302_Viper_Exit_Info()
instance Stt_302_Viper_GREET(C_Info)
func int Stt_302_Viper_GREET_Condition()
func void Stt_302_Viper_GREET_Info()
instance Stt_302_Viper_MELT(C_Info)
func int Stt_302_Viper_MELT_Condition()
func void Stt_302_Viper_MELT_Info()
instance Stt_302_Viper_BUY(C_Info)
func int Stt_302_Viper_BUY_Condition()
func void Stt_302_Viper_BUY_Info()
instance STT_302_VIPER_BUY2(C_Info)
func int stt_302_viper_buy2_condition()
func void stt_302_viper_buy2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Stt_309_Whistler.d
instance DIA_Whistler_Exit(C_Info)
func int DIA_Whistler_Exit_Condition()
func void DIA_Whistler_Exit_Info()
instance DIA_Whistler_IAmNew(C_Info)
func int DIA_Whistler_IAmNew_Condition()
func void DIA_Whistler_IAmNew_Info()
instance DIA_Whistler_Favour(C_Info)
func int DIA_Whistler_Favour_Condition()
func void DIA_Whistler_Favour_Info()
func void DIA_Whistler_Favour_Ok()
func void DIA_Whistler_Favour_OreAway()
func void dia_whistler_favour_later()
func void DIA_Whistler_Favour_WhyNotSell()
instance DIA_Whistler_Running110(C_Info)
func int DIA_Whistler_Running110_Condition()
func void DIA_Whistler_Running110_Info()
instance DIA_Whistler_RunningPayBack(C_Info)
func int DIA_Whistler_RunningPayBack_Condition()
func void DIA_Whistler_RunningPayBack_Info()
instance DIA_WHISTLER_RUNNINGPAYBACK_110(C_Info)
func int dia_whistler_runningpayback_110_condition()
func void dia_whistler_runningpayback_110_info()
instance DIA_Whistler_MySword_TooLate(C_Info)
func int DIA_Whistler_MySword_TooLate_Condition()
func void DIA_Whistler_MySword_TooLate_Info()
instance DIA_Whistler_MySword_Success(C_Info)
func int DIA_Whistler_MySword_Success_Condition()
func void DIA_Whistler_MySword_Success_Info()
instance DIA_Whistler_StandardKap1(C_Info)
func int DIA_Whistler_StandardKap1_Condition()
func void DIA_Whistler_StandardKap1_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Stt_311_Fisk.d
instance Stt_311_Fisk_Exit(C_Info)
func int Stt_311_Fisk_Exit_Condition()
func void Stt_311_Fisk_Exit_Info()
instance Stt_311_Fisk_First(C_Info)
func int Stt_311_Fisk_First_Condition()
func void Stt_311_Fisk_First_Info()
instance Stt_311_Fisk_Trade(C_Info)
func int Stt_311_Fisk_Trade_Condition()
func void Stt_311_Fisk_Trade_Info()
instance Stt_311_Fisk_WhistlersSword(C_Info)
func int Stt_311_Fisk_WhistlersSword_Condition()
func void Stt_311_Fisk_WhistlersSword_Info()
func void Stt_311_Fisk_WhistlersSword_BACK()
func void Stt_311_Fisk_WhistlersSword_Fault()
func void Stt_311_Fisk_WhistlersSword_TakeIt()
instance Stt_311_Fisk_ForgetSword(C_Info)
func int Stt_311_Fisk_ForgetSword_Condition()
func void Stt_311_Fisk_ForgetSword_Info()
instance Stt_311_Fisk_MordragKO(C_Info)
func int Stt_311_Fisk_MordragKO_Condition()
func void Stt_311_Fisk_MordragKO_Info()
func void Stt_311_Fisk_MordragKO_Relax()
func void Stt_311_Fisk_MordragKO_FuckOff()
func void Stt_311_Fisk_MordragKO_Petze()
instance Stt_311_Fisk_HehlerSuccess(C_Info)
func int Stt_311_Fisk_HehlerSuccess_Condition()
func void Stt_311_Fisk_HehlerSuccess_Info()
var int fisk_armor_l_was_bought;
var int fisk_armor_m_was_bought;
instance Stt_311_Fisk_ARMOR(C_Info)
func int Stt_311_Fisk_ARMOR_Condition()
func void Stt_311_Fisk_ARMOR_Info()
func void Stt_311_Fisk_ARMOR_BACK()
func void Stt_311_Fisk_ARMOR_L()
func void Stt_311_Fisk_ARMOR_M()
instance STT_311_FISK_LETMEHELP(C_Info)
func int stt_311_fisk_letmehelp_condition()
func void stt_311_fisk_letmehelp_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_315_Sly.d
instance DIA_STT_315_Sly_Exit(C_Info)
func int DIA_STT_315_Sly_Exit_Condition()
func void DIA_STT_315_Sly_Exit_Info()
instance DIA_STT_315_Sly(C_Info)
func int DIA_STT_315_Sly_Condition()
func void DIA_STT_315_Sly_Info()
var int Sly_LostNek;
instance DIA_STT_315_LostNek(C_Info)
func int DIA_STT_315_LostNek_Condition()
func void DIA_STT_315_LostNek_Info()
func void dia_stt_315_lostnek_later()
func void DIA_STT_315_LostNek_Why()
func void DIA_STT_315_LostNek_DoIt()
instance DIA_STT_315_LostNekSuccess(C_Info)
func int DIA_STT_315_LostNekSuccess_Condition()
func void DIA_STT_315_LostNekSuccess_Info()
func void DIA_STT_315_LostNekSuccess_Proof()
func void DIA_STT_315_LostNekSuccess_NoProof()
instance DIA_STT_315_Sly_AfterSuccess(C_Info)
func int DIA_STT_315_Sly_AfterSuccess_Condition()
func void DIA_STT_315_Sly_AfterSuccess_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_329_Dexter.d
instance DIA_Dexter_Exit(C_Info)
func int DIA_Dexter_Exit_Condition()
func void DIA_Dexter_Exit_Info()
instance DIA_Dexter_First(C_Info)
func int DIA_Dexter_First_Condition()
func void DIA_Dexter_First_Info()
instance DIA_Dexter_Kraut(C_Info)
func int DIA_Dexter_Kraut_Condition()
func void DIA_Dexter_Kraut_Info()
instance DIA_Dexter_Trade(C_Info)
func int DIA_Dexter_Trade_Condition()
func void DIA_Dexter_Trade_Info()
instance DIA_Dexter_JoinOC(C_Info)
func int DIA_Dexter_JoinOC_Condition()
func void DIA_Dexter_JoinOC_Info()
func void DIA_Dexter_JoinOC_Ok()
func void DIA_Dexter_JoinOC_HowMuch()
func void DIA_Dexter_JoinOC_Advance()
func void DIA_Dexter_JoinOC_Threat()
func void DIA_Dexter_JoinOC_OreNowOrElse()
func void DIA_Dexter_JoinOC_ForgetIt()
var int Dexter_PsiCamp;
instance DIA_Dexter_WhereST(C_Info)
func int DIA_Dexter_WhereST_Condition()
func void DIA_Dexter_WhereST_Info()
instance DIA_Dexter_KalomsRecipeSuccess(C_Info)
func int DIA_Dexter_KalomsRecipeSuccess_Condition()
func void DIA_Dexter_KalomsRecipeSuccess_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_331_Fingers.d
instance DIA_STT_331_Fingers_Exit(C_Info)
func int DIA_STT_331_Fingers_Exit_Condition()
func void DIA_STT_331_Fingers_Exit_Info()
var int Fingers_CanTeach;
instance DIA_Fingers_BecomeShadow(C_Info)
func int DIA_Fingers_BecomeShadow_Condition()
func void DIA_Fingers_BecomeShadow_Info()
func void DIA_Fingers_BecomeShadow_BACK()
func void DIA_Fingers_BecomeShadow_AnyTips()
func void DIA_Fingers_BecomeShadow_TeachMe()
var int Fingers_Wherecavalorn;
instance DIA_Fingers_Lehrer(C_Info)
func int DIA_Fingers_Lehrer_Condition()
func void DIA_Fingers_Lehrer_Info()
func void DIA_Fingers_Lehrer_Schleichen()
func void DIA_Fingers_Lehrer_Lockpick()
func void DIA_Fingers_Lehrer_Lockpick2()
func void DIA_Fingers_Lehrer_Pickpocket()
func void DIA_Fingers_Lehrer_Pickpocket2()
func void DIA_Fingers_Lehrer_BACK()
instance DIA_Fingers_WhereCavalorn(C_Info)
func int DIA_Fingers_WhereCavalorn_Condition()
func void DIA_Fingers_WhereCavalorn_Info()
var int Fingers_Learnt;
instance DIA_Fingers_Learnt(C_Info)
func int DIA_Fingers_Learnt_Condition()
func void DIA_Fingers_Learnt_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_STT_335_Santino.d
instance STT_335_Santino_Exit(C_Info)
func int STT_335_Santino_Exit_Condition()
func void STT_335_Santino_Exit_Info()
instance STT_335_Santino_BUY(C_Info)
func int STT_335_Santino_BUY_Condition()
func void STT_335_Santino_BUY_Info()
instance STT_335_SANTINO_BUY2(C_Info)
func int stt_335_santino_buy2_condition()
func void stt_335_santino_buy2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_stt_594_grim.d
instance DIA_GRIM2_EXIT(C_Info)
func int dia_grim2_exit_condition()
func void dia_grim2_exit_info()
instance DIA_Grim_INEXTREMOAWAY(C_Info)
func int DIA_Grim_INEXTREMOAWAY_Condition()
func void DIA_Grim_INEXTREMOAWAY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1400_GorNaBar.d
instance Tpl_1400_GorNaBar_Exit(C_Info)
func int Tpl_1400_GorNaBar_Exit_Condition()
func void Tpl_1400_GorNaBar_Exit_Info()
instance Tpl_1400_GorNaBar_SUGGEST(C_Info)
func int Tpl_1400_GorNaBar_SUGGEST_Condition()
func void Tpl_1400_GorNaBar_SUGGEST_Info()
instance Tpl_1400_GorNaBar_INFO(C_Info)
func int Tpl_1400_GorNaBar_INFO_Condition()
func void Tpl_1400_GorNaBar_INFO_Info()
instance Tpl_1400_GorNaBar_VICTORY(C_Info)
func int Tpl_1400_GorNaBar_VICTORY_Condition()
func void Tpl_1400_GorNaBar_VICTORY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1401_GorNaKosh.d
instance Tpl_1401_GorNaKosh_Exit(C_Info)
func int Tpl_1401_GorNaKosh_Exit_Condition()
func void Tpl_1401_GorNaKosh_Exit_Info()
instance Tpl_1401_GorNaKosh_SUGGEST(C_Info)
func int Tpl_1401_GorNaKosh_SUGGEST_Condition()
func void Tpl_1401_GorNaKosh_SUGGEST_Info()
instance Tpl_1401_GorNaKosh_INFO(C_Info)
func int Tpl_1401_GorNaKosh_INFO_Condition()
func void Tpl_1401_GorNaKosh_INFO_Info()
instance Tpl_1401_GorNaKosh_CRAWLER(C_Info)
func int Tpl_1401_GorNaKosh_CRAWLER_Condition()
func void Tpl_1401_GorNaKosh_CRAWLER_Info()
instance Tpl_1401_GorNaKosh_VICTORY(C_Info)
func int Tpl_1401_GorNaKosh_VICTORY_Condition()
func void Tpl_1401_GorNaKosh_VICTORY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1405_GorNaRan.d
instance DIA_GorNaRan_Exit(C_Info)
func int DIA_GorNaRan_Exit_Condition()
func void DIA_GorNaRan_Exit_Info()
instance DIA_GorNaRan_Wache(C_Info)
func int DIA_GorNaRan_Wache_Condition()
func void DIA_GorNaRan_Wache_Info()
instance Info_TPL_1405_GorNaRan(C_Info)
func int Info_TPL_1405_GorNaRan_Condition()
func void Info_TPL_1405_GorNaRan_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1406_Templer.d
instance DIA_KalomsGuard_Exit(C_Info)
func int DIA_KalomsGuard_Exit_Condition()
func void DIA_KalomsGuard_Exit_Info()
instance DIA_KalomsGuard_PERM(C_Info)
func int DIA_KalomsGuard_PERM_Condition()
func void DIA_KalomsGuard_PERM_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1415_Templer.d
instance DIA_Tpl_1415_Torwache_Exit(C_Info)
func int DIA_Tpl_1415_Torwache_Exit_Condition()
func void DIA_Tpl_1415_Torwache_Exit_Info()
instance DIA_Tpl_1415_Torwache_First(C_Info)
func int DIA_Tpl_1415_Torwache_First_Condition()
func void DIA_Tpl_1415_Torwache_First_Info()
func void DIA_Tpl_1415_Torwache_First_Join()
func void DIA_Tpl_1415_Torwache_First_JustLooking()
instance DIA_Tpl_1415_Torwache_Sit(C_Info)
func int DIA_Tpl_1415_Torwache_Sit_Condition()
func void DIA_Tpl_1415_Torwache_Sit_Info()
instance Tpl_1415_Torwache_TEMPLERAUFNAHME(C_Info)
func int Tpl_1415_Torwache_TEMPLERAUFNAHME_Condition()
func void Tpl_1415_Torwache_TEMPLERAUFNAHME_Info()
instance Tpl_1415_Templer_ROCK(C_Info)
func int Tpl_1415_Templer_ROCK_Condition()
func void Tpl_1415_Templer_ROCK_Info()
func void Tpl_1415_Templer_ROCK_BACK()
func void Tpl_1415_Templer_ROCK_BUY()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1416_Templer.d
instance DIA_Tpl_1416_Torwache_Exit(C_Info)
func int DIA_Tpl_1416_Torwache_Exit_Condition()
func void DIA_Tpl_1416_Torwache_Exit_Info()
instance DIA_Tpl_1416_Torwache_Life(C_Info)
func int DIA_Tpl_1416_Torwache_Life_Condition()
func void DIA_Tpl_1416_Torwache_Life_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Tpl_1422_GorHanis.d
instance Info_GorHanis_Exit(C_Info)
func int Info_GorHanis_Exit_Condition()
func void Info_GorHanis_Exit_Info()
instance Info_GorHanis_What(C_Info)
func int Info_GorHanis_What_Condition()
func void Info_GorHanis_What_Info()
instance Info_GorHanis_Arena(C_Info)
func int Info_GorHanis_Arena_Condition()
func void Info_GorHanis_Arena_Info()
instance Info_GorHanis_Sleeper(C_Info)
func int Info_GorHanis_Sleeper_Condition()
func void Info_GorHanis_Sleeper_Info()
instance Info_GorHanis_Summoning(C_Info)
func int Info_GorHanis_Summoning_Condition()
func void Info_GorHanis_Summoning_Info()
instance Info_GorHanis_WayToST(C_Info)
func int Info_GorHanis_WayToST_Condition()
func void Info_GorHanis_WayToST_Info()
instance Info_GorHanis_Charge(C_Info)
func int Info_GorHanis_Charge_Condition()
func void Info_GorHanis_Charge_Info()
instance Info_GorHanis_ChargeGood(C_Info)
func int Info_GorHanis_ChargeGood_Condition()
func void Info_GorHanis_ChargeGood_Info()
instance INFO_GORHANIS_INARENA(C_Info)
func int info_gorhanis_inarena_condition()
func void info_gorhanis_inarena_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1430_Templer.d
instance Tpl_1430_Templer_CALLSLEEPER(C_Info)
func int Tpl_1430_Templer_CALLSLEEPER_Condition()
func void Tpl_1430_Templer_CALLSLEEPER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1431_Templer.d
instance Tpl_1431_Templer_CALLSLEEPER(C_Info)
func int Tpl_1431_Templer_CALLSLEEPER_Condition()
func void Tpl_1431_Templer_CALLSLEEPER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1433_GorNaVid.d
instance Tpl_1433_GorNaVid_Exit(C_Info)
func int Tpl_1433_GorNaVid_Exit_Condition()
func void Tpl_1433_GorNaVid_Exit_Info()
instance Tpl_1433_GorNaVid_HEALTH(C_Info)
func int Tpl_1433_GorNaVid_HEALTH_Condition()
func void Tpl_1433_GorNaVid_HEALTH_Info()
instance Tpl_1433_GorNaVid_IAN(C_Info)
func int Tpl_1433_GorNaVid_IAN_Condition()
func void Tpl_1433_GorNaVid_IAN_Info()
instance Tpl_1433_GorNaVid_HEALTH_SUC(C_Info)
func int Tpl_1433_GorNaVid_HEALTH_SUC_Condition()
func void Tpl_1433_GorNaVid_HEALTH_SUC_Info()
instance Tpl_1433_GorNavid_VICTORY(C_Info)
func int Tpl_1433_GorNavid_VICTORY_Condition()
func void Tpl_1433_GorNavid_VICTORY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1436_Templer.d
instance Tpl_1436_Templer_Exit(C_Info)
func int Tpl_1436_Templer_Exit_Condition()
func void Tpl_1436_Templer_Exit_Info()
instance Tpl_1436_Templer_CRAWLER(C_Info)
func int Tpl_1436_Templer_CRAWLER_Condition()
func void Tpl_1436_Templer_CRAWLER_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1437_Templer.d
instance Tpl_1437_Templer_Exit(C_Info)
func int Tpl_1437_Templer_Exit_Condition()
func void Tpl_1437_Templer_Exit_Info()
instance Tpl_1437_Templer_NERV(C_Info)
func int Tpl_1437_Templer_NERV_Condition()
func void Tpl_1437_Templer_NERV_Info()
instance Tpl_1437_Templer_LEAVE(C_Info)
func int Tpl_1437_Templer_LEAVE_Condition()
func void Tpl_1437_Templer_LEAVE_Info()
instance Tpl_1437_Templer_LEAVENOW(C_Info)
func int Tpl_1437_Templer_LEAVENOW_Condition()
func void Tpl_1437_Templer_LEAVENOW_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1438_Templer.d
instance Tpl_1438_Templer_Exit(C_Info)
func int Tpl_1438_Templer_Exit_Condition()
func void Tpl_1438_Templer_Exit_Info()
instance Tpl_1438_Templer_INFO(C_Info)
func int Tpl_1438_Templer_INFO_Condition()
func void Tpl_1438_Templer_INFO_Info()
instance Tpl_1438_Templer_WHY(C_Info)
func int Tpl_1438_Templer_WHY_Condition()
func void Tpl_1438_Templer_WHY_Info()
instance Tpl_1438_Templer_KALOM(C_Info)
func int Tpl_1438_Templer_KALOM_Condition()
func void Tpl_1438_Templer_KALOM_Info()
instance Tpl_1438_Templer_EGGSEARCH(C_Info)
func int Tpl_1438_Templer_EGGSEARCH_Condition()
func void Tpl_1438_Templer_EGGSEARCH_Info()
instance Tpl_1438_Templer_ZANGEN(C_Info)
func int Tpl_1438_Templer_ZANGEN_Condition()
func void Tpl_1438_Templer_ZANGEN_Info()
instance Tpl_1438_Templer_TEACHZANGEN(C_Info)
func int Tpl_1438_Templer_TEACHZANGEN_Condition()
func void Tpl_1438_Templer_TEACHZANGEN_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1439_GorNaDrak.d
instance DIA_GorNaDrak_EXIT(C_Info)
func int DIA_GorNaDrak_EXIT_Condition()
func void DIA_GorNaDrak_EXIT_Info()
instance DIA_GorNaDrak_Greet(C_Info)
func int DIA_GorNaDrak_Greet_Condition()
func void DIA_GorNaDrak_Greet_Info()
instance DIA_GorNaDrak_WasSekret(C_Info)
func int DIA_GorNaDrak_WasSekret_Condition()
func void DIA_GorNaDrak_WasSekret_Info()
instance DIA_GorNaDrak_TeachMandibles(C_Info)
func int DIA_GorNaDrak_TeachMandibles_Condition()
func void DIA_GorNaDrak_TeachMandibles_Info()
instance DIA_GorNaDrak_WhatFor(C_Info)
func int DIA_GorNaDrak_WhatFor_Condition()
func void DIA_GorNaDrak_WhatFor_Info()
instance DIA_GorNaDrak_Permanent(C_Info)
func int DIA_GorNaDrak_Permanent_Condition()
func void DIA_GorNaDrak_Permanent_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1441_Templer.d
const string TPL_1441_CHECKPOINT = "PSI_TEMPLE_IN";
instance Info_TPL_1441_FirstWarn(C_Info)
func int Info_TPL_1441_FirstWarn_Condition()
func void Info_TPL_1441_FirstWarn_Info()
func void Info_TPL_1441_FirstWarn_Condition_YBERION()
func void Info_TPL_1441_FirstWarn_Condition_LESTER()
instance Info_TPL_1441_LastWarn(C_Info)
func int Info_TPL_1441_LastWarn_Condition()
func void Info_TPL_1441_LastWarn_Info()
instance Info_TPL_1441_Attack(C_Info)
func int Info_TPL_1441_Attack_Condition()
func void Info_TPL_1441_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1442_Templer.d
const string TPL_1442_CHECKPOINT = "PSI_TEMPLE_IN";
instance Info_TPL_1442_FirstWarn(C_Info)
func int Info_TPL_1442_FirstWarn_Condition()
func void Info_TPL_1442_FirstWarn_Info()
func void Info_TPL_1442_FirstWarn_Condition_YBERION()
func void Info_TPL_1442_FirstWarn_Condition_LESTER()
instance Info_TPL_1442_LastWarn(C_Info)
func int Info_TPL_1442_LastWarn_Condition()
func void Info_TPL_1442_LastWarn_Info()
instance Info_TPL_1442_Attack(C_Info)
func int Info_TPL_1442_Attack_Condition()
func void Info_TPL_1442_Attack_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_TPL_1455_GorBoba.d
instance Info_TPL_1455_GorBoba(C_Info)
func int Info_TPL_1455_GorBoba_Condition()
func void Info_TPL_1455_GorBoba_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_511_Herek.d
instance DIA_Herek_Exit(C_Info)
func int DIA_Herek_Exit_Condition()
func void DIA_Herek_Exit_Info()
instance DIA_Herek_Bully(C_Info)
func int DIA_Herek_Bully_Condition()
func void DIA_Herek_Bully_Info()
instance DIA_Herek_Motz(C_Info)
func int DIA_Herek_Motz_Condition()
func void DIA_Herek_Motz_Info()
instance DIA_Herek_Anlegen(C_Info)
func int DIA_Herek_Anlegen_Condition()
func void DIA_Herek_Anlegen_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_520_Buddler.d
instance DIA_Vlk_520_Exit(C_Info)
func int DIA_Vlk_520_Exit_Condition()
func void DIA_Vlk_520_Exit_Info()
instance DIA_Vlk_520_LeaveMe(C_Info)
func int DIA_Vlk_520_LeaveMe_Condition()
func void DIA_Vlk_520_LeaveMe_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_524_Dusty.d
instance DIA_Dusty_Exit(C_Info)
func int DIA_Dusty_Exit_Condition()
func void DIA_Dusty_Exit_Info()
instance DIA_Dusty_Hello(C_Info)
func int DIA_Dusty_Hello_Condition()
func void DIA_Dusty_Hello_Info()
instance DIA_Dusty_WhyNotLeave(C_Info)
func int DIA_Dusty_WhyNotLeave_Condition()
func void DIA_Dusty_WhyNotLeave_Info()
instance DIA_Dusty_MetMelvin(C_Info)
func int DIA_Dusty_MetMelvin_Condition()
func void DIA_Dusty_MetMelvin_Info()
instance DIA_Dusty_Offer100Ore(C_Info)
func int DIA_Dusty_Offer100Ore_Condition()
func void DIA_Dusty_Offer100Ore_Info()
instance DIA_Dusty_IWouldGo(C_Info)
func int DIA_Dusty_IWouldGo_Condition()
func void DIA_Dusty_IWouldGo_Info()
var int Dusty_LetsGo;
instance DIA_Dusty_LetsGo(C_Info)
func int DIA_Dusty_LetsGo_Condition()
func void DIA_Dusty_LetsGo_Info()
instance DIA_DUSTY_BYE(C_Info)
func int dia_dusty_bye_condition()
func void dia_dusty_bye_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_530_Guy.d
instance DIA_Guy_Exit(C_Info)
func int DIA_Guy_Exit_Condition()
func void DIA_Guy_Exit_Info()
instance DIA_Guy_Hello(C_Info)
func int DIA_Guy_Hello_Condition()
func void DIA_Guy_Hello_Info()
instance DIA_Guy_AdOC(C_Info)
func int DIA_Guy_AdOC_Condition()
func void DIA_Guy_AdOC_Info()
func void DIA_Guy_AdOC_BACK()
func void DIA_Guy_AdOC_Warez()
func void DIA_Guy_AdOC_Protection()
instance DIA_Guy_AdNC(C_Info)
func int DIA_Guy_AdNC_Condition()
func void DIA_Guy_AdNC_Info()
instance DIA_Guy_AdST(C_Info)
func int DIA_Guy_AdST_Condition()
func void DIA_Guy_AdST_Info()
instance DIA_Guy_MyOwnHut(C_Info)
func int DIA_Guy_MyOwnHut_Condition()
func void DIA_Guy_MyOwnHut_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_534_Buddler.d
instance DIA_Vlk_534_Exit(C_Info)
func int DIA_Vlk_534_Exit_Condition()
func void DIA_Vlk_534_Exit_Info()
instance DIA_Vlk_534_LeaveMe(C_Info)
func int DIA_Vlk_534_LeaveMe_Condition()
func void DIA_Vlk_534_LeaveMe_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_536_Kyle.d
instance DIA_Kyle_Exit(C_Info)
func int DIA_Kyle_Exit_Condition()
func void DIA_Kyle_Exit_Info()
instance DIA_Kyle_HutRage(C_Info)
func int DIA_Kyle_HutRage_Condition()
func void DIA_Kyle_HutRage_Info()
instance DIA_Kyle_Problem(C_Info)
func int DIA_Kyle_Problem_Condition()
func void DIA_Kyle_Problem_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_538_Huno.d
instance DIA_Huno_Exit(C_Info)
func int DIA_Huno_Exit_Condition()
func void DIA_Huno_Exit_Info()
instance DIA_Huno_YouKnowYourJob(C_Info)
func int DIA_Huno_YouKnowYourJob_Condition()
func void DIA_Huno_YouKnowYourJob_Info()
instance DIA_Huno_HowLong(C_Info)
func int DIA_Huno_HowLong_Condition()
func void DIA_Huno_HowLong_Info()
instance DIA_Huno_HowsYourBusiness(C_Info)
func int DIA_Huno_HowsYourBusiness_Condition()
func void DIA_Huno_HowsYourBusiness_Info()
var int Huno_LearnSmith;
instance DIA_Huno_LEARNSMITH(C_Info)
func int DIA_Huno_LEARNSMITH_Condition()
func void DIA_Huno_LEARNSMITH_Info()
instance DIA_Huno_BUYSMITH(C_Info)
func int DIA_Huno_BUYSMITH_Condition()
func void DIA_Huno_BUYSMITH_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_564_Jesse.d
instance DIA_Jesse_Exit(C_Info)
func int DIA_Jesse_Exit_Condition()
func void DIA_Jesse_Exit_Info()
instance DIA_Jesse_Hallo(C_Info)
func int DIA_Jesse_Hallo_Condition()
func void DIA_Jesse_Hallo_Info()
instance DIA_Jesse_Warn(C_Info)
func int DIA_Jesse_Warn_Condition()
func void DIA_Jesse_Warn_Info()
instance DIA_Jesse_Mission(C_Info)
func int DIA_Jesse_Mission_Condition()
func void DIA_Jesse_Mission_Info()
func void DIA_Jesse_Mission_ForgetIt()
func void DIA_Jesse_Mission_What()
func void DIA_Jesse_Mission_YES()
func void DIA_Jesse_Mission_NO()
instance DIA_Jesse_MisSuccess(C_Info)
func int DIA_Jesse_MisSuccess_Condition()
func void DIA_Jesse_MisSuccess_Info()
func void DIA_Jesse_MisSuccess_Waaas()
func void DIA_Jesse_MisSuccess_Ok()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_572_Gravo.d
instance DIA_Gravo_Exit(C_Info)
func int DIA_Gravo_Exit_Condition()
func void DIA_Gravo_Exit_Info()
instance DIA_Gravo_Hallo(C_Info)
func int DIA_Gravo_Hallo_Condition()
func void DIA_Gravo_Hallo_Info()
instance DIA_Gravo_HelpHow(C_Info)
func int DIA_Gravo_HelpHow_Condition()
func void DIA_Gravo_HelpHow_Info()
func void B_Gravo_HelpAttitude(var C_Npc prob)
instance DIA_Gravo_HelpAngryNow(C_Info)
func int DIA_Gravo_HelpAngryNow_Condition()
func void DIA_Gravo_HelpAngryNow_Info()
func void DIA_Gravo_HelpAngryNow_BACK()
func void DIA_Gravo_HelpAngryNow_Diego()
func void DIA_Gravo_HelpAngryNow_Thorus()
func void DIA_Gravo_HelpAngryNow_Gomez()
instance DIA_Gravo_Influence(C_Info)
func int DIA_Gravo_Influence_Condition()
func void DIA_Gravo_Influence_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_573_Graham.d
instance DIA_Graham_EXIT(C_Info)
func int Info_Graham_EXIT_Condition()
func void Info_Graham_EXIT_Info()
instance DIA_Graham_Hello(C_Info)
func int DIA_Graham_Hello_Condition()
func void DIA_Graham_Hello_Info()
var int Graham_OMKarteVerkauft;
var int Graham_OMKarteErpresst;
instance DIA_Graham_SellMap(C_Info)
func int DIA_Graham_SellMap_Condition()
func void DIA_Graham_SellMap_Info()
func void DIA_Graham_SellMap_BACK()
func void DIA_Graham_SellMap_Pay()
func void DIA_Graham_SellMap_AufsMaul()
func void DIA_Graham_SellMap_GiveNotSell()
instance DIA_Graham_BuyMaps(C_Info)
func int DIA_Graham_BuyMaps_Condition()
func void DIA_Graham_BuyMaps_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_574_Mud.d
var int Mud_Nerve;
const int NerveSec = 30;
var int Mud_NerveRealized;
instance DIA_Mud_Exit(C_Info)
func int DIA_Mud_Exit_Condition()
func void DIA_Mud_Exit_Info()
instance DIA_Mud_FirstEXIT(C_Info)
func int DIA_Mud_FirstEXIT_Condition()
func void DIA_Mud_FirstEXIT_Info()
func void DIA_Mud_FirstEXIT_Verpiss()
func void DIA_Mud_FirstEXIT_Komm()
instance DIA_Mud_ShutUp(C_Info)
func int DIA_Mud_ShutUp_Condition()
func void DIA_Mud_ShutUp_Info()
instance DIA_Mud_GetLost(C_Info)
func int DIA_Mud_GetLost_Condition()
func void DIA_Mud_GetLost_Info()
instance DIA_Mud_Defeated(C_Info)
func int DIA_Mud_Defeated_Condition()
func void DIA_Mud_Defeated_Info()
instance DIA_Mud_Nerve_0(C_Info)
func int DIA_Mud_Nerve_0_Condition()
func void DIA_Mud_Nerve_0_Info()
instance DIA_Mud_Nerve_1(C_Info)
func int DIA_Mud_Nerve_1_Condition()
func void DIA_Mud_Nerve_1_Info()
instance DIA_Mud_Nerve_2(C_Info)
func int DIA_Mud_Nerve_2_Condition()
func void DIA_Mud_Nerve_2_Info()
instance DIA_Mud_Nerve_3(C_Info)
func int DIA_Mud_Nerve_3_Condition()
func void DIA_Mud_Nerve_3_Info()
instance DIA_Mud_Nerve_4(C_Info)
func int DIA_Mud_Nerve_4_Condition()
func void DIA_Mud_Nerve_4_Info()
instance DIA_Mud_Nerve_5(C_Info)
func int DIA_Mud_Nerve_5_Condition()
func void DIA_Mud_Nerve_5_Info()
instance DIA_Mud_Nerve_6(C_Info)
func int DIA_Mud_Nerve_6_Condition()
func void DIA_Mud_Nerve_6_Info()
instance DIA_Mud_Nerve_7(C_Info)
func int DIA_Mud_Nerve_7_Condition()
func void DIA_Mud_Nerve_7_Info()
instance DIA_Mud_Nerve_8(C_Info)
func int DIA_Mud_Nerve_8_Condition()
func void DIA_Mud_Nerve_8_Info()
instance DIA_Mud_Nerve_9(C_Info)
func int DIA_Mud_Nerve_9_Condition()
func void DIA_Mud_Nerve_9_Info()
instance DIA_Mud_Nerve_10(C_Info)
func int DIA_Mud_Nerve_10_Condition()
func void DIA_Mud_Nerve_10_Info()
instance DIA_Mud_Nerve_11(C_Info)
func int DIA_Mud_Nerve_11_Condition()
func void DIA_Mud_Nerve_11_Info()
instance DIA_Mud_Nerve_12(C_Info)
func int DIA_Mud_Nerve_12_Condition()
func void DIA_Mud_Nerve_12_Info()
instance DIA_Mud_Nerve_13(C_Info)
func int DIA_Mud_Nerve_13_Condition()
func void DIA_Mud_Nerve_13_Info()
instance DIA_Mud_Nerve_14(C_Info)
func int DIA_Mud_Nerve_14_Condition()
func void DIA_Mud_Nerve_14_Info()
instance DIA_Mud_Nerve_15(C_Info)
func int DIA_Mud_Nerve_15_Condition()
func void DIA_Mud_Nerve_15_Info()
instance DIA_Mud_Nerve_16(C_Info)
func int DIA_Mud_Nerve_16_Condition()
func void DIA_Mud_Nerve_16_Info()
instance DIA_Mud_Nerve_17(C_Info)
func int DIA_Mud_Nerve_17_Condition()
func void DIA_Mud_Nerve_17_Info()
instance DIA_Mud_Nerve_18(C_Info)
func int DIA_Mud_Nerve_18_Condition()
func void DIA_Mud_Nerve_18_Info()
instance DIA_Mud_Nerve_19(C_Info)
func int DIA_Mud_Nerve_19_Condition()
func void DIA_Mud_Nerve_19_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_Vlk_580_Grim.d
instance DIA_Grim_Exit(C_Info)
func int DIA_Grim_Exit_Condition()
func void DIA_Grim_Exit_Info()
instance DIA_Grim_Falle(C_Info)
func int DIA_Grim_Falle_Condition()
func void DIA_Grim_Falle_Info()
func void DIA_Grim_Falle_Deny()
func void DIA_Grim_Falle_HowShare()
func void DIA_Grim_Falle_HalfHalf()
func void DIA_Grim_Falle_Accepr()
instance DIA_Grim_ReadyToGo(C_Info)
func int DIA_Grim_ReadyToGo_Condition()
func void DIA_Grim_ReadyToGo_Info()
instance DIA_Grim_AtOCdraussen(C_Info)
func int DIA_Grim_AtOCdraussen_Condition()
func void DIA_Grim_AtOCdraussen_Info()
instance DIA_Grim_NACHFalle(C_Info)
func int DIA_Grim_NACHFalle_Condition()
func void DIA_Grim_NACHFalle_Info()
func void DIA_Grim_NACHFalle_Weiterpruegeln()
func void DIA_Grim_NACHFalle_Frieden()
var int FirstOver;
instance DIA_Grim_Hallo(C_Info)
func int DIA_Grim_Hallo_Condition()
func void DIA_Grim_Hallo_Info()
instance DIA_Grim_Leben(C_Info)
func int DIA_Grim_Leben_Condition()
func void DIA_Grim_Leben_Info()
instance DIA_Grim_Aufnahme(C_Info)
func int DIA_Grim_Aufnahme_Condition()
func void DIA_Grim_Aufnahme_Info()
var int Grim_Tests;
instance DIA_Grim_HowFarAreYou(C_Info)
func int DIA_Grim_HowFarAreYou_Condition()
func void DIA_Grim_HowFarAreYou_Info()
instance DIA_Grim_YourPDV(C_Info)
func int DIA_Grim_YourPDV_Condition()
func void DIA_Grim_YourPDV_Info()
instance DIA_Grim_INEXTREMO(C_Info)
func int DIA_Grim_INEXTREMO_Condition()
func void DIA_Grim_INEXTREMO_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_581_Snaf.d
instance DIA_Snaf_Exit(C_Info)
func int DIA_Snaf_Exit_Condition()
func void DIA_Snaf_Exit_Info()
instance DIA_Snaf_Hello(C_Info)
func int DIA_Snaf_Hello_Condition()
func void DIA_Snaf_Hello_Info()
instance DIA_Snaf_Zutaten(C_Info)
func int DIA_Snaf_Zutaten_Condition()
func void DIA_Snaf_Zutaten_Info()
func void DIA_Snaf_Zutaten_KOTZ()
func void DIA_Snaf_Zutaten_DoIt()
instance DIA_Snaf_ZutatenSuccess(C_Info)
func int DIA_Snaf_ZutatenSuccess_Condition()
var int Snaf_RagoutDay;
func void DIA_Snaf_ZutatenSuccess_Info()
instance DIA_Snaf_AfterSuccess(C_Info)
func int DIA_Snaf_AfterSuccess_Condition()
func void DIA_Snaf_AfterSuccess_Info()
instance DIA_Snaf_WhereMeatbugs(C_Info)
func int DIA_Snaf_WhereMeatbugs_Condition()
func void DIA_Snaf_WhereMeatbugs_Info()
instance DIA_Snaf_WhereNek(C_Info)
func int DIA_Snaf_WhereNek_Condition()
func void DIA_Snaf_WhereNek_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_582_Melvin.d
instance DIA_Melvin_Exit(C_Info)
func int DIA_Melvin_Exit_Condition()
func void DIA_Melvin_Exit_Info()
instance DIA_Melvin_Hello(C_Info)
func int DIA_Melvin_Hello_Condition()
func void DIA_Melvin_Hello_Info()
instance DIA_Melvin_MetDusty(C_Info)
func int DIA_Melvin_MetDusty_Condition()
func void DIA_Melvin_MetDusty_Info()
instance DIA_MELVIN_METDUSTY2(C_Info)
func int dia_melvin_metdusty2_condition()
func void dia_melvin_metdusty2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_583_Glen.d
instance VLK_583_Glen_Exit(C_Info)
func int VLK_583_Glen_Exit_Condition()
func void VLK_583_Glen_Exit_Info()
instance VLK_583_Glen_INFO(C_Info)
func int VLK_583_Glen_INFO_Condition()
func void VLK_583_Glen_INFO_Info()
instance VLK_583_Glen_LOCKPICK(C_Info)
func int VLK_583_Glen_LOCKPICK_Condition()
func void VLK_583_Glen_LOCKPICK_Info()
instance VLK_583_Glen_BUY(C_Info)
func int VLK_583_Glen_BUY_Condition()
func void VLK_583_Glen_BUY_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_584_Snipes.d
instance VLK_584_Snipes_Exit(C_Info)
func int VLK_584_Snipes_Exit_Condition()
func void VLK_584_Snipes_Exit_Info()
instance VLK_584_Snipes_DEAL(C_Info)
func int VLK_584_Snipes_DEAL_Condition()
func void VLK_584_Snipes_DEAL_Info()
instance VLK_584_Snipes_DEAL_RUN(C_Info)
func int VLK_584_Snipes_DEAL_RUN_Condition()
func void VLK_584_Snipes_DEAL_RUN_Info()
instance VLK_584_Snipes_DEAL_2(C_Info)
func int VLK_584_Snipes_DEAL_2_Condition()
func void VLK_584_Snipes_DEAL_2_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_585_Aleph.d
instance VLK_585_Aleph_Exit(C_Info)
func int VLK_585_Aleph_Exit_Condition()
func void VLK_585_Aleph_Exit_Info()
instance VLK_585_Aleph_CLEVER(C_Info)
func int VLK_585_Aleph_CLEVER_Condition()
func void VLK_585_Aleph_CLEVER_Info()
instance VLK_585_Aleph_GUARDS(C_Info)
func int VLK_585_Aleph_GUARDS_Condition()
func void VLK_585_Aleph_GUARDS_Info()
instance VLK_585_Aleph_INFO(C_Info)
func int VLK_585_Aleph_INFO_Condition()
func void VLK_585_Aleph_INFO_Info()
instance VLK_585_Aleph_ANGRY(C_Info)
func int VLK_585_Aleph_ANGRY_Condition()
func void VLK_585_Aleph_ANGRY_Info()
instance VLK_585_Aleph_KEY(C_Info)
func int VLK_585_Aleph_KEY_Condition()
func void VLK_585_Aleph_KEY_Info()
instance VLK_585_Aleph_GLEN(C_Info)
func int VLK_585_Aleph_GLEN_Condition()
func void VLK_585_Aleph_GLEN_Info()
func void B_Aleph_StorageShedKey()
instance VLK_585_Aleph_SCHUPPEN(C_Info)
func int VLK_585_Aleph_SCHUPPEN_Condition()
func void VLK_585_Aleph_SCHUPPEN_Info()
func void VLK_585_Aleph_SCHUPPEN_50()
func void VLK_585_Aleph_SCHUPPEN_30()
func void VLK_585_Aleph_SCHUPPEN_15()
func void VLK_585_Aleph_SCHUPPEN_Back()
instance VLK_585_Aleph_DIRTY(C_Info)
func int VLK_585_Aleph_DIRTY_Condition()
func void VLK_585_Aleph_DIRTY_Info()
func void VLK_585_Aleph_DIRTY_100()
func void VLK_585_Aleph_DIRTY_NO()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_586_Grimes.d
instance VLK_586_Grimes_Exit(C_Info)
func int VLK_586_Grimes_Exit_Condition()
func void VLK_586_Grimes_Exit_Info()
instance VLK_586_Grimes_STORY(C_Info)
func int VLK_586_Grimes_STORY_Condition()
func void VLK_586_Grimes_STORY_Info()
instance VLK_586_Grimes_KNOW(C_Info)
func int VLK_586_Grimes_KNOW_Condition()
func void VLK_586_Grimes_KNOW_Info()
instance VLK_586_Grimes_FIRST(C_Info)
func int VLK_586_Grimes_FIRST_Condition()
func void VLK_586_Grimes_FIRST_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_VLK_587_Garp.d
instance Vlk_587_Garp_Exit(C_Info)
func int Vlk_587_Garp_Exit_Condition()
func void Vlk_587_Garp_Exit_Info()
instance Vlk_587_Garp_ORK(C_Info)
func int Vlk_587_Garp_ORK_Condition()
func void Vlk_587_Garp_ORK_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\MISSIONS\DIA_XardasDemon.d
instance Info_XardasDemon_EXIT(C_Info)
func int Info_XardasDemon_EXIT_Condition()
func void Info_XardasDemon_EXIT_Info()
instance Info_XardasDemon_INTRO(C_Info)
func int Info_XardasDemon_INTRO_Condition()
func void Info_XardasDemon_INTRO_Info()
instance Info_XardasDemon_MASTERWHO(C_Info)
func int Info_XardasDemon_MASTERWHO_Condition()
func void Info_XardasDemon_MASTERWHO_Info()
instance Info_XardasDemon_MASTERHOW(C_Info)
func int Info_XardasDemon_MASTERHOW_Condition()
func void Info_XardasDemon_MASTERHOW_Info()
instance Info_XardasDemon_NOHEART(C_Info)
func int Info_XardasDemon_NOHEART_Condition()
func void Info_XardasDemon_NOHEART_Info()
func void B_XardasDemon_GiveHeart()
instance Info_XardasDemon_STONEHEART(C_Info)
func int Info_XardasDemon_STONEHEART_Condition()
func void Info_XardasDemon_STONEHEART_Info()
instance Info_XardasDemon_ICEHEART(C_Info)
func int Info_XardasDemon_ICEHEART_Condition()
func void Info_XardasDemon_ICEHEART_Info()
instance Info_XardasDemon_FIREHEART(C_Info)
func int Info_XardasDemon_FIREHEART_Condition()
func void Info_XardasDemon_FIREHEART_Info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Bau_900_Ricelord.d
instance Bau_900_Ricelord(Npc_Default)
func void Rtn_start_900()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_901_Horatio.d
instance BAU_901_Horatio(Npc_Default)
func void Rtn_start_901()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_902_Pock.d
instance BAU_902_Pock(Npc_Default)
func void Rtn_start_902()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_903_Rufus.d
instance BAU_903_Rufus(Npc_Default)
func void Rtn_start_903()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_904_Bauer.d
instance BAU_904_Bauer(Npc_Default)
func void Rtn_start_904()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_905_Bauer.d
instance BAU_905_Bauer(Npc_Default)
func void Rtn_start_905()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_907_Bauer.d
instance BAU_907_Bauer(Npc_Default)
func void Rtn_start_907()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_908_Bauer.d
instance BAU_908_Bauer(Npc_Default)
func void Rtn_start_908()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_912_Jeremiah.d
instance BAU_912_Jeremiah(Npc_Default)
func void Rtn_start_912()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_914_Bauer.d
instance BAU_914_Bauer(Npc_Default)
func void Rtn_start_914()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_915_Bauer.d
instance BAU_915_Bauer(Npc_Default)
func void Rtn_start_915()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_916_Bauer.d
instance BAU_916_Bauer(Npc_Default)
func void Rtn_start_916()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_917_Bauer.d
instance BAU_917_Bauer(Npc_Default)
func void Rtn_start_917()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_919_Bauer.d
instance BAU_919_Bauer(Npc_Default)
func void Rtn_start_919()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_920_Bauer.d
instance BAU_920_Bauer(Npc_Default)
func void Rtn_start_920()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_921_Bauer.d
instance BAU_921_Bauer(Npc_Default)
func void Rtn_start_921()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_922_Bauer.d
instance BAU_922_Bauer(Npc_Default)
func void Rtn_start_922()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_923_Bauer.d
instance BAU_923_Bauer(Npc_Default)
func void Rtn_start_923()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_924_Bauer.d
instance BAU_924_Bauer(Npc_Default)
func void Rtn_start_924()
func void rtn_repair_924()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_925_Bauer.d
instance BAU_925_Bauer(Npc_Default)
func void Rtn_start_925()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_926_Bauer.d
instance BAU_926_Bauer(Npc_Default)
func void Rtn_start_926()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_927_Bauer.d
instance BAU_927_Bauer(Npc_Default)
func void Rtn_start_927()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_928_Bauer.d
instance BAU_928_Bauer(Npc_Default)
func void Rtn_start_928()
func void rtn_repair_928()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_929_Bauer.d
instance BAU_929_Bauer(Npc_Default)
func void Rtn_start_929()
func void rtn_repair_929()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_930_Bauer.d
instance BAU_930_Bauer(Npc_Default)
func void Rtn_start_930()
func void rtn_repair_930()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\BAU_935_Homer.d
instance BAU_935_Homer(Npc_Default)
func void Rtn_PreStart_935()
func void Rtn_Start_935()
func void Rtn_Damnpast_935()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Bau_940_Riddler.d
instance Bau_940_Riddler(Npc_Default)
func void Rtn_start_940()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte1.d
instance CS_Eskorte1(Npc_Default)
func void Rtn_start_3024()
func void rtn_flee_3024()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte2.d
instance CS_Eskorte2(Npc_Default)
func void Rtn_start_3023()
func void rtn_flee_3023()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte3.d
instance CS_Eskorte3(Npc_Default)
func void Rtn_start_3027()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte4.d
instance CS_Eskorte4(Npc_Default)
func void Rtn_start_3028()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte5.d
instance CS_Eskorte5(Npc_Default)
func void Rtn_start_3029()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Eskorte6.d
instance CS_Eskorte6(Npc_Default)
func void Rtn_start_3030()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\CS_Richter.d
instance CS_Richter(Npc_Default)
func void Rtn_start_3022()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_100_Gomez.d
instance EBR_100_Gomez(Npc_Default)
func void Rtn_PreStart_100()
func void Rtn_start_100()
func void Rtn_OT_100()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_101_Scar.d
instance EBR_101_Scar(Npc_Default)
func void Rtn_start_101()
func void Rtn_OT_101()
func void rtn_qc_101()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_102_Arto.d
instance EBR_102_Arto(Npc_Default)
func void Rtn_start_102()
func void Rtn_OT_102()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_105_Raven.d
instance EBR_105_Raven(Npc_Default)
func void rtn_PreStart_105()
func void Rtn_Guide_105()
func void Rtn_start_105()
func void Rtn_OT_105()
func void rtn_flee_105()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_106_Bartholo.d
instance EBR_106_Bartholo(Npc_Default)
func void Rtn_start_106()
func void rtn_remove_106()
instance EBR_598_BARTHOLO(Npc_Default)
func void rtn_start_598()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_108_Velaya.d
instance EBR_108_Velaya(Npc_Default)
func void Rtn_start_108()
func void rtn_flee_108()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_109_Syra.d
instance EBR_109_Syra(Npc_Default)
func void Rtn_start_109()
func void rtn_flee_109()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\EBR_110_Seraphia.d
instance EBR_110_Seraphia(Npc_Default)
func void Rtn_start_110()
func void rtn_flee_110()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_200_Thorus.d
instance GRD_200_Thorus(Npc_Default)
func void Rtn_Start_200()
func void rtn_flee_200()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_201_Jackal.d
instance Grd_201_Jackal(Npc_Default)
func void Rtn_start_201()
func void Rtn_FMTaken_201()
func void Rtn_FMTaken2_201()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_203_Bullit.d
instance GRD_203_Bullit(Npc_Default)
func void Rtn_start_203()
func void Rtn_OT_203()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_204_Gardist.d
instance GRD_204_Gardist(Npc_Default)
func void Rtn_start_204()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_205_Scorpio.d
instance GRD_205_Scorpio(Npc_Default)
func void Rtn_start_205()
func void Rtn_Bannished_205()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_206_Gardist.d
instance GRD_206_Gardist(Npc_Default)
func void Rtn_start_206()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_208_Cutter.d
instance GRD_208_Cutter(Npc_Default)
func void Rtn_start_208()
func void Rtn_OT_208()
func void rtn_fmtaken_208()
func void rtn_fmtaken2_208()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_209_Gardist.d
instance GRD_209_Gardist(Npc_Default)
func void Rtn_start_209()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_210_Scatty.d
instance GRD_210_Scatty(Npc_Default)
func void Rtn_start_210()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_211_Skip.d
instance Grd_211_Skip(Npc_Default)
func void Rtn_start_211()
func void rtn_remove_211()
instance GRD_599_SKIP(Npc_Default)
func void rtn_start_599()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_212_Torwache.d
instance Grd_212_Torwache(Npc_Default)
func void Rtn_start_212()
func void Rtn_OMFull_212()
func void Rtn_FMTaken_212()
func void Rtn_OrcAssault_212()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_213_Torwache.d
instance Grd_213_Torwache(Npc_Default)
func void Rtn_start_213()
func void Rtn_OMFull_213()
func void Rtn_FMTaken_213()
func void Rtn_OrcAssault_213()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_214_Torwache.d
instance GRD_214_Torwache(Npc_Default)
func void Rtn_start_214()
func void Rtn_FMTaken_214()
func void Rtn_FMTaken2_214()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_215_Torwache.d
instance GRD_215_Torwache(Npc_Default)
func void Rtn_start_215()
func void Rtn_FMTaken_215()
func void Rtn_FMTaken2_215()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_216_Torwache.d
instance GRD_216_Torwache(Npc_Default)
func void Rtn_start_216()
func void Rtn_FMTaken_216()
func void Rtn_FMTaken2_216()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_217_Torwache.d
instance GRD_217_Torwache(Npc_Default)
func void Rtn_start_217()
func void Rtn_FMTaken_217()
func void Rtn_FMTaken2_217()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_218_Gardist.d
instance Grd_218_Gardist(Npc_Default)
func void Rtn_start_218()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_219_Stone.d
instance GRD_219_Stone(Npc_Default)
func void Rtn_start_219()
func void Rtn_OT_219()
func void Rtn_OTNEW_219()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_220_Gardist.d
instance GRD_220_Gardist(Npc_Default)
func void Rtn_start_220()
func void Rtn_OT_220()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_221_Gardist.d
instance GRD_221_Gardist(Npc_Default)
func void Rtn_start_221()
func void Rtn_OT_221()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_222_Gardist.d
instance GRD_222_Gardist(Npc_Default)
func void Rtn_start_222()
func void Rtn_OT_222()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_223_Gardist.d
instance GRD_223_Gardist(Npc_Default)
func void Rtn_start_223()
func void Rtn_OT_223()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_224_Pacho.d
instance GRD_224_Pacho(Npc_Default)
func void Rtn_start_224()
func void rtn_start2_224()
func void rtn_fmtaken_224()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_225_Gardist.d
instance GRD_225_Gardist(Npc_Default)
func void Rtn_start_225()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_226_Gardist.d
instance GRD_226_Gardist(Npc_Default)
func void Rtn_start_226()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_227_Gardist.d
instance GRD_227_Gardist(Npc_Default)
func void Rtn_start_227()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_228_Gardist.d
instance GRD_228_Gardist(Npc_Default)
func void Rtn_Prestart_228()
func void Rtn_start_228()
func void Rtn_OMFull_228()
func void Rtn_FMTaken_228()
func void Rtn_OrcAssault_228()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_229_Gardist.d
instance GRD_229_Gardist(Npc_Default)
func void Rtn_start_229()
func void Rtn_FMTaken_229()
func void Rtn_FMTaken2_229()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_230_Gardist.d
instance GRD_230_Gardist(Npc_Default)
func void Rtn_start_230()
func void Rtn_Forgetspell_230()
func void Rtn_OMFull_230()
func void Rtn_FMTaken_230()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_231_Gardist.d
instance GRD_231_Gardist(Npc_Default)
func void Rtn_start_231()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_232_Gardist.d
instance GRD_232_Gardist(Npc_Default)
func void Rtn_start_232()
func void Rtn_FMTaken_232()
func void Rtn_FMTaken2_232()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_233_Bloodwyn.d
instance GRD_233_Bloodwyn(Npc_Default)
func void Rtn_start_233()
func void Rtn_FMTaken_233()
func void Rtn_FMTaken2_233()
func void rtn_flee_233()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_234_Gardist.d
instance GRD_234_Gardist(Npc_Default)
func void Rtn_start_234()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_235_Gardist.d
instance GRD_235_Gardist(Npc_Default)
func void Rtn_start_235()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_236_Gardist.d
instance GRD_236_Gardist(Npc_Default)
func void Rtn_start_236()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_237_Gardist.d
instance GRD_237_Gardist(Npc_Default)
func void Rtn_start_237()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_238_Gardist.d
instance GRD_238_Gardist(Npc_Default)
func void Rtn_start_238()
instance INFO_GRD238_DIE(C_Info)
func int info_grd238_die_condition()
func void info_grd238_die_info()
instance INFO_GRD238_EXIT(C_Info)
func int info_grd238_exit_condition()
func void info_grd238_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_239_Gardist.d
instance GRD_239_Gardist(Npc_Default)
func void Rtn_start_239()
func void Rtn_OT_239()
const string GRD_239_CHECKPOINT = "OCC_CELLAR_HALLWAY_BACK";
instance INFO_GRD_239_FIRSTWARN(C_Info)
func int info_grd_239_firstwarn_condition()
func void info_grd_239_firstwarn_info()
instance INFO_GRD_239_LASTWARN(C_Info)
func int info_grd_239_lastwarn_condition()
func void info_grd_239_lastwarn_info()
instance INFO_GRD_239_ATTACK(C_Info)
func int info_grd_239_attack_condition()
func void info_grd_239_attack_info()
instance INFO_GRD_239_ALERT(C_Info)
func int info_grd_239_alert_condition()
func void info_grd_239_alert_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_240_Gardist.d
instance GRD_240_Gardist(Npc_Default)
func void Rtn_start_240()
func void Rtn_OMFull_240()
func void Rtn_FMTaken_240()
func void Rtn_OrcAssault_240()
func void rtn_qc_240()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_241_Gardist.d
instance GRD_241_Gardist(Npc_Default)
func void Rtn_start_241()
func void Rtn_OMFull_241()
func void Rtn_FMTaken_241()
func void Rtn_OrcAssault_241()
func void rtn_qc_241()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_242_Gardist.d
instance GRD_242_Gardist(Npc_Default)
func void Rtn_start_242()
func void Rtn_OMFull_242()
func void Rtn_FMTaken_242()
func void Rtn_OrcAssault_242()
func void rtn_qc_242()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_243_Gardist.d
instance GRD_243_Gardist(Npc_Default)
func void Rtn_start_243()
func void Rtn_OMFull_243()
func void Rtn_FMTaken_243()
func void Rtn_OrcAssault_243()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_244_Gardist.d
instance GRD_244_Gardist(Npc_Default)
func void Rtn_start_244()
func void Rtn_FMTaken_244()
func void Rtn_FMTaken2_244()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_245_Gardist.d
instance GRD_245_Gardist(Npc_Default)
func void Rtn_start_245()
func void Rtn_OT_245()
func void rtn_qc_245()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_246_Gardist.d
instance GRD_246_Gardist(Npc_Default)
func void Rtn_FMstart_246()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_250_Gardist.d
instance GRD_250_Gardist(Npc_Default)
func void Rtn_start_250()
func void Rtn_FMTaken_250()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_251_Kirgo.d
instance GRD_251_Kirgo(Npc_Default)
func void Rtn_start_251()
func void Rtn_Guide_251()
func void rtn_nopractice_251()
func void rtn_dead_251()
func void rtn_wait_251()
func void rtn_fmtaken_251()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_252_Gardist.d
instance GRD_252_Gardist(Npc_Default)
func void Rtn_start_252()
func void Rtn_FMTaken_252()
func void Rtn_FMTaken2_252()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_253_Gardist.d
instance GRD_253_Gardist(Npc_Default)
func void Rtn_start_253()
func void Rtn_FMTaken_253()
func void Rtn_FMTaken2_253()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_254_Orry.d
instance GRD_254_Orry(Npc_Default)
func void Rtn_start_254()
func void Rtn_OMFull_254()
func void Rtn_FMTaken_254()
func void Rtn_OrcAssault_254()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_255_Fletcher.d
instance GRD_255_Fletcher(Npc_Default)
func void Rtn_Start_255()
func void Rtn_FMTaken_255()
func void Rtn_FMTaken2_255()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_260_Drake.d
instance GRD_260_Drake(Npc_Default)
func void Rtn_start_260()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_261_Brandick.d
instance GRD_261_Brandick(Npc_Default)
func void Rtn_start_261()
func void Rtn_Watch_261()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_262_Aaron.d
instance GRD_262_Aaron(Npc_Default)
func void Rtn_start_262()
func void Rtn_trick_262()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_263_Asghan.d
instance GRD_263_Asghan(Npc_Default)
func void Rtn_start_263()
func void Rtn_opengate_263()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_264_Gardist.d
instance GRD_264_Gardist(Npc_Default)
func void Rtn_start_264()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_265_Gardist.d
instance GRD_265_Gardist(Npc_Default)
func void Rtn_start_265()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_266_Gardist.d
instance GRD_266_Gardist(Npc_Default)
func void Rtn_start_266()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_267_Gardist.d
instance GRD_267_Gardist(Npc_Default)
func void Rtn_start_267()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_268_Gardist.d
instance GRD_268_Gardist(Npc_Default)
func void Rtn_start_268()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_269_Gardist.d
instance GRD_269_Gardist(Npc_Default)
func void Rtn_start_269()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_271_Ulbert.d
instance GRD_271_Ulbert(Npc_Default)
func void Rtn_Start_271()
func void Rtn_away_271()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_272_Gardist.d
instance GRD_272_Gardist(Npc_Default)
func void Rtn_Start_272()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_273_Gardist.d
instance GRD_273_Gardist(Npc_Default)
func void Rtn_start_273()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_275_Brueckenwache.d
instance GRD_275_Brueckenwache(Npc_Default)
func void Rtn_start_275()
func void rtn_fmtaken_275()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_276_Brueckenwache.d
instance GRD_276_Brueckenwache(Npc_Default)
func void Rtn_start_276()
func void rtn_fmtaken_276()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_277_Gardist.d
instance GRD_277_Gardist(Npc_Default)
func void Rtn_start_277()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_278_Gardist.d
instance GRD_278_Gardist(Npc_Default)
func void Rtn_start_278()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_279_Gardist.d
instance GRD_279_Gardist(Npc_Default)
func void Rtn_start_279()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_280_Gardist.d
instance GRD_280_Gardist(Npc_Default)
func void Rtn_start_280()
func void Rtn_FMTaken_280()
instance GRD_998_GARDIST(Npc_Default)
func void rtn_start_998()
func void rtn_aclosed_998()
func void rtn_aopen_998()
func void rtn_wait_998()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_281_Gardist.d
instance GRD_281_Gardist(Npc_Default)
func void Rtn_start_281()
func void rtn_fmtaken_281()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_282_Nek.d
instance GRD_282_Nek(Npc_Default)
func void Rtn_start_282()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_283_Gardist.d
instance Grd_283_Gardist(Npc_Default)
func void Rtn_FMTaken_283()
func void Rtn_FMTaken2_283()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_284_Gardist.d
instance GRD_284_Gardist(Npc_Default)
func void Rtn_FMstart_284()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_285_Gardist.d
instance Grd_285_Gardist(Npc_Default)
func void Rtn_FMTaken_285()
func void Rtn_FMTaken2_285()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_286_Gardist.d
instance GRD_286_Gardist(Npc_Default)
func void Rtn_FMstart_286()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_287_Gardist.d
instance GRD_287_Gardist(Npc_Default)
func void Rtn_FMstart_287()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_288_Gardist.d
instance GRD_288_Gardist(Npc_Default)
func void Rtn_FMstart_288()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_289_Gardist.d
instance GRD_289_Gardist(Npc_Default)
func void Rtn_FMstart_289()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_290_Gardist.d
instance GRD_290_Gardist(Npc_Default)
func void Rtn_FMstart_290()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_291_Gardist.d
instance GRD_291_Gardist(Npc_Default)
func void Rtn_FMstart_291()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_292_Gardist.d
instance GRD_292_Gardist(Npc_Default)
func void Rtn_FMstart_292()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Grd_293_Gardist.d
instance Grd_293_Gardist(Npc_Default)
func void Rtn_FMstart_293()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_294_Gardist.d
instance GRD_294_Gardist(Npc_Default)
func void Rtn_FMstart_294()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_295_Gardist.d
instance GRD_295_Gardist(Npc_Default)
func void Rtn_FMstart_295()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_296_Gardist.d
instance GRD_296_Gardist(Npc_Default)
func void Rtn_FMstart_296()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_297_Gardist.d
instance GRD_297_Gardist(Npc_Default)
func void Rtn_FMstart_297()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_298_Gardist.d
instance GRD_298_Gardist(Npc_Default)
func void Rtn_FMstart_298()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GRD_299_Gardist.d
instance GRD_299_Gardist(Npc_Default)
func void Rtn_FMstart_299()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\grd_896_gardist.d
instance GRD_896_GARDIST(Npc_Default)
func void rtn_start_896()
func void rtn_fmtaken_896()
func void rtn_dead2_896()
instance INFO_GRD896_EXIT(C_Info)
instance GRD_895_GARDIST(Npc_Default)
func void rtn_start_895()
func void rtn_fmtaken_895()
func void rtn_dead2_895()
instance INFO_GRD895_EXIT(C_Info)
instance GRD_894_GARDIST(Npc_Default)
func void rtn_start_894()
func void rtn_fmtaken_894()
func void rtn_dead2_894()
instance INFO_GRD894_EXIT(C_Info)
instance GRD_893_GARDIST(Npc_Default)
func void rtn_start_893()
func void rtn_fmtaken_893()
func void rtn_dead2_893()
instance INFO_GRD893_EXIT(C_Info)
instance GRD_872_GARDIST(Npc_Default)
func void rtn_start_872()
func void rtn_sleep_872()
func void rtn_dead_872()
func void rtn_dead2_872()
instance INFO_GRD872_EXIT(C_Info)
const string GRD_872_CHECKPOINT = "OW_OM_ENTRANCE02_WHEEL";
var C_Item EQPANTS;
instance INFO_GRD872_OM(C_Info)
func int info_grd872_om_condition()
func void info_grd872_om_info()
instance INFO_GRD_872_LASTWARN(C_Info)
func int info_grd_872_lastwarn_condition()
func void info_grd_872_lastwarn_info()
instance INFO_GRD_872_ATTACK(C_Info)
func int info_grd_872_attack_condition()
func void info_grd_872_attack_info()
instance INFO_GRD872_OM0(C_Info)
func int info_grd872_om0_condition()
func void info_grd872_om0_info()
func void info_grd872_om_1()
func void info_grd872_om_2()
func void info_grd872_om_3()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1200_YBerion.d
instance GUR_1200_YBerion(Npc_Default)
func void Rtn_start_1200()
func void Rtn_CallSleeper_1200()
func void Rtn_dead_1200()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1201_CorKalom.d
instance GUR_1201_CorKalom(Npc_Default)
func void Rtn_start_1201()
func void Rtn_CallSleeper_1201()
func void rtn_care_1201()
func void Rtn_Flee_1201()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1202_CorAngar.d
instance GUR_1202_CorAngar(Npc_Default)
func void Rtn_start_1202()
func void Rtn_CallSleeper_1202()
func void rtn_care_1202()
func void rtn_after_1202()
func void rtn_wait_1202()
func void rtn_guru_1202()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1203_BaalTondral.d
instance GUR_1203_BaalTondral(Npc_Default)
func void Rtn_start_1203()
func void rtn_ch3_1203()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1204_BaalNamib.d
instance GUR_1204_BaalNamib(Npc_Default)
func void Rtn_Start_1204()
func void rtn_startch2_1204()
func void rtn_wait_1204()
func void rtn_yberion_1204()
func void rtn_ritual_1204()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Gur_1205_Chani.d
instance Gur_1205_Chani(Npc_Default)
func void Rtn_start_1205()
func void Rtn_dead_1205()
func void rtn_after_1205()
func void rtn_wash_1205()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Gur_1207_Natalia.d
instance Gur_1207_Natalia(Npc_Default)
func void rtn_start_1207()
func void rtn_dead_1207()
func void rtn_after_1207()
func void rtn_wash_1207()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1208_BaalCadar.d
instance GUR_1208_BaalCadar(Npc_Default)
func void Rtn_start_1208()
func void rtn_ch3_1208()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1209_BaalOrun.d
instance GUR_1209_BaalOrun(Npc_Default)
func void Rtn_start_1209()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1210_BaalTyon.d
instance GUR_1210_BaalTyon(Npc_Default)
func void Rtn_start_1210()
func void Rtn_PrepareRitual_1210()
func void rtn_ritual_1210()
func void Rtn_OMFull_1210()
func void Rtn_FMTaken_1210()
func void Rtn_OrcAssault_1210()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1211_BaalLukor.d
instance GUR_1211_BaalLukor(Npc_Default)
func void Rtn_start_1211()
func void Rtn_Follow_1211()
func void Rtn_WaitInSideTunnelOne_1211()
func void Rtn_WaitInSideTunnelTwo_1211()
func void Rtn_Door_1211()
func void Rtn_Teleport_1211()
func void Rtn_Meditate_1211()
instance GUR_999_BAALLUKOR(Npc_Default)
func void rtn_start_999()
func void rtn_remove_999()
instance INFO_LUKOR_PSI_EXIT(C_Info)
instance INFO_LUKOR_PSI_HI(C_Info)
func int info_lukor_psi_hi_condition()
func void info_lukor_psi_hi_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\GUR_1212_MadCorKalom.d
instance GUR_1212_MadCorKalom(Npc_Default)
func void Rtn_start_1212()
func void Rtn_OT_1212()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\InExtremo_DrPymonte.d
instance InExtremo_DrPymonte(Npc_Default)
func void Rtn_Concert_390()
func void Rtn_off_390()
instance InExtremo_TheFlail(Npc_Default)
func void Rtn_concert_391()
func void Rtn_off_391()
instance InExtremo_ThomasTheForger(Npc_Default)
func void Rtn_concert_392()
func void Rtn_off_392()
instance InExtremo_Unicorn(Npc_Default)
func void Rtn_concert_393()
func void Rtn_off_393()
instance InExtremo_YellowPfeiffer(Npc_Default)
func void Rtn_concert_394()
func void Rtn_off_394()
instance InExtremo_Lutter(Npc_Default)
func void Rtn_concert_395()
func void Rtn_off_395()
instance InExtremo_Flex(Npc_Default)
func void Rtn_concert_396()
func void Rtn_off_396()
instance IE_397_Announcer(Npc_Default)
func void Rtn_announce_397()
func void Rtn_concert_397()
func void Rtn_off_397()
instance Charlotte(Npc_Default)
func void Rtn_announce_398()
func void Rtn_concert_398()
func void Rtn_off_398()
instance IEFan1(Npc_Default)
func void Rtn_concert_399()
func void Rtn_off_399()
instance IEFan2(Npc_Default)
func void Rtn_concert_400()
func void Rtn_off_400()
instance IEFan3(Npc_Default)
func void Rtn_concert_401()
func void Rtn_off_401()
instance IEFan4(Npc_Default)
func void Rtn_concert_402()
func void Rtn_off_402()
instance CHARLOTTE_EXIT(C_Info)
func int charlotte_exit_condition()
func void charlotte_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_400_Rodriguez.d
instance KDF_400_Rodriguez(Npc_Default)
func void Rtn_start_400()
func void Rtn_KDFRITUAL_400()
func void rtn_miltenleft_400()
func void rtn_dead_400()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_401_Damarok.d
instance KDF_401_Damarok(Npc_Default)
func void Rtn_start_401()
func void Rtn_KDFRITUAL_401()
func void rtn_dead_401()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Kdf_402_Corristo.d
instance Kdf_402_Corristo(Npc_Default)
func void Rtn_start_402()
func void Rtn_KDFRITUAL_402()
func void Rtn_WAITFORSC_402()
func void rtn_dead_402()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_403_Drago.d
instance KDF_403_Drago(Npc_Default)
func void Rtn_start_403()
func void Rtn_KDFRITUAL_403()
func void rtn_dead_403()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_404_Xardas.d
instance KDF_404_Xardas(Npc_Default)
func void Rtn_start_404()
func void Rtn_Study_404()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_405_Torrez.d
instance KDF_405_Torrez(Npc_Default)
func void Rtn_start_405()
func void Rtn_KDFRITUAL_405()
func void rtn_miltenleft_405()
func void rtn_dead_405()
instance KDF_4051_TORREZ(Npc_Default)
func void rtn_start_4051()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDF_406_OTXardas.d
instance KDF_406_OTXardas(Npc_Default)
func void Rtn_start_406()
func void Rtn_Drained_406()
func void rtn_remove_406()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Kdw_600_Saturas.d
instance Kdw_600_Saturas(Npc_Default)
func void Rtn_start_600()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Kdw_601_Myxir.d
instance Kdw_601_Myxir(Npc_Default)
func void Rtn_start_601()
func void rtn_orealert_601()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Kdw_602_Merdarion.d
instance Kdw_602_Merdarion(Npc_Default)
func void Rtn_start_602()
func void Rtn_KDWAUFNAHME_602()
func void rtn_orealert_602()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Kdw_603_Nefarius.d
instance Kdw_603_Nefarius(Npc_Default)
func void Rtn_start_603()
func void rtn_orealert_603()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDW_604_Cronos.d
instance KDW_604_Cronos(Npc_Default)
func void Rtn_start_604()
func void rtn_orealert_604()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\KDW_605_Riordian.d
instance KDW_605_Riordian(Npc_Default)
func void Rtn_start_605()
func void Rtn_FoundUrShak_605()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Non_1500_Gilbert.d
instance Non_1500_Gilbert(Npc_Default)
func void Rtn_start_1500()
func void rtn_start2_1500()
func void rtn_hide_1500()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Non_1501_Wegelagerer.d
instance Non_1501_Wegelagerer(Npc_Default)
func void Rtn_start_1501()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Non_1502_Wegelagerer.d
instance Non_1502_Wegelagerer(Npc_Default)
func void Rtn_start_1502()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Non_1503_Wegelagerer.d
instance Non_1503_Wegelagerer(Npc_Default)
func void Rtn_start_1503()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Non_1504_Wegelagerer.d
instance Non_1504_Wegelagerer(Npc_Default)
func void Rtn_start_1504()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Nov_1300_Talas.d
instance Nov_1300_Talas(Npc_Default)
func void Rtn_start_1300()
func void rtn_ritual_1300()
func void Rtn_GobboCave_1300()
func void Rtn_ReturnToCamp_1300()
func void Rtn_BackInCamp_1300()
func void Rtn_Ogy_1300()
func void Rtn_ReturnToCampAgain_1300()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1301_Caine.d
instance NOV_1301_Caine(Npc_Default)
func void Rtn_start_1301()
func void rtn_flee_1301()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1302_Viran.d
instance NOV_1302_Viran(Npc_Default)
func void Rtn_start_1302()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Nov_1303_Nyras.d
instance Nov_1303_Nyras(Npc_Default)
func void Rtn_Start_1303()
func void Rtn_PrepareRitual_1303()
func void rtn_hide_1303()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1304_Balor.d
instance NOV_1304_Balor(Npc_Default)
func void Rtn_start_1304()
func void rtn_remove_1304()
instance TPL_1480_TEMPLER(Npc_Default)
func void rtn_start_1480()
instance DIA_BALOR_TPL(C_Info)
func int dia_balor_tpl_condition()
func void dia_balor_tpl_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1305_Joru.d
instance NOV_1305_Joru(Npc_Default)
func void Rtn_start_1305()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1306_Novize.d
instance NOV_1306_Novize(Npc_Default)
func void Rtn_start_1306()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1307_Novize.d
instance NOV_1307_Novize(Npc_Default)
func void Rtn_start_1307()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1308_Novize.d
instance NOV_1308_Novize(Npc_Default)
func void Rtn_start_1308()
func void rtn_ch5_1308()
instance DIA_1308_NOVIZE_EXIT(C_Info)
func int dia_1308_novize_exit_condition()
func void dia_1308_novize_exit_info()
instance DIA_1308_NOVIZE_HI(C_Info)
func int dia_1308_novize_hi_condition()
func void dia_1308_novize_hi_info()
instance DIA_1308_NOVIZE_TRADE(C_Info)
func int dia_1308_novize_trade_condition()
func void dia_1308_novize_trade_info()
instance DIA_1308_NOVIZE_PRECH2(C_Info)
func int dia_1308_novize_prech2_condition()
func void dia_1308_novize_prech2_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1309_Novize.d
instance NOV_1309_Novize(Npc_Default)
func void Rtn_start_1309()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1310_Ghorim.d
instance NOV_1310_Ghorim(Npc_Default)
func void Rtn_PreStart_1310()
func void Rtn_start_1310()
func void rtn_ch2_1310()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1311_Novize.d
instance NOV_1311_Novize(Npc_Default)
func void Rtn_start_1311()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1312_Darrion.d
instance NOV_1312_Darrion(Npc_Default)
func void Rtn_start_1312()
func void Rtn_PrepareRitual_1312()
func void Rtn_OMFull_1312()
func void Rtn_FMTaken_1312()
func void Rtn_OrcAssault_1312()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1313_Novize.d
instance NOV_1313_Novize(Npc_Default)
func void Rtn_start_1313()
func void rtn_remove_1313()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1314_Novize.d
instance NOV_1314_Novize(Npc_Default)
func void Rtn_start_1314()
func void rtn_ritual_1314()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1315_Novize.d
instance NOV_1315_Novize(Npc_Default)
func void Rtn_start_1315()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1316_Novize.d
instance NOV_1316_Novize(Npc_Default)
func void Rtn_start_1316()
func void Rtn_PrepareRitual_1316()
func void Rtn_OMFull_1316()
func void Rtn_FMTaken_1316()
func void Rtn_OrcAssault_1316()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1317_Novize.d
instance NOV_1317_Novize(Npc_Default)
func void Rtn_start_1317()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1318_Novize.d
instance NOV_1318_Novize(Npc_Default)
func void Rtn_start_1318()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1319_Novize.d
instance NOV_1319_Novize(Npc_Default)
func void Rtn_start_1319()
func void Rtn_Ritual_1319()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1320_Novize.d
instance NOV_1320_Novize(Npc_Default)
func void Rtn_start_1320()
func void Rtn_Ritual_1320()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1321_Novize.d
instance NOV_1321_Novize(Npc_Default)
func void Rtn_start_1321()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1322_Novize.d
instance NOV_1322_Novize(Npc_Default)
func void Rtn_start_1322()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1323_Novize.d
instance NOV_1323_Novize(Npc_Default)
func void Rtn_Start_1323()
func void rtn_ritual_1323()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1324_Novize.d
instance NOV_1324_Novize(Npc_Default)
func void Rtn_start_1324()
func void rtn_ritual_1324()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1325_Novize.d
instance NOV_1325_Novize(Npc_Default)
func void Rtn_start_1325()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1326_Novize.d
instance NOV_1326_Novize(Npc_Default)
func void Rtn_start_1326()
func void rtn_remove_1326()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1327_Novize.d
instance NOV_1327_Novize(Npc_Default)
func void Rtn_start_1327()
func void rtn_wait_1327()
instance DIA_WHEREISFORTUNO(C_Info)
func int dia_whereisfortuno_condition()
func void dia_whereisfortuno_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1328_Novize.d
instance NOV_1328_Novize(Npc_Default)
func void Rtn_start_1328()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1329_Novize.d
instance NOV_1329_Novize(Npc_Default)
func void Rtn_start_1329()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Nov_1330_BaalParvez.d
instance Nov_1330_BaalParvez(Npc_Default)
func void Rtn_start_1330()
func void Rtn_Guide_1330()
func void rtn_dead_1330()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Nov_1331_BaalTaran.d
instance Nov_1331_BaalTaran(Npc_Default)
func void Rtn_start_1331()
func void rtn_dead_1331()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1332_BaalKagan.d
instance NOV_1332_BaalKagan(Npc_Default)
func void Rtn_start_1332()
func void rtn_ch5_1332()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1333_BaalIsidro.d
instance NOV_1333_BaalIsidro(Npc_Default)
func void Rtn_start_1333()
func void rtn_ch5_1333()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1334_Novize.d
instance NOV_1334_Novize(Npc_Default)
func void Rtn_start_1334()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1335_Novize.d
instance NOV_1335_Novize(Npc_Default)
func void Rtn_start_1335()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1336_Novize.d
instance NOV_1336_Novize(Npc_Default)
func void Rtn_start_1336()
func void rtn_remove_1336()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1337_Novize.d
instance NOV_1337_Novize(Npc_Default)
func void Rtn_start_1337()
func void Rtn_Ritual_1337()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1338_Novize.d
instance NOV_1338_Novize(Npc_Default)
func void Rtn_start_1338()
func void Rtn_Ritual_1338()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1339_Novize.d
instance NOV_1339_Novize(Npc_Default)
func void Rtn_start_1339()
func void Rtn_Ritual_1339()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1340_Novize.d
instance NOV_1340_Novize(Npc_Default)
func void Rtn_start_1340()
func void rtn_remove_1340()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1341_Novize.d
instance NOV_1341_Novize(Npc_Default)
func void Rtn_start_1341()
func void Rtn_Ritual_1341()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1342_Novize.d
instance NOV_1342_Novize(Npc_Default)
func void Rtn_start_1342()
func void rtn_remove_1342()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1343_Novize.d
instance NOV_1343_Novize(Npc_Default)
func void Rtn_start_1343()
func void Rtn_Ritual_1343()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1344_Novize.d
instance NOV_1344_Novize(Npc_Default)
func void Rtn_start_1344()
func void Rtn_Ritual_1344()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1345_Novize.d
instance NOV_1345_Novize(Npc_Default)
func void Rtn_start_1345()
func void rtn_remove_1345()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1346_Novize.d
instance NOV_1346_Novize(Npc_Default)
func void Rtn_start_1346()
func void Rtn_Ritual_1346()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1347_Novize.d
instance NOV_1347_Novize(Npc_Default)
func void Rtn_start_1347()
func void Rtn_Ritual_1347()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1348_Novize.d
instance NOV_1348_Novize(Npc_Default)
func void Rtn_start_1348()
func void Rtn_Ritual_1348()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1349_Novize.d
instance NOV_1349_Novize(Npc_Default)
func void Rtn_start_1349()
func void Rtn_Ritual_1349()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1350_Novize.d
instance NOV_1350_Novize(Npc_Default)
func void Rtn_start_1350()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1351_Novize.d
instance NOV_1351_Novize(Npc_Default)
func void Rtn_start_1351()
func void Rtn_PrepareRitual_1351()
func void Rtn_OMFull_1351()
func void Rtn_FMTaken_1351()
func void Rtn_OrcAssault_1351()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1353_Novize.d
instance NOV_1353_Novize(Npc_Default)
func void Rtn_start_1353()
func void rtn_remove_1353()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1354_Novize.d
instance NOV_1354_Novize(Npc_Default)
func void Rtn_start_1354()
func void rtn_ritual_1354()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1355_Novize.d
instance NOV_1355_Novize(Npc_Default)
func void Rtn_start_1355()
func void rtn_ritual_1355()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1356_Shrat.d
instance NOV_1356_Shrat(Npc_Default)
func void Rtn_start_1356()
func void Rtn_Follow_1356()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1357_Fortuno.d
instance NOV_1357_Fortuno(Npc_Default)
func void Rtn_start_1357()
func void rtn_lab_1357()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1358_Harlok.d
instance NOV_1358_Harlok(Npc_Default)
func void Rtn_PreStart_1358()
func void Rtn_Start_1358()
func void rtn_ch2_1358()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1359_Novize.d
instance NOV_1359_Novize(Npc_Default)
func void Rtn_start_1359()
func void Rtn_OT_1359()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1360_Novize.d
instance NOV_1360_Novize(Npc_Default)
func void Rtn_start_1360()
func void Rtn_OT_1360()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1361_Novize.d
instance NOV_1361_Novize(Npc_Default)
func void Rtn_start_1361()
func void Rtn_OT_1361()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1362_Novize.d
instance NOV_1362_Novize(Npc_Default)
func void Rtn_start_1362()
func void Rtn_OT_1362()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1363_Novize.d
instance NOV_1363_Novize(Npc_Default)
func void Rtn_start_1363()
func void Rtn_OT_1363()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1364_Novize.d
instance NOV_1364_Novize(Npc_Default)
func void Rtn_start_1364()
func void Rtn_OT_1364()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1365_Novize.d
instance NOV_1365_Novize(Npc_Default)
func void Rtn_start_1365()
func void Rtn_OT_1365()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1366_Novize.d
instance NOV_1366_Novize(Npc_Default)
func void Rtn_start_1366()
func void Rtn_OT_1366()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1367_Novize.d
instance NOV_1367_Novize(Npc_Default)
func void Rtn_start_1367()
func void Rtn_OT_1367()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1368_Novize.d
instance NOV_1368_Novize(Npc_Default)
func void Rtn_start_1368()
func void Rtn_OT_1368()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1369_Novize.d
instance NOV_1369_Novize(Npc_Default)
func void Rtn_start_1369()
func void Rtn_OT_1369()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1370_Novize.d
instance NOV_1370_Novize(Npc_Default)
func void Rtn_start_1370()
func void Rtn_OT_1370()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\NOV_1371_BaalNetbek.d
instance NOV_1371_BaalNetbek(Npc_Default)
func void Rtn_start_1371()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\nov_1372_dusty.d
instance NOV_1372_DUSTY(Npc_Default)
func void rtn_start_1372()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\nov_1373_melvin.d
instance NOV_1373_MELVIN(Npc_Default)
func void rtn_start_1373()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\nov_997_alchemist.d
instance NOV_997_ALCHEMIST(Npc_Default)
func void rtn_start_997()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Orc_2001_Sklave.d
instance Orc_2001_Sklave(Npc_Default)
func void rtn_Nothing_2001()
func void rtn_Stomper_2001()
instance Orc_2002_Sklave(Npc_Default)
func void rtn_stonemill_2002()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORC_Priest_1.d
instance ORC_Priest_1(Npc_Default)
func void Rtn_PreStart_2995()
instance ORC_Priest_2(Npc_Default)
func void Rtn_PreStart_2996()
instance ORC_Priest_3(Npc_Default)
func void Rtn_PreStart_2997()
instance ORC_Priest_4(Npc_Default)
func void Rtn_PreStart_2998()
instance ORC_Priest_5(Npc_Default)
func void Rtn_PreStart_2999()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORC_Shaman.d
instance ORC_2200_Shaman(Mst_Default_OrcShaman)
func void Rtn_FMTaken_2200()
func void Rtn_LeftFM_2200()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_800_Organisator.d
instance ORG_800_Organisator(Npc_Default)
func void Rtn_start_800()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_801_Lares.d
instance Org_801_Lares(Npc_Default)
func void Rtn_start_801()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_804_Organisator.d
instance ORG_804_Organisator(Npc_Default)
func void Rtn_start_804()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_806_Organisator.d
instance ORG_806_Organisator(Npc_Default)
func void Rtn_start_806()
func void rtn_ch5_806()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_807_Organisator.d
instance ORG_807_Organisator(Npc_Default)
func void Rtn_start_807()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_810_Organisator.d
instance ORG_810_Organisator(Npc_Default)
func void Rtn_start_810()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_811_Organisator.d
instance ORG_811_Organisator(Npc_Default)
func void Rtn_start_811()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_815_Organisator.d
instance ORG_815_Organisator(Npc_Default)
func void Rtn_start_815()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_816_Organisator.d
instance ORG_816_Organisator(Npc_Default)
func void Rtn_start_816()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_817_Organisator.d
instance ORG_817_Organisator(Npc_Default)
func void Rtn_start_817()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_818_Ratford.d
instance ORG_818_Ratford(Npc_Default)
func void Rtn_Start_818()
func void rtn_fmtaken_818()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_819_Drax.d
instance ORG_819_Drax(Npc_Default)
func void Rtn_Start_819()
func void rtn_fmtaken_819()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_820_Organisator.d
instance ORG_820_Organisator(Npc_Default)
func void Rtn_start_820()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_821_Organisator.d
instance ORG_821_Organisator(Npc_Default)
func void Rtn_start_821()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_822_Organisator.d
instance ORG_822_Organisator(Npc_Default)
func void Rtn_start_822()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_823_Organisator.d
instance ORG_823_Organisator(Npc_Default)
func void Rtn_start_823()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_824_Organisator.d
instance ORG_824_Organisator(Npc_Default)
func void Rtn_start_824()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_825_Organisator.d
instance ORG_825_Organisator(Npc_Default)
func void Rtn_start_825()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_826_Mordrag.d
instance ORG_826_Mordrag(Npc_Default)
func void Rtn_PreStart_826()
func void Rtn_Guide_826()
func void Rtn_Start_826()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_828_Bruce.d
instance ORG_828_Bruce(Npc_Default)
func void Rtn_start_828()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_829_Organisator.d
instance Org_829_Organisator(Npc_Default)
func void Rtn_start_829()
func void rtn_fmtaken_829()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_830_Organisator.d
instance Org_830_Organisator(Npc_Default)
func void Rtn_start_830()
func void rtn_fmtaken_830()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_831_Organisator.d
instance Org_831_Organisator(Npc_Default)
func void Rtn_start_831()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_832_Organisator.d
instance Org_832_Organisator(Npc_Default)
func void Rtn_start_832()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_833_Buster.d
instance ORG_833_Buster(Npc_Default)
func void Rtn_Start_833()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_834_Organisator.d
instance Org_834_Organisator(Npc_Default)
func void Rtn_start_834()
func void rtn_fmtaken_834()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_836_Organisator.d
instance Org_836_Organisator(Npc_Default)
func void Rtn_start_836()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_837_Organisator.d
instance Org_837_Organisator(Npc_Default)
func void Rtn_start_837()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_838_Organisator.d
instance Org_838_Organisator(Npc_Default)
func void Rtn_start_838()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_840_Roscoe.d
instance ORG_840_Roscoe(Npc_Default)
func void Rtn_start_840()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_841_Silas.d
instance ORG_841_Silas(Npc_Default)
func void Rtn_start_841()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_842_Shrike.d
instance ORG_842_Shrike(Npc_Default)
func void Rtn_PreStart_842()
func void Rtn_Start_842()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_843_Sharky.d
instance ORG_843_Sharky(Npc_Default)
func void Rtn_start_843()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_844_Lefty.d
instance Org_844_Lefty(Npc_Default)
func void Rtn_start_844()
func void rtn_wait_844()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_845_Schlaeger.d
instance Org_845_Schlaeger(Npc_Default)
func void Rtn_start_845()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_846_Schlaeger.d
instance Org_846_Schlaeger(Npc_Default)
func void Rtn_start_846()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_850_Wedge.d
instance ORG_850_Wedge(Npc_Default)
func void Rtn_start_850()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_851_Butch.d
instance ORG_851_Butch(Npc_Default)
func void Rtn_start_851()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_855_Wolf.d
instance ORG_855_Wolf(Npc_Default)
func void Rtn_start_855()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_857_Calash.d
instance ORG_857_Calash(Npc_Default)
func void Rtn_prestart_857()
func void rtn_fmtaken_857()
func void rtn_fmtakenback_857()
instance INFO_CALASH_EXIT(C_Info)
func int info_calash_exit_condition()
func void info_calash_exit_info()
instance INFO_CALASH_DIA1(C_Info)
func int info_calash_dia1_condition()
func void info_calash_dia1_info()
instance CALASH_DIA2(C_Info)
func int calash_dia2_condition()
func void calash_dia2_info()
instance INFO_CALASH_DIA3(C_Info)
func int info_calash_dia3_condition()
func void info_calash_dia3_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_858_Quentin.d
instance Org_858_Quentin(Npc_Default)
func void Rtn_start_858()
instance INFO_QUENTIN_EXIT(C_Info)
func int info_quentin_exit_condition()
func void info_quentin_exit_info()
instance QUENTIN_DIA1(C_Info)
func int quentin_dia1_condition()
func void quentin_dia1_info()
instance QUENTIN_DIA2(C_Info)
func int quentin_dia2_condition()
func void quentin_dia2_info()
func void quentin_dia2_yes()
func void quentin_dia2_fuckoff()
instance QUENTIN_DIA3(C_Info)
func int quentin_dia3_condition()
func void quentin_dia3_info()
instance QUENTIN_DIA33(C_Info)
func int quentin_dia33_condition()
func void quentin_dia33_info()
instance QUENTIN_DIA4(C_Info)
func int quentin_dia4_condition()
func void quentin_dia4_info()
var C_Item armor;
instance QUENTIN_DIA0(C_Info)
func int quentin_dia0_condition()
func void quentin_dia0_info()
instance QUENTIN_DIA5(C_Info)
func int quentin_dia5_condition()
func void quentin_dia5_info()
instance QUENTIN_DIA51(C_Info)
func int quentin_dia51_condition()
func void quentin_dia51_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_859_Aidan.d
instance ORG_859_Aidan(Npc_Default)
func void Rtn_start_859()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_860_Renyu.d
instance Org_860_Renyu(Npc_Default)
func void Rtn_start_860()
func void Rtn_arbeitslos_860()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_861_Killian.d
instance Org_861_Killian(Npc_Default)
func void Rtn_start_861()
func void Rtn_arbeitslos_861()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_862_Jacko.d
instance Org_862_Jacko(Npc_Default)
func void Rtn_start_862()
func void Rtn_arbeitslos_862()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_863_Raeuber.d
instance Org_863_Raeuber(Npc_Default)
func void Rtn_start_863()
instance INFO_RAEUBER3_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_864_Raeuber.d
instance Org_864_Raeuber(Npc_Default)
func void Rtn_start_864()
instance INFO_RAEUBER4_EXIT(C_Info)
instance ORG_864_RAEUBER_ALERT(C_Info)
func int org_864_raeuber_alert_condition()
func void org_864_raeuber_alert_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_865_Raeuber.d
instance Org_865_Raeuber(Npc_Default)
func void Rtn_start_865()
instance INFO_RAEUBER5_EXIT(C_Info)
instance ORG_865_RAEUBER_ALERT(C_Info)
func int org_865_raeuber_alert_condition()
func void org_865_raeuber_alert_info()
instance ORG2_AMULET_CHEER(C_Info)
func int org2_amulet_cheer_condition()
func void org2_amulet_cheer_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_866_Raeuber.d
instance Org_866_Raeuber(Npc_Default)
func void Rtn_start_866()
instance INFO_RAEUBER6_EXIT(C_Info)
instance ORG_866_RAEUBER_ALERT(C_Info)
func int org_866_raeuber_alert_condition()
func void org_866_raeuber_alert_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_867_Raeuber.d
instance Org_867_Raeuber(Npc_Default)
func void Rtn_start_867()
instance INFO_RAEUBER1_EXIT(C_Info)
func int info_raeuber1_exit_condition()
func void info_raeuber1_exit_info()
instance INFO_RAEUBER1_EXIT2(C_Info)
func int info_raeuber1_exit2_condition()
func void info_raeuber1_exit2_info()
const string ORG_867_RAEUBER_CHECKPOINT = "LOCATION_11_03";
instance ORG_867_RAEUBER_GOAWAY(C_Info)
func int org_867_raeuber_goaway_condition()
func void org_867_raeuber_goaway_info()
instance ORG_867_RAEUBER_GOAWAY2(C_Info)
func int org_867_raeuber_goaway2_condition()
func void org_867_raeuber_goaway2_info()
instance ORG_867_RAEUBER_ATTACK(C_Info)
func int org_867_raeuber_attack_condition()
func void org_867_raeuber_attack_info()
instance INFO_ORG2_JOIN(C_Info)
func int info_org2_join_condition()
func void info_org2_join_info()
instance INFO_ORG2_KILL(C_Info)
func int info_org2_kill_condition()
func void info_org2_kill_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_868_Raeuber.d
instance Org_868_Raeuber(Npc_Default)
func void Rtn_start_868()
instance INFO_RAEUBER2_EXIT(C_Info)
func int info_raeubers_exit_condition()
func void info_raeubers_exit_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_869_Raeuber.d
instance Org_869_Raeuber(Npc_Default)
func void Rtn_start_869()
instance INFO_RAEUBER7_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_870_Raeuber.d
instance Org_870_Raeuber(Npc_Default)
func void Rtn_start_870()
instance INFO_ORG870_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_871_Raeuber.d
instance Org_871_Raeuber(Npc_Default)
func void Rtn_start_871()
instance INFO_RAEUBER9_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_873_Cipher.d
instance ORG_873_Cipher(Npc_Default)
func void Rtn_start_873()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Org_874_Raeuber.d
instance Org_874_Raeuber(Npc_Default)
func void Rtn_start_874()
instance INFO_RAEUBER10_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_875_Tuersteher.d
instance ORG_875_Tuersteher(Npc_Default)
func void Rtn_start_875()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_876_Tuersteher.d
instance ORG_876_Tuersteher(Npc_Default)
func void Rtn_start_876()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_888_Erpresser.d
instance ORG_888_Erpresser(Npc_Default)
func void rtn_start_888()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_889_CoErpresser.d
instance ORG_889_CoErpresser(Npc_Default)
func void rtn_start_889()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_890_Organisator.d
instance ORG_890_Organisator(Npc_Default)
func void Rtn_FMCstart_890()
func void rtn_dead_890()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_891_Organisator.d
instance ORG_891_Organisator(Npc_Default)
func void Rtn_FMCstart_891()
func void rtn_dead_891()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\ORG_892_Organisator.d
instance ORG_892_Organisator(Npc_Default)
func void Rtn_FMCstart_892()
func void rtn_dead_892()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\org_897_mort.d
instance ORG_897_MORT(Npc_Default)
func void rtn_start_897()
func void rtn_follow_897()
func void rtn_camp_897()
instance INFO_MORT_EXIT(C_Info)
instance INFO_MORT_LETSGO(C_Info)
func int info_mort_letsgo_condition()
func void info_mort_letsgo_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\org_898_alex.d
instance ORG_898_ALEX(Npc_Default)
func void rtn_start_898()
func void rtn_follow_898()
func void rtn_oc2_898()
instance INFO_ALEX2_EXIT(C_Info)
instance INFO_ALEX2_LETSGO(C_Info)
func int info_alex2_letsgo_condition()
func void info_alex2_letsgo_info()
instance ALEX2_OM(C_Info)
func int alex2_om_condition()
func void alex2_om_info()
instance ALEX2_AM(C_Info)
func int alex2_am_condition()
func void alex2_am_info()
instance ALEX2_OC(C_Info)
func int alex2_oc_condition()
func void alex2_oc_info()
instance ALEX2_OC2(C_Info)
func int alex2_oc2_condition()
func void alex2_oc2_info()
instance ALEX2_NC(C_Info)
func int alex2_nc_condition()
func void alex2_nc_info()
instance ALEX2_OT(C_Info)
func int alex2_ot_condition()
func void alex2_ot_info()
instance ALEX2_PC(C_Info)
func int alex2_pc_condition()
func void alex2_pc_info()
instance ALEX2_XARDAS(C_Info)
func int alex2_xardas_condition()
func void alex2_xardas_info()
instance ALEX2_OGY(C_Info)
func int alex2_ogy_condition()
func void alex2_ogy_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\org_899_alex.d
instance ORG_899_ALEX(Npc_Default)
func void rtn_start_899()
func void rtn_follow_899()
func void rtn_camp_899()
func void rtn_follow2_899()
func void rtn_remove_899()
instance INFO_ALEX_EXIT(C_Info)
instance INFO_ALEX_LETSGO(C_Info)
func int info_alex_letsgo_condition()
func void info_alex_letsgo_info()
instance INFO_ALEX_BYE(C_Info)
func int info_alex_bye_condition()
func void info_alex_bye_info()
instance INFO_ALEX1_LETSGO(C_Info)
func int info_alex1_letsgo_condition()
func void info_alex1_letsgo_info()
instance ALEX1_OT(C_Info)
func int alex1_ot_condition()
func void alex1_ot_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Fighter.d
instance PC_Fighter(Npc_Default)
func void Rtn_Start_3()
func void Rtn_NCWait_3()
func void Rtn_RuinWait_3()
func void Rtn_RuinAbyss_3()
func void Rtn_RuinFollow_3()
func void Rtn_RuinWall_3()
func void Rtn_RuinFollowInside_3()
func void Rtn_RuinStay_3()
func void Rtn_RuinYard_3()
func void Rtn_NCReport_3()
func void Rtn_GuardNC_3()
func void Rtn_FollowToFMC_3()
func void Rtn_WaitFMC_3()
func void Rtn_WaitFM_3()
func void rtn_reunion_3()
instance PC_FighterFM(Npc_Default)
func void Rtn_Follow_5()
func void Rtn_Wait_5()
func void rtn_remove_5()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Hero.d
instance PC_Hero(Npc_Default)
instance PC_Hero_L2(Npc_Default)
instance PC_Hero_L5(Npc_Default)
instance PC_Hero_L7(Npc_Default)
instance PC_Hero_L11(Npc_Default)
instance PC_Hero_L13(Npc_Default)
instance HeroSword13(C_Item)
instance HeroSword20(C_Item)
instance HeroSword25(C_Item)
instance HeroBow13(C_Item)
instance XP_Map(C_Item)
func void Use_XP_Map()
instance D36TESTBOOK(C_Item)
func void use_d36testbook()
instance ALCHEMYKIT(C_Item)
func void use_alchemykit()
instance FIX(C_Item)
func void use_fix()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Mage.d
instance PC_Mage(Npc_Default)
func void rtn_Start_2()
func void Rtn_SHWait_2()
func void Rtn_SHGuide_2()
func void Rtn_SHFollow_2()
func void Rtn_ReturnToOC_2()
func void Rtn_OCWait_2()
func void Rtn_LSWait_2()
func void Rtn_LSAway_2()
func void Rtn_LSOreHeap_2()
func void rtn_lsoreheap_justincase_2()
func void rtn_lsoreheap2_2()
func void rtn_reunion_2()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Psionic.d
instance PC_Psionic(Npc_Default)
func void Rtn_start_4()
func void rtn_startch2_4()
func void Rtn_FortressWait_4()
func void Rtn_FortressFollow_4()
func void Rtn_BALKON_4()
func void Rtn_WaitAtFocus_4()
func void Rtn_BOOK_4()
func void Rtn_GuideToSmith_4()
func void Rtn_GuideToTempel_4()
func void Rtn_GuideToTrain_4()
func void Rtn_GuideToHerb_4()
func void rtn_reunion_4()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Rockefeller.d
instance PC_Rockefeller(Npc_Default)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\PC_Thief.d
instance PC_Thief(Npc_Default)
func void Rtn_PreStart_1()
func void Rtn_Start_1()
func void Rtn_OCWait_1()
func void Rtn_TrollWait_1()
func void Rtn_GuideTroll_1()
func void Rtn_WaitAtWheel_1()
func void Rtn_WaitAtFocus_1()
func void Rtn_OMFull_1()
func void Rtn_FMTaken_1()
func void Rtn_OrcAssault_1()
func void rtn_reunion_1()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1000_Senyan.d
instance SFB_1000_Senyan(Npc_Default)
func void Rtn_start_1000()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1001_Schuerfer.d
instance SFB_1001_Schuerfer(Npc_Default)
func void Rtn_start_1001()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1030_Schuerfer.d
instance SFB_1030_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1030()
func void rtn_dead_1030()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1031_Schuerfer.d
instance SFB_1031_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1031()
func void rtn_dead_1031()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1032_Schuerfer.d
instance SFB_1032_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1032()
func void rtn_dead_1032()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1033_Schuerfer.d
instance SFB_1033_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1033()
func void rtn_dead_1033()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1034_Schuerfer.d
instance SFB_1034_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1034()
func void rtn_dead_1034()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1035_Schuerfer.d
instance SFB_1035_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1035()
func void rtn_dead_1035()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1036_Schuerfer.d
instance SFB_1036_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1036()
func void rtn_dead_1036()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1037_Swiney.d
instance SFB_1037_Swiney(Npc_Default)
func void Rtn_FMCstart_1037()
func void rtn_dead_1037()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1038_Schuerfer.d
instance SFB_1038_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1038()
func void rtn_dead_1038()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1039_Schuerfer.d
instance SFB_1039_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1039()
func void rtn_dead_1039()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1040_Schuerfer.d
instance SFB_1040_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1040()
func void rtn_saved_1040()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1041_Schuerfer.d
instance SFB_1041_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1041()
func void rtn_saved_1041()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1042_Schuerfer.d
instance SFB_1042_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1042()
func void rtn_dead_1042()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1043_Schuerfer.d
instance SFB_1043_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1043()
func void rtn_dead_1043()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SFB_1044_Schuerfer.d
instance SFB_1044_Schuerfer(Npc_Default)
func void Rtn_FMCstart_1044()
func void rtn_dead_1044()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Sld_700_Lee.d
instance Sld_700_Lee(Npc_Default)
func void Rtn_start_700()
func void Rtn_damnpast_700()
func void Rtn_PCSLD_700()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_701_Orik.d
instance SLD_701_Orik(Npc_Default)
func void Rtn_start_701()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_702_Soeldner.d
instance SLD_702_Soeldner(Npc_Default)
func void Rtn_start_702()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_703_Soeldner.d
instance SLD_703_Soeldner(Npc_Default)
func void Rtn_start_703()
func void rtn_fmtaken_703()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_704_Blade.d
instance SLD_704_Blade(Npc_Default)
func void Rtn_start_704()
func void rtn_fmtaken_704()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_705_Soeldner.d
instance SLD_705_Soeldner(Npc_Default)
func void Rtn_start_705()
func void rtn_fmtaken_705()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_706_Soeldner.d
instance SLD_706_Soeldner(Npc_Default)
func void Rtn_start_706()
func void rtn_fmtaken_706()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_707_Soeldner.d
instance SLD_707_Soeldner(Npc_Default)
func void Rtn_start_707()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_708_Soeldner.d
instance SLD_708_Soeldner(Npc_Default)
func void Rtn_start_708()
func void rtn_fmtaken_708()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Sld_709_Cord.d
instance Sld_709_Cord(Npc_Default)
func void Rtn_start_709()
func void Rtn_FMTaken_709()
func void rtn_fmtakenback_709()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_710_Soeldner.d
instance SLD_710_Soeldner(Npc_Default)
func void Rtn_start_710()
func void rtn_fmtaken_710()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_720_Soeldner.d
instance SLD_720_Soeldner(Npc_Default)
func void Rtn_start_720()
func void rtn_fmtaken_720()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_723_Soeldner.d
instance SLD_723_Soeldner(Npc_Default)
func void Rtn_start_723()
func void rtn_orealert_723()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_725_Soeldner.d
instance SLD_725_Soeldner(Npc_Default)
func void Rtn_start_725()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_726_Soeldner.d
instance SLD_726_Soeldner(Npc_Default)
func void Rtn_start_726()
func void Rtn_loadsword_726()
func void rtn_drained_726()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_727_Soeldner.d
instance SLD_727_Soeldner(Npc_Default)
func void Rtn_start_727()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_728_Jarvis.d
instance SLD_728_Jarvis(Npc_Default)
func void Rtn_start_728()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Sld_729_Kharim.d
instance Sld_729_Kharim(Npc_Default)
func void Rtn_start_729()
func void Rtn_Guide_729()
func void rtn_nopractice_729()
func void rtn_dead_729()
func void rtn_wait_729()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_730_Soeldner.d
instance SLD_730_Soeldner(Npc_Default)
func void Rtn_start_730()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_731_Soeldner.d
instance SLD_731_Soeldner(Npc_Default)
func void Rtn_start_731()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_732_Soeldner.d
instance SLD_732_Soeldner(Npc_Default)
func void Rtn_start_732()
func void rtn_orealert_732()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_733_Soeldner.d
instance SLD_733_Soeldner(Npc_Default)
func void Rtn_start_733()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Sld_735_Soeldner.d
instance Sld_735_Soeldner(Npc_Default)
func void Rtn_start_735()
func void Rtn_FMTaken_735()
func void rtn_fmtakenback_735()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Sld_736_Soeldner.d
instance Sld_736_Soeldner(Npc_Default)
func void Rtn_start_736()
func void Rtn_FMTaken_736()
func void rtn_fmtakenback_736()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_737_Torlof.d
instance SLD_737_Torlof(Npc_Default)
func void Rtn_start_737()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_738_Soeldner.d
instance SLD_738_Soeldner(Npc_Default)
func void Rtn_start_738()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_750_Soeldner.d
instance SLD_750_Soeldner(Npc_Default)
func void Rtn_FMCstart_750()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_751_Soeldner.d
instance SLD_751_Soeldner(Npc_Default)
func void Rtn_FMCstart_751()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_752_Okyl.d
instance SLD_752_Okyl(Npc_Default)
func void Rtn_FMCstart_752()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_753_Baloro.d
instance SLD_753_Baloro(Npc_Default)
func void Rtn_FMCstart_753()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_755_Soeldner.d
instance SLD_755_Soeldner(Npc_Default)
func void Rtn_FMCstart_755()
func void rtn_saved_755()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_756_Soeldner.d
instance SLD_756_Soeldner(Npc_Default)
func void Rtn_FMCstart_756()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_757_Soeldner.d
instance SLD_757_Soeldner(Npc_Default)
func void Rtn_FMCstart_757()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_758_Soeldner.d
instance SLD_758_Soeldner(Npc_Default)
func void Rtn_FMCstart_758()
func void rtn_dead_758()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_759_Soeldner.d
instance SLD_759_Soeldner(Npc_Default)
func void Rtn_FMCstart_759()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_760_Soeldner.d
instance SLD_760_Soeldner(Npc_Default)
func void Rtn_FMCstart_760()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_761_Soeldner.d
instance SLD_761_Soeldner(Npc_Default)
func void Rtn_FMCstart_761()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_762_Soeldner.d
instance SLD_762_Soeldner(Npc_Default)
func void Rtn_FMCstart_762()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_763_Soeldner.d
instance SLD_763_Soeldner(Npc_Default)
func void Rtn_FMCstart_763()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_764_Soeldner.d
instance SLD_764_Soeldner(Npc_Default)
func void Rtn_FMCstart_764()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\SLD_765_Soeldner.d
instance SLD_765_Soeldner(Npc_Default)
func void Rtn_FMCstart_765()
func void rtn_dead_765()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_300_Alberto.d
instance STT_300_Alberto(Npc_Default)
func void Rtn_Start_300()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_301_Ian.d
instance STT_301_Ian(Npc_Default)
func void Rtn_start_301()
func void Rtn_Kapitel2_301()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_302_Viper.d
instance STT_302_Viper(Npc_Default)
func void Rtn_start_302()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_304_Schatten.d
instance STT_304_Schatten(Npc_Default)
func void Rtn_start_304()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_306_Schatten.d
instance STT_306_Schatten(Npc_Default)
func void Rtn_start_306()
func void rtn_noarena_306()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Stt_309_Whistler.d
instance Stt_309_Whistler(Npc_Default)
func void Rtn_start_309()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_310_Schatten.d
instance STT_310_Schatten(Npc_Default)
func void Rtn_start_310()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Stt_311_Fisk.d
instance Stt_311_Fisk(Npc_Default)
func void Rtn_start_311()
func void rtn_flee_311()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_313_Schatten.d
instance STT_313_Schatten(Npc_Default)
func void Rtn_start_313()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_314_Schatten.d
instance STT_314_Schatten(Npc_Default)
func void Rtn_start_314()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_315_Sly.d
instance STT_315_Sly(Npc_Default)
func void Rtn_start_315()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_316_Schatten.d
instance STT_316_Schatten(Npc_Default)
func void Rtn_start_316()
func void rtn_noarena_316()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Stt_318_Schatten.d
instance Stt_318_Schatten(Npc_Default)
func void Rtn_start_318()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_319_Schatten.d
instance STT_319_Schatten(Npc_Default)
func void Rtn_start_319()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Stt_322_Schatten.d
instance Stt_322_Schatten(Npc_Default)
func void Rtn_start_322()
func void Rtn_OMFull_322()
func void Rtn_FMTaken_322()
func void Rtn_OrcAssault_322()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_324_Balam.d
instance STT_324_Balam(Npc_Default)
func void Rtn_start_324()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_325_Omid.d
instance STT_325_Omid(Npc_Default)
func void Rtn_start_325()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_328_Schatten.d
instance STT_328_Schatten(Npc_Default)
func void rtn_prestart_328()
func void Rtn_start_328()
func void rtn_noarena_328()
func void info_sam_back()
instance DIA_Scatty_WannaBet(C_Info)
func int DIA_Scatty_WannaBet_Condition()
func void DIA_Scatty_WannaBet_Info()
func void dia_scatty_arenabet_kirgo()
func void dia_scatty_arenabet_kharim()
func void dia_scatty_arenabet_gorhanis()
instance DIA_SCATTY_BETRESULT(C_Info)
func int dia_scatty_betresult_condition()
func void dia_scatty_betresult_info()
instance DIA_SAM_HI(C_Info)
func int dia_sam_hi_condition()
func void dia_sam_hi_info()
instance DIA_SAM_WTF(C_Info)
func int dia_sam_wtf_condition()
func void dia_sam_wtf_info()
instance INFO_SAM_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_329_Dexter.d
instance STT_329_Dexter(Npc_Default)
func void Rtn_start_329()
func void rtn_flee_329()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_330_Schatten.d
instance STT_330_Schatten(Npc_Default)
func void Rtn_PreStart_330()
func void Rtn_start_330()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_331_Fingers.d
instance STT_331_Fingers(Npc_Default)
func void Rtn_start_331()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_335_Santino.d
instance STT_335_Santino(Npc_Default)
func void Rtn_start_335()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_336_Cavalorn.d
instance STT_336_Cavalorn(Npc_Default)
func void Rtn_start_336()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_336_Schatten.d
instance STT_336_Schatten(Npc_Default)
func void Rtn_FMstart_336()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\STT_337_Schatten.d
instance STT_337_Schatten(Npc_Default)
func void Rtn_FMstart_337()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Stt_338_Schatten.d
instance Stt_338_Schatten(Npc_Default)
func void Rtn_FMstart_338()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\stt_594_grim.d
instance STT_594_GRIM(Npc_Default)
func void rtn_start_594()
func void rtn_guide_594()
func void rtn_inextremo_594()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1400_GorNaBar.d
instance TPL_1400_GorNaBar(Npc_Default)
func void Rtn_start_1400()
func void Rtn_Gate_1400()
func void rtn_flee_1400()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\tpl_1400_gornabar_psi.d
instance TPL_1400_GORNABAR_PSI(Npc_Default)
func void rtn_start_14001()
func void rtn_namib_14001()
instance INFO_GORNABAR_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1401_GorNaKosh.d
instance TPL_1401_GorNaKosh(Npc_Default)
func void Rtn_start_1401()
func void Rtn_Gate_1401()
func void rtn_flee_1401()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\tpl_1401_gornakosh_psi.d
instance TPL_1401_GORNAKOSH_PSI(Npc_Default)
func void rtn_start_14011()
instance INFO_GORNAKOSH_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1402_GorNaToth.d
instance TPL_1402_GorNaToth(Npc_Default)
func void Rtn_start_1402()
func void rtn_train_1402()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1403_Templer.d
instance TPL_1403_Templer(Npc_Default)
func void Rtn_start_1403()
func void Rtn_PrepareRitual_1403()
func void Rtn_OMFull_1403()
func void Rtn_FMTaken_1403()
func void Rtn_OrcAssault_1403()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1404_Templer.d
instance TPL_1404_Templer(Npc_Default)
func void Rtn_start_1404()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1405_GorNaRan.d
instance TPL_1405_GorNaRan(Npc_Default)
func void Rtn_start_1405()
func void rtn_remove_1405()
instance TPL_1490_GORNARAN(Npc_Default)
func void rtn_start_1490()
func void rtn_hostile_1490()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1406_Templer.d
instance TPL_1406_Templer(Npc_Default)
func void Rtn_start_1406()
func void rtn_flee_1406()
func void rtn_care_1406()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1407_Templer.d
instance TPL_1407_Templer(Npc_Default)
func void Rtn_start_1407()
func void rtn_remove_1407()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1408_Templer.d
instance TPL_1408_Templer(Npc_Default)
func void Rtn_start_1408()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1409_Templer.d
instance TPL_1409_Templer(Npc_Default)
func void Rtn_start_1409()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1410_Templer.d
instance TPL_1410_Templer(Npc_Default)
func void Rtn_start_1410()
func void rtn_ritual_1410()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1411_Templer.d
instance TPL_1411_Templer(Npc_Default)
func void Rtn_start_1411()
func void rtn_remove_1411()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1412_Templer.d
instance TPL_1412_Templer(Npc_Default)
func void Rtn_start_1412()
func void rtn_remove_1412()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1413_Templer.d
instance TPL_1413_Templer(Npc_Default)
func void Rtn_start_1413()
func void rtn_remove_1413()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1414_Templer.d
instance TPL_1414_Templer(Npc_Default)
func void Rtn_start_1414()
func void rtn_remove_1414()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1415_Templer.d
instance TPL_1415_Templer(Npc_Default)
func void Rtn_start_1415()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1416_Templer.d
instance TPL_1416_Templer(Npc_Default)
func void Rtn_start_1416()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1417_Templer.d
instance TPL_1417_Templer(Npc_Default)
func void Rtn_start_1417()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1418_Templer.d
instance TPL_1418_Templer(Npc_Default)
func void Rtn_start_1418()
func void rtn_remove_1418()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1419_Templer.d
instance TPL_1419_Templer(Npc_Default)
func void Rtn_start_1419()
func void rtn_remove_1419()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1420_Templer.d
instance TPL_1420_Templer(Npc_Default)
func void Rtn_start_1420()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Tpl_1422_GorHanis.d
instance Tpl_1422_GorHanis(Npc_Default)
func void Rtn_start_1422()
func void rtn_guide_1422()
func void rtn_nopractice_1422()
func void rtn_dead_1422()
func void rtn_wait_1422()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1423_Templer.d
instance TPL_1423_Templer(Npc_Default)
func void Rtn_start_1423()
func void rtn_ritual_1423()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1424_Templer.d
instance TPL_1424_Templer(Npc_Default)
func void Rtn_start_1424()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1425_Templer.d
instance TPL_1425_Templer(Npc_Default)
func void Rtn_start_1425()
func void rtn_remove_1425()
func void rtn_ritual_1425()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1430_Templer.d
instance TPL_1430_Templer(Npc_Default)
func void Rtn_start_1430()
func void rtn_remove_1430()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1431_Templer.d
instance TPL_1431_Templer(Npc_Default)
func void Rtn_start_1431()
func void rtn_remove_1431()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1432_Templer.d
instance TPL_1432_Templer(Npc_Default)
func void Rtn_start_1432()
func void Rtn_PrepareRitual_1432()
func void Rtn_OMFull_1432()
func void Rtn_FMTaken_1432()
func void Rtn_OrcAssault_1432()
func void rtn_remove_1432()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1433_GorNaVid.d
instance TPL_1433_GorNaVid(Npc_Default)
func void Rtn_start_1433()
func void Rtn_Gate_1433()
func void rtn_flee_1433()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\tpl_1433_gornavid_psi.d
instance TPL_1433_GORNAVID_PSI(Npc_Default)
func void rtn_start_14331()
instance INFO_GORNAVID_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1434_Templer.d
instance TPL_1434_Templer(Npc_Default)
func void Rtn_start_1434()
func void Rtn_PrepareRitual_1434()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1435_Templer.d
instance TPL_1435_Templer(Npc_Default)
func void Rtn_start_1435()
func void Rtn_PrepareRitual_1435()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1436_Templer.d
instance TPL_1436_Templer(Npc_Default)
func void Rtn_start_1436()
func void rtn_flee_1436()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1437_Templer.d
instance TPL_1437_Templer(Npc_Default)
func void Rtn_start_1437()
func void rtn_flee_1437()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1438_Templer.d
instance TPL_1438_Templer(Npc_Default)
func void Rtn_start_1438()
func void rtn_flee_1438()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1439_GorNaDrak.d
instance TPL_1439_GorNaDrak(Npc_Default)
func void Rtn_start_1439()
func void rtn_gc_1439()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1440_Templer.d
instance TPL_1440_Templer(Npc_Default)
func void Rtn_start_1440()
func void rtn_gc_1440()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1441_Templer.d
instance TPL_1441_Templer(Npc_Default)
func void Rtn_start_1441()
func void rtn_remove_1441()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1442_Templer.d
instance TPL_1442_Templer(Npc_Default)
func void Rtn_start_1442()
func void rtn_remove_1442()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1443_Templer.d
instance TPL_1443_Templer(Npc_Default)
func void Rtn_start_1443()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1444_Templer.d
instance TPL_1444_Templer(Npc_Default)
func void Rtn_start_1444()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1445_Templer.d
instance TPL_1445_Templer(Npc_Default)
func void Rtn_start_1445()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1446_Templer.d
instance TPL_1446_Templer(Npc_Default)
func void Rtn_start_1446()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1447_Templer.d
instance TPL_1447_Templer(Npc_Default)
func void Rtn_start_1447()
func void Rtn_OT_1447()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1448_Templer.d
instance TPL_1448_Templer(Npc_Default)
func void Rtn_start_1448()
func void Rtn_OT_1448()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1449_Templer.d
instance TPL_1449_Templer(Npc_Default)
func void Rtn_start_1449()
func void Rtn_OT_1449()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1450_Templer.d
instance TPL_1450_Templer(Npc_Default)
func void Rtn_start_1450()
func void Rtn_OT_1450()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1451_Templer.d
instance TPL_1451_Templer(Npc_Default)
func void Rtn_start_1451()
func void Rtn_OT_1451()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1452_Templer.d
instance TPL_1452_Templer(Npc_Default)
func void Rtn_start_1452()
func void Rtn_OT_1452()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1453_Templer.d
instance TPL_1453_Templer(Npc_Default)
func void Rtn_start_1453()
func void Rtn_OT_1453()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1454_Templer.d
instance TPL_1454_Templer(Npc_Default)
func void Rtn_start_1454()
func void Rtn_OT_1454()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1455_GorBoba.d
instance TPL_1455_GorBoba(Npc_Default)
func void Rtn_start_1455()
func void Rtn_OT_1455()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1456_Templer.d
instance TPL_1456_Templer(Npc_Default)
func void Rtn_start_1456()
func void Rtn_OT_1456()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1457_Templer.d
instance TPL_1457_Templer(Npc_Default)
func void Rtn_start_1457()
func void Rtn_OT_1457()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1458_Templer.d
instance TPL_1458_Templer(Npc_Default)
func void Rtn_start_1458()
func void Rtn_OT_1458()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1459_Templer.d
instance TPL_1459_Templer(Npc_Default)
func void Rtn_start_1459()
func void Rtn_OT_1459()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1460_Templer.d
instance TPL_1460_Templer(Npc_Default)
func void Rtn_start_1460()
func void Rtn_OT_1460()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1461_Templer.d
instance TPL_1461_Templer(Npc_Default)
func void Rtn_start_1461()
func void Rtn_OT_1461()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\TPL_1462_Templer.d
instance TPL_1462_Templer(Npc_Default)
func void Rtn_start_1462()
func void Rtn_OT_1462()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Tpl_1463_Templer.d
instance Tpl_1463_Templer(Npc_Default)
func void Rtn_start_1463()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5001_Buddler.d
instance VLK_5001_Buddler(Npc_Default)
func void Rtn_FMstart_5001()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5002_Buddler.d
instance VLK_5002_Buddler(Npc_Default)
func void Rtn_FMstart_5002()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5003_Buddler.d
instance VLK_5003_Buddler(Npc_Default)
func void Rtn_FMstart_5003()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5004_Buddler.d
instance VLK_5004_Buddler(Npc_Default)
func void Rtn_FMstart_5004()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5005_Buddler.d
instance VLK_5005_Buddler(Npc_Default)
func void Rtn_FMstart_5005()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5006_Buddler.d
instance VLK_5006_Buddler(Npc_Default)
func void Rtn_FMstart_5006()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_5007_Buddler.d
instance VLK_5007_Buddler(Npc_Default)
func void Rtn_FMstart_5007()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_501_Buddler.d
instance VLK_501_Buddler(Npc_Default)
func void Rtn_start_501()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_502_Buddler.d
instance VLK_502_Buddler(Npc_Default)
func void Rtn_start_502()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_503_Buddler.d
instance VLK_503_Buddler(Npc_Default)
func void Rtn_start_503()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_504_Buddler.d
instance VLK_504_Buddler(Npc_Default)
func void Rtn_start_504()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_505_Buddler.d
instance VLK_505_Buddler(Npc_Default)
func void Rtn_start_505()
func void rtn_letterwait_505()
func void rtn_guide_505()
instance INFO_VLK505_EXIT(C_Info)
instance DIA_VLK505_HI(C_Info)
func int dia_vlk505_hi_condition()
func void dia_vlk505_hi_info()
func void dia_vlk505_hi_yes()
func void dia_vlk505_hi_no()
instance DIA_VLK505_HI2(C_Info)
func int dia_vlk505_hi2_condition()
func void dia_vlk505_hi2_info()
instance VLK505_GETLOST(C_Info)
func int vlk505_getlost_condition()
func void vlk505_getlost_info()
instance DIA_VLK505_HI_01(C_Info)
func int dia_vlk505_hi_01_condition()
func void dia_vlk505_hi_01_info()
instance DIA_VLK505_HI_02(C_Info)
func int dia_vlk505_hi_02_condition()
func void dia_vlk505_hi_02_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_506_Buddler.d
instance VLK_506_Buddler(Npc_Default)
func void Rtn_start_506()
func void rtn_letterwait_506()
func void rtn_guide_506()
instance INFO_VLK506_EXIT(C_Info)
instance DIA_VLK506_HI(C_Info)
func int dia_vlk506_hi_condition()
func void dia_vlk506_hi_info()
func void dia_vlk506_hi_yes()
func void dia_vlk506_hi_no()
instance DIA_VLK506_HI2(C_Info)
func int dia_vlk506_hi2_condition()
func void dia_vlk506_hi2_info()
instance VLK506_GETLOST(C_Info)
func int vlk506_getlost_condition()
func void vlk506_getlost_info()
instance DIA_VLK506_HI_01(C_Info)
func int dia_vlk506_hi_01_condition()
func void dia_vlk506_hi_01_info()
instance DIA_VLK506_HI_02(C_Info)
func int dia_vlk506_hi_02_condition()
func void dia_vlk506_hi_02_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_507_Buddler.d
instance VLK_507_Buddler(Npc_Default)
func void Rtn_start_507()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_508_Buddler.d
instance VLK_508_Buddler(Npc_Default)
func void Rtn_start_508()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_509_Buddler.d
instance VLK_509_Buddler(Npc_Default)
func void Rtn_start_509()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_510_Buddler.d
instance VLK_510_Buddler(Npc_Default)
func void Rtn_start_510()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_511_Herek.d
instance VLK_511_Herek(Npc_Default)
func void Rtn_start_511()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_512_Buddler.d
instance VLK_512_Buddler(Npc_Default)
func void Rtn_start_512()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_513_Buddler.d
instance VLK_513_Buddler(Npc_Default)
func void Rtn_start_513()
func void rtn_noarena_513()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_514_Buddler.d
instance VLK_514_Buddler(Npc_Default)
func void Rtn_start_514()
func void rtn_noarena_514()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_515_Buddler.d
instance VLK_515_Buddler(Npc_Default)
func void Rtn_start_515()
func void rtn_noarena_515()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_516_Buddler.d
instance VLK_516_Buddler(Npc_Default)
func void Rtn_start_516()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_517_Buddler.d
instance VLK_517_Buddler(Npc_Default)
func void Rtn_start_517()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_518_Buddler.d
instance VLK_518_Buddler(Npc_Default)
func void Rtn_start_518()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_519_Buddler.d
instance VLK_519_Buddler(Npc_Default)
func void Rtn_start_519()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_520_Buddler.d
instance VLK_520_Buddler(Npc_Default)
func void Rtn_start_520()
func void rtn_fmtaken_520()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_521_Buddler.d
instance VLK_521_Buddler(Npc_Default)
func void Rtn_start_521()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_522_Buddler.d
instance VLK_522_Buddler(Npc_Default)
func void Rtn_start_522()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_523_Buddler.d
instance VLK_523_Buddler(Npc_Default)
func void Rtn_start_523()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_524_Dusty.d
instance VLK_524_Dusty(Npc_Default)
func void Rtn_start_524()
func void Rtn_Follow_524()
func void Rtn_PrepareRitual_524()
func void rtn_remove_524()
func void rtn_dead_524()
func void rtn_prepareritual2_524()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_525_Buddler.d
instance VLK_525_Buddler(Npc_Default)
func void Rtn_start_525()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_526_Buddler.d
instance VLK_526_Buddler(Npc_Default)
func void Rtn_start_526()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_527_Buddler.d
instance VLK_527_Buddler(Npc_Default)
func void Rtn_start_527()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_528_Buddler.d
instance VLK_528_Buddler(Npc_Default)
func void Rtn_start_528()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_529_Buddler.d
instance VLK_529_Buddler(Npc_Default)
func void Rtn_start_529()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_530_Guy.d
instance VLK_530_Guy(Npc_Default)
func void Rtn_start_530()
func void rtn_noarena_530()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_531_Buddler.d
instance VLK_531_Buddler(Npc_Default)
func void Rtn_start_531()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_532_Buddler.d
instance VLK_532_Buddler(Npc_Default)
func void Rtn_start_532()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_533_Buddler.d
instance VLK_533_Buddler(Npc_Default)
func void Rtn_start_533()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_534_Buddler.d
instance VLK_534_Buddler(Npc_Default)
func void Rtn_start_534()
func void rtn_fmtaken_534()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_535_Buddler.d
instance VLK_535_Buddler(Npc_Default)
func void Rtn_start_535()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_536_Kyle.d
instance VLK_536_Kyle(Npc_Default)
func void Rtn_start_536()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_538_Huno.d
instance VLK_538_Huno(Npc_Default)
func void Rtn_start_538()
func void rtn_flee_538()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_539_Buddler.d
instance VLK_539_Buddler(Npc_Default)
func void Rtn_start_539()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_540_Buddler.d
instance VLK_540_Buddler(Npc_Default)
func void Rtn_start_540()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_541_Buddler.d
instance VLK_541_Buddler(Npc_Default)
func void Rtn_start_541()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_542_Buddler.d
instance VLK_542_Buddler(Npc_Default)
func void Rtn_start_542()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_543_Buddler.d
instance VLK_543_Buddler(Npc_Default)
func void Rtn_start_543()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_544_Buddler.d
instance VLK_544_Buddler(Npc_Default)
func void Rtn_start_544()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_545_Buddler.d
instance VLK_545_Buddler(Npc_Default)
func void Rtn_start_545()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_546_Buddler.d
instance VLK_546_Buddler(Npc_Default)
func void Rtn_start_546()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_547_Buddler.d
instance VLK_547_Buddler(Npc_Default)
func void Rtn_start_547()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_548_Buddler.d
instance VLK_548_Buddler(Npc_Default)
func void Rtn_start_548()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_549_Buddler.d
instance VLK_549_Buddler(Npc_Default)
func void Rtn_start_549()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_550_Buddler.d
instance VLK_550_Buddler(Npc_Default)
func void Rtn_start_550()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_551_Buddler.d
instance VLK_551_Buddler(Npc_Default)
func void Rtn_start_551()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_553_Buddler.d
instance VLK_553_Buddler(Npc_Default)
func void Rtn_start_553()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_554_Buddler.d
instance VLK_554_Buddler(Npc_Default)
func void Rtn_start_554()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_555_Buddler.d
instance VLK_555_Buddler(Npc_Default)
func void Rtn_start_555()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_556_Buddler.d
instance VLK_556_Buddler(Npc_Default)
func void Rtn_start_556()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_557_Buddler.d
instance VLK_557_Buddler(Npc_Default)
func void Rtn_start_557()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_558_Buddler.d
instance VLK_558_Buddler(Npc_Default)
func void Rtn_start_558()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_559_Buddler.d
instance VLK_559_Buddler(Npc_Default)
func void Rtn_start_559()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_560_Buddler.d
instance VLK_560_Buddler(Npc_Default)
func void Rtn_start_560()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_561_Buddler.d
instance VLK_561_Buddler(Npc_Default)
func void Rtn_start_561()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_562_Buddler.d
instance VLK_562_Buddler(Npc_Default)
func void Rtn_start_562()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_563_Buddler.d
instance VLK_563_Buddler(Npc_Default)
func void Rtn_start_563()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_564_Jesse.d
instance VLK_564_Jesse(Npc_Default)
func void Rtn_Start_564()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_565_Buddler.d
instance VLK_565_Buddler(Npc_Default)
func void Rtn_start_565()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_566_Buddler.d
instance VLK_566_Buddler(Npc_Default)
func void Rtn_start_566()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_567_Buddler.d
instance VLK_567_Buddler(Npc_Default)
func void Rtn_start_567()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_571_Buddler.d
instance VLK_571_Buddler(Npc_Default)
func void Rtn_start_571()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_572_Gravo.d
instance VLK_572_Gravo(Npc_Default)
func void Rtn_start_572()
func void rtn_watch_572()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_573_Graham.d
instance VLK_573_Graham(Npc_Default)
func void Rtn_start_573()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_574_Mud.d
instance VLK_574_Mud(Npc_Default)
func void Rtn_start_574()
func void Rtn_Follow_574()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_575_Buddler.d
instance VLK_575_Buddler(Npc_Default)
func void Rtn_start_575()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_576_Buddler.d
instance VLK_576_Buddler(Npc_Default)
func void Rtn_start_576()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_577_Buddler.d
instance VLK_577_Buddler(Npc_Default)
func void Rtn_start_577()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_578_Buddler.d
instance VLK_578_Buddler(Npc_Default)
func void Rtn_start_578()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_579_Buddler.d
instance VLK_579_Buddler(Npc_Default)
func void Rtn_start_579()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\Vlk_580_Grim.d
instance Vlk_580_Grim(Npc_Default)
func void Rtn_Start_580()
func void Rtn_Guide_580()
func void Rtn_InExtremo_580()
func void rtn_remove_580()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_581_Snaf.d
instance VLK_581_Snaf(Npc_Default)
func void Rtn_start_581()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_582_Melvin.d
instance VLK_582_Melvin(Npc_Default)
func void Rtn_start_582()
func void rtn_remove_582()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_583_Glen.d
instance VLK_583_Glen(Npc_Default)
func void Rtn_start_583()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_584_Snipes.d
instance VLK_584_Snipes(Npc_Default)
func void Rtn_start_584()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_585_Aleph.d
instance VLK_585_Aleph(Npc_Default)
func void Rtn_start_585()
func void Rtn_Busy_585()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_586_Grimes.d
instance VLK_586_Grimes(Npc_Default)
func void Rtn_Start_586()
func void rtn_work_586()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_587_Garp.d
instance VLK_587_Garp(Npc_Default)
func void Rtn_start_587()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_588_Buddler.d
instance VLK_588_Buddler(Npc_Default)
func void Rtn_start_588()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_589_Buddler.d
instance VLK_589_Buddler(Npc_Default)
func void Rtn_start_589()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_590_Buddler.d
instance VLK_590_Buddler(Npc_Default)
func void Rtn_start_590()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_591_Buddler.d
instance VLK_591_Buddler(Npc_Default)
func void Rtn_start_591()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_592_Buddler.d
instance VLK_592_Buddler(Npc_Default)
func void Rtn_start_592()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\VLK_593_Buddler.d
instance VLK_593_Buddler(Npc_Default)
func void Rtn_start_593()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\NPC\vlk_595_buddler.d
instance VLK_595_BUDDLER(Npc_Default)
func void rtn_start_595()
func void rtn_oc_595()
instance INFO_VLK595_EXIT(C_Info)
instance DIA_VLK595_QUENTIN_DONE(C_Info)
func int dia_vlk595_quentin_done_condition()
func void dia_vlk595_quentin_done_info()
instance VLK_596_BUDDLER(Npc_Default)
func void rtn_start_596()
func void rtn_oc_596()
instance INFO_VLK596_EXIT(C_Info)
instance VLK_597_BUDDLER(Npc_Default)
func void rtn_start_597()
func void rtn_oc_597()
instance INFO_VLK597_EXIT(C_Info)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\B_ZS.d
const int TA_IT_NONE = 0;
const int TA_IT_APPLE = 1;
const int TA_IT_LOAF = 2;
const int TA_IT_CHEESE = 3;
const int TA_IT_BEER = 4;
const int TA_IT_MEAT = 5;
const int TA_IT_SOUP = 6;
const int TA_IT_RICE = 7;
const int TA_IT_JOINT = 8;
const int TA_IT_BOOZE = 9;
const int TA_IT_WINE = 10;
const int TA_IT_SMALLTALK_ACTIVE = 11;
const int TA_IT_SMALLTALK_PASSIVE = 12;
const int TA_IT_SMALLTALK = 13;
const int TA_IT_FORCEDSMALLTALK = 14;
func void B_InitArmor()
func void B_PlayArmor()
func void B_ExitArmor()
func void B_EatSmall(var C_Npc self)
func void B_EatHuge(var C_Npc self)
func void B_ThrowApple(var C_Npc self)
func void B_DrinkBottle(var C_Npc self)
func void B_WipeMouth(var C_Npc self)
func void B_LookBottle(var C_Npc self)
func void B_DrawJoint(var C_Npc self)
func void B_EatMeat(var C_Npc self)
func void B_EatRice(var C_Npc self)
func void B_PlayItemRandoms(var C_Npc self)
func void B_ChooseApple(var C_Npc self)
func void B_ChooseLoaf(var C_Npc self)
func void B_ChooseCheese(var C_Npc self)
func void B_ChooseBeer(var C_Npc self)
func void B_ChooseMeat(var C_Npc self)
func void B_ChooseSoup(var C_Npc self)
func void B_ChooseRice(var C_Npc self)
func void B_ChooseJoint(var C_Npc self)
func void B_ChooseBooze(var C_Npc self)
func void B_ChooseWine(var C_Npc self)
func void B_Pee(var C_Npc self)
func void B_Bored(var C_Npc self)
func void B_ResetIterator(var C_Npc self)
func void B_ClearItem(var C_Npc self)
func void B_StartUseMob(var C_Npc slf,var string mobname)
func void B_StopUseMob(var C_Npc slf,var string mobname)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\Ta.d
func void TA_Cook(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_RoastScavenger(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Guard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_RepairHut(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Sleep(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_sleep_yberion(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Listen(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Babe_Sweep(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Bathing_Babe(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Babe_SitAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Babe_Dance(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Babe_Sleep(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Babe_Fan(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PotionAlchemy(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_HerbAlchemy(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Preach(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Pray(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PlayTune(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Teaching(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_CookForMe(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_MCHunting(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuardPassage(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuardPatrol(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smoke(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_WalkAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_WashSelf(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_ReadBook(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PracticeMagic(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_BodyGuard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PickOre(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PickRice(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smith_Anvil(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smith_Cool(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smith_Sharp(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smith_Fire(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PracticeBow(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_PracticeSword(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEPymonte(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEFlex(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IELutter(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEPfeiffer(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEFlail(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEThomas(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_IEUnicorn(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Charlotte_Dance(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Firespit(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_WatchInExtremo(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Ebr_HangAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_TestHangAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_TestGotoWP(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Meditate(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_meditate_corangar(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Speech(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Position(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuidePC(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_FollowPC(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_followpc_silent(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuardPalisade(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_TestBully(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Orepile(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Walk(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_MineBellows(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Smalltalk(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Boss(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Stand(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_SitCampfire(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_ArenaSpectator(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_SittingDuck(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_HerbShop(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuardWheelOpen(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_GuardWheelClosed(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_StandAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_SitAround(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_sit(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Stay(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_StayNeutral(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Preach_YBerion(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Drained_YBerion(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_babe_cry(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_drained_oreguard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_WaitForRescue(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_HostileGuard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_AlignGuard(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Intercept(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_InterceptMadCorKalom(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_OTMeditate(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_Sleeper(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void TA_ReadBook_Xardas(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
func void ta_arenafight(var int start_h,var int start_m,var int stop_h,var int stop_m,var string waypoint)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_AlignGuard.d
func void ZS_AlignGuard()
func void ZS_AlignGuard_Loop()
func void ZS_AlignGuard_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_ArenaSpectator.d
var int heroisafighter;
func void ZS_ArenaSpectator()
func void ZS_ArenaSpectator_loop()
func void ZS_ArenaSpectator_end()
func void b_as_assessdefeat()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_babe_cry.d
func void zs_babe_cry()
func void zs_babe_cry_loop()
func void zs_babe_cry_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_BodyGuard.d
func void ZS_BodyGuard()
func void ZS_BodyGuard_Loop()
func void ZS_BodyGuard_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Boss.d
func void ZS_Boss()
func void ZS_Boss_loop()
func void ZS_Boss_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Cook.d
func void ZS_Cook()
func void ZS_Cook_Loop()
func void ZS_Cook_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_CookForMe.d
func void ZS_CookForMe()
func void ZS_CookForMe_Loop()
func void ZS_CookForMe_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_drained_oreguard.d
func void zs_drained_oreguard()
func void zs_drained_oreguard_loop()
func void zs_drained_oreguard_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Ebr_HangAround.d
func void ZS_Ebr_HangAround()
func void ZS_Ebr_HangAround_Loop()
func void ZS_Ebr_HangAround_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Firespit.d
func void ZS_Firespit()
func void ZS_Firespit_Loop()
func void ZS_Firespit_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_FollowPC.d
func void ZS_FollowPC()
func int ZS_FollowPC_Loop()
func void ZS_FollowPC_End()
func void B_FollowPC_AssessSC()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_followpc_silent.d
func void zs_followpc_silent()
func int zs_followpc_silent_loop()
func void zs_followpc_silent_end()
func void b_followpc_silent_assesssc()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Guard.d
func void ZS_Guard()
func void ZS_Guard_Loop()
func void ZS_Guard_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_GuardPalisade.d
func void ZS_GuardPalisade()
func void ZS_GuardPalisade_Loop()
func void ZS_GuardPalisade_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_GuardPassage.d
func void ZS_GuardPassage()
func int ZS_GuardPassage_Loop()
func void ZS_GuardPassage_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_GuardPatrol.d
func void ZS_GuardPatrol()
func void ZS_GuardPatrol_Loop()
func void ZS_GuardPatrol_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_GuardWheelOpen.d
func void ZS_GuardWheelOpen()
func int ZS_GuardWheelOpen_Loop()
func void ZS_GuardWheelOpen_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_GuidePC.d
func void B_GuidePC_AssessPlayer()
func void B_GuidePC_AssessCall()
func void ZS_GuidePC()
func int ZS_GuidePC_Loop()
func void ZS_GuidePC_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_HerbAlchemy.d
func void ZS_HerbAlchemy()
func void ZS_HerbAlchemy_Loop()
func void ZS_HerbAlchemy_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_HostileGuard.d
func void ZS_HostileGuard()
func void ZS_HostileGuard_Loop()
func void ZS_HostileGuard_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_ieflail.d
func void zs_ieflail()
func int ZS_IEFLAIL_Loop()
func void ZS_IEFLAIL_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_ieflex.d
func void zs_ieflex()
func int ZS_IEFLEX_Loop()
func void ZS_IEFLEX_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_ielutter.d
func void zs_ielutter()
func int ZS_IELUTTER_Loop()
func void ZS_IELUTTER_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_iepfeiffer.d
func void zs_iepfeiffer()
func int ZS_IEPFEIFFER_Loop()
func void ZS_IEPFEIFFER_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_iepymonte.d
func void zs_iepymonte()
func int ZS_IEPYMONTE_Loop()
func void ZS_IEPYMONTE_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_iethomas.d
func void zs_iethomas()
func int ZS_IETHOMAS_Loop()
func void ZS_IETHOMAS_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_ieunicorn.d
func void zs_ieunicorn()
func int ZS_IEUNICORN_Loop()
func void ZS_IEUNICORN_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Intercept.d
func void ZS_Intercept()
func int ZS_Intercept_Loop()
func void ZS_Intercept_End()
func void B_InterceptAssessDamage()
func void B_InterceptAssessMagic()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Listen.d
func void ZS_Listen()
func void ZS_Listen_Loop()
func void ZS_Listen_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_MCHunting.d
func void ZS_MCHunting()
func void ZS_MCHunting_Loop()
func void ZS_MCHunting_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Meditate.d
func void ZS_Meditate()
func void ZS_Meditate_Loop()
func void ZS_Meditate_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_meditate_corangar.d
func void zs_meditate_corangar()
func void zs_meditate_corangar_loop()
func void zs_meditate_corangar_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_miltensescape.d
func void zs_miltensescape()
func void zs_miltensescape_loop()
func void zs_miltensescape_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_MineBellows.d
func void ZS_MineBellows()
func void ZS_MineBellows_Loop()
func void ZS_MineBellows_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_OTMeditate.d
func void ZS_OTMeditate()
func void ZS_OTMeditate_Loop()
func void ZS_OTMeditate_End()
func void B_OTMeditate_AssessMurder()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PickOre.d
func void ZS_PickOre()
func void ZS_PickOre_Loop()
func void ZS_PickOre_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PickRice.d
func void ZS_PickRice()
func void ZS_PickRice_Loop()
func void ZS_PickRice_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PlayTune.d
func void ZS_PlayTune()
func void ZS_PlayTune_Loop()
func void ZS_PlayTune_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Position.d
func void ZS_Position()
func void ZS_Position_Loop()
func void ZS_Position_End()
func void B_FriendlyAssessCall()
func void B_FriendlyAttack()
func void ZS_FriendlyAttack()
func int ZS_FriendlyAttack_Loop()
func void ZS_FriendlyAttack_End()
func void B_FriendlyAttackRemoveWeapon()
func void B_FollowMode()
func void ZS_FollowMode()
func void B_CheckDistToPlayer()
func void ZS_FollowModeWait()
func void ZS_FollowModeWait_Loop()
func void ZS_FollowModeWait_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PotionAlchemy.d
func void ZS_PotionAlchemy()
func void ZS_PotionAlchemy_Loop()
func void ZS_PotionAlchemy_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PracticeBow.d
func void ZS_PracticeBow()
func void ZS_PracticeBow_Loop()
func void ZS_PracticeBow_End()
func void zs_practicebow_checkequippedweapon()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PracticeMagic.d
func void ZS_PracticeMagic()
func void ZS_PracticeMagic_Loop()
func void ZS_PracticeMagic_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_PracticeSword.d
func void ZS_PracticeSword()
func void ZS_PracticeSword_Loop()
func void ZS_PracticeSword_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Pray.d
func void ZS_Pray()
func void ZS_Pray_Loop()
func void ZS_Pray_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Preach.d
func void ZS_Preach()
func void ZS_Preach_Loop()
func void ZS_Preach_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_ReadBook.d
func void ZS_ReadBook()
func void ZS_ReadBook_Loop()
func void ZS_ReadBook_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_RepairHut.d
func void ZS_RepairHut()
func void ZS_RepairHut_Loop()
func void ZS_RepairHut_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_RoastScavenger.d
func void ZS_RoastScavenger()
func void ZS_RoastScavenger_Loop()
func void ZS_RoastScavenger_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_SitAround.d
func void ZS_SitAround()
func int ZS_SitAround_Loop()
func void ZS_SitAround_End()
func void zs_sit()
func int zs_sit_loop()
func void zs_sit_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_SitCampfire.d
func void ZS_SitCampfire()
func void ZS_SitCampfire_loop()
func void ZS_SitCampfire_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_SittingDuck.d
func void ZS_SittingDuck()
func void ZS_SittingDuck_Loop()
func void ZS_SittingDuck_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Sleep.d
func void ZS_Sleep()
func int zs_sleep_loop()
func void zs_sleep_end()
func void ZS_SleepBed()
func int ZS_SleepBed_Loop()
func void ZS_SleepBed_End()
func void B_SleepQuietSound()
func void b_sleepenterroom()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\zs_sleep_yberion.d
func void zs_sleep_yberion()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smalltalk.d
func void ZS_Smalltalk()
func void ZS_Smalltalk_Loop()
func void ZS_Smalltalk_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smith_Anvil.d
func void ZS_Smith_Anvil()
func void ZS_Smith_Anvil_Loop()
func void ZS_Smith_Anvil_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smith_Cool.d
func void ZS_Smith_Cool()
func void ZS_Smith_Cool_Loop()
func void ZS_Smith_Cool_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smith_Fire.d
func void ZS_Smith_Fire()
func void ZS_Smith_Fire_Loop()
func void ZS_Smith_Fire_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smith_Sharp.d
func void ZS_Smith_Sharp()
func void ZS_Smith_Sharp_Loop()
func void ZS_Smith_Sharp_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Smoke.d
func void ZS_Smoke()
func int ZS_Smoke_Loop()
func void ZS_Smoke_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Speech.d
func void ZS_Speech()
func void ZS_Speech_Loop()
func void ZS_Speech_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Stand.d
func void ZS_Stand()
func void ZS_Stand_loop()
func void ZS_Stand_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_StandAround.d
func void ZS_StandAround()
func int ZS_StandAround_Loop()
func void ZS_StandAround_End()
func void B_SmallTalk()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Stay.d
func void ZS_Stay()
func void ZS_Stay_Loop()
func void ZS_Stay_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_StayNeutral.d
func void ZS_StayNeutral()
func void ZS_StayNeutral_Loop()
func void ZS_StayNeutral_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Teaching.d
func void ZS_Teaching()
func void ZS_Teaching_Loop()
func void ZS_Teaching_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Walk.d
func void ZS_Walk()
func void ZS_Walk_Loop()
func void ZS_Walk_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_WalkAround.d
func void ZS_WalkAround()
func void ZS_WalkAround_Loop()
func void ZS_WalkAround_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_WashSelf.d
func void ZS_WashSelf()
func void ZS_WashSelf_Loop()
func void ZS_WashSelf_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_WatchInExtremo.d
func void ZS_WatchInExtremo()
func void zs_WatchInExtremo_Loop()
func void zs_WatchInExtremo_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\GateTriggers.d
func void On_OCC_GATE_Trigger()
func void On_OCR_NORTHGATE_Trigger()
func void On_OCR_MAINGATE_Trigger()
func void On_OCC_BARONSDOOR_Trigger()
func void on_psi_labdoor_trigger()
func void on_psi_temple_gate_trigger()
func void on_nc_mageramp_trigger()
func void on_nc_mages_trigger()
func void on_nc_bar_trigger()
func void on_nc_magecave_trigger()
func void on_nc_gate_trigger()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_Drained_YBerion.d
func void ZS_Drained_YBerion()
func void ZS_Drained_YBerion_Loop()
func void ZS_Drained_YBerion_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_HerbShop.d
func void ZS_HerbShop()
func void ZS_HerbShop_Loop()
func void ZS_HerbShop_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_InterceptMadCorKalom.d
func void ZS_InterceptMadCorKalom()
func int ZS_InterceptMadCorKalom_Loop()
func void ZS_InterceptMadCorKalom_End()
func void B_AssessSCMadCorKalom()
func void B_InterceptMadCorKalomAssessDamage()
func void B_InterceptMadCorKalomAssessMagic()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_Orepile.d
func void ZS_Orepile()
func void ZS_Orepile_Loop()
func void ZS_Orepile_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_Preach_YBerion.d
func void ZS_Preach_YBerion()
func void ZS_Preach_YBerion_Loop()
func void ZS_Preach_YBerion_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_ReadBook_Xardas.d
func void ZS_ReadBook_Xardas()
func void ZS_ReadBook_Xardas_Loop()
func void ZS_ReadBook_Xardas_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_Sleeper.d
func void ZS_Sleeper()
func int ZS_Sleeper_loop()
func void ZS_Sleeper_end()
func void B_Sleeper_AssessSC()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_TestBully.d
func void ZS_TestBully()
func void ZS_TestBully_Loop()
func void ZS_TestBully_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\pers\ZS_XardasDemon.d
func void ZS_XardasDemon()
func void ZS_XardasDemon_Loop()
func void ZS_XardasDemon_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\Story\ZS\ZS_Steuerung\ZS_Erpresser.d
func void ZS_Erpresser()
func void ZS_Erpresser_Loop()
func void ZS_Erpresser_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\classes.d
const int MAX_CHAPTER = 5;
const int MAX_MISSIONS = 5;
class C_Npc
class C_Mission
class C_Item
class C_Focus
class C_Info
class C_ITEMREACT
instance self(C_Npc)
instance other(C_Npc)
instance victim(C_Npc)
instance item(C_Item)
instance hero(C_Npc)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\constants.d
const int ATR_HITPOINTS = 0;
const int ATR_HITPOINTS_MAX = 1;
const int ATR_MANA = 2;
const int ATR_MANA_MAX = 3;
const int ATR_STRENGTH = 4;
const int ATR_DEXTERITY = 5;
const int ATR_REGENERATEHP = 6;
const int ATR_REGENERATEMANA = 7;
const int ATR_INDEX_MAX = 8;
const int NPC_FLAG_FRIEND = 1;
const int NPC_FLAG_IMMORTAL = 2;
const int FMODE_NONE = 0;
const int FMODE_FIST = 1;
const int FMODE_MELEE = 2;
const int FMODE_FAR = 5;
const int FMODE_MAGIC = 7;
const int NPC_RUN = 0;
const int NPC_WALK = 1;
const int NPC_SNEAK = 2;
const int NPC_RUN_WEAPON = 128;
const int NPC_WALK_WEAPON = 129;
const int NPC_SNEAK_WEAPON = 130;
const int WEAR_TORSO = 1;
const int WEAR_HEAD = 2;
const int INV_WEAPON = 1;
const int INV_ARMOR = 2;
const int INV_RUNE = 3;
const int INV_MAGIC = 4;
const int INV_FOOD = 5;
const int INV_POTION = 6;
const int INV_DOC = 7;
const int INV_MISC = 8;
const int INV_CAT_MAX = 9;
const int INV_MAX_WEAPONS = 6;
const int INV_MAX_ARMORS = 2;
const int INV_MAX_RUNES = 1000;
const int INV_MAX_FOOD = 15;
const int INV_MAX_DOCS = 1000;
const int INV_MAX_POTIONS = 1000;
const int INV_MAX_MAGIC = 1000;
const int INV_MAX_MISC = 1000;
const int ITM_TEXT_MAX = 6;
const int ITEM_KAT_NONE = 1;
const int ITEM_KAT_NF = 2;
const int ITEM_KAT_FF = 4;
const int ITEM_KAT_MUN = 8;
const int ITEM_KAT_ARMOR = 16;
const int ITEM_KAT_FOOD = 32;
const int ITEM_KAT_DOCS = 64;
const int ITEM_KAT_POTIONS = 128;
const int ITEM_KAT_LIGHT = 256;
const int ITEM_KAT_RUNE = 512;
const int ITEM_KAT_MAGIC = 1 << 31;
const int ITEM_KAT_KEYS = 1;
const int ITEM_BURN = 1 << 10;
const int ITEM_MISSION = 1 << 12;
const int ITEM_MULTI = 1 << 21;
const int ITEM_TORCH = 1 << 28;
const int ITEM_THROW = 1 << 29;
const int ITEM_SWD = 1 << 14;
const int ITEM_AXE = 1 << 15;
const int ITEM_2HD_SWD = 1 << 16;
const int ITEM_2HD_AXE = 1 << 17;
const int ITEM_BOW = 1 << 19;
const int ITEM_CROSSBOW = 1 << 20;
const int ITEM_AMULET = 1 << 22;
const int ITEM_DROPPED = 1 << 24;
const int ITEM_RING = 1 << 11;
const int DAM_INVALID = 0;
const int DAM_BARRIER = 1;
const int DAM_BLUNT = 2;
const int DAM_EDGE = 4;
const int DAM_FIRE = 8;
const int DAM_FLY = 16;
const int DAM_MAGIC = 32;
const int DAM_POINT = 64;
const int DAM_FALL = 128;
const int DAM_INDEX_BARRIER = 0;
const int DAM_INDEX_BLUNT = 1;
const int DAM_INDEX_EDGE = 2;
const int DAM_INDEX_FIRE = 3;
const int DAM_INDEX_FLY = 4;
const int DAM_INDEX_MAGIC = 5;
const int DAM_INDEX_POINT = 6;
const int DAM_INDEX_FALL = 7;
const int DAM_INDEX_MAX = 8;
const int NPC_ATTACK_FINISH_DISTANCE = 180;
const int NPC_BURN_TICKS_PER_DAMAGE_POINT = 10;
const int DAM_CRITICAL_MULTIPLIER = 2;
const int BLOOD_SIZE_DIVISOR = 1000;
const int BLOOD_DAMAGE_MAX = 200;
const int DAMAGE_FLY_CM_MAX = 2000;
const int DAMAGE_FLY_CM_MIN = 300;
const int DAMAGE_FLY_CM_PER_POINT = 5;
const int NPC_DAM_DIVE_TIME = 100;
const int PROT_BARRIER = 0;
const int PROT_BLUNT = 1;
const int PROT_EDGE = 2;
const int PROT_FIRE = 3;
const int PROT_FLY = 4;
const int PROT_MAGIC = 5;
const int PROT_POINT = 6;
const int PROT_FALL = 7;
const int PROT_INDEX_MAX = 8;
const int NPC_TALENT_UNKNOWN = 0;
const int NPC_TALENT_1H = 1;
const int NPC_TALENT_2H = 2;
const int NPC_TALENT_BOW = 3;
const int NPC_TALENT_CROSSBOW = 4;
const int NPC_TALENT_PICKLOCK = 5;
const int NPC_TALENT_PICKPOCKET = 6;
const int NPC_TALENT_MAGE = 7;
const int NPC_TALENT_SNEAK = 8;
const int NPC_TALENT_REGENERATE = 9;
const int NPC_TALENT_FIREMASTER = 10;
const int NPC_TALENT_ACROBAT = 11;
const int NPC_TALENT_MAX = 12;
const int PERC_ASSESSPLAYER = 1;
const int PERC_ASSESSENEMY = 2;
const int PERC_ASSESSFIGHTER = 3;
const int PERC_ASSESSBODY = 4;
const int PERC_ASSESSITEM = 5;
const int SENSE_SEE = 1;
const int SENSE_HEAR = 2;
const int SENSE_SMELL = 4;
const int PERC_ASSESSMURDER = 6;
const int PERC_ASSESSDEFEAT = 7;
const int PERC_ASSESSDAMAGE = 8;
const int PERC_ASSESSOTHERSDAMAGE = 9;
const int PERC_ASSESSTHREAT = 10;
const int PERC_ASSESSREMOVEWEAPON = 11;
const int PERC_OBSERVEINTRUDER = 12;
const int PERC_ASSESSFIGHTSOUND = 13;
const int PERC_ASSESSQUIETSOUND = 14;
const int PERC_ASSESSWARN = 15;
const int PERC_CATCHTHIEF = 16;
const int PERC_ASSESSTHEFT = 17;
const int PERC_ASSESSCALL = 18;
const int PERC_ASSESSTALK = 19;
const int PERC_ASSESSGIVENITEM = 20;
const int PERC_ASSESSFAKEGUILD = 21;
const int PERC_MOVEMOB = 22;
const int PERC_MOVENPC = 23;
const int PERC_DRAWWEAPON = 24;
const int PERC_OBSERVESUSPECT = 25;
const int PERC_NPCCOMMAND = 26;
const int PERC_ASSESSMAGIC = 27;
const int PERC_ASSESSSTOPMAGIC = 28;
const int PERC_ASSESSCASTER = 29;
const int PERC_ASSESSSURPRISE = 30;
const int PERC_ASSESSENTERROOM = 31;
const int PERC_ASSESSUSEMOB = 32;
const int NEWS_DONT_SPREAD = 0;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_VICTIM = 1;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_WITNESS = 2;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_OFFENDER = 3;
const int NEWS_SPREAD_NPC_SAME_GUILD_VICTIM = 4;
const int important = 1;
const int INF_TELL = 0;
const int INF_UNKNOWN = 2;
const int LOG_RUNNING = 1;
const int LOG_SUCCESS = 2;
const int LOG_FAILED = 3;
const int LOG_OBSOLETE = 4;
const int ATT_FRIENDLY = 3;
const int ATT_NEUTRAL = 2;
const int ATT_ANGRY = 1;
const int ATT_HOSTILE = 0;
const int GIL_None = 0;
const int GIL_HUMAN = 1;
const int GIL_EBR = 1;
const int GIL_GRD = 2;
const int GIL_STT = 3;
const int GIL_KDF = 4;
const int GIL_VLK = 5;
const int GIL_KDW = 6;
const int GIL_SLD = 7;
const int GIL_ORG = 8;
const int GIL_BAU = 9;
const int GIL_SFB = 10;
const int GIL_GUR = 11;
const int GIL_NOV = 12;
const int GIL_TPL = 13;
const int GIL_DMB = 14;
const int GIL_BAB = 15;
const int GIL_SEPERATOR_HUM = 16;
const int MAX_GUILDS = 16;
const int GIL_WARAN = 17;
const int GIL_SLF = 18;
const int GIL_GOBBO = 19;
const int GIL_TROLL = 20;
const int GIL_SNAPPER = 21;
const int GIL_MINECRAWLER = 22;
const int GIL_MEATBUG = 23;
const int GIL_SCAVENGER = 24;
const int GIL_DEMON = 25;
const int GIL_WOLF = 26;
const int GIL_SHADOWBEAST = 27;
const int GIL_BLOODFLY = 28;
const int GIL_SWAMPSHARK = 29;
const int GIL_ZOMBIE = 30;
const int GIL_UNDEADORC = 31;
const int GIL_SKELETON = 32;
const int GIL_ORCDOG = 33;
const int GIL_MOLERAT = 34;
const int GIL_GOLEM = 35;
const int GIL_LURKER = 36;
const int GIL_SEPERATOR_ORC = 37;
const int GIL_ORCSHAMAN = 38;
const int GIL_ORCWARRIOR = 39;
const int GIL_ORCSCOUT = 40;
const int GIL_ORCSLAVE = 41;
const int GIL_MAX = 42;
class C_GILVALUES
const int NPC_SOUND_DROPTAKE = 1;
const int NPC_SOUND_SPEAK = 3;
const int NPC_SOUND_STEPS = 4;
const int NPC_SOUND_THROWCOLL = 5;
const int NPC_SOUND_DRAWWEAPON = 6;
const int NPC_SOUND_SCREAM = 7;
const int NPC_SOUND_FIGHT = 8;
const int MAT_WOOD = 0;
const int MAT_STONE = 1;
const int MAT_METAL = 2;
const int MAT_LEATHER = 3;
const int MAT_CLAY = 4;
const int MAT_GLAS = 5;
const int LOG_MISSION = 0;
const int LOG_NOTE = 1;
const int TIME_INFINITE = -1000;
const int NPC_VOICE_VARIATION_MAX = 10;
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\magic_intern.d
const int TARGET_COLLECT_NONE = 0;
const int TARGET_COLLECT_CASTER = 1;
const int TARGET_COLLECT_FOCUS = 2;
const int TARGET_COLLECT_ALL = 3;
const int TARGET_COLLECT_FOCUS_FALLBACK_NONE = 4;
const int TARGET_COLLECT_FOCUS_FALLBACK_CASTER = 5;
const int TARGET_COLLECT_ALL_FALLBACK_NONE = 6;
const int TARGET_COLLECT_ALL_FALLBACK_CASTER = 7;
const int TARGET_TYPE_ALL = 1;
const int TARGET_TYPE_ITEMS = 2;
const int TARGET_TYPE_NPCS = 4;
const int TARGET_TYPE_ORCS = 8;
const int TARGET_TYPE_HUMANS = 16;
const int TARGET_TYPE_UNDEAD = 32;
const int MAX_SPELL = 59;
const int SPL_LIGHT = 0;
const int SPL_FIREBALL = 1;
const int SPL_TRANSFORM = 2;
const int SPL_FEAR = 3;
const int SPL_HEAL = 4;
const int SPL_LIGHTNING = 5;
const int SPL_SUMMONDEMON = 6;
const int SPL_SUMMONSKELETON = 7;
const int SPL_FORGET = 8;
const int SPL_WINDFIST = 9;
const int SPL_TELEKINESIS = 10;
const int SPL_CHARM = 11;
const int SPL_SLEEP = 12;
const int SPL_PYROKINESIS = 13;
const int SPL_MASSDEATH = 14;
const int SPL_CONTROL = 15;
const int SPL_DESTROYUNDEAD = 16;
const int SPL_FIREBOLT = 17;
const int SPL_FIRESTORM = 18;
const int SPL_FIRERAIN = 19;
const int SPL_SPEED = 20;
const int SPL_Teleport1 = 21;
const int SPL_Teleport2 = 22;
const int SPL_Teleport3 = 23;
const int SPL_Teleport4 = 24;
const int SPL_Teleport5 = 25;
const int SPL_TRF_BLOODFLY = 26;
const int SPL_TRF_BLOODHOUND = 27;
const int SPL_TRF_CRAWLER = 28;
const int SPL_TRF_LURKER = 29;
const int SPL_TRF_MEATBUG = 30;
const int SPL_TRF_MOLERAT = 31;
const int SPL_TRF_ORCDOG = 32;
const int SPL_TRF_RAZOR = 33;
const int SPL_TRF_SCAVENGER = 34;
const int SPL_TRF_SCAVENGER2 = 35;
const int SPL_TRF_SHADOWBEAST = 36;
const int SPL_TRF_SNAPPER = 37;
const int SPL_TRF_WARAN = 38;
const int SPL_TRF_WOLF = 39;
const int SPL_CHAINLIGHTNING = 40;
const int SPL_THUNDERBOLT = 41;
const int SPL_THUNDERBALL = 42;
const int SPL_ICECUBE = 43;
const int SPL_ICEWAVE = 44;
const int SPL_SUMMONGOLEM = 45;
const int SPL_ARMYOFDARKNESS = 46;
const int SPL_STORMFIST = 47;
const int SPL_TELEKINESIS2 = 48;
const int SPL_BREATHOFDEATH = 49;
const int SPL_SHRINK = 50;
const int SPL_UNDRESS = 51;
const int SPL_DANCE = 52;
const int SPL_BERZERK = 53;
const int SPL_NEW1 = 54;
const int SPL_NEW2 = 55;
const int SPL_NEW3 = 56;
const int SPL_NEW4 = 57;
const int SPL_NEW5 = 58;
class C_Spell
prototype C_Spell_Proto(C_Spell)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_CanNotCast.d
func void G_CanNotCast(var int bIsPlayer,var int nCircleNeeded,var int nCirclePossessed)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_CanNotUse.d
func void G_CanNotUse(var int bIsPlayer,var int nAttribute,var int nValue)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_CanSteal.d
func int G_CanSteal()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_Constants.d
const string _STR_FONT_ONSCREEN = "font_old_10_white.tga";
const string _STR_SOUND_PICKLOCK_SUCCESS = "PICKLOCK_SUCCESS";
const string _STR_SOUND_PICKLOCK_FAILURE = "PICKLOCK_FAILURE";
const string _STR_SOUND_PICKLOCK_UNLOCK = "PICKLOCK_UNLOCK";
const string _STR_SOUND_PICKLOCK_BROKEN = "PICKLOCK_BROKEN";
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_PickLock.d
func void G_PickLock(var int bSuccess,var int bBrokenOpen)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_Intern\G_Functions\G_PrintScreen.d
func void G_PrintScreen(var string strMessage)
func void testmsg(var string testmessage)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\bsfire_s1.d
func void bsfire_s1()
func void bsfire_s0()
func int bsanvil_cf()
func void bsanvil_s1()
func void bsanvil_s0()
func void bscool_s1()
func void bscool_s0()
func void bssharp_s1()
func void bssharp_s0()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\guardcheckgatestate.d
func int guardcheckgatestate(var C_Npc slf)
func void ZS_GuardWheelClosed()
func int ZS_GuardWheelClosed_Loop()
func void ZS_GuardWheelClosed_End()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\g_cannottrade.d
func void g_cannottrade()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\inarena.d
func int inarena(var C_Npc who)
func void zs_afight()
func int zs_afight_loop()
func void zs_afight_end()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\initplayerbody.d
const int ARMOR_VALUE_MULTIPLIER = 6;
const int ARMOR_VALUE_DECREASE = 5;
const int VALUE_TPL_ARMOR_L = 1350;
const int VALUE_TPL_ARMOR_M = 1650;
const int VALUE_TPL_ARMOR_H = 2100;
const int VALUE_STT_ARMOR_M = 750;
const int VALUE_STT_ARMOR_H = 1200;
const int VALUE_GRD_ARMOR_L = 1350;
const int VALUE_GRD_ARMOR_M = 1650;
const int VALUE_GRD_ARMOR_H = 3000;
const int VALUE_KDF_ARMOR_L = 1200;
const int VALUE_KDF_ARMOR_H = 1500;
const int VALUE_KDW_ARMOR_L = 1950;
const int VALUE_KDW_ARMOR_H = 2600;
const int VALUE_ORG_ARMOR_L = 750;
const int VALUE_ORG_ARMOR_M = 1050;
const int VALUE_ORG_ARMOR_H = 1200;
const int VALUE_SLD_ARMOR_L = 1350;
const int VALUE_SLD_ARMOR_M = 1650;
const int VALUE_SLD_ARMOR_H = 2600;
const int VALUE_NOV_ARMOR_L = 500;
const int VALUE_NOV_ARMOR_M = 750;
const int VALUE_NOV_ARMOR_H = 1200;
const int VALUE_VLK_ARMOR_L = 250;
const int VALUE_VLK_ARMOR_M = 500;
const int VALUE_SFB_ARMOR_L = 250;
func void initplayerbody(var int equipment)
func void equip_psi_armor()
func void equip_psi_armor2()
func void equip_sld_armor()
func void unequip_psi_armor()
func void equip_simple_armor()
func void equip_metal_armor()
instance VLK_ARMOR_L(C_Item)
instance VLK_ARMOR_M(C_Item)
instance STT_ARMOR_M(C_Item)
instance STT_ARMOR_H(C_Item)
instance GRD_ARMOR_L(C_Item)
instance GRD_ARMOR_M(C_Item)
instance GRD_ARMOR_H(C_Item)
instance EBR_ARMOR_M(C_Item)
instance EBR_ARMOR_H(C_Item)
instance EBR_ARMOR_H2(C_Item)
instance SFB_ARMOR_L(C_Item)
instance ORG_ARMOR_L(C_Item)
instance ORG_ARMOR_M(C_Item)
instance ORG_ARMOR_H(C_Item)
instance SLD_ARMOR_L(C_Item)
instance SLD_ARMOR_M(C_Item)
instance SLD_ARMOR_H(C_Item)
instance NOV_ARMOR_L(C_Item)
instance NOV_ARMOR_M(C_Item)
instance NOV_ARMOR_H(C_Item)
instance TPL_ARMOR_L(C_Item)
instance TPL_ARMOR_M(C_Item)
instance TPL_ARMOR_H(C_Item)
instance GUR_ARMOR_M(C_Item)
instance GUR_ARMOR_H(C_Item)
instance KDF_ARMOR_L(C_Item)
instance KDF_ARMOR_H(C_Item)
instance KDW_ARMOR_L(C_Item)
instance KDW_ARMOR_H(C_Item)
instance DMB_ARMOR_M(C_Item)
instance CRW_ARMOR_H(C_Item)
instance ORE_ARMOR_M(C_Item)
instance ORE_ARMOR_H(C_Item)
instance LAW_ARMOR(C_Item)
instance GRD_ARMOR_I(C_Item)
instance BAB_ARMOR_NUDE(C_Item)
instance BAB_ARMOR_BIKINI(C_Item)
instance ZOM_ARMOR(C_Item)
instance ORG2N(C_Item)
instance ORG2L(C_Item)
instance ORG2M(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\itarrune_1_1_light.d
instance ITARRUNE_1_1_LIGHT(C_Item)
instance ItArScrollLight(C_Item)
instance ITARRUNE_2_1_FIREBOLT(C_Item)
instance ItArScrollFirebolt(C_Item)
instance ITARRUNE_2_2_FIREBALL(C_Item)
instance ItArScrollFireball(C_Item)
instance ITARRUNE_2_3_FIRESTORM(C_Item)
instance ItArScrollFirestorm(C_Item)
instance ITARRUNE_2_4_FIRERAIN(C_Item)
instance ItArScrollFirerain(C_Item)
instance ITARRUNE_1_3_TELEPORT1(C_Item)
instance ItArScrollTeleport1(C_Item)
instance ITARRUNE_1_4_TELEPORT2(C_Item)
instance ItArScrollTeleport2(C_Item)
instance ITARRUNE_1_6_TELEPORT3(C_Item)
instance ItArScrollTeleport3(C_Item)
instance ItArScrollTeleport4(C_Item)
instance ITARRUNE_1_5_TELEPORT5(C_Item)
instance ItArScrollTeleport5(C_Item)
instance ITARRUNE_1_2_HEAL(C_Item)
instance ItArScrollHeal(C_Item)
instance ItArScrollTrfBloodfly(C_Item)
instance ItArScrollTrfCrawler(C_Item)
instance ItArScrollTrfLurker(C_Item)
instance ItArScrollTrfMeatbug(C_Item)
instance ItArScrollTrfMolerat(C_Item)
instance ItArScrollTrfOrcdog(C_Item)
instance ItArScrollTrfScavenger(C_Item)
instance ItArScrollTrfShadowbeast(C_Item)
instance ItArScrollTrfSnapper(C_Item)
instance ItArScrollTrfWaran(C_Item)
instance ItArScrollTrfWolf(C_Item)
instance ITARRUNE_3_5_CHAINLIGHTNING(C_Item)
instance ItArScrollChainLightning(C_Item)
instance ITARRUNE_3_1_THUNDERBOLT(C_Item)
instance ItArScrollThunderbolt(C_Item)
instance ITARRUNE_3_2_THUNDERBALL(C_Item)
instance ItArScrollThunderball(C_Item)
instance ITARRUNE_3_3_ICECUBE(C_Item)
instance ItArScrollIcecube(C_Item)
instance ITARRUNE_3_4_ICEWAVE(C_Item)
instance ItArScrollIceWave(C_Item)
instance ItArScrollSummonDemon(C_Item)
instance ItArScrollSummonSkeletons(C_Item)
instance ItArScrollSummonGolem(C_Item)
instance ItArScrollArmyOfDarkness(C_Item)
instance ITARRUNE_6_2_ARMYOFDARKNESS(C_Item)
instance ITARRUNE_6_1_DESTROYUNDEAD(C_Item)
instance ItArScrollDestroyUndead(C_Item)
instance ITARRUNE_5_5_WINDFIST(C_Item)
instance ItArScrollWindfist(C_Item)
instance ITARRUNE_5_6_STORMFIST(C_Item)
instance ItArScrollStormfist(C_Item)
instance ITARRUNE_5_0_TELEKINESIS(C_Item)
instance ItArScrollTelekinesis(C_Item)
instance ITARRUNE_5_1_CHARM(C_Item)
instance ItArScrollCharm(C_Item)
instance ITARRUNE_5_2_SLEEP(C_Item)
instance ItArScrollSleep(C_Item)
instance ITARRUNE_5_7_PYROKINESIS(C_Item)
instance ItArScrollPyrokinesis(C_Item)
instance ITARRUNE_5_3_CONTROL(C_Item)
instance ItArScrollControl(C_Item)
instance ItArScrollFear(C_Item)
instance ItArScrollBerzerk(C_Item)
instance ITARRUNE_6_3_BREATHOFDEATH(C_Item)
instance ItArScrollShrink(C_Item)
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\pan_s1.d
func void pan_s1()
instance PC_NOPAN(C_Info)
func int pc_nopan_condition()
func void pc_nopan_info()
instance PC_PAN1(C_Info)
func int pc_pan1_condition()
func void pc_pan1_info()
instance PC_PAN5(C_Info)
func int pc_pan5_condition()
func void pc_pan5_info()
instance PC_PAN10(C_Info)
func int pc_pan10_condition()
func void pc_pan10_info()
instance PC_PANALL(C_Info)
func int pc_panall_condition()
func void pc_panall_info()
////\Users\akhri\Desktop\Gothic Projects\Soltest\PrjGOTHIC\_misk_\update_hp_cat_list.d
func void update_hp_cat_list()
func void update_mp_cat_list()
func void update_perm_cat_list()
func void update_special_cat_list()
func void update_alco_cat_list()
func void potionalchemy_s1()
instance PC_ALCHEMY_CANCEL(C_Info)
func int pc_alchemy_cancel_condition()
func void pc_alchemy_cancel_info()
instance PC_ALCHEMY_CAT_HP(C_Info)
func int pc_alchemy_cat_hp_condition()
func void pc_alchemy_cat_hp_info()
func void pc_alchemy_cat_hp_back()
func void pc_potionalchemy_nocomp_hp()
instance PC_ALCHEMY_CAT_MP(C_Info)
func int pc_alchemy_cat_mp_condition()
func void pc_alchemy_cat_mp_info()
func void pc_alchemy_cat_mp_back()
func void pc_potionalchemy_nocomp_mp()
instance PC_ALCHEMY_CAT_PERM(C_Info)
func int pc_alchemy_cat_perm_condition()
func void pc_alchemy_cat_perm_info()
func void pc_alchemy_cat_perm_back()
func void pc_potionalchemy_nocomp_perm()
instance PC_ALCHEMY_CAT_SPECIAL(C_Info)
func int pc_alchemy_cat_special_condition()
func void pc_alchemy_cat_special_info()
func void pc_alchemy_cat_special_back()
func void pc_potionalchemy_nocomp_special()
instance PC_ALCHEMY_CAT_ALCO(C_Info)
func int pc_alchemy_cat_alco_condition()
func void pc_alchemy_cat_alco_info()
func void pc_alchemy_cat_alco_back()
func void pc_potionalchemy_hp0_info()
func void pc_potionalchemy_hp1_info()
func void pc_potionalchemy_hp2_info()
func void pc_potionalchemy_hp3_info()
func void pc_potionalchemy_mp1_info()
func void pc_potionalchemy_mp2_info()
func void pc_potionalchemy_mp3_info()
func void pc_potionalchemy_mpmax_info()
func void pc_potionalchemy_hpmax_info()
func void pc_potionalchemy_dex_info()
func void pc_potionalchemy_str_info()
func void pc_potionalchemy_master_info()
func void pc_potionalchemy_egg_info()
func void pc_potionalchemy_wine_info()
func void pc_potionalchemy_booze_info()
func void pc_potionalchemy_yberion_info()
func void update_stomp_list()
func void stomp_s1()
instance PC_STOMP_CANCEL(C_Info)
func int pc_stomp_cancel_condition()
func void pc_stomp_cancel_info()
instance PC_STOMP_CAT1(C_Info)
func int pc_stomp_cat1_condition()
func void pc_stomp_cat1_info()
func void pc_stomp_cat1_back()
func void pc_stomp_cat1_1()
func void pc_stomp_cat1_2()
func void pc_stomp_cat1_3()
