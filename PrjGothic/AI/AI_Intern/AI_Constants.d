
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
const int AIV_FREEMAN = 49;
const int AIV_FREEMAN_WANNATALK = 1;
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
const int HAI_DIST_THEFT = 300;
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
const int MOBSI_SLEEPABITEND = 101;
const int MOBSI_PAN = 3;
const int MOBSI_PANEND = 103;
const int MOBSI_POTIONALCHEMY = 5;
const int MOBSI_POTIONALCHEMYEND = 105;
const int MOBSI_STOMP = 7;
const int MOBSI_STOMPEND = 107;
const int MOBSI_ChangeWeaponHand = 9;
const int MOBSI_ChangeWeaponHandEND = 109;
const int MOBSI_PC_BS_Change = 11;
const int MOBSI_PC_BS_ChangeEND = 1011;
