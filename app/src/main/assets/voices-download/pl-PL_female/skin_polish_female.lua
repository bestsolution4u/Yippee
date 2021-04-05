-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
-- 				Authors: RFS, Fabian TP Riek, Dirk Huppermann
-- ----------------------------------------------------------------------------
--             Voice Skin: polish_f

_package_settings = {
	['voice_settings'] = { ["nguidance_trafficlights"] = false },
}

description = ""
output_type = "audio"
speaker = ""
gender = "f"
travel_mode = "1"
language = "Polish"
marc_code = "pol"
language_id = "27"
id = "27000"
config_file = "pl-PL_female/config.lua"
audio_files_path = "pl-PL_female/polish_female"
audio_files_version = "0.3.0.2014072201"
feature_list = { "metric", "imperial_uk", "" }
------------------------------------------------------------------------
client_range = "[ client >= 1.7.0.0 ]"
application_support_list = {
    'IN "DriveAndroid_1_Hybrid":0.9',
}
platform_support_list = {
    "all",
}
network_provider_support_list = {
	"all",
}
tts_engine_type = { "NONE" }
main_attribute_array = {
	["language_code"] = "pl-PL",
	["LocalizedType"] = "nagrania ludzkiego głosu",
	["LocalizedGender"] = "żeński",
}
language_loc = "polski"
------------------------------------------------------------------------

down = 1
up = 2

maneuver_turns = {
    ["NO_TURN"] = {"g5man_001e", "g5man_001"},
    ["KEEP_MIDDLE"] = {"g5man_009e", "g5man_009"},
    ["KEEP_RIGHT"] = {"g5tur_001e", "g5tur_001"},
    ["LIGHT_RIGHT"] = {"g5tur_002e", "g5tur_002"},
    ["QUITE_RIGHT"] = {"g5tur_003e", "g5tur_003"},
    ["HEAVY_RIGHT"] = {"g5tur_004e", "g5tur_004"},
    ["RETURN"] = {"g5man_004e", "g5man_004"},
    ["HEAVY_LEFT"] = {"g5tul_004e", "g5tul_004"},
    ["QUITE_LEFT"] = {"g5tul_003e", "g5tul_003"},
    ["LIGHT_LEFT"] = {"g5tul_002e", "g5tul_002"},
    ["KEEP_LEFT"] = {"g5tul_001e", "g5tul_001"},
    ["nil"] = {nil, nil},
    ["UNDEFINED"] = {nil, nil}
}

maneuver_check = {
    ["END"] = {"g5ann_004", "g5ann_004"},                          
    ["STOPOVER"] = {"g5ann_005", "g5ann_005"},                     
    ["JUNCTION"] = {nil, nil},                                     
    ["PASS_JUNCTION"] = {nil, nil},                                
    ["ROUNDABOUT"] = {"g5mod_005", "g5mod_005"},                   
    ["EXIT_ROUNDABOUT"] = {"g5ext_000e", "g5ext_000"},             
    ["UTURN"] = {"g5man_004e", "g5man_004"},                       
    ["ENTER_HIGHWAY"] = {"g5man_005e", "g5man_005"},
    ["LEAVE_HIGHWAY"] = {"g5man_007e", "g5man_007"},               
    ["CHANGE_HIGHWAY"] = {"g5man_006e", "g5man_006"},
    ["CONTINUE_HIGHWAY"] = {nil, nil},
    ["ENTER_URBAN_HIGHWAY"] = {"g5man_005e", "g5man_005"},
    ["LEAVE_URBAN_HIGHWAY"] = {"g5ext_000e", "g5ext_000"},         
    ["CHANGE_URBAN_HIGHWAY"] = {"g5man_006e", "g5man_006"},
    ["CONTINUE_URBAN_HIGHWAY"] = {nil, nil},
    ["DRIVE_TO_NEAREST_ROAD"] = {"g5serv_001", "g5serv_001"},      
    ["FERRY"] = {"g5serv_004e", "g5serv_004"}
}


exit_number_check = {
    [1] = {"g5ext_001e","g5ext_001"},                   
    [2] = {"g5ext_002e","g5ext_002"},                   
    [3] = {"g5ext_003e","g5ext_003"},                   
    [4] = {"g5ext_004e","g5ext_004"},                   
    [5] = {"g5ext_005e","g5ext_005"},                   
    [6] = {"g5ext_006e","g5ext_006"},                   
    [7] = {"g5ext_007e","g5ext_007"},                   
    [8] = {"g5ext_008e","g5ext_008"},                   
    [9] = {"g5ext_009e","g5ext_009"},                   
    [10] = {"g5ext_010e","g5ext_010"},                  
    [11] = {"g5ext_011e","g5ext_011"},                  
    [12] = {"g5ext_012e","g5ext_012"}                   
}

distances = {
    [50] = "g5num_050_after",
    [100] = "g5num_100_after",
    [150] = "g5num_150_after",
    [200] = "g5num_200_after",
    [250] = "g5num_250_after",
    [300] = "g5num_300_after",
    [400] = "g5num_400_after",
    [500] = "g5num_500_after",
    [600] = "g5num_600_after",
    [700] = "g5num_700_after",
    [800] = "g5num_800_after",
    [900] = "g5num_900_after",
    [1] = "g5num_001_after_m",
    [2] = "g5num_002_after_m",
    [3] = "g5num_003_after",
    [4] = "g5num_004_after",
    [5] = "g5num_005_after",
    [6] = "g5num_006_after",
    [7] = "g5num_007_after",
    [8] = "g5num_008_after",
    [9] = "g5num_009_after",
    [10] = "g5num_010_after"
}


distances_follow = {
    [50] = nil,
    [100] = nil,
    [150] = nil,
    [200] = nil,
    [250] = nil,
    [300] = nil,
    [400] = nil,
    [500] = nil,
    [600] = nil,
    [700] = nil,
    [800] = nil,
    [900] = nil,
    [1] = nil,
    [2] = "g5num_002_follow_f",
    [3] = "g5num_003_follow",
    [4] = "g5num_004_follow",
    [5] = "g5num_005_follow",
    [6] = "g5num_006_follow",
    [7] = "g5num_007_follow",
    [8] = "g5num_008_follow",
    [9] = "g5num_009_follow",
    [10] = "g5num_010_follow"
}


unit_after = {                                    
    ["MILE"] = {"g5unt_mil_sng_after","g5unt_mil_sng_after"},
    ["YARDS"] = {"g5unt_yd_plu_after","g5unt_yd_plu_after"},
    ["KILOMETER"] = {"g5unt_km_sng_after","g5unt_km_sng_after"},
    ["METERS"] = {"g5unt_m_plu_after","g5unt_m_plu_after"},
    ["METER"] = {nil, nil},
    ["KILOMETERS"] = {"g5unt_km_plu_after","g5unt_km_plu_after"},
    ["MILES"] = {"g5unt_mil_plu_after","g5unt_mil_plu_after"},
    ["nil"] = {nil, nil},
    ["UNDEFINED"] = {nil, nil}
}


unit_follow = {                                    
    ["MILE"] = {nil, nil},
    ["YARDS"] = {nil, nil},
    ["KILOMETER"] = {nil, nil},
    ["METERS"] = {nil, nil},
    ["METER"] = {nil, nil},
    ["KILOMETERS"] = {"g5unt_km_plu_follow2_e","g5unt_km_plu_follow5_e"}, 
    ["MILES"] = {"g5unt_mil_plu_follow2_e","g5unt_mil_plu_follow5_e"},   
    ["nil"] = {nil, nil},
    ["UNDEFINED"] = {nil, nil}
}

misc = {
    ["beep_sound"] = "beep",
    ["gps_signal_lost_wav"] = "g5war_027e",  
    ["gps_signal_restored_wav"] = "g5war_010e",
    --["no_gps_signal_wav"] = "g5war_009e",
    ["route_recalculation_wav"] = "g5war_012e",
    ["now_wav"] = "g5mod_006",
    ["destination_wav"] = "g5ann_001",
    ["stopover_wav"] = "g5ann_005",
    ["end_of_street_wav"] = "g5mod_004",
    ["follow_hwy_wav"] = "g5man_008e",
    ["follow_road_e_wav"] = "g5man_002e",
    ["follow_road_wav"] = "g5man_002",
    ["for_wav"] = "g5pre_002",
    ["one_km_wav"] = "g5num_001_after_m",
    ["one_mile_wav"] = "g5num_001_after_f",
    ["kilometry_wav"] = "g5unt_km_plu_follow2_e",
    ["kilometrow_wav"] = "g5unt_km_plu_follow5_e",
    ["mile_wav"] = "g5unt_mil_plu_follow2_e",
    ["mil_wav"] = "g5unt_mil_plu_follow5_e",
    ["roundabout_wav"] = "g5mod_005",
    ["after_wav"] = "g5pre_003",
    ["and_wav"] = "g5con_002",
    ["the_junction_wav"] = "g5mod_017",



    ["safety_camara_ahead_wav"] = "g5war_037e",
    ["over_speed_limit_wav"] = "g5war_speed_limit_soft4edit9",
    ["traffic_automatic_detour_wav"] = "g5war_018e",
    ["traffic_manual_detour_wav"] = "g5war_017e",
    ["and_then_wav"] = "g5con_001",
    
    ["traffic_light_1"] = "g5mod_003"
}

right = { ["QUITE_RIGHT"] = 0, ["HEAVY_RIGHT"] = 0, ["LIGHT_RIGHT"] = 0 }
left = { ["QUITE_LEFT"] = 0, ["HEAVY_LEFT"] = 0, ["LIGHT_LEFT"] = 0 }

check_files = { maneuver_turns, maneuver_check, exit_number_check, distances, distances_follow, unit_after, unit_follow, misc }
