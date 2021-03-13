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

    local has_cardinal = false
    local cardinals = { 'N', 'S', 'O', 'W', 'NO', 'NW', 'SO', 'SW', 'Nord', 'Süd', 'Ost', 'West', 'Nordost', 'Nordwest', 'Südost', 'Südwest' }

    -- check if the last word is a cardinal direction...
    if( contains( cardinals, words[table.getn( words )][1], false ) ) then
        has_cardinal = true
    end

    for i = 1, table.getn( words ) do
        local word = words[i][1]
        -- all but last word rules...
        if ( ( has_cardinal == false and i < table.getn( words ) ) or ( has_cardinal == true and i < table.getn( words ) - 1 ) ) then

        end

        -- last word rules
        if ( ( has_cardinal == false and i == table.getn( words ) ) or ( has_cardinal == true and i == table.getn( words ) - 1 ) ) then
            -- Expansion of abbreviations that are at the end of street names
        end

        -- TODO: should this go into the last word rules?
        -- Compass directions
        word, _ = replace( word, "N%-?O", "Nordost" )
        word, _ = replace( word, "N%-?W", "Nordwest" )
        word, _ = replace( word, "S%-?O", "Südost" )
        word, _ = replace( word, "S%-?W", "Südwest" )
        word, _ = replace( word, "N", "Nord" )
        word, _ = replace( word, "S", "Süd" )
        word, _ = replace( word, "O", "Ost" )
        word, _ = replace( word, "W", "West" )
        
        words[i][1] = word
    end

    -- re-construct the token based on the components
    token = ""
    for i = 1, table.getn(words) do
        token = token..words[i][1]..words[i][2]
    end

    return token

end


function checkMultiPlurals( distance, usedUnit, isFollow )
    return distance, usedUnit
end


function romanToNumeral( romanNumber )
    romanNumber = trim_leading_and_folowing_whitespace(romanNumber)
    romanNumber = string.upper(romanNumber)
    local Num = { ["M"] = 1000, ["D"] = 500, ["C"] = 100, ["L"] = 50, ["X"] = 10, ["V"] = 5, ["I"] = 1 }
    local numeral = 0
    local isValid = 1

    local i = 1
    local strlen = string.len( romanNumber )
    while (i < strlen) and (isValid == 1) do
        local z1, z2 = Num[ string.sub( romanNumber, i, i ) ], Num[ string.sub( romanNumber, i + 1, i + 1 ) ]
        if (z1 ~= nil) and (z2 ~= nil) then
            if z1 < z2 then
                numeral = numeral + ( z2 - z1 )
                i = i + 2
            else
                numeral = numeral + z1
                i = i + 1    
            end
        else
            isValid = 0
        end
    end
 
    -- return cardinal number only if the Roman number is a valid one
    if ( isValid == 1 ) then
        if ( i <= strlen ) then
            numeral = numeral + Num[ string.sub( romanNumber, i, i ) ]
        end
        return tostring( numeral )
    end
    
    -- if invalid Roman number, return it unchanged
    return romanNumber
end


function languageSpecificMods( result_sentence )

    -- handle dot as "komma" (e.g.: 'After 0.5 miles' becomes 'After 0,5 miles')
    result_sentence = string.gsub( result_sentence, "(Nach%s%d)%.(%d%s)", "%1,%2" )
    
    -- convert Roman numbers to ordinal numbers, can be 1 or more letters
    -- to replace all Roman numbers add [IVXLCDMivxlcdm]+ this pattern instead of [IVXivx]+ wherever the case
    romanNumber = ""
    foundRoman = string.find(result_sentence, "(%s+)([IVXivx]+)(%s+)")
    if ( foundRoman ~= nil ) then
        romanNumber = string.sub(result_sentence, string.find(result_sentence, "(%s+)([IVXivx]+)(%s+)"))
        result_sentence = string.gsub( result_sentence, "(%s+)([IVXivx]+)(%s+)", " "..romanToNumeral( romanNumber )..". ", 1 )
    end
    
    -- cardinal numbers
    -- declension of German digit "1" after preposition "nach" (=after), Dative
    result_sentence = string.gsub( result_sentence, "([Nn]ach%s+)1(%s+[Mm]eile)", "%1 einer %2" ) -- feminine
    result_sentence = string.gsub( result_sentence, "([Nn]ach%s+)1(%s+[Kk]ilometer)", "%1 einem %2" ) -- masculine
    
    -- ordinal numbers
    -- declension of German digit "1." to "10." after "nach der" (=after the), Dative
    -- not currently being used - no prompts include "nach der" - when this phrase is used uncomment the code below
    -- result_sentence = string.gsub( result_sentence, "((N|n)ach%s+der%s+[1-9]%d?%.)(%s+)", "%1_DATFo_%3", 1 ) -- feminine
    -- replace dative case numbers
    -- uncomment code below if dealing with the "nach der" phrase
    -- result_sentence = string.gsub( result_sentence, "1%._DATFo_", "ersten" )
    -- result_sentence = string.gsub( result_sentence, "3%._DATFo_", "dritten" )
    -- result_sentence = string.gsub( result_sentence, "7%._DATFo_", "siebten" )
    -- result_sentence = string.gsub( result_sentence, "(1?%d)%._DATFo_", "%1<ESC>/ten<ESC>/" )
    -- result_sentence = string.gsub( result_sentence, "([2-9]%d)%._DATFo_", "%1<ESC>/sten<ESC>/" )

    -- declension of German digit "1" after preposition "für" (=for), Accusative
    -- at the moment this rule cannot be applied, since "follow the cours of the road for X km" is triggered only for distances > 3 km
    -- result_sentence = string.gsub( result_sentence, "[Ff]ür%s+1)(%s+[Kk]ilometer)", "%1_ACC_%2" ) -- masculine
    -- replace accusative case numbers
    -- at the moment this rule cannot be applied, since "follow the course of the road for X km" is triggered only for distances > 3 km
    -- result_sentence = string.gsub( result_sentence, "1_ACC_", "einen" )

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