-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Authors: Fabian TP Riek, Dirk Huppermann
-- ----------------------------------------------------------------------------



-------------------------------------------------------------------------------

--			 this script with variables declared above)










-------------------------------------------------------------------------------

function get_text_output( )		
	if output_type == "tts" then
		nonTTS = false
		preparations( )
		if getManeuverGroup then
			get_maneuver_group( )
		elseif usePT then
			get_public_transport( )
		else
			select_sentence_1( )
		end
		if double_command and not usePT then
			select_sentence_2( )
		end

		set_result_tts( )
		cleanup( )
		second_cmd_trigger = ""
		maneuver_1 = nil
		maneuver_2 = nil
	end
end

function get_voicefiles( )		
	if output_type == "audio" then
		nonTTS = true
		preparations( )
		select_sentence_1( )
		if double_command then
			select_sentence_2( )
		end
		set_result_wave( )
		cleanup( )
		second_cmd_trigger = ""
		maneuver_1 = nil
		maneuver_2 = nil
	end
end

function preparations( )

	-------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------

	distance_1 = ""			
	usedUnit_1 = ""			
	tts_street_1 = ""		
	tts_street_1_a = ""		
	tts_street_1_phoneme = ""		
	tts_signpost_1 = ""		
	tts_street_2 = ""		
	tts_signpost_2 = ""		
	command_id_1 = ""		
	command_id_2 = ""		
	exit_no_roundabout = ""	
	head_orientation = ""	
	ped_turn_no = ""		
	exit_number = ""		
	EXIST_result_sentence_2 = false
	waypoint_1 = ""
	stop_count = 0
	station_type = ""
	station_name = ""
	line_name = ""
	line_destination = ""
	station_company_name = ""
	transit_type = ""
	time_to_wait = 0
	next_station_name = ""

	second_cmd_trigger = ""	

	nG_cmd_1 = ""			
	nG_cmd_2 = ""			
	-------------------------------------------------------------------------------

	check_voice_guidance_settings()

	if trigger == "PEDESTRIAN_ANNOUNCEMENT" or trigger == "PEDESTRIAN_COMMAND" then
		guidance_mode = "pedestrian"
	end
	if maneuver_1 == nil then
		maneuver = base_maneuver_table
		maneuver_1 = base_maneuver_table
	elseif maneuver_1.id == "STOPOVER" and voice_settings["announce_stopover"] == false then
		maneuver = base_maneuver_table
		maneuver_1 = base_maneuver_table
	else
		maneuver = maneuver_1
	end
	if maneuver_2 == nil then
		nextManeuver = base_maneuver_table
		maneuver_2 = base_maneuver_table
	elseif maneuver_2.id == "STOPOVER" and voice_settings["announce_stopover"] == false then
		nextManeuver = base_maneuver_table
		maneuver_2 = base_maneuver_table
		maneuver_set_count = 1
	else
		nextManeuver = maneuver_2
	end

	if maneuver.road_class ~= nil then
		road_class = maneuver.road_class
	end

	if gps_location == nil then
		gps_location = { ["route"] = "", ["street_label"] = "", ["fow"] = "" }
	end

	useHTML = false
	usePT = false
	if trigger == "WEB" then
		if instruction_format == "html" then
			useHTML = true
		end
		if guidance_mode == "publicTransport" and ( maneuver_1.id == "ENTER_STATION" or maneuver_1.id == "ENTER_LINE"
		  or maneuver_1.id == "LEAVE_LINE" or maneuver_1.id == "LEAVE_STATION" or maneuver_1.id == "CHANGE_LINE" ) then
			usePT = true
		end
	end

	if maneuver.dist_to_unit_string == nil then
		maneuver.dist_to_unit_string = maneuver.dist_to_unit
		nextManeuver.dist_to_unit_string = nextManeuver.dist_to_unit
	end

	check_maneuver_table( maneuver )	
	check_maneuver_table( nextManeuver )




--~ 	if ( string.lower(maneuver.ng_language) == string.lower(main_attribute_array.ngLangCode) ) and use_nguidance then
--~ 		maneuver.nguidance = nG_prepositions[maneuver.ng_preposition].." "..maneuver.ng_name
--~ 		nextManeuver.nguidance = nG_prepositions[nextManeuver.ng_preposition].." "..nextManeuver.ng_name
--~ 	else
--~ 		maneuver.nguidance = ""
--~ 		nextManeuver.nguidance = ""
--~ 	end
--~ 		maneuver.nguidance = ""
--~ 		nextManeuver.nguidance = ""


    if ( maneuver_set_count == 2 ) then	    
        double_command = true
    else
		double_command = false
    end

	dgttsp_rules()

end

function check_maneuver_table( maneuver )
	for k,v in pairs(base_maneuver_table) do
		if maneuver[ k ] == nil or maneuver[ k ] == "" then
			maneuver[ k ] = v
		end
	end
end

function cleanup( )
	distance_1 = ""			
	usedUnit_1 = ""			
	tts_street_1 = ""		
	tts_signpost_1 = ""		
	tts_street_2 = ""		
	tts_signpost_2 = ""		
	command_id_1 = ""		
	command_id_2 = ""		
	exit_no_roundabout = "" 
	head_orientation = ""	
	ped_turn_no = ""		
	exit_number = ""		
	waypoint_1 = ""
end

function expand_dgttsp(token, result_sentence)

	if trigger ~= "WEB" then
		function nocase (s)	
		  s = string.gsub(s, "%a", function (c)
				return string.format("[%s%s]", string.lower(c),
											   string.upper(c))
			  end)
		  return s
		end

		token, count = string.gsub( token, "\/", " !BREAK! " )	

		
		--token, count = string.gsub( token, "Xi%s([A-Z])", "/+'si/+ %1" )

		token = " "..token.." "

		token = lang_spec_abbr(token, result_sentence)

		for word, sign in string.gfind(token, "(%a+)([%p ])") do
			word2 = nil
			if sign ~= " " then
				word2 = word..sign
			end

			
			if abbr_cs[word] ~= nil then
				token, count = string.gsub( token, " "..word.." ", " "..abbr_cs[word].." " )
				if word2 ~= nil then
					token, count = string.gsub( token, " "..word2.." ", " "..abbr_cs[word].." " )
				end
			end

			expr1 = nocase(word)
			if word2 ~= nil then
				expr2 = expr1.."[\\"..sign.."]"
			end
			word = string.lower(word)

			
			if abbr_begin[word] ~= nil then
				token, count = string.gsub( token, "^ "..expr1.." ", abbr_begin[word].." " )
				if word2 ~= nil then
					token, count = string.gsub( token, "^ "..expr2.." ", abbr_begin[word].." " )
				end
			end

			
			if abbr_end[word] ~= nil then
				token, count = string.gsub( token, " "..expr1.." $", " "..abbr_end[word] )
				if word2 ~= nil then
					token, count = string.gsub( token, " "..expr2.." $", " "..abbr_end[word] )
				end
			end

			
			if abbr_misc[word] ~= nil then
				token, count = string.gsub( token, " "..expr1.." ", " "..abbr_misc[word].." " )
				if word2 ~= nil then
					token, count = string.gsub( token, " "..expr2.." ", " "..abbr_misc[word].." " )
				end
			end
		end
	end
	return token
end

function select_sentence_1( )

	result_id = {"0","0","0","0","0","0","0","0"}	

	if trigger == "ROUTE_RECALCULATION" and use_gpswarning then
		result_id = {"w","0","0","0","0","0","0","0"}	

	elseif ( trigger == "COMMAND" or trigger == "PEDESTRIAN_COMMAND" ) and maneuver.id == "END" then
		if maneuver.extra_string == "RIGHT" then
			result_id = {"y","p","0","0","0","0","0","0"}	
		elseif maneuver.extra_string == "LEFT" then
			result_id = {"y","q","0","0","0","0","0","0"}	
		else
			result_id = {"y","0","0","0","0","0","0","0"}	
		end

	elseif ( trigger == "COMMAND" or trigger == "PEDESTRIAN_COMMAND" ) and maneuver.id == "STOPOVER" then
		if maneuver.extra_string == "RIGHT" then
			result_id = {"z","r","0","0","0","0","0","0"}	
		elseif maneuver.extra_string == "LEFT" then
			result_id = {"z","s","0","0","0","0","0","0"}	
		else
			result_id = {"z","0","0","0","0","0","0","0"}	
		end

	elseif ( trigger == "PEDESTRIAN_COMMAND" and nonTTS ) then
		result_id = {"x","0","0","0","0","0","0","0"}	
		double_command = false

	elseif trigger == "WEB" and ( maneuver.id == "UNDEFINED" or maneuver.id == "HEAD_TO" ) then
		distance_1, usedUnit_1 = checkMultiPlurals( maneuver.dist_to_unit_string, unit_follow[ maneuver.dist_unit ], true )
		maneuver.id = "HEAD_TO"
		if maneuver.description ~= nil and maneuver.description ~= "" then
			set_result_id( 2 , "w" )
			waypoint_1 = maneuver.description
		end
		process_ped_1st_cmd( )

	elseif guidance_mode ~= "pedestrian" then
		process_car_1st_cmd( )	

	elseif not nonTTS then
		process_ped_1st_cmd( )	

	else
		double_command = false

	end

	command_id_1 = result_id[1]..result_id[2]..result_id[3]..result_id[4]..result_id[5]..result_id[6]..result_id[7]..result_id[8]
	filter_double_street_on_street_signpost_combination( )
	sentence_1 = set_result( command_id_1 )

	cleanup( )

end

function select_sentence_2( )

	result_id = {"0","0","0","0","0","0","0","0"}	

	if guidance_mode ~= "pedestrian" then
		process_car_2nd_cmd( maneuver, nextManeuver, use_dgttsp_0, use_dgttsp_1 )	

	else
		process_ped_2nd_cmd( nextManeuver )	

	end

	command_id_2 = result_id[1]..result_id[2]..result_id[3]..result_id[4]..result_id[5]..result_id[6]..result_id[7]..result_id[8]
	filter_double_street_on_street_signpost_combination( )
	sentence_2 = set_result( command_id_2 )

	cleanup( )

end

function process_car_1st_cmd( )

    if trigger == "GPS_SIGNAL_LOST" and use_gpswarning then
		result_id = {"p","0","0","0","0","0","0","0"}	

	elseif trigger == "GPS_SIGNAL_RESTORED" and use_gpswarning then
		result_id = {"q","0","0","0","0","0","0","0"}	

    elseif trigger == "SAFETYSPOT_WARNER" and use_safetyspotwarning then
        if above_speed_limit then
        	result_id = {"v","0","0","0","0","0","0","0"}	
        else
			result_id = {"x","0","0","0","0","0","0","0"}	
        end

    elseif trigger == "SPEED_WARNER" and use_speedwarning then
    	result_id = {"r","0","0","0","0","0","0","0"}	

    elseif trigger == "TRAFFIC_WARNER" and use_trafficwarning then
        if avoidance_mode == "AUTOMATIC_AVOIDANCE" then
        	result_id = {"s","0","0","0","0","0","0","0"}	
        elseif avoidance_mode == "MANUAL_AVOIDANCE" then
        	result_id = {"t","0","0","0","0","0","0","0"}	
        end

    elseif trigger == "TRAFFIC_DETOUR_FAILED" and use_trafficwarning then
    	result_id = {"u","0","0","0","0","0","0","0"}	

    
    elseif trigger == "COMMAND" then
        process_car_final_command( maneuver, use_dgttsp_0 )

    elseif trigger == "REMINDER1" or trigger == "REMINDER2" then
        process_car_reminders( maneuver, use_dgttsp_0 )

    elseif trigger == "ANNOUNCEMENT" or trigger == "WEB" then
        process_car_announcement( maneuver, use_dgttsp_0 )

	end

end

function process_car_2nd_cmd( firstManeuver, secondManeuver, useSignpost, useSignpostNext )

	if second_cmd_trigger == "1" then

		junction_turn, maneuver_command = get_maneuver( "car", secondManeuver )

		if secondManeuver.dist_to <= 30
		  and secondManeuver.id ~= "END"
		  and secondManeuver.id ~= "ROUNDABOUT"
		  and secondManeuver.id ~= "STOPOVER" then
			set_result_id( 1 , "j" )	
		else
			set_result_id( 1 , "h" )	
		end

		if secondManeuver.id == "JUNCTION" then

			if right[ secondManeuver.turn ] ~= nil and secondManeuver.exits_right == 1 then
				set_result_id( 4 , "y" )	
			elseif left[ secondManeuver.turn ] ~= nil and secondManeuver.exits_left == 1 then
				set_result_id( 4 , "z" )	
			else
				set_result_id( 4 , junction_turn )
			end

		else
			
			if highway[ secondManeuver.id ] ~= nil then
				if secondManeuver.turn ~= "UNDEFINED" then
					maneuver_command = nil
				end
			elseif secondManeuver.id == "ROUNDABOUT" or secondManeuver.id == "EXIT_ROUNDABOUT" then
				junction_turn = nil
			end
			if junction_turn ~= nil then
				set_result_id( 4 , junction_turn )
			end
			if maneuver_command ~= nil then
				set_result_id( 5 , maneuver_command )
			end
			if secondManeuver.id == "ROUNDABOUT" then
				roundabout_car( secondManeuver )
			end
		end
		if (secondManeuver.id == "ENTER_HIGHWAY" or secondManeuver.id == "ENTER_URBAN_HIGHWAY"
		 or secondManeuver.id == "ENTER_HIGHWAY_FROM_LEFT" or secondManeuver.id == "ENTER_URBAN_HIGHWAY_FROM_LEFT"
		  or secondManeuver.id == "ENTER_HIGHWAY_FROM_RIGHT" or secondManeuver.id == "ENTER_URBAN_HIGHWAY_FROM_RIGHT") and not nonTTS then
			tts_street_1, tts_signpost_1 = insert_signpost_enter_hwy( secondManeuver, useSignpostNext )
		elseif secondManeuver.id == "ROUNDABOUT" then
			add_route_after_roundabout( secondManeuver, useSignpostNext )
		elseif not nonTTS then
			tts_street_1 = add_street_name_or_route( secondManeuver, useSignpostNext )
		end

	elseif second_cmd_trigger == "2" then

		set_result_id( 1 , "h" )	
		junction_turn, maneuver_command = get_maneuver( "car", firstManeuver )
		set_result_id( 4 , maneuver_command )
		if not nonTTS then
			tts_street_1, tts_signpost_1 = insert_signpost_enter_hwy( firstManeuver, useSignpost )
		end

	elseif second_cmd_trigger == "3" then

		second_command_leave_or_continue_hwy( secondManeuver )

		if ( secondManeuver.signpost_direction == "" )
		  and ( firstManeuver.next_route ~= "" )
		  and ( secondManeuver.id ~= "END" and secondManeuver.id ~= "STOPOVER" ) and use_streetnames and use_signposts then
			set_result_id( 8 , "x" )	
			tts_street_2 = secondManeuver.next_route
			tts_signpost_2 = firstManeuver.signpost_direction
		elseif (( secondManeuver.signpost_direction ~= "" )
		  or ( secondManeuver.next_route ~= "" )) and ( secondManeuver.id ~= "END" and secondManeuver.id ~= "STOPOVER" ) and use_streetnames and use_signposts then
			set_result_id( 8 , "x" )	
			tts_street_2 = secondManeuver.next_route
			tts_signpost_2 = secondManeuver.signpost_direction
		end

	elseif second_cmd_trigger == "4" then

		second_command_leave_or_continue_hwy( secondManeuver )
		if use_streetnames and use_signposts then
			set_result_id( 8 , "x" )	
			tts_street_2 = firstManeuver.next_route
			tts_signpost_2 = firstManeuver.signpost_direction
		end

	elseif second_cmd_trigger == "5" then

		second_command_leave_or_continue_hwy( secondManeuver )

	end

end

function process_ped_1st_cmd( )
	
	if trigger == "PEDESTRIAN_ANNOUNCEMENT" or trigger == "WEB" then
        process_pedestrian_announcement( maneuver )

    elseif trigger == "PEDESTRIAN_COMMAND" then
        process_pedestrian_final_command( maneuver )
    end
end

function process_ped_2nd_cmd( secondManeuver )

	if second_cmd_trigger == "1" then
        junction_turn, maneuver_command = get_maneuver( "pedestrian", secondManeuver )
		distance_1, usedUnit_1 = include_distance ( secondManeuver, false )
        if secondManeuver.id == "ROUNDABOUT" then
            roundabout_pedestrian( secondManeuver )
        elseif junction_turn ~= nil and junction_turn ~= "0" then
			set_result_id( 3 , junction_turn )
        else
			set_result_id( 4 , maneuver_command )
        end
	end

end

function dgttsp_rules()
--------------------------------------------------------------------------

--------------------------------------------------------------------------

    if road_class == "STREET" then	

        if ( trigger == "ANNOUNCEMENT" and maneuver_1.dist_to <= 500 ) or trigger == "REMINDER1" then
            use_dgttsp_0 = true
            use_dgttsp_1 = false
        elseif trigger == "COMMAND" and double_command then
            use_dgttsp_0 = false
            use_dgttsp_1 = true
        else
            use_dgttsp_0 = false
            use_dgttsp_1 = false
        end

    else 							

        if ( trigger == "ANNOUNCEMENT" and  maneuver_1.dist_to <= 650  ) or trigger == "REMINDER1" then
            use_dgttsp_0 = true
            use_dgttsp_1 = false

        elseif trigger == "COMMAND" and double_command then
            use_dgttsp_0 = false
            use_dgttsp_1 = true
        else
            use_dgttsp_0 = false
            use_dgttsp_1 = false
        end

    end
    if trigger == "WEB" then
		use_dgttsp_0 = true
		use_dgttsp_1 = true
    end
    if nonTTS then
		use_dgttsp_0 = false
		use_dgttsp_1 = false
		end

		if maneuver_1.id == "UTURN" then
			 use_dgttsp_0 = false
			 use_dgttsp_1 = false
		end
		if maneuver_2.id == "UTURN" then
			 
			 use_dgttsp_1 = false
		end
end

function process_car_final_command( maneuver, useSignpost )

	if maneuver.id == "PASS_JUNCTION" then
		set_result_id( 1 , "b" )	
		set_result_id( 2 , "z" )	
		maneuver_car( maneuver, useSignpost )

    elseif maneuver.id ~= "ROUNDABOUT"
    and maneuver.id ~= "DRIVE_TO_NEAREST_ROAD" then
		set_result_id( 1 , "a" )	
		maneuver_car( maneuver, useSignpost )
    else
		maneuver_car( maneuver, useSignpost )
    end

end

function process_car_reminders( maneuver, useSignpost )

	if maneuver.extra_string == "EOS" and trigger == "REMINDER1" then
		set_result_id( 1 , "c" )	
	else
		distance_1, usedUnit_1 = include_distance( maneuver, false )
	end
	maneuver_car( maneuver, useSignpost )

end

function process_car_announcement( maneuver, useSignpost )

    if road_class == "HIGHWAY" and ( ( maneuver.dist_to >= 10000 and maneuver.dist_unit == "KILOMETERS" ) or ( maneuver.dist_to >= 16000 and maneuver.dist_unit == "MILES" ) ) and trigger ~= "WEB" then
		set_result_id( 1 , "d" )	
		distance_1, usedUnit_1 = include_distance( maneuver, true )
		if nonTTS then
		elseif ( gps_location.fow == "SLIPROAD" )then
			tts_street_1 = maneuver.route
        elseif ( gps_location.fow == "MOTORWAY"  )then
			tts_street_1 = gps_location.route
        else
			tts_street_1 = gps_location.street_label
        end
    elseif road_class == "STREET" and maneuver.dist_to >= 3000 and trigger ~= "WEB" then
        set_result_id( 1 , "e" )	
        distance_1, usedUnit_1 = include_distance( maneuver, true )
    else
        distance_1, usedUnit_1 = include_distance( maneuver, false )
        maneuver_car( maneuver, useSignpost )
    end

end

function process_pedestrian_announcement( firstManeuver )

    if firstManeuver.id == "HEAD_TO" then
        process_head_to_command( firstManeuver )
    else
        distance_1, usedUnit_1 = include_distance( firstManeuver, false )
        add_pedestrian_maneuvers_to_table( firstManeuver )
    end

end

function process_pedestrian_final_command( firstManeuver )

    if firstManeuver.id == "HEAD_TO" then
        process_head_to_command( firstManeuver )
    else
	    if firstManeuver.id ~= "END" and firstManeuver.id ~= "STOPOVER" then
			set_result_id( 1 , "a" )	
		end
		add_pedestrian_maneuvers_to_table( firstManeuver )
    end

end

function include_distance( maneuver, isFollow )

	if maneuver == maneuver_2 and guidance_mode == "pedestrian" then
		set_result_id( 1 , "l" )	
	elseif not isFollow then
		set_result_id( 1 , "b" )	
	end
	set_result_id( 2 , "l" )	

	if trigger == "WEB" then
		isFollow = true
	end

	if isFollow then
		distance = maneuver.dist_to_unit_string
		usedUnit = unit_follow[ maneuver.dist_unit ]
	else
		if maneuver.dist_unit == "KILOMETER" then
			if maneuver.dist_to_unit_string == "1" and not nonTTS then
				distance = dist["a"]	
				usedUnit = unit_after["UNDEFINED"]
			else
				distance = maneuver.dist_to_unit_string
				usedUnit = unit_after[ maneuver.dist_unit ]
			end
		elseif maneuver.dist_unit == "MILE" then
			if maneuver.dist_to_unit_string == "0.25" then
				distance = dist["c"]	
				usedUnit = unit_after["UNDEFINED"]
			elseif maneuver.dist_to_unit_string == "0.50" then
				distance = dist["d"]	
				usedUnit = unit_after["UNDEFINED"]
			elseif maneuver.dist_to_unit_string == "0.75" then
				distance = dist["e"]	
				usedUnit = unit_after["UNDEFINED"]
			elseif maneuver.dist_to_unit_string == "1" and not nonTTS then
				distance = dist["b"]	
				usedUnit = unit_after["UNDEFINED"]
			else
				distance = maneuver.dist_to_unit_string
				usedUnit = unit_after[ maneuver.dist_unit ]
			end
		else
			distance = maneuver.dist_to_unit_string
			usedUnit = unit_after[ maneuver.dist_unit ]
		end
	end

	
	distance, usedUnit = checkMultiPlurals( distance, usedUnit, isFollow )

	return distance, usedUnit

end

function maneuver_car( maneuver, useSignpost )

    junction_turn, maneuver_command = get_maneuver( "car", maneuver )

    if maneuver.id == "ENTER_HIGHWAY" or maneuver.id == "ENTER_URBAN_HIGHWAY"
     or maneuver.id == "ENTER_HIGHWAY_FROM_LEFT" or maneuver.id == "ENTER_URBAN_HIGHWAY_FROM_LEFT"
      or maneuver.id == "ENTER_HIGHWAY_FROM_RIGHT" or maneuver.id == "ENTER_URBAN_HIGHWAY_FROM_RIGHT" then
        set_result_id( 4 , junction_turn )

        if not double_command and junction_turn ~= nil and junction_turn ~= "0" then
			double_command = true
			second_cmd_trigger = "2"
		else
			set_result_id( 5 , maneuver_command )
			if not nonTTS then
				tts_street_1, tts_signpost_1 = insert_signpost_enter_hwy( maneuver, useSignpost )
			end
        end

    elseif maneuver.id == "END"
     or maneuver.id == "STOPOVER" then
		set_result_id( 4 , maneuver_command )
		if trigger == "WEB" then
			if maneuver.description ~= nil and maneuver.description ~= "" then
				set_result_id( 4 , "a" )
				set_result_id( 7 , "w" )  
				waypoint_1 = maneuver.description
			end
			if maneuver.extra_string == "RIGHT" then
				set_result_id( 8 , "r" )  
			elseif maneuver.extra_string == "LEFT" then
				set_result_id( 8 , "l" )  
			end
		end
		if not nonTTS then
			tts_street_1 = add_street_name_or_route( maneuver, useSignpost )
        end

    elseif maneuver.id == "DRIVE_TO_NEAREST_ROAD"
     or maneuver.id == "FERRY"
     or maneuver.id == "EXIT_ROUNDABOUT" then
        set_result_id( 4 , maneuver_command )
        if not double_command and not nonTTS then
            tts_street_1 = add_street_name_or_route( maneuver, useSignpost )
        end

    elseif maneuver.id == "ROUNDABOUT" then

        set_result_id( 4 , maneuver_command )
        if maneuver.extra_integer > 0 then
			set_result_id( 6 , "z" )	
			if double_command and nonTTS then
				exit_no_roundabout = exit_number_roundabout[ maneuver.extra_integer ][2]
			elseif nonTTS then
				exit_no_roundabout = exit_number_roundabout[ maneuver.extra_integer ][1]
			else
				exit_no_roundabout = exit_number_roundabout[ maneuver.extra_integer ]
			end
			if not nonTTS then
				add_route_after_roundabout( maneuver, useSignpost )
			end
		else
			set_result_id( 6 , "y" )	
		end

    elseif maneuver.id == "UTURN" then
		set_result_id( 4 , maneuver_command )

	elseif maneuver.id == "ROAD_NAME_CHANGED" then
		if not nonTTS and use_streetnames and useSignpost then
			set_result_id( 3 , "d" )  
			tts_street_1 = maneuver.next_street
		end
		double_command = false

	elseif maneuver.id == "PASS_ROUNDABOUT" then
		if maneuver.extra_integer > 1 then
			set_result_id( 3 , "e" )  
			exit_number = maneuver.extra_integer
		else
			set_result_id( 3 , "f" )  
		end
		if not nonTTS and maneuver.next_street ~= "" and use_streetnames and useSignpost then
			set_result_id( 6 , "f" )  
			tts_street_1 = maneuver.next_street
		end
		double_command = false

    elseif road_class == "HIGHWAY" then
        set_result_id( 4 , junction_turn )
        insert_signpost_leave_or_continue_hwy( maneuver, useSignpost )

    else
		set_result_id( 4 , junction_turn )
		if not nonTTS then
			tts_street_1 = add_street_name_or_route( maneuver, useSignpost )
		end
    end

	if ( double_command and road_class ~= "HIGHWAY" and second_cmd_trigger == "" ) then
		second_cmd_trigger = "1"
	end

end

function get_maneuver( mode, maneuver )

    if mode == "car" then
        maneuver_turns = maneuver_turns_car
    else
        maneuver_turns = maneuver_turns_pedestrian
    end

    if maneuver ~= nil then
        junction_turn = maneuver_turns[ maneuver.turn ]
        maneuver_command = maneuver_check[ maneuver.id ]
    end

    return junction_turn, maneuver_command

end

function insert_signpost_enter_hwy( maneuver, useSignpost )

    if useSignpost then
        if maneuver.next_route ~= "" and use_streetnames then
			set_result_id( 6 , "a" )	
			tts_street = maneuver.next_route
        elseif maneuver.next_street ~= "" and use_streetnames then
			set_result_id( 6 , "a" )	
			tts_street = maneuver.next_street
        end
        if maneuver.signpost_direction ~= "" and use_signposts then
			set_result_id( 7 , "c" )	
			tts_signpost = maneuver.signpost_direction
        end
    end

	if tts_street == nil then
		tts_street = ""
	end
	if tts_signpost == nil then
		tts_signpost = ""
    end

	return tts_street, tts_signpost

end

function add_street_name_or_route( maneuver, useSignpost )

	if useSignpost or maneuver.id == "EXIT_ROUNDABOUT" then
        if maneuver.id == "END" or maneuver.id == "STOPOVER" and use_streetnames then
            if ( maneuver.street ~= "" ) then
				set_result_id( 6 , "b" )	
				tts_street = maneuver.street
            elseif ( maneuver.route ~= "" ) then
				set_result_id( 6 , "b" )	
				tts_street = maneuver.route
            end
        elseif maneuver.id == "JUNCTION" and maneuver.turn == "NO_TURN" and trigger == "WEB" then
			if ( maneuver.signpost_direction ~= "" ) and use_signposts then
				set_result_id( 6 , "c" )	
                tts_street = maneuver.signpost_direction
            elseif ( maneuver.next_street ~= "" ) and ( maneuver.street == maneuver.next_street ) then
				set_result_id( 6 , "f" )	
                tts_street = maneuver.next_street
            elseif ( maneuver.next_street ~= "" ) and use_streetnames then
				set_result_id( 6 , "d" )	
                tts_street = maneuver.next_street
            elseif ( maneuver.next_route ~= "" ) and use_streetnames then
				set_result_id( 6 , "d" )	
                tts_street = maneuver.next_route
            end
        elseif road_class == "HIGHWAY" and ( maneuver.signpost_direction ~= "" ) and use_signposts then
			set_result_id( 6 , "c" )	
			tts_street = maneuver.signpost_direction
        elseif road_class == "STREET" and maneuver.id == "FERRY" then
            if ( maneuver.signpost_direction ~= "" ) and use_signposts then
				set_result_id( 6 , "c" )	
                tts_street = maneuver.signpost_direction
            elseif ( maneuver.next_street ~= "" ) and use_signposts then
				set_result_id( 6 , "c" )	
                tts_street = maneuver.next_street
            elseif ( maneuver.next_route ~= "" ) and use_signposts then
				set_result_id( 6 , "c" )	
                tts_street = maneuver.next_route
            end
        elseif ( road_class == "STREET" ) or ( trigger == "WEB" ) then
            if ( maneuver.signpost_direction ~= "" ) and use_signposts then
				set_result_id( 6 , "c" )	
                tts_street = maneuver.signpost_direction
            elseif ( maneuver.next_street ~= "" ) and use_streetnames then
				set_result_id( 6 , "d" )	
                tts_street = maneuver.next_street
            elseif ( maneuver.next_route ~= "" ) and use_streetnames then
				set_result_id( 6 , "d" )	
                tts_street = maneuver.next_route
            end
        end
    end
    if tts_street == nil then
		tts_street = ""
	end

    return tts_street

end

function insert_signpost_leave_or_continue_hwy( firstManeuver, useSignpost )   

    if ( firstManeuver.signpost_exit_number ~= "" or firstManeuver.signpost_exit_name ~= "" ) and useSignpost and ( firstManeuver.turn ~= "KEEP_MIDDLE" or trigger ~= "WEB" ) then
		if firstManeuver.id ~= "CONTINUE_HIGHWAY" and firstManeuver.id ~= "CONTINUE_URBAN_HIGHWAY" then
			set_result_id( 6 , "e" )	
			if firstManeuver.signpost_exit_number ~= "" then
				exit_number = firstManeuver.signpost_exit_number
			end
			if ( firstManeuver.signpost_exit_name ~= "" ) and use_signposts then
				set_result_id( 7 , "d" )	
				tts_signpost_1 = firstManeuver.signpost_exit_name
			end
        end

        if not double_command then

            if ( firstManeuver.next_route ~= "" ) or ( firstManeuver.signpost_direction ~= "" ) then
                if ( firstManeuver.route ~= firstManeuver.next_route ) and ( firstManeuver.next_route ~= "" ) and use_streetnames and use_signposts then
                    set_result_id( 8 , "x" )	
                    tts_street_2 = firstManeuver.next_route
                    tts_signpost_2 = firstManeuver.signpost_direction
                elseif ( firstManeuver.route == firstManeuver.next_route ) and ( firstManeuver.next_route ~= "" ) and use_streetnames then
					tts_street_2 = firstManeuver.next_route
					if firstManeuver.signpost_direction ~= "" and firstManeuver.signpost_direction ~= firstManeuver.signpost_exit_name and use_signposts then
						set_result_id( 8 , "z" )	
						tts_signpost_2 = firstManeuver.signpost_direction
					else
						set_result_id( 8 , "y" )	
					end
                elseif firstManeuver.signpost_direction ~= "" and firstManeuver.signpost_direction ~= firstManeuver.signpost_exit_name and use_streetnames and use_signposts then
					set_result_id( 8 , "x" )	
					tts_signpost_2 = firstManeuver.signpost_direction
                end
            end

        else 	
			second_cmd_trigger = "3"
        end

    elseif ( firstManeuver.signpost_direction ~= "" ) and useSignpost then
        if double_command == true then
			second_cmd_trigger = "4"
        elseif use_streetnames and use_signposts then
			if trigger == "WEB" then
				set_result_id( 7 , "h" )	
			end
			set_result_id( 8 , "x" )	
			tts_street_2 = firstManeuver.next_route
			tts_signpost_2 = firstManeuver.signpost_direction
        end
    else
        if not double_command and (firstManeuver.id == "LEAVE_HIGHWAY" or firstManeuver.id == "LEAVE_URBAN_HIGHWAY") then
            if junction_turn ~= nil and junction_turn ~= "0" then
				set_result_id( 7 , "f" )	
            end
            set_result_id( 8 , maneuver_check[ firstManeuver.id ] )
        elseif double_command then
            if (firstManeuver.id == "LEAVE_HIGHWAY" or firstManeuver.id == "LEAVE_URBAN_HIGHWAY") then
				set_result_id( 8 , maneuver_check[ firstManeuver.id ] )
            end
            second_cmd_trigger = "5"
        end
    end

end

function add_route_after_roundabout( maneuver, useSignpost )

    if useSignpost then
		if ( maneuver.signpost_direction ~= "" ) and use_signposts then
			set_result_id( 7 , "c" )	
			tts_signpost_1 = maneuver.signpost_direction
		elseif ( maneuver.next_street ~= "" ) and use_streetnames then
			set_result_id( 7 , "b" )	
			tts_street_1 = maneuver.next_street
		elseif ( maneuver.next_route ~= "" ) and use_streetnames then
			set_result_id( 7 , "b" )	
			tts_street_1 = maneuver.next_route
		end
    end

end

function second_command_leave_or_continue_hwy( maneuver )

    junction_turn, maneuver_command = get_maneuver( "car", maneuver )
	set_result_id( 1 , "h" )	
    if maneuver.id == "ROUNDABOUT" then
		set_result_id( 5 , maneuver_command )
        roundabout_car( maneuver )
    else
        if junction_turn ~= nil and junction_turn ~= "0" then
			set_result_id( 4 , junction_turn )
		else
            set_result_id( 4 , maneuver_command )
        end
    end

end

function roundabout_car( maneuver )

	if maneuver.extra_integer > 0 then
		set_result_id( 6 , "z" )	
		if nonTTS then
			exit_no_roundabout = exit_number_roundabout[ maneuver.extra_integer ][1]
		else
			exit_no_roundabout = exit_number_roundabout[ maneuver.extra_integer ]
		end
	else
		set_result_id( 6 , "y" )	
	end

end

function process_head_to_command( firstManeuver )

    if firstManeuver.heading_orientation ~= "" then
		set_result_id( 1 , "f" )	
		head_orientation = orientation[ firstManeuver.heading_orientation ]
		if trigger == "WEB" and firstManeuver.street ~= nil and firstManeuver.street ~= "" then
			set_result_id( 6 , "b" )	
			tts_street_1 = firstManeuver.street
        elseif gps_location.street_label ~= "" and gps_location.street_label ~= nil and use_streetnames then
			set_result_id( 6 , "b" )	
			tts_street_1 = gps_location.street_label
		end
        if trigger == "WEB" and firstManeuver.next_street ~= nil and firstManeuver.next_street ~= "" then
			set_result_id( 7 , "c" )	
            tts_signpost_1 = firstManeuver.next_street
        elseif firstManeuver.extra_string ~= "" and trigger ~= "WEB"
            and firstManeuver.extra_string ~= gps_location.street_label and use_signposts then
            set_result_id( 7 , "c" )	
            tts_signpost_1 = firstManeuver.extra_string
        elseif firstManeuver.next_street ~= ""
          and firstManeuver.next_street ~= gps_location.street_label
          and pedestrian_vc [ firstManeuver.next_street ] == nil and use_signposts then
            set_result_id( 7 , "c" )	
			tts_signpost_1 = firstManeuver.next_street
        elseif firstManeuver.next_route ~= ""
         and firstManeuver.next_route ~= firstManeuver.route
         and pedestrian_vc [ firstManeuver.next_street ] == nil and use_signposts then
            set_result_id( 7 , "c" )	
			tts_signpost_1 = firstManeuver.next_route
        end
    end

end

function add_pedestrian_maneuvers_to_table( firstManeuver )

    junction_turn, maneuver_command = get_maneuver( "pedestrian", firstManeuver )

    if firstManeuver.id == "END"
     or firstManeuver.id == "STOPOVER"
     or firstManeuver.id == "UTURN"
     or firstManeuver.id == "FERRY" then
		set_result_id( 4 , maneuver_command )
		if trigger == "WEB" and firstManeuver.id == "END" then
			if firstManeuver.extra_string == "RIGHT" then
				set_result_id( 8 , "r" )  
			elseif firstManeuver.extra_string == "LEFT" then
				set_result_id( 8 , "l" )  
			end
			tts_street_1 = add_street_name_or_route( firstManeuver, use_dgttsp_0 )
		end

    elseif firstManeuver.id == "EXIT_ROUNDABOUT" then
        exiting_roundabout_pedestrian( firstManeuver )
    elseif firstManeuver.id == "ROUNDABOUT" then
        roundabout_pedestrian( firstManeuver )
    else
		set_result_id( 3 , junction_turn )
        add_pedestrian_vc_or_junction( firstManeuver )
    end

    if double_command == true and firstManeuver.id ~= "ROUNDABOUT" then
        second_cmd_trigger = "1"
    end

end

function exiting_roundabout_pedestrian( firstManeuver )

    if firstManeuver.turn == "QUITE_RIGHT" then
		set_result_id( 3 , maneuver_turns_pedestrian[ "QUITE_RIGHT" ] )
    elseif firstManeuver.turn == "QUITE_LEFT" then
		set_result_id( 3 , maneuver_turns_pedestrian[ "QUITE_LEFT" ] )
    else
		set_result_id( 3 , maneuver_turns_pedestrian[ "TURN" ] )
    end
    if firstManeuver.next_street_is_walkway == 1
      and ( firstManeuver.next_street == "" ) then
		set_result_id( 6 , "g" )	
    elseif ((firstManeuver.next_street ~= "") and (pedestrian_vc[ firstManeuver.next_street ] == nil)) and use_streetnames then
		set_result_id( 6 , "d" )	
		tts_street_1 = firstManeuver.next_street
    end

end

function roundabout_pedestrian( maneuver )

    if maneuver.turn == "QUITE_RIGHT" then
		set_result_id( 3 , "a" )	
    elseif maneuver.turn == "QUITE_LEFT" then
		set_result_id( 3 , "b" )	
    else
		set_result_id( 3 , "c" )	
    end

    
    if trigger == "PEDESTRIAN_COMMAND" or trigger == "WEB" then
        if maneuver == maneuver_1 then

            if maneuver.extra_integer < 4 then	
				ped_turn_no = turn_number_ped[ maneuver.extra_integer ]
				set_result_id( 6 , "j" )	
            elseif (( maneuver.next_street ~= "" ) and (pedestrian_vc[ maneuver.next_street ] == nil)) or ( maneuver.next_route ~= "" ) and use_streetnames then
                set_result_id( 6 , "h" )	
            end

            if maneuver.next_street ~= "" and pedestrian_vc[ maneuver.next_street ] == nil then
				tts_street_1 = maneuver.next_street
        	elseif maneuver.next_route ~= "" then
				tts_street_1 = maneuver.next_route
    	    end
        end
    end
end

function add_pedestrian_vc_or_junction( firstManeuver )

    if pedestrian_vc[ firstManeuver.next_street ] == nil then
        
        if keep[ firstManeuver.turn ] == nil then   
            if firstManeuver.next_street ~= "" and use_streetnames then
                if firstManeuver.next_street == gps_location.street_label then
					set_result_id( 6 , "f" )	
					tts_street_1 = firstManeuver.next_street
                else
					set_result_id( 6 , "d" )	
					tts_street_1 = firstManeuver.next_street
                end
            elseif firstManeuver.next_route ~= "" and use_streetnames then
                if firstManeuver.next_route == gps_location.street_label then
					set_result_id( 6 , "f" )	
					tts_street_1 = firstManeuver.next_route
                else
					set_result_id( 6 , "d" )	
					tts_street_1 = firstManeuver.next_route
                end
            elseif firstManeuver.next_street_is_walkway == 1 and firstManeuver.street_is_walkway == 0 then
				set_result_id( 6 , "g" )	
            end
        elseif firstManeuver.turn == "NO_TURN" and firstManeuver.id == "JUNCTION" and trigger == "WEB" then
			if firstManeuver.next_street == firstManeuver.street and firstManeuver.next_street ~= "" then
				set_result_id( 6 , "f" )	
				tts_street_1 = firstManeuver.next_street
			elseif firstManeuver.next_street ~= "" then
				set_result_id( 6 , "d" )	
				tts_street_1 = firstManeuver.next_street
            elseif firstManeuver.next_street_is_walkway == 1 and firstManeuver.street_is_walkway == 0 then
				set_result_id( 6 , "g" )	
            end
        elseif double_command == false and firstManeuver.next_street ~= "" and use_streetnames then
			set_result_id( 6 , "a" )	
			tts_street_1 = firstManeuver.next_street
        end
    
    elseif pedestrian_vc[ firstManeuver.next_street ] ~= pedestrian_vc[ firstManeuver.street ] then
        if junction_turn == nil or double_command then
			set_result_id( 6 , pedestrian_vc[ firstManeuver.next_street ] )
        else
			set_result_id( 7 , pedestrian_vc[ firstManeuver.next_street ] )
		end
    end

end



base_maneuver_table = {
	id = "", 
	turn = "", 
	type = "", 
	exits_left = 0,
	exits_right = 0,
	dist_to = 0,
	dist_to_unit_string = "",
	dist_unit = "",
	extra_integer = 0,
	extra_string = "",
	street = "",
	street_phoneme = "",
	street_is_walkway = 0,
	next_street_is_walkway = 0,
	next_street = "",
	next_street_phoneme = "",
	route = "",
	route_phoneme = "",
	next_route = "",
	next_route_phoneme = "",
	signpost_direction = "",
	signpost_direction_phoneme = "",
	signpost_exit_number = "" ,
	signpost_exit_number_phoneme = "" ,
	signpost_exit_name = "",
	signpost_exit_name_phoneme = "",
	heading_orientation = "",

	ng_type = "", 
	
	ng_preposition = "NONE",
	ng_language = "",
	ng_name = "",
	ng_name_p = {},
	
	traffic_light_int = 0,
	
--	phonetic_lang_code = "",
}

base_voice_guidance_settings = {
	gender = "female",
	streetnames = "true",
	signposts = "true",
	nguidance = "true",
	phoneticdata = "true",
	speedwarning = "true",
	safetyspotwarning = "true",
	gpswarning = "true",
	trafficwarning = "true",
	announce_stopover = "false",
	
	nguidance = "true", 
	nguidance_trafficlights = "true",
	nguidance_junction = "true", 
	nguidance_phoneme = "true", 
	nguidance_stop_sign = "false",
}

maneuver_check = {
    ["END"] = "a",                         
    ["STOPOVER"] = "b",                    
    ["JUNCTION"] = "0",                    
    ["PASS_JUNCTION"] = "0",               
    ["ROUNDABOUT"] = "c",                  
    ["EXIT_ROUNDABOUT"] = "d",             
    ["UTURN"] = "e",                       
    ["ENTER_HIGHWAY"] = "f",               
    ["ENTER_HIGHWAY_FROM_RIGHT"] = "f",               
    ["ENTER_HIGHWAY_FROM_LEFT"] = "f",               
    ["LEAVE_HIGHWAY"] = "g",               
    ["CONTINUE_HIGHWAY"] = "h",            
    ["ENTER_URBAN_HIGHWAY"] = "i",         
    ["ENTER_URBAN_HIGHWAY_FROM_RIGHT"] = "i",         
    ["ENTER_URBAN_HIGHWAY_FROM_LEFT"] = "i",         
    ["LEAVE_URBAN_HIGHWAY"] = "j",         
    ["CONTINUE_URBAN_HIGHWAY"] = "k",      
    ["DRIVE_TO_NEAREST_ROAD"] = "l",       
    ["FERRY"] = "m",  					   
    ["PASS_ROUNDABOUT"] = "0",
    ["ROAD_NAME_CHANGED"] = "0",
    ["nil"] = "0",
    ["UNDEFINED"] = "0"
}

maneuver_turns_car = {
    ["NO_TURN"] = "n",						
    ["KEEP_MIDDLE"] = "o",					
    ["KEEP_RIGHT"] = "p",					
    ["LIGHT_RIGHT"] = "q",					
    ["QUITE_RIGHT"] = "r",					
    ["HEAVY_RIGHT"] = "s",					
    ["RETURN"] = "t",						
    ["HEAVY_LEFT"] = "u",					
    ["QUITE_LEFT"] = "v",					
    ["LIGHT_LEFT"] = "w",					
    ["KEEP_LEFT"] = "x",					
	["nil"] = "0",
    ["UNDEFINED"] = "0"
}

maneuver_turns_pedestrian = {
    ["NO_TURN"] = "n",						
    ["KEEP_MIDDLE"] = "o",					
    ["KEEP_RIGHT"] = "p",					
    ["LIGHT_RIGHT"] = "q",					
    ["QUITE_RIGHT"] = "r",					
    ["HEAVY_RIGHT"] = "s",					
    ["RETURN"] = "t",						
    ["HEAVY_LEFT"] = "u",					
    ["QUITE_LEFT"] = "v",					
    ["LIGHT_LEFT"] = "w",					
    ["KEEP_LEFT"] = "x",					
    ["TURN"] = "y",							
    ["nil"] = "0",
    ["UNDEFINED"] = "0"
}

pedestrian_vc = {
    ["BUILDING"] = "o",				
    ["SQUARE"] = "p",				
    ["PARK"] = "q",					
    ["STAIRS"] = "r",				
    ["ELEVATOR"] = "s",				
    ["ESCALATOR"] = "t",			
    ["nil"] = "0",
    ["UNDEFINED"] = "0"
}

right = { ["QUITE_RIGHT"] = 0, ["HEAVY_RIGHT"] = 0, ["LIGHT_RIGHT"] = 0 }
left = { ["QUITE_LEFT"] = 0, ["HEAVY_LEFT"] = 0, ["LIGHT_LEFT"] = 0 }
keep = { ["KEEP_LEFT"] = 0, ["KEEP_RIGHT"] = 0, ["KEEP_MIDDLE"] = 0, ["NO_TURN"] = 0 }
highway = { ["ENTER_HIGHWAY"] = 0, ["ENTER_HIGHWAY_FROM_RIGHT"] = 0, ["ENTER_HIGHWAY_FROM_LEFT"] = 0, ["ENTER_URBAN_HIGHWAY"] = 0, ["ENTER_URBAN_HIGHWAY_FROM_RIGHT"] = 0, ["ENTER_URBAN_HIGHWAY_FROM_LEFT"] = 0, ["LEAVE_HIGHWAY"] = 0, ["LEAVE_URBAN_HIGHWAY"] = 0 }

transit_type_list = {
	["BUS_EXPRESS"] = {"BUS","STOP"},
	["BUS_PUBLIC"] = {"BUS","STOP"},
	["BUS_TOURISTIC"] = {"BUS","STOP"},
	["BUS_INTERCITY"] = {"BUS","STATION"},
	["RAIL_METRO"] = {"RAIL","STATION"},
	["RAIL_LIGHT"] = {"RAIL","STATION"},
	["RAIL_REGIONAL"] = {"RAIL","STATION"},
	["TRAIN_REGIONAL"] = {"TRAIN","STATION"},
	["TRAIN_INTERCITY"] = {"TRAIN","STATION"},
	["TRAIN_HIGH_SPEED"] = {"TRAIN","STATION"},
	["MONORAIL"] = {"MONORAIL","STATION"},
	["AERIAL"] = {"AERIAL","STATION"},
	["INCLINED"] = {"INCLINED","STATION"},
	["WATER"] = {"WATER","STATION"},
}

function set_result_id( token , state )
	if token ~= nil then
		if state ~= nil then
			result_id[token] = state
		else
			result_id[token] = "0"
		end
	end
end

function add_phonetic_data( name )
	phoneme = ""
	if name ~= nil and name ~= "" then
		if name == maneuver.next_street then
			phoneme = maneuver.next_street_phoneme
		elseif name == maneuver.next_route then
			phoneme = maneuver.next_route_phoneme
		elseif name == maneuver.street then
			phoneme = maneuver.street_phoneme
		elseif name == maneuver.route then
			phoneme = maneuver.route_phoneme
		elseif name == maneuver.signpost_direction then
			phoneme = maneuver.signpost_direction_phoneme
		elseif name == maneuver.signpost_exit_name then
			phoneme = maneuver.signpost_exit_name_phoneme
		elseif name == maneuver.signpost_exit_number then
			phoneme = maneuver.signpost_exit_number_phoneme
		elseif name == gps_location.street_label then
			phoneme = gps_location.street_label_phoneme
		elseif name == gps_location.route then
			phoneme = gps_location.route_phoneme
		elseif name == gps_location.street then
			phoneme = gps_location.street_phoneme
		elseif name == nextManeuver.next_street then
			phoneme = nextManeuver.next_street_phoneme
		elseif name == nextManeuver.next_route then
			phoneme = nextManeuver.next_route_phoneme
		elseif name == nextManeuver.street then
			phoneme = nextManeuver.street_phoneme
		elseif name == nextManeuver.route then
			phoneme = nextManeuver.route_phoneme
		elseif name == nextManeuver.signpost_direction then
			phoneme = nextManeuver.signpost_direction_phoneme
		elseif name == nextManeuver.signpost_exit_name then
			phoneme = nextManeuver.signpost_exit_name_phoneme
		elseif name == nextManeuver.signpost_exit_number then
			phoneme = nextManeuver.signpost_exit_number_phoneme
		else
			phoneme = ""
		end
	end
	return phoneme
end

function add_street_article( name, sentence )
	if name ~= nil and street_article ~= nil then
		s_article = nil
		fc = 0
		for a_1,b_1 in pairs(street_article) do
			name = string.lower(name)
			sentence = string.lower(sentence)
			if string.find(sentence, a_1) then
				for a_2,b_2 in pairs(b_1) do
					foo = false
					for a_3,b_3 in pairs(b_2) do
						if string.find(name, b_3) then
							s_article = a_2
							foo = true
						end
					end
					if foo then
						fc = fc+1
					end
				end
			end
		end
		if fc == 1 then
			s_article = " "..s_article.." "
		elseif fc == 0 then
			for a_2,b_2 in pairs(street_article["baseArticle"]) do
				foo = false
				for a_3,b_3 in pairs(b_2) do
					article_2 = string.lower(b_3)
					if string.find(name, article_2) then
						s_article = a_2
						foo = true
					end
				end
				if foo then
					fc = fc+1
				end
			end
			if fc == 1 then
				s_article = " "..s_article.." "
			else
				s_article = ""
			end
		end
	end

	if s_article == nil then
		s_article = ""
	end

	return s_article

end

function check_voice_guidance_settings()

	if voice_settings == nil then
		voice_settings = {}
	end

	
	if _package_settings and _package_settings.voice_settings then
		for k,v in pairs(_package_settings.voice_settings) do
			base_voice_guidance_settings[k] = v
		end
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

	if gender == "f" then
		voice_settings["gender"] = "female"
	elseif gender == "m" then
		voice_settings["gender"] = "male"
	end

  
	for k,v in pairs(voice_settings) do
		if v == "true" then
			voice_settings[k] = true
		elseif v == "false" then
			voice_settings[k] = false
		end
	end

	
	use_streetnames = voice_settings["streetnames"]
	use_signposts = voice_settings["signposts"]
	use_nguidance = voice_settings["nguidance"]
	use_trafficlights = voice_settings["trafficlights"]
	use_phoneticdata = voice_settings["phoneticdata"]
	use_speedwarning = voice_settings["speedwarning"]
	use_safetyspotwarning = voice_settings["safetyspotwarning"]
	use_trafficwarning = voice_settings["trafficwarning"]
	use_gpswarning = voice_settings["gpswarning"]

end

function get_itinerary_output()

	result_sentence = ""
	cleanup( )
	preparations( )

	if instruction_format == "html" then
		useHTML = true
	end

	if itinerary ~= nil then
		if itinerary_warnings[itinerary.id] ~= nil then
			result_sentence = set_result( "ITINERARY" )
		end
	end

	table.insert( result_list, result_sentence)

end

function get_public_transport()

	result_id = {"p","t","0","0","0","0","0","0"}	

	if maneuver_1.id == "ENTER_STATION" then
		set_result_id(3, "a")
		
		if maneuver_1.company_name ~= "" and maneuver_1.company_name ~= nil then
			station_company_name = maneuver_1.company_name
		elseif maneuver_1.transit_type ~= "" and maneuver_1.transit_type ~= nil then
			if transit_type_list[maneuver_1.transit_type][1] ~= nil and transit_types ~= nil then
				station_company_name = transit_types[transit_type_list[maneuver_1.transit_type][1]]
			end
		end
		if maneuver_1.transit_type ~= "" and maneuver_1.transit_type ~= nil then
			if transit_type_list[maneuver_1.transit_type][2] ~= nil and transit_types ~= nil then
				station_type = transit_types[transit_type_list[maneuver_1.transit_type][2]]
			end
			if transit_type_list[maneuver_1.transit_type][1] ~= nil and transit_types ~= nil then
				transit_type = transit_types[transit_type_list[maneuver_1.transit_type][1]]
			end
		end
		
		if maneuver_1.station_name ~= "" and maneuver_1.station_name ~= nil then
			station_name = maneuver_1.station_name
		end
		
		if maneuver_1.line_name ~= "" and maneuver_1.line_name ~= nil then
			set_result_id(4, "a")
			line_name = maneuver_1.line_name
		else
			set_result_id(4, "b")
		end
		
		if maneuver_1.line_destination ~= "" and maneuver_1.line_destination ~= nil then
			set_result_id(5, "a")
			line_destination = maneuver_1.line_destination
		end

	elseif maneuver_1.id == "ENTER_LINE" then
		set_result_id(3, "b")
		
		if maneuver_1.line_name ~= "" and maneuver_1.line_name ~= nil then
			set_result_id(4, "a")
			line_name = maneuver_1.line_name
		else
			set_result_id(4, "b")
		end
		
		if maneuver_1.line_destination ~= "" and maneuver_1.line_destination ~= nil then
			set_result_id(5, "a")
			line_destination = maneuver_1.line_destination
		end

	elseif maneuver_1.id == "LEAVE_LINE" then
		set_result_id(3, "c")
		
		if maneuver_1.station_name ~= "" and maneuver_1.station_name ~= nil then
			station_name = maneuver_1.station_name
		end
		
		if maneuver_1.line_name ~= "" and maneuver_1.line_name ~= nil then
			set_result_id(4, "a")
			line_name = maneuver_1.line_name
		else
			set_result_id(4, "b")
		end
	elseif maneuver_1.id == "LEAVE_STATION" then
		set_result_id(3, "d")
		
		if maneuver_1.station_name ~= "" and maneuver_1.station_name ~= nil then
			station_name = maneuver_1.station_name
		end
		
		if maneuver_1.line_name ~= "" and maneuver_1.line_name ~= nil then
			set_result_id(4, "a")
			line_name = maneuver_1.line_name
		else
			set_result_id(4, "b")
		end
	elseif maneuver_1.id == "CHANGE_LINE" then
		set_result_id(3, "e")
		
		if maneuver_1.station_name ~= "" and maneuver_1.station_name ~= nil then
			station_name = maneuver_1.station_name
		else
			set_result_id(3, "0")
		end
		
		if maneuver_1.line_name ~= "" and maneuver_1.line_name ~= nil then
			set_result_id(4, "a")
			line_name = maneuver_1.line_name
		else
			set_result_id(4, "b")
		end
		if maneuver_1.line_destination ~= "" and maneuver_1.line_destination ~= nil then
			set_result_id(5, "a")
			line_destination = maneuver_1.line_destination
		end
	end

	command_id_1 = result_id[1]..result_id[2]..result_id[3]..result_id[4]..result_id[5]..result_id[6]..result_id[7]..result_id[8]
	filter_double_street_on_street_signpost_combination( )
	sentence_1 = set_result( command_id_1 )

	if maneuver_1.stop_count ~= 0 and maneuver_1.stop_count ~= nil and ( maneuver_1.id == "ENTER_STATION" or maneuver_1.id == "ENTER_LINE" or maneuver_1.id =="CHANGE_LINE" ) then
		stop_count = maneuver_1.stop_count
		if maneuver_1.stop_count > 1 then
			station_type = transit_types[transit_type_list[maneuver_1.transit_type][2].."S"]
		else
			station_type = transit_types[transit_type_list[maneuver_1.transit_type][2]]
		end
		pt_sentence_2 = set_result( "pt00000a" )
	else
		pt_sentence_2 = nil
	end

end

function get_maneuver_group_output()

	getManeuverGroup = true
	get_text_output()
	getManeuverGroup = false

end

function get_maneuver_group()

	guidance_mode = "publicTransport"

	result_id = {"p","t","0","0","0","0","0","0"}	

	group_types = {
		["drive"] = "a",
		["pedestrian"] = "b",
		["pedestrian_walk_to"] = "c",
		["pedestrian_get_off_and_arrive"] = "d",
		["pedestrian_get_off_and_walk_to"] = "e",
		["public_transport_take_and_get_out"] = "f",
		["public_transport_take_and_change"] = "g",
	}

	group_instruction_type = {
		["summary"] = "a",
		["arrival"] = "b",
		["wait"] = "c",
	}

	set_result_id( 5, group_types[maneuver_group.maneuver_group_type] )
	set_result_id( 6, group_instruction_type[maneuver_group.maneuver_group_instruction_type] )

	if ( maneuver_group.maneuver_group_type == "public_transport_take_and_get_out" or maneuver_group.maneuver_group_type == "public_transport_take_and_change" )
	  and ( maneuver_group.line_destination == nil or maneuver_group.line_destination == "" ) and ( maneuver_group.maneuver_group_instruction_type == "summary" ) then
		set_result_id( 6, "d" )
	end

	if ( maneuver_group.maneuver_group_type == "drive" or maneuver_group.maneuver_group_type == "pedestrian" or maneuver_group.maneuver_group_type == "pedestrian_get_off_and_arrive" )
	  and ( maneuver_group.street == nil or maneuver_group.street == "" ) and ( maneuver_group.maneuver_group_instruction_type == "arrival" ) then
		set_result_id( 6, "d" )
	end

	if maneuver_group.street ~= nil then
		tts_street_1 = maneuver_group.street
	else
		tts_street_1 = ""
	end

	if maneuver_group.station_name ~= nil then
		station_name = maneuver_group.station_name
	else
		station_name = ""
	end

	if maneuver_group.transit_type ~= nil then
		if transit_type_list[maneuver_group.transit_type][1] ~= nil and transit_types ~= nil then
			transit_type = transit_types[transit_type_list[maneuver_group.transit_type][1]]
		else
			transit_type = ""
		end
	else
		transit_type = ""
	end

	if maneuver_group.line_name ~= nil then
		line_name = maneuver_group.line_name
	else
		line_name = ""
	end

	if maneuver_group.line_destination ~= nil then
		line_destination = maneuver_group.line_destination
	else
		line_destination = ""
	end

	if maneuver_group.next_station_name ~= nil then
		next_station_name = maneuver_group.next_station_name
	else
		next_station_name = ""
	end

	if maneuver_group.company_short_name ~= nil then
		station_company_name = maneuver_group.company_short_name
	else
		station_company_name = ""
	end

	if maneuver_group.time_to_wait ~= nil then
		time_to_wait = tostring(maneuver_group.time_to_wait)
	else
		time_to_wait = "0"
	end

	command_id_1 = result_id[1]..result_id[2]..result_id[3]..result_id[4]..result_id[5]..result_id[6]..result_id[7]..result_id[8]
	filter_double_street_on_street_signpost_combination( )
	sentence_1 = set_result( command_id_1 )

end


function escape_pattern_string( text )
  
  
  
  
  
  return (text:gsub('%%', '%%%%')
			   :gsub('%^', '%%%^')
			   :gsub('%$', '%%%$')
			   :gsub('%(', '%%%(')
			   :gsub('%)', '%%%)')
			   :gsub('%.', '%%%.')
			   :gsub('%[', '%%%[')
			   :gsub('%]', '%%%]')
			   :gsub('%*', '%%%*')
			   :gsub('%+', '%%%+')
			   :gsub('%-', '%%%-')
			   :gsub('%?', '%%%?'))
end

function is_street_in_signpost( street, signpost )

    if street == "" or signpost == "" then
		return false
	end

	
	pattern = escape_pattern_string( street )
	return string.find(signpost, pattern)

end

function filter_double_street_on_street_signpost_combination( )
	if result_id[8] == "x" --towards <STREET_2> <SIGNPOST_2>
		and is_street_in_signpost( tts_street_2, tts_signpost_2 ) then
			tts_street_2 = ""
	end

	if result_id[6] == "a" 
		and result_id[7] == "c" --towards <SIGNPOST_2>
		and is_street_in_signpost( tts_street_1, tts_signpost_1 )
	then
		result_id[6] = "0" 
		tts_street_1 = ""
	end

end





function build_streetname( street_name, r_sentence, phoneme_string_builder )
	if street_name == "" or street_name == nil then
		return ""
	end

	article = add_street_article( street_name, r_sentence )
	phoneme = add_phonetic_data( street_name )
	name = expand_dgttsp( street_name, r_sentence )

	return article .. phoneme_string_builder( name, phoneme )
end

function build_signpost( signpost_name, r_sentence, phoneme_string_builder )
	if signpost_name == "" or signpost_name == nil then
		return ""
	end

	phoneme = add_phonetic_data( signpost_name )
	name = expand_dgttsp( signpost_name, r_sentence )

	return phoneme_string_builder( name, phoneme )
end



function filter_natural_guidance( maneuver )

	if voice_settings["nguidance"] == false
		or string.lower(maneuver.ng_language) ~= string.lower(main_attribute_array.ngLangCode) 
		or ( maneuver.dist_to > 1000.00 ) 
		or ( _G.trigger == "REMINDER2" and
				(maneuver.dist_to > 600.00 or maneuver.dist_to < 500) ) 
		or ( _G.trigger == "REMINDER1" and
				(maneuver.dist_to > 300.00 or maneuver.dist_to < 200) ) 
		
		
		
		or (_G.trigger == "COMMAND" and maneuver.type == "MANEUVER"
				and (maneuver.ng_type == "TRAFFIC LIGHT" or maneuver.ng_type == "STOP SIGN"))		
		or ( maneuver.ng_type == "STOP SIGN" and not voice_settings["nguidance_stop_sign"] )

	then
		maneuver.ng_type = ""
	end

	if not voice_settings["nguidance_phoneme"] then
		maneuver.ng_name_p = nil
	end

end

function build_natural_guidance( maneuver, phoneme_string_builder)
	filter_natural_guidance( maneuver )

	if not maneuver.ng_type or maneuver.ng_type == "" then
		return ""
	end

	if (maneuver.ng_type == "TRAFFIC LIGHT") then
		if (maneuver.traffic_light_int > 0) and voice_settings["nguidance_trafficlights"] then
			if nG_elements[maneuver.traffic_light_int] == nil then
			  return ''
			else
			  return ", "..nG_elements[maneuver.traffic_light_int]..", "
			end
		end
		return ""
	end


	if maneuver.ng_type == "JUNCTION" 
		and voice_settings["nguidance_junction"] ~= false then
		return build_natural_guidance_junction( maneuver, phoneme_string_builder)
	end

	return ""
end


function pick_natural_guidance_phoneme	( maneuver )

	if maneuver.ng_name_p == nil then
		print ('missing ng_name_p')
		return ""
	end

	if _package_settings and _package_settings.NuanceLanguagePriorities then
		for _, code in ipairs(_package_settings.NuanceLanguagePriorities) do
			if maneuver.ng_name_p[code] then
				return maneuver.ng_name_p[code]
			end
		end
	end

	if not maneuver.ng_language then
		return ""
	end

	return maneuver.ng_name_p[maneuver.ng_language]

end


function build_natural_guidance_junction( maneuver, phoneme_string_builder)
	if not maneuver.ng_preposition or maneuver.ng_preposition == "" then
		maneuver.ng_preposition = "NONE"
	end

	if nG_prepositions == nil then
		return "(nG_prepositions nil)"
	end
	if not nG_prepositions[maneuver.ng_preposition] then
		return "(nG_prepositions value nil)"
	end

	if maneuver.ng_name_p == nil then
			print ('missing ng_name_p')
	end
	
	local preposition = nG_prepositions[maneuver.ng_preposition]
	local phoneme = pick_natural_guidance_phoneme	( maneuver )

	
	local content = phoneme_string_builder( maneuver.ng_name, phoneme )
	
	
	if maneuver.ng_preposition:sub(4, 4) == "B" then
		return preposition .. " ".. content
	else
		return content .. " ".. preposition 
	end

end


function provide_natual_guidance(maneuvers, phoneme_string_builder)
	local ngs = {}
	local count_ngs = 0
	for i,maneuver in ipairs(maneuvers) do
		ngs[i] = build_natural_guidance( maneuver, phoneme_string_builder)
		if ngs[i] ~= "" then
			count_ngs = count_ngs + 1
		end
	end

	if count_ngs < 2 then
		return ngs
	end

	if _G.trigger == "ANNOUNCEMENT"
		or _G.trigger == "REMINDER2"
		or _G.trigger == "REMINDER1"
	 then
		ngs[2] = ""
	end



--	if _G.trigger == "COMMAND"
--	 then
--		ngs[1] = ""
--	end

	return ngs
end


function trim_leading_and_folowing_whitespace(s)
  return s:gsub("^%s*", ""):gsub("%s*$", "")
end





function expand_abbreviation(term, abbreviation_rule_set)
	hasChanged = true
	term = ' ' .. term .. ' ' 
	while hasChanged do
	  hasChanged = false
	  for pattern,replacement in pairs(abbreviation_rule_set) do
--	    print ('RULE-DEBUG: '..pattern..' '.. term )
	    expanded, count = term:gsub( pattern, replacement )

	    
	    expanded = ' ' .. trim_leading_and_folowing_whitespace(expanded) .. ' '

	    
	    
	    if term ~= expanded then
--		print ('RULE-DEBUG: '..count.. " " .. pattern..' '..replacement.." --> " .. term .. "/" .. expanded)
	      term = expanded
	      hasChanged = true
	    end
	  end
	end
	
	return term
	
end
