-- ----------------------------------------------------------------------------
-- Copyright (C) 2009 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Authors: Dirk Huppermann, Raul Ferrandez Salvador
-- ----------------------------------------------------------------------------

base_voice_guidance_settings = {
	gender = "female",
	streetnames = "true",
	signposts = "true",
	nguidance = "true",
	trafficlights = "true",
	phoneticdata = "true",
	speedwarning = "true",
	safetyspotwarning = "true",
	trafficwarning = "true",
	gpswarning = "false",
}


function check_voice_guidance_settings()

	if voice_settings == nil then
		voice_settings = {}
	end

  for k,v in pairs(base_voice_guidance_settings) do
		if voice_settings[k] ~= nil then
			voice_settings[k] = string.lower(tostring(voice_settings[k]))
			if not (voice_settings[k] == "true" or voice_settings[k] == "false") then
				if not ( k == "gender" and (voice_settings[k] == "female" or voice_settings[k] == "male") ) then
					voice_settings[k] = v
				end
			end
		else
			voice_settings[k] = v
		end
	end

	for k,v in pairs(voice_settings) do
		if v == "true" then
			voice_settings[k] = true
		elseif v == "false" then
			voice_settings[k] = false
		end
	end

  
	
	
	
	
	
	
	
	
	use_gpswarning = voice_settings["gpswarning"]

end


function get_common_code( )

    check_voice_guidance_settings()

    if maneuver_1 ~= nil then
        maneuver_1.dist_to_unit = maneuver_1.dist_to_unit_string
    end

    if maneuver_2 ~= nil then
        maneuver_2.dist_to_unit = maneuver_2.dist_to_unit_string
    end

    is_double_command()

    
    if trigger == "COMMAND" or trigger == "REMINDER1" or trigger == "REMINDER2" or trigger =="ANNOUNCEMENT" then
        process_maneuver_triggers( )
    end

    
    if use_gpswarning == true and (trigger == "GPS_SIGNAL_LOST" or trigger == "GPS_SIGNAL_RESTORED" or trigger == "NO_GPS_SIGNAL" or trigger == "ROUTE_RECALCULATION") then
        process_gps_triggers( )
    end

     
    if trigger == "SAFETYSPOT_WARNER" then
       table.insert(result_list, misc[ "beep_sound" ] )
        if above_speed_limit == true then
            table.insert(result_list, misc[ "safety_camara_ahead_wav" ] )
        end
    end

    
    if trigger == "SPEED_WARNER" then
        table.insert(result_list, misc[ "over_speed_limit_wav" ] )
    end

    if trigger == "TRAFFIC_WARNER" then
        if avoidance_mode == "AUTOMATIC_AVOIDANCE" then
            table.insert(result_list, misc[ "traffic_automatic_detour_wav" ] )
        elseif avoidance_mode == "MANUAL_AVOIDANCE" then
            table.insert(result_list, misc[ "traffic_manual_detour_wav" ] )
        end
    end

    
    if trigger == "TRAFFIC_DETOUR_FAILED" then
        table.insert(result_list, misc[ "no_detour_possible" ] )
    end

    
    if trigger == "PEDESTRIAN_COMMAND" then
        if maneuver_1.id == "STOPOVER" then
            table.insert(result_list, misc[ "stopover_wav" ] )
        elseif maneuver_1.id == "END" then
            table.insert(result_list, misc[ "destination_wav" ] )
        else
            table.insert(result_list, misc[ "beep_sound" ] )
        end
    end

end

function process_gps_triggers()
    if guidance_mode ~= "pedestrian" then
        if trigger == "GPS_SIGNAL_LOST" then
            
            table.insert( result_list, misc[ "gps_signal_lost_wav" ])
        end

        if trigger == "GPS_SIGNAL_RESTORED" then
            
            table.insert( result_list, misc[ "gps_signal_restored_wav" ] )
        end
    end

 
        
 
 

    if trigger == "ROUTE_RECALCULATION" then
        
        table.insert( result_list, misc[ "route_recalculation_wav" ] )
    end
end

function is_double_command()

    double_command = false
    if ( maneuver_set_count == 2 ) then
        double_command = true
    end

end
