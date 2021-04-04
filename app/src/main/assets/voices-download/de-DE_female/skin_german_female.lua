-- ----------------------------------------------------------------------------
-- Copyright (C) 2011 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
-- 				Authors: Raul Ferrandez, Fabian TP Riek, Dirk Huppermann
-- ----------------------------------------------------------------------------
--             Voice Skin: german_f

_package_settings = {
	['voice_settings'] = { ["nguidance_trafficlights"] = false },
}

description = ""
output_type = "audio"
speaker = ""
gender = "f"
travel_mode = "1"
language = "German"
marc_code = "ger"
language_id = "3"
id = "3000"
config_file = "de-DE_female/config.lua"
audio_files_path = "de-DE_female/german_female"
audio_files_version = "0.3.0.2014072201"
feature_list = { "metric", "imperial_uk", "imperial_us" }
------------------------------------------------------------------------
client_range = "[ client >= 1.7.0.0 ]"
application_support_list = {
    'IN "iOS_SDK_Core_Hybrid":0.9',
}
platform_support_list = {
    "all",
}
network_provider_support_list = {
	"all",
}
tts_engine_type = { "NONE" }
main_attribute_array = {
	["language_code"] = "de-DE",
	["LocalizedType"] = "menschliche Sprachaufnahme",
	["LocalizedGender"] = "weibliche",
}
language_loc = "Deutsch"
------------------------------------------------------------------------

down = 1
up = 2

maneuver_turns_short = {
    ["NO_TURN"] = {"g5man_001e_alt1", "g5man_001_alt1"},            
    ["KEEP_MIDDLE"] = {"g5man_002e_alt2", "g5man_002_alt2"},        
    ["KEEP_RIGHT"] = {"g5turns_right_002e", "g5turns_right_002"},   
    ["LIGHT_RIGHT"] = {"g5turns_right_003e", "g5turns_right_003"},  
    ["QUITE_RIGHT"] = {"g5turns_right_001e", "g5turns_right_001"},  
    ["HEAVY_RIGHT"] = {"g5turns_right_004e", "g5turns_right_004"},  
    ["RETURN"] = {"g5man_005e_alt1", "g5man_005e_alt1"},            
    ["HEAVY_LEFT"] = {"g5turns_left_004e", "g5turns_left_004"},     
    ["QUITE_LEFT"] = {"g5turns_left_001e", "g5turns_left_001"},     
    ["LIGHT_LEFT"] = {"g5turns_left_003e", "g5turns_left_003"},     
    ["KEEP_LEFT"] = {"g5turns_left_002e", "g5turns_left_002"},      
    ["nil"] = {nil, nil},
    ["UNDEFINED"] = {nil, nil}
}

maneuver_check_short = {
    ["END"] = {"g5ann_001e_alt1", "g5ann_001e_alt1"},                    
    ["STOPOVER"] = {"g5ann_002e_alt1", "g5ann_002e_alt1"},               
    ["JUNCTION"] = {nil, nil},                                           
    ["PASS_JUNCTION"] = {nil, nil},
    ["ROUNDABOUT"] = {"g5mod_005", "g5mod_005"},                         
    ["EXIT_ROUNDABOUT"] = {"g5ext_000e_alt2", "g5ext_000_alt2"},         
    ["UTURN"] = {"g5man_005e_alt1", "g5man_005e_alt1"},                  
    ["ENTER_HIGHWAY"] = {"g5man_008e_alt1", "g5man_008e_alt1"},          
    ["LEAVE_HIGHWAY"] = {"g5ext_000e_alt2", "g5ext_000_alt2"},           
    ["CHANGE_HIGHWAY"] = {"g5man_009e_alt1", "g5man_009e_alt1"},         
    ["CONTINUE_HIGHWAY"] = {nil, nil},
    ["ENTER_URBAN_HIGHWAY"] = {"g5man_008e_alt1", "g5man_008e_alt1"},    
    ["LEAVE_URBAN_HIGHWAY"] = {"g5ext_000e_alt2", "g5ext_000_alt2"},     
    ["CHANGE_URBAN_HIGHWAY"] = {"g5man_009e_alt1", "g5man_009e_alt1"},   
    ["CONTINUE_URBAN_HIGHWAY"] = {nil, nil},
    ["DRIVE_TO_NEAREST_ROAD"] = {"g5serv_001", "g5serv_001"},            
    ["FERRY"] = {"g5man_016e_alt2", "g5man_016_alt2"}                    
}

exit_number_check_short = {
    [1] = {"g5ext_001e_alt","g5ext_001_alt"},           
    [2] = {"g5ext_002e_alt","g5ext_002_alt"},           
    [3] = {"g5ext_003e_alt","g5ext_003_alt"},           
    [4] = {"g5ext_004e_alt","g5ext_004_alt"},           
    [5] = {"g5ext_005e_alt","g5ext_005_alt"},           
    [6] = {"g5ext_006e_alt","g5ext_006_alt"},           
    [7] = {"g5ext_007e_alt","g5ext_007_alt"},           
    [8] = {"g5ext_008e_alt","g5ext_008_alt"},           
    [9] = {"g5ext_009e_alt","g5ext_009_alt"},           
    [10] = {"g5ext_010e_alt","g5ext_010_alt"},          
    [11] = {"g5ext_011e_alt","g5ext_011_alt"},          
    [12] = {"g5ext_012e_alt","g5ext_012_alt"}           
}

distances = {
    [0.10] = "g5num_pt_1",
    [0.20] = "g5num_pt_2",
    [0.25] = "g5num_025_mil",
    [0.30] = "g5num_pt_3",
    [0.40] = "g5num_pt_4",
    [0.50] = "g5num_050_mil",
    [0.60] = "g5num_pt_6",
    [0.70] = "g5num_pt_7",
    [0.75] = "g5num_075_mile_meile",
    [0.80] = "g5num_pt_8",
    [0.90] = "g5num_pt_9",
    [50] = "g5num_050_after_f",
    [100] = "g5num_100_after_f",
    [150] = "g5num_150_after_f",
    [200] = "g5num_200_after_f",
    [250] = "g5num_250_after_f",
    [300] = "g5num_300_after_f",
    [400] = "g5num_400_after_f",
    [500] = "g5num_500_after_f",
    [600] = "g5num_600_after_f",
    [700] = "g5num_700_after_f",
    [800] = "g5num_800_after_f",
    [900] = "g5num_900_after_f",
    [1] = "g5num_001_after_m",
    [2] = "g5num_002_after_f",
    [3] = "g5num_003_after_f",
    [4] = "g5num_004_after_f",
    [5] = "g5num_005_after_f",
    [6] = "g5num_006_after_f",
    [7] = "g5num_007_after_f",
    [8] = "g5num_008_after_f",
    [9] = "g5num_009_after_f",
    [10] = "g5num_010_after_f"
}

unit = {                                                        
    ["MILE"] = {"g5unt_mil_follow_1","g5unt_mil_after_1"},      
    ["YARDS"] = {"g5unt_yd_after_2","g5unt_yd_after_2"},        
    ["KILOMETER"] = {"g5unt_km_follow_1","g5unt_km_after_1"},   
    ["METERS"] = {"g5unt_m_after_2","g5unt_m_after_2"},         
    ["METER"] = {nil, nil},
    ["KILOMETERS"] = {"g5unt_km_follow_1","g5unt_km_after_2"},  
    ["MILES"] = {"g5unt_mil_follow_1e","g5unt_mil_after_2"},    
    ["FEET"] = {"g5unt_ft_after_X","g5unt_ft_after_X"},         
    ["nil"] = {nil, nil},
    ["UNDEFINED"] = {nil, nil}
}

misc = {
    ["beep_sound"] = "beep",
    ["gps_signal_lost_wav"] = "g5war_027e",                     
    ["gps_signal_restored_wav"] = "g5war_010e",
    ["no_gps_signal_wav"] = "g5war_028e",                       
    ["route_recalculation_wav"] = "g5war_012e",                 
    ["the_junction_wav"] = "g5mod_016",
    ["einem_wav"] = "g5num_001_after_m",
    ["einer_wav"] = "g5num_001_after_f",
    ["now_wav"] = "g5mod_007",
    ["destination_wav"] = "g5ann_005e",                         
    ["stopover_wav"] = "g5ann_007e",                            
    ["end_of_street_wav"] = "g5mod_004",
    ["follow_hwy_wav"] = "g5man_003e",
    ["follow_road_e_wav"] = "g5man_002e",
    ["follow_road_wav"] = "g5man_002",
    ["for_wav"] = "g5pre_002_road_km",
    ["roundabout_wav"] = "g5mod_005",
    ["after_wav"] = "g5pre_003",
    ["and_wav"] = "g5con_002",
    ["second_right_wav"] = "g5turns_right_006e_alt1",
    ["second_left_wav"] = "g5turns_left_006e_alt1",
    ["second_right_short_wav"] = "g5turns_right_006e",
    ["second_left_short_wav"] = "g5turns_left_006e",
    ["immediately_wav"] = "g5immediately",
    ["safety_camara_ahead_wav"] = "g5war_035e",
    ["over_speed_limit_wav"] = "g5war_speed_limit_soft4edit9",
    ["traffic_automatic_detour_wav"] = "g5war_018e",
    ["traffic_manual_detour_wav"] = "g5war_017e",
    ["and_then_wav"] = "g5con_001",
    
    ["traffic_light_1"] = "g5mod_003"
}

right = { ["QUITE_RIGHT"] = 0, ["HEAVY_RIGHT"] = 0, ["LIGHT_RIGHT"] = 0 }
left = { ["QUITE_LEFT"] = 0, ["HEAVY_LEFT"] = 0, ["LIGHT_LEFT"] = 0 }
plural_mile = { [0.1] = 0, [0.2] = 0, [0.3] = 0, [0.4] = 0, [0.6] = 0, [0.7] = 0, [0.8] = 0, [0.9] = 0 }

check_files = { maneuver_turns_short, maneuver_check_short, exit_number_check_short, distances, unit, misc }
