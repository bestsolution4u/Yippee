-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2014 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Author: Fabian TP Riek, Dirk Huppermann
-- ----------------------------------------------------------------------------
--      Output format for Android w/ Google TTS
--      0.4.0.2012081401

function take_phoneme_if_exits( name, phoneme )
  return name
end


function set_result( id )

	if nonTTS and double_command and id == command_id_1 and commands_double[ id ] ~= nil and commands_double[ id ] ~= "" then
		result_sentence = commands_double[ id ]
	elseif guidance_mode == "pedestrian" and commands_ped[ id ] ~= nil and commands_ped[ id ] ~= "" then
		result_sentence = commands_ped[ id ]
	else
		result_sentence = commands_common[ id ]
	end

	if result_sentence == nil or result_sentence == "" then
		result_sentence = " "
	end

	if result_sentence ~= nil and result_sentence ~= " " and not nonTTS then


		tts_street_1 = build_streetname(tts_street_1, result_sentence, take_phoneme_if_exits)
		tts_street_2 = build_streetname(tts_street_2, result_sentence, take_phoneme_if_exits)

		tts_signpost_1 = build_signpost(tts_signpost_1, result_sentence, take_phoneme_if_exits)
		tts_signpost_2 = build_signpost(tts_signpost_2, result_sentence, take_phoneme_if_exits)

		if exit_number ~= "" and exit_number ~= nil then
			exit_number = " "..exit_number.." "
		end

		--tts_street_1 = SSML_avoid_break_in_say_as( tts_street_1 )
		--tts_street_2 = SSML_avoid_break_in_say_as( tts_street_2 )
		--tts_signpost_1 = SSML_avoid_break_in_say_as( tts_signpost_1 )
		--tts_signpost_2 = SSML_avoid_break_in_say_as( tts_signpost_2 )

		--audio_mode = '\\audio="'..audio_files_path_absolute..'\\'


		
		nG_cmd_1 = build_natural_guidance( maneuver, take_phoneme_if_exits )
		nG_cmd_2 = build_natural_guidance( nextManeuver, take_phoneme_if_exits )
--~ 		if nG_cmd_1 ~= "" and nG_cmd_2 ~= "" then 
--~ 			nG_cmd_2 = ""
--~ 		end

		
		if string.find( result_sentence, "!SET_AUDIO!" ) then
			audio_start = '\\audio="'..audio_files_path_absolute.."\\"
			audio_end = "\"\\"
			result_sentence, trash = string.gsub ( result_sentence, "!SET_AUDIO!(.+)!SET_AUDIO!", audio_start.."%1"..audio_end )
		end

		result_sentence, trash = string.gsub ( result_sentence, "!PED_TURN_NO!", ped_turn_no )
		result_sentence, trash = string.gsub ( result_sentence, "!DIST!", distance_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!UNIT!", usedUnit_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!STREET!", tts_street_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!STREET_2!", tts_street_2 )
		result_sentence, trash = string.gsub ( result_sentence, "!SIGNPOST!", tts_signpost_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!SIGNPOST_2!", tts_signpost_2 )
		result_sentence, trash = string.gsub ( result_sentence, "!EXIT_NO_ROUNDABOUT!", exit_no_roundabout )
		result_sentence, trash = string.gsub ( result_sentence, "!ORIENTATION!", head_orientation )
		result_sentence, trash = string.gsub ( result_sentence, "!NG_COMMAND_1!", nG_cmd_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!NG_COMMAND_2!", nG_cmd_2 )
		result_sentence, trash = string.gsub ( result_sentence, "!EXIT_NUMBER!", exit_number )
		result_sentence, trash = string.gsub ( result_sentence, "!BREAK!", ", " )

		while string.find( result_sentence, "!BREAK:" ) do
			pauseTime, trash = string.gsub(result_sentence, ".+!BREAK:(%d+).+", "%1")
			result_sentence, trash = string.gsub ( result_sentence, "!BREAK:"..pauseTime.."!", ", ", 1)
		end

		while true do
			result_sentence, b_use = string.gsub ( result_sentence, "  ", " " )
			if b_use == 0 then
				break
			end
		end

		if ( string.byte(result_sentence,-1) == 32 ) then
			result_sentence = string.sub(result_sentence,1,-2)
		end

		result_sentence, trash = string.gsub( result_sentence ," ,", "," )

		
		result_sentence = languageSpecificMods( result_sentence )

	elseif nonTTS then

		result_sentence, trash = string.gsub ( result_sentence, "!DIST!", distance_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!UNIT!", usedUnit_1 )
		result_sentence, trash = string.gsub ( result_sentence, "!EXIT_NO_ROUNDABOUT!", exit_no_roundabout )

	end

	return result_sentence

end

function set_result_tts( )

	if double_command then
		if sentence_1 ~= "" and sentence_1 ~= " " then
			result_sentence = sentence_1.." "..sentence_2
		else
			result_sentence = ""
		end
	else
		if sentence_1 ~= "" and sentence_1 ~= " " then
			result_sentence = sentence_1
		else
			result_sentence = ""
		end
	end

	result_sentence, b_use = string.gsub ( result_sentence, "  ", "" )

	if ( string.byte(result_sentence,-1) == 32 ) then
		result_sentence = string.sub(result_sentence,1,-2)
	end

	if result_sentence ~= "" then
		result_sentence = result_sentence.."."
	end

	
	result_sentence = string.upper( string.sub(result_sentence, 1, 1 ) )..string.sub(result_sentence, 2 )

--	result_sentence, count = string.gsub( result_sentence, '(audio=\\"[%a%d]+.wav"\\)'..'(\.)', "%1" )	
	result_sentence, count = string.gsub( result_sentence, ',%p', "\." )	

	table.insert( result_list, result_sentence )

end

function set_result_wave( )

	for k,v in pairs(sentence_1) do
		table.insert( result_list, v )
	end

	if double_command then
		for k,v in pairs(sentence_2) do
			table.insert( result_list, v )
		end
	end

end

function SSML_avoid_break_in_say_as( object )

	if string.find( object, "!BREAK!" ) then
		if string.find( object, " <say.as " ) then
			object, trash = string.gsub ( object, "!BREAK!", "</say-as> <break time=\"100ms\"\/> <say-as interpret-as=\"address\">" )
		else
			object, trash = string.gsub ( object, "!BREAK!", "" )
		end
	end

	return object

end
