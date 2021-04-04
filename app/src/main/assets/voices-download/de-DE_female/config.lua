-- ----------------------------------------------------------------------------
-- Copyright (C) 2008 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Authors: Raul Ferrandez, Dirk Huppermann
-- ----------------------------------------------------------------------------
--             Voice Skin: German

require("common_2_0_audio_files")

function get_text_output()
end
function get_voicefiles()
	if maneuver_2 ~= nil then
		if maneuver_2.id == "STOPOVER" then
			maneuver_2 = {}
			maneuver_set_count = 1
			get_common_code()
		elseif maneuver_1.id ~= "STOPOVER" then
			get_common_code()
		end
    elseif maneuver_1.id ~= "STOPOVER" then
        get_common_code()
    end
end

function process_maneuver_triggers()

    if trigger == "COMMAND" then

        if maneuver_1.id ~= "END" and maneuver_1.id ~= "ROUNDABOUT" and maneuver_1.id ~= "STOPOVER" and maneuver_1.id ~= "DRIVE_TO_NEAREST_ROAD" and maneuver_1.id ~= "PASS_JUNCTION" then
            
            table.insert(result_list, misc[ "now_wav" ] )
        end

        if maneuver_1.id == "END" then
            
            table.insert(result_list, misc[ "destination_wav" ] )
        elseif maneuver_1.id == "STOPOVER" then
            table.insert(result_list, misc[ "stopover_wav" ] )
        elseif maneuver_1.id == "PASS_JUNCTION" then
            table.insert(result_list, misc[ "after_wav" ] )
            table.insert( result_list, misc[ "the_junction_wav" ] )
            add_maneuver_to_table( false )
        else
            add_maneuver_to_table( false )
        end

    elseif trigger == "REMINDER1" then
        
        if maneuver_1.extra_string == "EOS" then
            
            table.insert(result_list, misc[ "end_of_street_wav" ] )
            add_maneuver_to_table( false )
        else
            add_maneuver_to_table( true )
        end

    elseif trigger == "REMINDER2" then
        add_maneuver_to_table( true )

    elseif trigger == "ANNOUNCEMENT" then

        
        if ( road_class == "HIGHWAY" or road_class == "URBAN_HIGHWAY" )
        and (   maneuver_1.dist_unit == "UNDEFINED"  )
        then
            
            table.insert(result_list, misc[ "follow_hwy_wav" ] )

        elseif ( road_class == "STREET" )
        and (   maneuver_1.dist_unit == "UNDEFINED"  )
        then
            
            table.insert(result_list, misc[ "follow_road_e_wav" ] )

        elseif road_class == "STREET"
            and maneuver_1.dist_to >= 3000
            then
            get_distances_and_units()
            
            table.insert(result_list, misc[ "follow_road_wav" ] )
            
            table.insert(result_list, misc[ "for_wav" ] )
            
            table.insert(result_list, distance_to_maneuver )
            
            table.insert(result_list, unit_to_maneuver_down )

        else
            add_maneuver_to_table( true )
        end
    end
end

function get_distances_and_units()

    
    if tonumber(maneuver_1.dist_to_unit) == 1 and maneuver_1.dist_unit == "KILOMETER" then
        
        distance_to_maneuver = misc[ "einem_wav" ]
    elseif tonumber(maneuver_1.dist_to_unit) == 1 and maneuver_1.dist_unit == "MILE" then
        
        distance_to_maneuver = misc[ "einer_wav" ]
    else
        distance_to_maneuver = distances[ tonumber(maneuver_1.dist_to_unit) ]
    end

    
    unit_to_maneuver_up = unit[ maneuver_1.dist_unit ] [ up ]
    
    unit_to_maneuver_down = unit[ maneuver_1.dist_unit ] [ down ]

end

function get_maneuver( index, pitch )

    if index == 1 then
        maneuver = maneuver_1
    elseif index == 2 then
        maneuver = maneuver_2
    else
        maneuver = nil
    end

    if maneuver ~= nil then
        
        if maneuver.id == "ROUNDABOUT" then
            
            table.insert(result_list, misc[ "roundabout_wav" ] )
            exit_roundabout_short = exit_number_check_short[ maneuver.extra_integer ] [ pitch ]
            junction_turn = nil
            maneuver_command = nil
            table.insert(result_list, exit_roundabout_short )
        else
            junction_turn = maneuver_turns_short[ maneuver.turn ] [ pitch ]
            maneuver_command = maneuver_check_short[ maneuver.id ] [ pitch ]
        end

        return junction_turn, maneuver_command
    end
end

function add_maneuver_to_table( include_distance )
    if include_distance == true then
        get_distances_and_units()
        table.insert( result_list, misc[ "after_wav" ] ) 

        if ( maneuver_1.dist_to_unit == "0.75"
            or maneuver_1.dist_to_unit == "0.50"
            or maneuver_1.dist_to_unit == "0.25" )
          and maneuver_1.dist_unit == "MILE" then
            
            table.insert( result_list, distance_to_maneuver )
        elseif plural_mile[ tonumber(maneuver_1.dist_to_unit) ] ~= nil and maneuver_1.dist_unit == "MILE" then
            
            table.insert( result_list, distance_to_maneuver )
            table.insert( result_list, unit[ "MILES" ] [ up ] )
        else
            
            table.insert( result_list, distance_to_maneuver )
            
            table.insert( result_list, unit[ maneuver_1.dist_unit ] [ up ] )
        end
    end

		push_traffic_light_term( _G.trigger, _G.maneuver_1 )

    if double_command == false then
        
        if maneuver_1.id == "ENTER_HIGHWAY" or maneuver_1.id == "ENTER_URBAN_HIGHWAY" or maneuver_1.id == "LEAVE_HIGHWAY" or maneuver_1.id == "LEAVE_URBAN_HIGHWAY" or maneuver_1.id == "CHANGE_HIGHWAY" or maneuver_1.id == "CHANGE_URBAN_HIGHWAY" then
            junction_turn_back, dummy_var = get_maneuver( 1, up )
            dummy_var, maneuver_command_back = get_maneuver( 1, down )
        else
            junction_turn_back, maneuver_command_back = get_maneuver( 1, down )
        end

        table.insert( result_list, junction_turn_back )

        if maneuver_command_back ~= nil and junction_turn_back ~= nil then
            table.insert( result_list, misc[ "and_wav" ] ) 
        end

        table.insert( result_list, maneuver_command_back )

    else
        junction_turn_up_short, maneuver_command_up_short = get_maneuver( 1, up )
        if maneuver_2.dist_to <= 30 and maneuver_2.id ~= "END" and maneuver_2.id ~= "ROUNDABOUT" and maneuver_2.id ~= "STOPOVER" then
            table.insert( result_list, junction_turn_up_short )
            table.insert( result_list, maneuver_command_up_short )
            table.insert( result_list, misc[ "and_then_wav" ] )     
            table.insert( result_list, misc[ "immediately_wav" ] ) 
        else
            table.insert( result_list, junction_turn_up_short )
            table.insert( result_list, maneuver_command_up_short )
            table.insert( result_list, misc[ "and_then_wav" ] ) 
        end

        if maneuver_2.id == "JUNCTION" then    
            maneuver_command_down = nil
            if right[ maneuver_2.turn ] ~= nil and maneuver_2.exits_right == 1 then
                
                junction_turn_down = misc[ "second_right_short_wav" ]
            elseif left[ maneuver_2.turn ] ~= nil and maneuver_2.exits_left == 1 then
                
                junction_turn_down = misc[ "second_left_short_wav" ]
            else
                junction_turn_down, maneuver_command_down = get_maneuver( 2, down )
            end
        
        elseif maneuver_2.id == "ENTER_HIGHWAY" or maneuver_2.id == "ENTER_URBAN_HIGHWAY" or maneuver_2.id == "LEAVE_HIGHWAY" or maneuver_2.id == "LEAVE_URBAN_HIGHWAY" or maneuver_2.id == "CHANGE_HIGHWAY" or maneuver_2.id == "CHANGE_URBAN_HIGHWAY" then
            junction_turn_down, maneuver_command_down = get_maneuver( 2, down )
            if junction_turn_down ~= nil then
                maneuver_command_down = nil
            end
        elseif maneuver_2.id == "END" then
            junction_turn_down = misc[ "destination_wav" ]
            maneuver_command_down = nil
        elseif maneuver_2.id == "STOPOVER" then
            junction_turn_down = misc[ "stopover_wav" ]
            maneuver_command_down = nil
        else
            junction_turn_down, maneuver_command_down = get_maneuver( 2, down )
        end

        table.insert( result_list, junction_turn_down )
        table.insert( result_list, maneuver_command_down )
    end
end

