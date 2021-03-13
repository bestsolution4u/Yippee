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
    local cardinals = { 'N', 'S', 'E', 'O', 'NE', 'NO', 'SE', 'SO', 'Nord', 'Sud', 'Est', 'Ouest', 'Nord-est', 'Nord-ouest', 'Sud-est', 'Sud-ouest' }

    -- check if the last word is a cardinal direction...
    if( contains( cardinals, words[table.getn( words )][1], false ) ) then
        has_cardinal = true
    end

    for i = 1, table.getn(words) do
        local word = words[i][1]
        -- all but last word rules...
        if ( ( has_cardinal == false and i < table.getn( words ) ) or ( has_cardinal == true and i < table.getn( words ) - 1 ) ) then
            word, _ = replace( word, "[Ss][Tt]", "Saint" )
            word, _ = replace( word, "[Ss][Tt][Ee]", "Sainte" )
        end

        -- last word rules
        if ( ( has_cardinal == false and i == table.getn( words ) ) or ( has_cardinal == true and i == table.getn( words ) - 1 ) ) then
            -- Expansion of abbreviations that are at the end of street names
        end

        -- TODO: should this go into the last word rules?
        -- Compass directions
        word, _ = replace( word, "N%-?E", "Nord-est" )
        word, _ = replace( word, "N%-?O", "Nord-ouest" )
        word, _ = replace( word, "S%-?E", "Sud-est" )
        word, _ = replace( word, "S%-?O", "Sud-ouest" )
        word, _ = replace( word, "N", "Nord" )
        word, _ = replace( word, "S", "Sud" )
        word, _ = replace( word, "E", "Est" )
        word, _ = replace( word, "O", "Ouest" )

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


function languageSpecificMods( result_sentence )

    -- handle dot as "," (e.g.: 'After 0.5 miles' becomes 'After 0,5 miles')
    result_sentence = string.gsub( result_sentence, "(Dans%s%d)%.(%d%s)", "%1,%2" )
    result_sentence = string.gsub( result_sentence, "(Après%s%d)%.(%d%s)", "%1,%2" )
        
    -- avoid end of sentence detection for a German ordinal number (1 or 2 digits) followed by a capital letter (e.g. 15. Juni)
    result_sentence = string.gsub( result_sentence, "(%d+)%.%s+([A-Z])", "%1 %2" )
    
    -- TODO: Delete following lines if there are no complains about pronunciation for digits and articles
    -- no silence after digits in address mode when preceded by 'de', 'des', 'du', 'de la'
    result_sentence, count = string.gsub( result_sentence, "(!ADDRESS_MODE!.+?%s+[Dd]e)(%s+)(%d+)(%s+%D)", "$1$2!NORMAL_MODE!$3!ADDRESS_MODE!$4")
    result_sentence, count = string.gsub( result_sentence, "(!ADDRESS_MODE!.+?%s+[Dd]es)(%s+)(%d+)(%s+%D)", "$1$2!NORMAL_MODE!$3!ADDRESS_MODE!$4")
    result_sentence, count = string.gsub( result_sentence, "(!ADDRESS_MODE!.+?%s+[Dd]u)(%s+)(%d+)(%s+%D)", "$1$2!NORMAL_MODE!$3!ADDRESS_MODE!$4")
    result_sentence, count = string.gsub( result_sentence, "(!ADDRESS_MODE!.+?%s+[Dd]e la)(%s+)(%d+)(%s+%D)", "$1$2!NORMAL_MODE!$3!ADDRESS_MODE!$4")
    
    return result_sentence

end


function trim(s)
  if s == nil then
      return ''
  else
      return (s:gsub("^%s*(.-)%s*$", "%1"))
  end
end


-- can_shorten
-- if true, returns table of {true, ortho form, phonetic form}
-- if false, returns table of {false, original article}
function can_shorten( article, noun )
    local trimmedarticle = trim(article)
    if ( (trimmedarticle == "le" or trimmedarticle == "la" or trimmedarticle == "l'") and noun:lower():find("^h?[aeiouéèàùâêîôûëïüy]+") ) then
        return true, { ["ortho"] =  "l'", ["phoneme"] = "l'" }
    else
        return false, { ["ortho"] = article }
    end
end


abbr_begin = {
}

abbr_end = {
}

abbr_cs = {
}

abbr_misc = {
}