udg_hero_name_sylvanas = ""
udg_hero_name_uther = ""
udg_hero_name_kaelthas = ""
udg_hero_name_muradin = ""
udg_hero_name_malganis = ""
udg_hero_name_mannoroth = ""
udg_is_game_started = false
udg_hero_name_sylvanas_ft = nil
udg_hero_name_uther_ft = nil
udg_hero_name_malganis_ft = nil
udg_hero_name_mannoroth_ft = nil
udg_hero_name_kaelthas_ft = nil
udg_hero_name_muradin_ft = nil
udg_hero_name_z_offset = 0.0
udg_hero_name_font_size = 0.0
udg_player_red_unit = nil
udg_player_blue_unit = nil
udg_player_purple_unit = nil
udg_player_orange_unit = nil
udg_kaelthas_hero_owner = nil
gg_rct_Pick_Hero_Malganis = nil
gg_rct_Pick_Hero_Kaelthas = nil
gg_rct_Pick_Hero_Sylvanas = nil
gg_rct_Pick_Hero_Uther = nil
gg_rct_Pick_Hero_Muradin = nil
gg_rct_Pick_Hero_Mannoroth = nil
gg_rct_Player_Spawn_1st_Lane = nil
gg_rct_Player_Spawn_2nd_Lane = nil
gg_rct_Player_Spawn_3rd_Lane = nil
gg_rct_Player_Spawn_4th_Lane = nil
gg_rct_Spawn_Spot_T1_1st_Lane = nil
gg_rct_Spawn_Spot_T1_2nd_Lane = nil
gg_rct_Spawn_Spot_T1_3rd_Lane = nil
gg_rct_Spawn_Spot_T1_4th_Lane = nil
gg_rct_Trash = nil
gg_cam_Player_1st_Lane_Camera = nil
gg_trg_Pick_Hero = nil
gg_trg_Spawn_Wave = nil
gg_trg_Start_Game = nil
gg_trg_Init_Game = nil
gg_unit_Nman_0016 = nil
gg_unit_Usyl_0017 = nil
gg_unit_Umal_0018 = nil
gg_unit_Hkal_0019 = nil
gg_unit_Huth_0020 = nil
gg_unit_Hmbr_0021 = nil
function InitGlobals()
udg_hero_name_sylvanas = "|cffffff00Sylvanas|r"
udg_hero_name_uther = "|cffffff00Uther|r"
udg_hero_name_kaelthas = "|cffffff00Kael'thas|r"
udg_hero_name_muradin = "|cffffff00Muradin|r"
udg_hero_name_malganis = "|cffffff00Mal'ganis|r"
udg_hero_name_mannoroth = "|cffffff00Mannoroth|r"
udg_is_game_started = false
udg_hero_name_z_offset = 25.00
udg_hero_name_font_size = 12.00
end

function shuffleHeroes(playerCount)
	startPoints = {
		{pos_x = -16251, pos_y = 12442,},
		{pos_x = -16167, pos_y = 9102,},
		{pos_x = -16000, pos_y = 5601,},
		{pos_x = -16017, pos_y = 1939,},
	};
	for i=1, playerCount do
        	unitGroup = GetUnitsOfPlayerAll(Player(i-1))
		ForGroup(unitGroup, function() 
        	    local target = GetEnumUnit()
	            SetUnitPosition(target, startPoints[i].pos_x , startPoints[i].pos_y)
        	end)
	end
end
	
function init()
	print('init completed')
end

function CreateUnitsForPlayer0()
local p = Player(0)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("e000"), -15044.7, 15764.1, 317.185, FourCC("e000"))
end

function CreateUnitsForPlayer1()
local p = Player(1)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("e000"), -14851.6, 15768.2, 159.922, FourCC("e000"))
end

function CreateUnitsForPlayer3()
local p = Player(3)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("e000"), -14649.6, 15759.9, 222.985, FourCC("e000"))
end

function CreateUnitsForPlayer5()
local p = Player(5)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("e000"), -14445.5, 15751.7, 102.857, FourCC("e000"))
end

function CreateUnitsForPlayer6()
local p = Player(6)
local u
local unitID
local t
local life

gg_unit_Nman_0016 = BlzCreateUnitWithSkin(p, FourCC("Nman"), -13898.8, 16308.8, 213.894, FourCC("Nman"))
gg_unit_Usyl_0017 = BlzCreateUnitWithSkin(p, FourCC("Usyl"), -14907.0, 16270.6, 276.413, FourCC("Usyl"))
gg_unit_Umal_0018 = BlzCreateUnitWithSkin(p, FourCC("Umal"), -15566.2, 16267.6, 291.671, FourCC("Umal"))
gg_unit_Hkal_0019 = BlzCreateUnitWithSkin(p, FourCC("Hkal"), -15235.3, 16259.5, 304.122, FourCC("Hkal"))
gg_unit_Huth_0020 = BlzCreateUnitWithSkin(p, FourCC("Huth"), -14594.7, 16259.2, 247.161, FourCC("Huth"))
gg_unit_Hmbr_0021 = BlzCreateUnitWithSkin(p, FourCC("Hmbr"), -14269.6, 16257.2, 225.510, FourCC("Hmbr"))
end

function CreateNeutralPassiveBuildings()
local p = Player(PLAYER_NEUTRAL_PASSIVE)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -15552.0, 16064.0, 270.000, FourCC("ncp3"))
u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -15232.0, 16064.0, 270.000, FourCC("ncp3"))
u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -14912.0, 16064.0, 270.000, FourCC("ncp3"))
u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -14592.0, 16064.0, 270.000, FourCC("ncp3"))
u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -14272.0, 16064.0, 270.000, FourCC("ncp3"))
u = BlzCreateUnitWithSkin(p, FourCC("ncp3"), -13952.0, 16064.0, 270.000, FourCC("ncp3"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
CreateUnitsForPlayer0()
CreateUnitsForPlayer1()
CreateUnitsForPlayer3()
CreateUnitsForPlayer5()
CreateUnitsForPlayer6()
end

function CreateAllUnits()
CreateNeutralPassiveBuildings()
CreatePlayerBuildings()
CreatePlayerUnits()
end

function CreateRegions()
local we

gg_rct_Pick_Hero_Malganis = Rect(-15616.0, 16000.0, -15488.0, 16128.0)
gg_rct_Pick_Hero_Kaelthas = Rect(-15296.0, 16000.0, -15168.0, 16128.0)
gg_rct_Pick_Hero_Sylvanas = Rect(-14976.0, 16000.0, -14848.0, 16128.0)
gg_rct_Pick_Hero_Uther = Rect(-14656.0, 16000.0, -14528.0, 16128.0)
gg_rct_Pick_Hero_Muradin = Rect(-14336.0, 16000.0, -14208.0, 16128.0)
gg_rct_Pick_Hero_Mannoroth = Rect(-14016.0, 16000.0, -13888.0, 16128.0)
gg_rct_Player_Spawn_1st_Lane = Rect(-16320.0, 12384.0, -16192.0, 12512.0)
gg_rct_Player_Spawn_2nd_Lane = Rect(-16224.0, 9056.0, -16096.0, 9184.0)
gg_rct_Player_Spawn_3rd_Lane = Rect(-16064.0, 5536.0, -15936.0, 5664.0)
gg_rct_Player_Spawn_4th_Lane = Rect(-16096.0, 1856.0, -15968.0, 1984.0)
gg_rct_Spawn_Spot_T1_1st_Lane = Rect(-14944.0, 11840.0, -14176.0, 12704.0)
gg_rct_Spawn_Spot_T1_2nd_Lane = Rect(-14976.0, 8512.0, -14208.0, 9376.0)
gg_rct_Spawn_Spot_T1_3rd_Lane = Rect(-14976.0, 5056.0, -14208.0, 5920.0)
gg_rct_Spawn_Spot_T1_4th_Lane = Rect(-15008.0, 1600.0, -14240.0, 2464.0)
gg_rct_Trash = Rect(-18368.0, 18080.0, -18112.0, 18304.0)
end

function CreateCameras()
gg_cam_Player_1st_Lane_Camera = CreateCameraSetup()
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_ROTATION, 90.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_TARGET_DISTANCE, 2727.3, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_ROLL, 0.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_FIELD_OF_VIEW, 90.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_FARZ, 10000.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_NEARZ, 16.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
CameraSetupSetField(gg_cam_Player_1st_Lane_Camera, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
CameraSetupSetDestPosition(gg_cam_Player_1st_Lane_Camera, -16250.5, 12456.0, 0.0)
end

function Trig_Pick_Hero_Conditions()
if (not (udg_is_game_started == false)) then
return false
end
return true
end

function Trig_Pick_Hero_Actions()
MoveRectToLoc(gg_rct_Pick_Hero_Kaelthas, GetRectCenter(gg_rct_Trash))
SetTextTagTextBJ(GetLastCreatedTextTag(), "TRIGSTR_017", udg_hero_name_font_size)
CreateNUnitsAtLoc(1, FourCC("Hkal"), GetOwningPlayer(GetEnteringUnit()), GetUnitLoc(GetEnteringUnit()), bj_UNIT_FACING)
SetUnitColor(gg_unit_Hkal_0019, PLAYER_COLOR_LIGHT_GRAY)
RemoveUnit(GetEnteringUnit())
SelectUnitForPlayerSingle(GetLastCreatedUnit(), GetOwningPlayer(GetEnteringUnit()))
udg_kaelthas_hero_owner = GetOwningPlayer(GetLastCreatedUnit())
end

function InitTrig_Pick_Hero()
gg_trg_Pick_Hero = CreateTrigger()
TriggerRegisterEnterRectSimple(gg_trg_Pick_Hero, gg_rct_Pick_Hero_Kaelthas)
TriggerAddCondition(gg_trg_Pick_Hero, Condition(Trig_Pick_Hero_Conditions))
TriggerAddAction(gg_trg_Pick_Hero, Trig_Pick_Hero_Actions)
end

function Trig_Spawn_Wave_Conditions()
if (not (udg_is_game_started == true)) then
return false
end
return true
end

function Trig_Spawn_Wave_Actions()
end

function InitTrig_Spawn_Wave()
gg_trg_Spawn_Wave = CreateTrigger()
TriggerRegisterTimerEventSingle(gg_trg_Spawn_Wave, 30.00)
TriggerAddCondition(gg_trg_Spawn_Wave, Condition(Trig_Spawn_Wave_Conditions))
TriggerAddAction(gg_trg_Spawn_Wave, Trig_Spawn_Wave_Actions)
end

function Trig_Start_Game_Actions()
udg_is_game_started = true
CameraSetupApplyForPlayer(true, gg_cam_Player_1st_Lane_Camera, Player(0), 0)
    shuffleHeroes(4)
end

function InitTrig_Start_Game()
gg_trg_Start_Game = CreateTrigger()
TriggerRegisterTimerEventSingle(gg_trg_Start_Game, 30.00)
TriggerAddAction(gg_trg_Start_Game, Trig_Start_Game_Actions)
end

function Trig_Init_Game_Actions()
UseTimeOfDayBJ(false)
SetTimeOfDay(12.00)
CreateTextTagUnitBJ(udg_hero_name_kaelthas, gg_unit_Hkal_0019, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_kaelthas_ft = GetLastCreatedTextTag()
CreateTextTagUnitBJ(udg_hero_name_malganis, gg_unit_Umal_0018, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_malganis_ft = GetLastCreatedTextTag()
CreateTextTagUnitBJ(udg_hero_name_mannoroth, gg_unit_Nman_0016, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_mannoroth_ft = GetLastCreatedTextTag()
CreateTextTagUnitBJ(udg_hero_name_muradin, gg_unit_Hmbr_0021, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_muradin_ft = GetLastCreatedTextTag()
CreateTextTagUnitBJ(udg_hero_name_sylvanas, gg_unit_Usyl_0017, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_sylvanas_ft = GetLastCreatedTextTag()
CreateTextTagUnitBJ(udg_hero_name_uther, gg_unit_Huth_0020, udg_hero_name_z_offset, udg_hero_name_font_size, 100, 100, 100, 0)
udg_hero_name_uther_ft = GetLastCreatedTextTag()
    init()
end

function InitTrig_Init_Game()
gg_trg_Init_Game = CreateTrigger()
TriggerAddAction(gg_trg_Init_Game, Trig_Init_Game_Actions)
end

function InitCustomTriggers()
InitTrig_Pick_Hero()
InitTrig_Spawn_Wave()
InitTrig_Start_Game()
InitTrig_Init_Game()
end

function RunInitializationTriggers()
ConditionalTriggerExecute(gg_trg_Init_Game)
end

function InitCustomPlayerSlots()
SetPlayerStartLocation(Player(0), 0)
SetPlayerColor(Player(0), ConvertPlayerColor(0))
SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
SetPlayerRaceSelectable(Player(0), false)
SetPlayerController(Player(0), MAP_CONTROL_USER)
SetPlayerStartLocation(Player(1), 1)
SetPlayerColor(Player(1), ConvertPlayerColor(1))
SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
SetPlayerRaceSelectable(Player(1), false)
SetPlayerController(Player(1), MAP_CONTROL_USER)
SetPlayerStartLocation(Player(3), 2)
SetPlayerColor(Player(3), ConvertPlayerColor(3))
SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
SetPlayerRaceSelectable(Player(3), false)
SetPlayerController(Player(3), MAP_CONTROL_USER)
SetPlayerStartLocation(Player(5), 3)
SetPlayerColor(Player(5), ConvertPlayerColor(5))
SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
SetPlayerRaceSelectable(Player(5), false)
SetPlayerController(Player(5), MAP_CONTROL_USER)
SetPlayerStartLocation(Player(6), 4)
SetPlayerColor(Player(6), ConvertPlayerColor(6))
SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
SetPlayerRaceSelectable(Player(6), false)
SetPlayerController(Player(6), MAP_CONTROL_NEUTRAL)
end

function InitCustomTeams()
SetPlayerTeam(Player(0), 0)
SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
SetPlayerTeam(Player(1), 1)
SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
SetPlayerTeam(Player(5), 2)
SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
SetPlayerTeam(Player(3), 3)
SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
SetPlayerTeam(Player(6), 4)
SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
end

function InitAllyPriorities()
SetStartLocPrioCount(0, 2)
SetStartLocPrio(0, 0, 2, MAP_LOC_PRIO_HIGH)
SetStartLocPrio(0, 1, 3, MAP_LOC_PRIO_LOW)
SetStartLocPrioCount(1, 3)
SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
SetStartLocPrioCount(2, 1)
SetStartLocPrio(2, 0, 3, MAP_LOC_PRIO_HIGH)
SetStartLocPrioCount(3, 1)
SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
SetEnemyStartLocPrioCount(4, 4)
SetEnemyStartLocPrio(4, 0, 1, MAP_LOC_PRIO_LOW)
SetEnemyStartLocPrio(4, 1, 2, MAP_LOC_PRIO_LOW)
SetEnemyStartLocPrio(4, 2, 3, MAP_LOC_PRIO_LOW)
end

function main()
local we

SetCameraBounds(-17664.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -17920.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 17664.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 17408.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -17664.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 17408.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 17664.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -17920.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
we = AddWeatherEffect(Rect(-18432.0, -18432.0, 18432.0, 18432.0), FourCC("SNls"))
EnableWeatherEffect(we, true)
NewSoundEnvironment("Default")
SetAmbientDaySound("LordaeronWinterDay")
SetAmbientNightSound("LordaeronWinterNight")
SetMapMusic("Music", true, 0)
CreateRegions()
CreateCameras()
CreateAllUnits()
InitBlizzard()
InitGlobals()
InitCustomTriggers()
RunInitializationTriggers()
end

function config()
SetMapName("TRIGSTR_001")
SetMapDescription("")
SetPlayers(5)
SetTeams(5)
SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
DefineStartLocation(0, -15040.0, 15680.0)
DefineStartLocation(1, -2304.0, -15552.0)
DefineStartLocation(2, -14656.0, 15680.0)
DefineStartLocation(3, -14464.0, 15680.0)
DefineStartLocation(4, -320.0, -13440.0)
InitCustomPlayerSlots()
InitCustomTeams()
InitAllyPriorities()
end

