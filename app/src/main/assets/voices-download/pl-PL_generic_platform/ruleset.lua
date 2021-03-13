-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2014 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Authors: Fabian TP Riek, Bill King
-- ----------------------------------------------------------------------------

function replace(input, search_str, replace_str)
    return string.gsub(input, "^"..search_str.."[%.]?$", replace_str)
end


function contains(table, element, casesensitive)
  casesensitive = casesensitive or true
  for _, value in pairs(table) do
    if casesenesitive == true then
        if value == element then
          return true
        end
    else
        if value:lower() == element:lower() then
          return true
        end
    end
  end
  return false
end


function lang_spec_abbr(token)	-- Language specific abbreviation rules

    local words = split_token(token)

    -- no cardinal abbreviations for Polish
    local has_cardinal = false

    for i = 1, table.getn( words ) do
        local word = words[i][1]
        -- all but last word rules...
        if i < table.getn( words ) then

        end

        -- last word rules
        if i == table.getn( words ) then
            -- Expansion of abbreviations that are at the end of street names
        end
        
        words[i][1] = word
    end

    -- re-construct the token based on the components
    token = ""
    for i = 1, table.getn(words) do
        token = token..words[i][1]..words[i][2]
    end

    -- changes at prompt level
	if string.find(result_sentence, " w stronę ") then
		token = string.gsub(token, "aleja", "alei" )
		token = string.gsub(token, "bulwary", "bulwarów" )
		token = string.gsub(token, "bulwar", "bulwaru" )
		token = string.gsub(token, "droga", "drogi" )
		token = string.gsub(token, "estakada", "estakady" )
		token = string.gsub(token, "grobla", "grobli" )
		token = string.gsub(token, "mosty", "mostów" )
		token = string.gsub(token, "obwodnica", "obwodnicy" )
		token = string.gsub(token, "osiedle", "osiedla" )
		token = string.gsub(token, "plac", "placu" )
		token = string.gsub(token, "promenada", "promenady" )
		token = string.gsub(token, "rola", "roli" )
		token = string.gsub(token, "rondo", "ronda" )
		token = string.gsub(token, "rynek", "rynku" )
		token = string.gsub(token, "skwer", "skweru" )
		token = string.gsub(token, "szosa", "szosy" )
		token = string.gsub(token, "trakt", "traktu" )
		token = string.gsub(token, "trasa", "trasy" )
		token = string.gsub(token, "tunel", "tunelu" )
		token = string.gsub(token, "ulica", "ulicy" )
		token = string.gsub(token, "zaułek", "zaułka" )
		token = string.gsub(token, "wiadukt", "wiaduktu" )
		token = string.gsub(token, "wybrzeże", "wybrzeża" )
	elseif string.find(result_sentence, " kieruj się dalej ") then
		token = string.gsub(token, "aleja", "aleją" )
		token = string.gsub(token, "bulwary", "bulwarami" )
		token = string.gsub(token, "bulwar", "bulwarem" )
		token = string.gsub(token, "droga", "drogą" )
		token = string.gsub(token, "estakada", "estakadą" )
		token = string.gsub(token, "grobla", "groblą" )
		token = string.gsub(token, "mosty", "mostami" )
		token = string.gsub(token, "obwodnica", "obwodnicą" )
		token = string.gsub(token, "osiedle", "osiedlem" )
		token = string.gsub(token, "plac", "placem" )
		token = string.gsub(token, "promenada", "promenadą" )
		token = string.gsub(token, "rola", "rolą" )
		token = string.gsub(token, "rondo", "rondem" )
		token = string.gsub(token, "rynek", "rynkiem" )
		token = string.gsub(token, "skwer", "skwerem" )
		token = string.gsub(token, "szosa", "szosą" )
		token = string.gsub(token, "trakt", "traktem" )
		token = string.gsub(token, "trasa", "trasą" )
		token = string.gsub(token, "tunel", "tunelem" )
		token = string.gsub(token, "ulica", "ulicą" )
		token = string.gsub(token, "wiadukt", "wiaduktem" )
		token = string.gsub(token, "wybrzeże", "wybrzeżem" )
		token = string.gsub(token, "zaułek", "zaułkiem" )
	elseif string.find(result_sentence, " Jedź ") then
		token = string.gsub(token, "aleja", "aleją" )
		token = string.gsub(token, "bulwary", "bulwarami" )
		token = string.gsub(token, "bulwar", "bulwarem" )
		token = string.gsub(token, "droga", "drogą" )
		token = string.gsub(token, "estakada", "estakadą" )
		token = string.gsub(token, "grobla", "groblą" )
		token = string.gsub(token, "mosty", "mostami" )
		token = string.gsub(token, "obwodnica", "obwodnicą" )
		token = string.gsub(token, "osiedle", "osiedlem" )
		token = string.gsub(token, "plac", "placem" )
		token = string.gsub(token, "promenada", "promenadą" )
		token = string.gsub(token, "rola", "rolą" )
		token = string.gsub(token, "rondo", "rondem" )
		token = string.gsub(token, "rynek", "rynkiem" )
		token = string.gsub(token, "skwer", "skwerem" )
		token = string.gsub(token, "szosa", "szosą" )
		token = string.gsub(token, "trakt", "traktem" )
		token = string.gsub(token, "trasa", "trasą" )
		token = string.gsub(token, "tunel", "tunelem" )
		token = string.gsub(token, "ulica", "ulicą" )
		token = string.gsub(token, "wiadukt", "wiaduktem" )
		token = string.gsub(token, "wybrzeże", "wybrzeżem" )
		token = string.gsub(token, "zaułek", "zaułkiem" )
	elseif string.find(result_sentence, " dotrzesz do celu pośredniego na ") then
		token = string.gsub(token, "aleja", "alei" )
		token = string.gsub(token, "bulwary", "bulwarach" )
		token = string.gsub(token, "bulwar", "bulwarze" )
		token = string.gsub(token, "droga", "drodze" )
		token = string.gsub(token, "estakada", "estakadzie" )
		token = string.gsub(token, "grobla", "grobli" )
		token = string.gsub(token, "mosty", "mostach" )
		token = string.gsub(token, "obwodnica", "obwodnicy" )
		token = string.gsub(token, "osiedle", "osiedlu" )
		token = string.gsub(token, "plac", "placu" )
		token = string.gsub(token, "promenada", "promenadzie" )
		token = string.gsub(token, "rola", "roli" )
		token = string.gsub(token, "rondo", "rondzie" )
		token = string.gsub(token, "rynek", "rynku" )
		token = string.gsub(token, "skwer", "skwerze" )
		token = string.gsub(token, "szosa", "szosie" )
		token = string.gsub(token, "trakt", "trakcie" )
		token = string.gsub(token, "trasa", "trasie" )
		token = string.gsub(token, "tunel", "tunelu" )
		token = string.gsub(token, "ulica", "ulicy" )
		token = string.gsub(token, "wiadukt", "wiadukcie" )
		token = string.gsub(token, "wybrzeże", "wybrzeżu" )
		token = string.gsub(token, "zaułek", "zaułku" )
	elseif string.find(result_sentence, " do celu na ") then
		token = string.gsub(token, "aleja", "alei" )
		token = string.gsub(token, "bulwary", "bulwarach" )
		token = string.gsub(token, "bulwar", "bulwarze" )
		token = string.gsub(token, "droga", "drodze" )
		token = string.gsub(token, "estakada", "estakadzie" )
		token = string.gsub(token, "grobla", "grobli" )
		token = string.gsub(token, "mosty", "mostach" )
		token = string.gsub(token, "obwodnica", "obwodnicy" )
		token = string.gsub(token, "osiedle", "osiedlu" )
		token = string.gsub(token, "plac", "placu" )
		token = string.gsub(token, "promenada", "promenadzie" )
		token = string.gsub(token, "rola", "roli" )
		token = string.gsub(token, "rondo", "rondzie" )
		token = string.gsub(token, "rynek", "rynku" )
		token = string.gsub(token, "skwer", "skwerze" )
		token = string.gsub(token, "szosa", "szosie" )
		token = string.gsub(token, "trakt", "trakcie" )
		token = string.gsub(token, "trasa", "trasie" )
		token = string.gsub(token, "tunel", "tunelu" )
		token = string.gsub(token, "ulica", "ulicy" )
		token = string.gsub(token, "wiadukt", "wiadukcie" )
		token = string.gsub(token, "wybrzeże", "wybrzeżu" )
		token = string.gsub(token, "zaułek", "zaułku" )
	elseif string.find(result_sentence, " na ") then
		token = string.gsub(token, "aleja", "aleję" )
		token = string.gsub(token, "droga", "drogę" )
		token = string.gsub(token, "estakada", "estakadę" )
		token = string.gsub(token, "grobla", "groblę" )
		token = string.gsub(token, "obwodnica", "obwodnicę" )
		token = string.gsub(token, "promenada", "promenadę" )
		token = string.gsub(token, "rola", "rolę" )
		token = string.gsub(token, "szosa", "szosę" )
		token = string.gsub(token, "trasa", "trasę" )
		token = string.gsub(token, "ulica", "ulicę" )
	elseif string.find(result_sentence, " w ") then
		token = string.gsub(token, "aleja", "aleję" )
		token = string.gsub(token, "ulica", "ulicę" )
	end

	token, count = string.gsub( token, "([A-Z][%d]+)".."%s%(".."(M)".."%)", "%1 %2" )	-- Removing parenthesis around capital M when following a capital letter and one or more digits. Why?
    
    return token

end


function checkMultiPlurals( distance, usedUnit, isFollow )
	lastDistValue = tonumber(string.sub(tostring(distance), -1))

    if lastDistValue == 2 or lastDistValue == 3 or lastDistValue == 4 then
		if usedUnit == "jardów" then
			usedUnit = "jardy"
		elseif usedUnit == "stóp" then
			usedUnit = "stopy"
		elseif usedUnit == "metrów" then
			usedUnit = "metry"
		elseif usedUnit == "kilometrów" then
			usedUnit = "kilometry"
		elseif usedUnit == "mil" then
			usedUnit = "mile"
		end
	end

	return distance, usedUnit
end


function languageSpecificMods( result_sentence )
    -- handle dot as "przecinek" (e.g.: 'After 0.5 miles' becomes 'After 0,5 miles')
    result_sentence = string.gsub( result_sentence, "(Za%s%d)%.(%d%s)", "%1,%2" )

    return result_sentence
end


function can_shorten( article, noun )
    return false, { ["ortho"] = article }
end


abbr_begin = {
}

abbr_end = {
}

abbr_cs = {
}

abbr_misc = {
}