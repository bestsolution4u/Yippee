-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--   Author: Fabian TP Riek
-- ----------------------------------------------------------------------------
--       Voice Skin: de-DE  German TTS

street_article = { -- MANUALLY DEFINED, articles to be used in context of street names.
	["ziel"] = {
		["in der"] = {"stra[sß]-e", "gasse" },
		["im"] = {"weg","gang","pfad","tunnel"},
		["auf dem"] = {"damm","wall"},
		["auf der"] = {"allee"} },

	["waypoint"] = {
		["in der"] = {"stra[sß]-e", "gasse" },
		["im"] = {"weg","gang","pfad","tunnel"},
		["auf dem"] = {"damm","wall"},
		["auf der"] = {"allee"} },

	[" folgen"] = {
		["der"] = { "stra[sß]-e", "gasse", "allee" },
		["dem"] = { "weg","gang","pfad","damm","wall","tunnel"}, },

	["richtung"] = { [" "] = { ".+" }, },

	["baseArticle"] = {
		["in die"] = {"stra[sß]-e", "gasse" },
		["in den"] = {"weg","gang","pfad","tunnel"},
		["auf den"] = {"damm","wall"},
		["auf die"] = {"allee"} },
}

nG_prepositions = {	-- MANUALLY DEFINED, prepositions code for natural guidance, delivered by navteq, no additional translation needed
	["GERBVORX"] = "Vor",
	["GERBVRDR"] = "Vor der",
	["GERBVRDM"] = "Vor dem",
	["GERBVRDN"] = "Vor den",
	["GERBUNTR"] = "Unter",
	["GERBUNDR"] = "Unter der",
	["GERBUNDM"] = "Unter dem",
	["GERBUNDN"] = "Unter den",
	["GERBUNDI"] = "Unter die",
	["GERBHINT"] = "Hinter",
	["GERBHNDR"] = "Hinter der",
	["GERBHNDM"] = "Hinter dem",
	["GERBHNDN"] = "Hinter den",
	["GERBANXX"] = "An",
	["GERBANDR"] = "An der",
	["GERBANDM"] = "An dem",
	["GERBANDN"] = "An den",
	["GERBDURC"] = "Durch",
	["GERBDRDI"] = "Durch die",
	["GERBDRDN"] = "Durch den",
	["GERBDRDS"] = "Durch das",
	["GERBAUFX"] = "Auf",
	["GERBAUDR"] = "Auf der",
	["GERBAUDM"] = "Auf dem",
	["GERBAUDN"] = "Auf den",
	["GERBAUDI"] = "Auf die",
	["GERBUBER"] = "Über",
	["GERBUBDR"] = "Über der",
	["GERBUBDM"] = "Über dem",
	["GERBUBDI"] = "Über die",
	["GERBVORB"] = "Vorbei",
	["GERBVBAN"] = "Vorbei an",
	["GERBVBDR"] = "Vorbei an der",
	["GERBVBDM"] = "Vorbei an dem",
	["GERBVBDN"] = "Vorbei an den",
	["NONE"] = "", -- leave this entry, it's important
}

nG_elements = { -- natural guidance traffic light command elements
	[1] = "an der nächsten Ampel", -- at the next traffic light
	[2] = "an der zweiten Ampel", -- at the second traffic light
	[3] = "an der dritten Ampel", -- at the third traffic light
	["UNDEFINED"] = "",
}

unit_after = { -- Units to be used in sentences like After xx kilometers turn ...
	["MILE"] = "Meile", -- mile
	["YARDS"] = "Yards", -- yards
	["FEET"] = "Fuß", -- feet
	["KILOMETER"] = "Kilometer", -- kilometer
	["METERS"] = "Metern", -- meters
	["METER"] = "Meter", -- meter
	["KILOMETERS"] = "Kilometern", -- kilometers
	["MILES"] = "Meilen", -- miles
	["UNDEFINED"] = "",
}

unit_follow = { -- Units to be used in sentences like Follow the road for xx kilometers.
	["MILE"] = "Meile", -- mile
	["YARDS"] = "Yards", -- yards
	["FEET"] = "Fuß", -- feet
	["KILOMETER"] = "Kilometer", -- kilometer
	["METERS"] = "Meter", -- meters
	["METER"] = "Meter", -- meter
	["KILOMETERS"] = "Kilometer", -- kilometers
	["MILES"] = "Meilen", -- miles
	["UNDEFINED"] = "",
}

dist = { --
	["a"] = "einem Kilometer", -- one kilometer
	["b"] = "einer Meile", -- one mile
	["c"] = "einer viertel Meile", -- a quarter of a mile
	["d"] = "einer halben Meile", -- half a mile
	["e"] = "einer dreiviertel Meile", -- three quarters of a mile
	["UNDEFINED"] = "",
}

exit_number_roundabout = { -- exit numbers for roundabouts in car navigation
	[1] = "die erste Ausfahrt nehmen", -- take the first exit
	[2] = "die zweite Ausfahrt nehmen", -- take the second exit
	[3] = "die dritte Ausfahrt nehmen", -- take the third exit
	[4] = "die vierte Ausfahrt nehmen", -- take the fourth exit
	[5] = "die fünfte Ausfahrt nehmen", -- take the fifth exit
	[6] = "die sechste Ausfahrt nehmen", -- take the sixth exit
	[7] = "die siebte Ausfahrt nehmen", -- take the seventh exit
	[8] = "die achte Ausfahrt nehmen", -- take the eighth exit
	[9] = "die neunte Ausfahrt nehmen", -- take the ninth exit
	[10] = "die zehnte Ausfahrt nehmen", -- take the tenth exit
	[11] = "die elfte Ausfahrt nehmen", -- take the eleventh exit
	[12] = "die zwölfte Ausfahrt nehmen", -- take the twelfth exit
	["UNDEFINED"] = "",
}

orientation = { -- Heading directions for walk commands, e.g. Head north on Oxford Street
	["NORTH"] = "Norden", -- north
	["NORTH_EAST"] = "Nordosten", -- northeast
	["EAST"] = "Osten", -- east
	["SOUTH_EAST"] = "Südosten", -- southeast
	["SOUTH"] = "Süden", -- south
	["SOUTH_WEST"] = "Südwesten", -- southwest
	["WEST"] = "Westen", -- west
	["NORTH_WEST"] = "Nordwesten", -- northwest
	["UNDEFINED"] = "",
}

turn_number_ped = { -- exit numbers for roundabouts in walk navigation
	[1] = "und an der ersten Straße abbiegen, !STREET!", -- and turn at the first street !STREET!
	[2] = "und an der zweiten Straße abbiegen, !STREET!", -- and turn at the second street !STREET!
	[3] = "und an der dritten Straße abbiegen, !STREET!", -- and turn at the third street !STREET!
	["UNDEFINED"] = "",
}

commands_common = { -- Common commands for car & ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 1: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout towards !SIGNPOST!
	["c00c0zc0"] = "Am Ende der Straße im Kreisverkehr !EXIT_NO_ROUNDABOUT! Richtung !SIGNPOST!",
	-- 2: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout onto !STREET!
	["c00c0zb0"] = "Am Ende der Straße im Kreisverkehr !EXIT_NO_ROUNDABOUT! !STREET!",
	-- 3: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout
	["c00c0z00"] = "Am Ende der Straße im Kreisverkehr !EXIT_NO_ROUNDABOUT!",
	-- 4: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00d000x"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 5: and then enter the motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00f000x"] = "und dann !NG_COMMAND_2! auf die Autobahn !STREET_2! Richtung !SIGNPOST_2! fahren ",
	-- 6: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00j000x"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 7: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00e000x"] = "und dann !NG_COMMAND_2! wenden Richtung !STREET_2! !SIGNPOST_2!",
	-- 8: and then enter the urban motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00i000x"] = "und dann !NG_COMMAND_2! auf die Stadtautobahn !STREET_2! Richtung !SIGNPOST_2! fahren",
	-- 9: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00g000x"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 10: and then take the middle lane !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00o000x"] = "und dann !NG_COMMAND_2! die mittlere Spur Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 11: and then turn left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00v000x"] = "und dann !NG_COMMAND_2! links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 12: and then turn slightly left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00w000x"] = "und dann !NG_COMMAND_2! leicht links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 13: and then turn sharply left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00u000x"] = "und dann !NG_COMMAND_2! scharf links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 14: and then turn sharply right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00s000x"] = "und dann !NG_COMMAND_2! scharf rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 15: and then turn right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00r000x"] = "und dann !NG_COMMAND_2! rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 16: and then keep right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00p000x"] = "und dann !NG_COMMAND_2! rechts halten Richtung !STREET_2! !SIGNPOST_2!",
	-- 17: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00t000x"] = "und dann !NG_COMMAND_2! wenden Richtung !STREET_2! !SIGNPOST_2!",
	-- 18: and then keep left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00x000x"] = "und dann !NG_COMMAND_2! links halten Richtung !STREET_2! !SIGNPOST_2!",
	-- 19: and then turn slightly right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00q000x"] = "und dann !NG_COMMAND_2! leicht rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 20: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !STREET_2! !SIGNPOST_2!
	["h000cz0x"] = "und dann im Kreisverkehr !EXIT_NO_ROUNDABOUT! Richtung !STREET_2! !SIGNPOST_2! ",
	-- 21: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000j"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, die Ausfahrt nehmen",
	-- 22: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000j"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, die Ausfahrt nehmen",
	-- 23: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000j"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, die Ausfahrt nehmen",
	-- 24: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000j"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, die Ausfahrt nehmen",
	-- 25: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fj"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen und die Ausfahrt nehmen ",
	-- 26: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000j"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 27: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fj"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten und die Ausfahrt nehmen",
	-- 28: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fj"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten und die Ausfahrt nehmen",
	-- 29: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fj"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren und die Ausfahrt nehmen",
	-- 30: Now take the exit !NG_COMMAND_1!
	["a000000g"] = "Jetzt !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 31: After !DIST! !UNIT! take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl000e0x"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 32: Now go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["a00ni000"] = "Jetzt !NG_COMMAND_1! geradeaus auf die Stadtautobahn fahren",
	-- 33: and then go straight ahead towards !STREET_2! !SIGNPOST_2!
	["h00n000x"] = "und dann geradeaus fahren Richtung !STREET_2! !SIGNPOST_2!",
	-- 34: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000j"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen, die Ausfahrt nehmen",
	-- 35: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000j"] = "Jetzt !NG_COMMAND_1! links halten, die Ausfahrt nehmen",
	-- 36: Now keep right !NG_COMMAND_1!  , take the exit
	["a00p000j"] = "Jetzt !NG_COMMAND_1! rechts halten, die Ausfahrt nehmen",
	-- 37: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Jetzt !NG_COMMAND_1! geradeaus fahren und die Ausfahrt nehmen",
	-- 38: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000j"] = "Jetzt !NG_COMMAND_1! geradeaus fahren, die Ausfahrt nehmen ",
	-- 39: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fj"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen und die Ausfahrt nehmen",
	-- 40: Now take the exit !NG_COMMAND_1!
	["a000000j"] = "Jetzt !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 41: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fj"] = "Jetzt !NG_COMMAND_1! links halten und die Ausfahrt nehmen",
	-- 42: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fj"] = "Jetzt !NG_COMMAND_1! rechts halten und die Ausfahrt nehmen",
	-- 43: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Jetzt !NG_COMMAND_1! geradeaus fahren und die Ausfahrt nehmen",
	-- 44: and then you will reach your destination !NG_COMMAND_2! on !STREET!
	["h000ab00"] = "und dann !NG_COMMAND_2! haben Sie Ihr Ziel !STREET! erreicht",
	-- 45: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto !STREET!
	["bl0v0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen !STREET!",
	-- 46: Now keep right !NG_COMMAND_1! , enter the urban motorway
	["a00pi000"] = "Jetzt !NG_COMMAND_1! rechts halten, auf die Stadtautobahn fahren",
	-- 47: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway
	["bl0nf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Autobahn fahren",
	-- 48: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET!
	["bl0a0b00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel !STREET! erreicht",
	-- 49: and then immediately turn slightly right onto !STREET! towards !SIGNPOST!
	["j00q0ac0"] = "und dann sofort leicht rechts abbiegen !STREET! Richtung !SIGNPOST!",
	-- 50: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0edz"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 51: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h000ed00"] = "und dann !NG_COMMAND_2! wenden !STREET!",
	-- 52: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET!
	["bl0r0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen Richtung !STREET!",
	-- 53: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j000ed00"] = "und dann sofort !NG_COMMAND_2! wenden !STREET!",
	-- 54: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0edz"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 55: Now turn right !NG_COMMAND_1! , enter the motorway
	["a00rf000"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, auf die Autobahn fahren",
	-- 56: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET!
	["bl0v0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen Richtung !STREET!",
	-- 57: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET!
	["bl0q0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts Richtung !STREET! abbiegen",
	-- 58: At the end of the road turn right !NG_COMMAND_1! , enter the motorway
	["c00rf000"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Autobahn fahren",
	-- 59: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1!
	["bl0b0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Zwischenziel erreicht",
	-- 60: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0e0z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 61: Now take the exit !NG_COMMAND_1!
	["a00d0000"] = "Jetzt !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 62: After !DIST! !UNIT! enter the motorway
	["bl00f000"] = "Nach !DIST! !UNIT! auf die Autobahn fahren",
	-- 63: and then take the exit !NG_COMMAND_2!
	["h00d0000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 64: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0qf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 65: and then turn left !NG_COMMAND_2!
	["h00v0000"] = "und dann !NG_COMMAND_2! links abbiegen",
	-- 66: and then immediately turn left !NG_COMMAND_2!
	["j00v0000"] = "und dann sofort !NG_COMMAND_2! links abbiegen",
	-- 67: and then immediately make a u turn !NG_COMMAND_2!
	["j000e000"] = "und dann sofort !NG_COMMAND_2! wenden",
	-- 68: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0uf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 69: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ui0c0"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 70: and then make a u turn !NG_COMMAND_2!
	["h000e000"] = "und dann !NG_COMMAND_2! wenden",
	-- 71: At the end of the road turn right !NG_COMMAND_1! onto !STREET!
	["c00r0d00"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen !STREET!",
	-- 72: and then turn right, !STREET!
	["h00r0a00"] = "und dann rechts abbiegen !STREET!",
	-- 73: and then immediately take the exit !NG_COMMAND_2! towards !STREET!
	["j000dc00"] = "und dann sofort !NG_COMMAND_2! die Ausfahrt nehmen Richtung !STREET!",
	-- 74: Now turn left !NG_COMMAND_1!
	["a00v0000"] = "Jetzt !NG_COMMAND_1! links abbiegen",
	-- 75: At the end of the road turn left !NG_COMMAND_1!
	["c00v0000"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen",
	-- 76: At the end of the road take the ferry !NG_COMMAND_1! towards !STREET!
	["c00m0c00"] = "Am Ende der Straße !NG_COMMAND_1! die Fähre Richtung !STREET! nehmen",
	-- 77: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1!
	["bl0o0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen",
	-- 78: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fg"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten und die Ausfahrt nehmen",
	-- 79: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0o0e0x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 80: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ofac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 81: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fg"] = "Jetzt !NG_COMMAND_1! geradeaus fahren und die Ausfahrt nehmen",
	-- 82: Now take the exit !NG_COMMAND_1! towards !STREET!
	["a00d0c00"] = "Jetzt !NG_COMMAND_1! die Ausfahrt Richtung !STREET! nehmen",
	-- 83: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000g"] = "Jetzt !NG_COMMAND_1! links halten, die Ausfahrt nehmen",
	-- 84: and then you will reach your stopover !NG_COMMAND_2!
	["h000b000"] = "und dann !NG_COMMAND_2! haben Sie Ihr Zwischenziel erreicht",
	-- 85: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00qi0c0"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 86: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0sf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 87: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0piac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 88: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0x0ed0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen",
	-- 89: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0p0edy"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! folgen",
	-- 90: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ti0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 91: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["bl0w0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen !STREET! ",
	-- 92: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00wi0c0"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 93: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! !NG_COMMAND_1! at the roundabout
	["bl0c0z00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! im Kreisverkehr !EXIT_NO_ROUNDABOUT! ",
	-- 94: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0o0edx"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! !SIGNPOST! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 95: At the end of the road make a u turn !NG_COMMAND_1!
	["c00t0000"] = "Am Ende der Straße !NG_COMMAND_1! wenden",
	-- 96: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ni0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 97: After the junction keep right !NG_COMMAND_1!
	["bz0p0000"] = "Nach der Kreuzung !NG_COMMAND_1! rechts halten",
	-- 98: After the junction go straight ahead !NG_COMMAND_1!
	["bz0n0000"] = "Nach der Kreuzung !NG_COMMAND_1! geradeaus fahren",
	-- 99: and then make a u turn !NG_COMMAND_2!
	["h00t0000"] = "und dann !NG_COMMAND_2! wenden",
	-- 100: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fg"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren und die Ausfahrt nehmen",
	-- 101: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0uiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 102: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0n000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren Richtung !STREET_2! !SIGNPOST_2!",
	-- 103: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0n0edy"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! folgen",
	-- 104: and then immediately turn sharply right onto !STREET! towards !SIGNPOST!
	["j00s0ac0"] = "und dann sofort scharf rechts !STREET! Richtung !SIGNPOST! abbiegen",
	-- 105: After !DIST! !UNIT! take the ferry !NG_COMMAND_1!
	["bl0m0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Fähre nehmen",
	-- 106: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0oi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 107: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00via00"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 108: and then turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["h00s00c0"] = "und dann !NG_COMMAND_2! scharf rechts abbiegen Richtung !SIGNPOST! ",
	-- 109: Now take the middle lane !NG_COMMAND_1!
	["a00o0000"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen",
	-- 110: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0o0edy"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! folgen",
	-- 111: At the end of the road turn slightly right !NG_COMMAND_1!
	["c00q0000"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen",
	-- 112: and then take the middle lane !NG_COMMAND_2!
	["h00o0000"] = "und dann !NG_COMMAND_2! die mittlere Spur nehmen",
	-- 113: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fg"] = "Jetzt !NG_COMMAND_1! rechts halten und die Ausfahrt nehmen ",
	-- 114: and then immediately take the middle lane !NG_COMMAND_2!
	["j00o0000"] = "und dann sofort !NG_COMMAND_2! die mittlere Spur nehmen",
	-- 115: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0wfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 116: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! towards !STREET!
	["bl0t0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden Richtung !STREET!",
	-- 117: and then take the ferry !NG_COMMAND_2!
	["h00m0000"] = "und dann !NG_COMMAND_2! die Fähre nehmen",
	-- 118: Now turn slightly right !NG_COMMAND_1!
	["a00q0000"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen",
	-- 119: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway
	["bl0ri000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn fahren",
	-- 120: and then keep left !NG_COMMAND_2! towards !STREET!
	["h00x0c00"] = "und dann !NG_COMMAND_2! links halten Richtung !STREET!",
	-- 121: and then immediately turn slightly right !NG_COMMAND_2! onto !STREET!
	["j00q0d00"] = "und dann sofort !NG_COMMAND_2! leicht rechts abbiegen !STREET!",
	-- 122: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway
	["bl0rf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Autobahn fahren",
	-- 123: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0e0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden",
	-- 124: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h00i00c0"] = "und dann !NG_COMMAND_2! auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 125: At the end of the road take the ferry !NG_COMMAND_1!
	["c00m0000"] = "Am Ende der Straße !NG_COMMAND_1! die Fähre nehmen",
	-- 126: Now take the ferry !NG_COMMAND_1!
	["a00m0000"] = "Jetzt !NG_COMMAND_1! die Fähre nehmen",
	-- 127: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET!
	["bl0s0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen Richtung !STREET!",
	-- 128: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00ufa00"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn !STREET! fahren",
	-- 129: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["c00tfa00"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Autobahn !STREET! fahren",
	-- 130: After !DIST! !UNIT! enter the motorway !STREET! towards !SIGNPOST!
	["bl00fac0"] = "Nach !DIST! !UNIT! auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 131: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h00i0ac0"] = "und dann auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 132: and then immediately take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["j00o00c0"] = "und dann sofort !NG_COMMAND_2! die mittlere Spur Richtung !SIGNPOST! nehmen",
	-- 133: and then take the middle lane !NG_COMMAND_2! onto !STREET!
	["h00o0d00"] = "und dann !NG_COMMAND_2! die mittlere Spur nehmen !STREET!",
	-- 134: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0o0e00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! nehmen",
	-- 135: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0via00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 136: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway
	["c00uf000"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn fahren",
	-- 137: Now turn sharply left !NG_COMMAND_1! , enter the motorway
	["a00uf000"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn fahren",
	-- 138: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0p0ed0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen",
	-- 139: and then immediately enter the urban motorway !NG_COMMAND_2!
	["j000i000"] = "und dann sofort !NG_COMMAND_2! auf die Stadtautobahn fahren",
	-- 120: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00vfa00"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Autobahn !STREET! fahren",
	-- 141: and then enter the urban motorway !NG_COMMAND_2!
	["h000i000"] = "und dann !NG_COMMAND_2! auf die Stadtautobahn fahren",
	-- 142: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0qfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 143: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["bl0w0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen",
	-- 144: Now enter the urban motorway
	["a000i000"] = "Jetzt auf die Stadtautobahn fahren",
	-- 145: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0xia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Stadtautobahn !STREET! fahren",
	-- 146: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0n0ed0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen",
	-- 147: and then immediately turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["j00u00c0"] = "und dann sofort !NG_COMMAND_2! scharf links abbiegen Richtung !SIGNPOST!",
	-- 148: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000g"] = "Jetzt !NG_COMMAND_1! geradeaus fahren, die Ausfahrt nehmen",
	-- 149: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00uia00"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 150: and then turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["h00u00c0"] = "und dann !NG_COMMAND_2! scharf links abbiegen Richtung !SIGNPOST!",
	-- 151: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bl0s0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen !STREET!",
	-- 152: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway
	["bl0tf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Autobahn fahren",
	-- 153: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["bl0q0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen",
	-- 154: and then take the exit !NG_COMMAND_2!
	["h00g0000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 155: At the end of the road turn sharply right !NG_COMMAND_1!
	["c00s0000"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen",
	-- 156: and then make a u turn !NG_COMMAND_2!
	["h00e0000"] = "und dann !NG_COMMAND_2! wenden",
	-- 157: Now turn sharply right !NG_COMMAND_1!
	["a00s0000"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen",
	-- 158: and then immediately keep right !NG_COMMAND_2! onto !STREET!
	["j00p0d00"] = "und dann sofort !NG_COMMAND_2! rechts halten !STREET!",
	-- 159: At the end of the road make a u turn !NG_COMMAND_1!
	["c00e0000"] = "Am Ende der Straße !NG_COMMAND_1! wenden",
	-- 160: and then turn sharply right !NG_COMMAND_2!
	["h00s0000"] = "und dann !NG_COMMAND_2! scharf rechts abbiegen",
	-- 161: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET!
	["c00u0c00"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen Richtung !STREET!",
	-- 162: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0tf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 163: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00wfac0"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 164: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["c00wi000"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn fahren",
	-- 165: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ofa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Autobahn !STREET! fahren",
	-- 166: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway
	["bl0ti000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Stadtautobahn fahren",
	-- 167: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00qiac0"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 168: Now turn right !NG_COMMAND_1! take the exit
	["a00r000g"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, die Ausfahrt nehmen ",
	-- 169: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["bl0qi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn fahren",
	-- 170: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["bl0q0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts !STREET! abbiegen",
	-- 171: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fg"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten und die Ausfahrt nehmen",
	-- 173: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET!
	["c00s0c00"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen Richtung !STREET!",
	-- 174: Now turn left !NG_COMMAND_1! , enter the urban motorway
	["a00vi000"] = "Jetzt !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn fahren",
	-- 175: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway
	["c00vi000"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn fahren",
	-- 176: Now turn left !NG_COMMAND_1! and take the exit
	["a00v00fg"] = "Jetzt !NG_COMMAND_1! links abbiegen und die Ausfahrt nehmen",
	-- 177: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0xfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Autobahn !STREET! fahren",
	-- 178: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout  towards !SIGNPOST!
	["bl0c0zc0"] = "Nach !DIST! !UNIT! im Kreisverkehr !EXIT_NO_ROUNDABOUT! Richtung !SIGNPOST!",
	-- 179: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00tf0c0"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 180: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0si0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 181: At the end of the road you will reach your stopover !NG_COMMAND_1! on !STREET!
	["c00b0b00"] = "Am Ende der Straße !NG_COMMAND_1! haben Sie Ihr Zwischenziel !STREET! erreicht",
	-- 182: After the junction turn slightly left !NG_COMMAND_1!
	["bz0w0000"] = "Nach der Kreuzung !NG_COMMAND_1! leicht links abbiegen",
	-- 183: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00qfac0"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 184: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bl0s0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen",
	-- 185: and then turn left !STREET! towards !SIGNPOST!
	["h00v0ac0"] = "und dann links abbiegen !STREET! Richtung !SIGNPOST!",
	-- 186: and then keep right, !STREET!
	["h00p0a00"] = "und dann rechts halten !STREET!",
	-- 187: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway on !STREET! towards !SIGNPOST!
	["c00siac0"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 188: At the end of the road turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00vf0c0"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 189: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0tfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Autobahn !STREET! fahren",
	-- 190: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00viac0"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 191: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h000ec00"] = "und dann !NG_COMMAND_2! wenden Richtung !STREET!",
	-- 192: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j000ec00"] = "und dann sofort !NG_COMMAND_2! wenden Richtung !STREET!",
	-- 193: Now take the exit !NG_COMMAND_1! onto !STREET!
	["a00d0d00"] = "Jetzt !NG_COMMAND_1! die Ausfahrt nehmen !STREET!",
	-- 194: and then take the exit !NG_COMMAND_2!
	["h000g000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 195: and then immediately take the middle lane, !STREET! towards !SIGNPOST!
	["j00o0ac0"] = "und dann sofort die mittlere Spur nehmen !STREET! Richtung !SIGNPOST!",
	-- 196: and then immediately take the exit !NG_COMMAND_2!
	["j000g000"] = "und dann sofort !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 197: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00qia00"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 198: and then enter the motorway !STREET! towards !SIGNPOST!
	["h000fac0"] = "und dann auf die Autobahn !STREET! Richtung !SIGNPOST! fahren ",
	-- 199: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["bl0c0zb0"] = "Nach !DIST! !UNIT! im Kreisverkehr !EXIT_NO_ROUNDABOUT! !STREET!",
	-- 200: After !DIST! !UNIT! take the exit !NG_COMMAND_1! onto !STREET!
	["bl0d0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Ausfahrt nehmen !STREET!",
	-- 201: Now turn right !NG_COMMAND_1! , enter the urban motorway
	["a00ri000"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn fahren",
	-- 202: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway
	["c00ri000"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn fahren",
	-- 203: You have reached your destination
	["y0000000"] = "Sie haben Ihr Ziel erreicht",
	-- 204: You have reached your destination. The destination is on your right
	["yp000000"] = "Sie haben Ihr Ziel erreicht. Das Ziel befindet sich auf der rechten Seite",
	-- 205: You have reached your destination. The destination is on your left
	["yq000000"] = "Sie haben Ihr Ziel erreicht. Das Ziel befindet sich auf der linken Seite",
    -- 206: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!
    ["x0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 207: Route recalculation
	["w0000000"] = "Routenneuberechnung",
    -- 208: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Safety camera ahead
    ["v0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Blitzgerät voraus",
	-- 209: !EXIT_NO_ROUNDABOUT! at the roundabout
	["000c0z00"] = "Im Kreisverkehr !EXIT_NO_ROUNDABOUT!",
	-- 210: Now go straight ahead !NG_COMMAND_1! enter the motorway
	["a00nf000"] = "Jetzt !NG_COMMAND_1! geradeaus auf die Autobahn fahren",
	-- 211: You have reached your stopover. The stopover is on your right
	["zr000000"] = "Sie haben Ihr Zwischenziel erreicht. Das Zwischenziel befindet sich auf der rechten Seite",
	-- 212: You have reached your stopover. The stopover is on your left
	["zs000000"] = "Sie haben Ihr Zwischenziel erreicht. Das Zwischenziel befindet sich auf der linken Seite",
	-- 213: You have reached your stopover
	["z0000000"] = "Sie haben Ihr Zwischenziel erreicht",
	-- 214: GPS signal has been restored
	["q0000000"] = "Die GPS Verbindung wurde wiederhergestellt",
	-- 215: GPS signal lost
	["p0000000"] = "GPS Signal verloren",
	-- 216: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00sfa00"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 217: No detour found around traffic
	["u0000000"] = "Keine Umleitung für Verkehrsereignis gefunden",
	-- 218: Traffic on route, do you want to detour?
	["t0000000"] = "Verkehrsereignis auf der Route, wünschen Sie eine Umleitung?",
    -- 219: !SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!
    ["r0000000"] = "!SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 220: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00rfa00"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 221: and then immediately go straight ahead, !STREET!
	["j00n0a00"] = "und dann sofort geradeaus fahren !STREET!",
	-- 222: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00qf0c0"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 223: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0riac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 224: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0pfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 225: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway
	["c00tf000"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Autobahn fahren",
	-- 226: Now make a u turn !NG_COMMAND_1! , enter the urban motorway
	["a00ti000"] = "Jetzt !NG_COMMAND_1! wenden, auf die Stadtautobahn fahren",
	-- 227: Now make a u turn !NG_COMMAND_1! , enter the motorway
	["a00tf000"] = "Jetzt !NG_COMMAND_1! wenden, auf die Autobahn fahren",
	-- 228: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1! on !STREET!
	["bl0b0b00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Zwischenziel erreicht !STREET!",
	-- 229: and then immediately take the second right !NG_COMMAND_2!
	["j00y0000"] = "und dann sofort !NG_COMMAND_2! die Zweite rechts abbiegen",
	-- 230: and then take the second right !NG_COMMAND_2!
	["h00y0000"] = "und dann !NG_COMMAND_2! die Zweite rechts abbiegen",
	-- 231: After !DIST! !UNIT! enter the urban motorway
	["bl00i000"] = "Nach !DIST! !UNIT! auf die Stadtautobahn fahren",
	-- 232: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0pia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Stadtautobahn !STREET! fahren",
	-- 233: Now enter the motorway
	["a000f000"] = "Jetzt auf die Autobahn fahren",
	-- 234: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["c00si000"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn fahren",
	-- 235: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0oia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Stadtautobahn !STREET! fahren",
	-- 236: At the end of the road turn slightly left !NG_COMMAND_1! onto !STREET!
	["c00w0d00"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen !STREET!",
	-- 237: and then turn slightly left !NG_COMMAND_2!
	["h00w0000"] = "und dann !NG_COMMAND_2! leicht links abbiegen",
	-- 238: and then immediately turn slightly left !NG_COMMAND_2!
	["j00w0000"] = "und dann sofort !NG_COMMAND_2! leicht links abbiegen",
	-- 239: and then immediately take the second right !NG_COMMAND_2! onto !STREET!
	["j00y0d00"] = "und dann sofort !NG_COMMAND_2! die Zweite rechts abbiegen !STREET!",
	-- 240: and then take the second right !NG_COMMAND_2! onto !STREET!
	["h00y0d00"] = "und dann !NG_COMMAND_2! die Zweite rechts abbiegen !STREET! ",
	-- 241: and then immediately enter the motorway !NG_COMMAND_2!
	["j000f000"] = "und dann sofort !NG_COMMAND_2! auf die Autobahn fahren",
	-- 242: Now turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["a00si000"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn fahren",
	-- 243: Now turn slightly left !NG_COMMAND_1!
	["a00w0000"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen",
	-- 244: After the junction turn sharply right !NG_COMMAND_1!
	["bz0s0000"] = "Nach der Kreuzung !NG_COMMAND_1! scharf rechts abbiegen",
	-- 245: At the end of the road turn slightly left !NG_COMMAND_1!
	["c00w0000"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen",
	-- 246: and then enter the motorway !NG_COMMAND_2!
	["h000f000"] = "und dann !NG_COMMAND_2! auf die Autobahn fahren",
	-- 247: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["bl0wi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn fahren",
	-- 248: Now keep right !NG_COMMAND_1!
	["a00p0000"] = "Jetzt !NG_COMMAND_1! rechts halten",
	-- 249: and then immediately keep left !NG_COMMAND_2! onto !STREET!
	["j00x0d00"] = "und dann sofort !NG_COMMAND_2! links halten !STREET!",
	-- 250: and then immediately turn right !STREET! towards !SIGNPOST!
	["j00r0ac0"] = "und dann sofort rechts abbiegen !STREET! Richtung !SIGNPOST!",
	-- 251: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0wfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn !STREET! fahren",
	-- 252: and then keep right !NG_COMMAND_2!
	["h00p0000"] = "und dann !NG_COMMAND_2! rechts halten",
	-- 253: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway
	["bl0xf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Autobahn fahren",
	-- 254: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000gc00"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET! nehmen",
	-- 255: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ti0c0"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 256: and then immediately take the second left !NG_COMMAND_2! onto !STREET!
	["j00z0d00"] = "und dann sofort !NG_COMMAND_2! die Zweite links abbiegen !STREET!",
	-- 257: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0edz"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 258: and then take the middle lane !NG_COMMAND_2! towards !STREET!
	["h00o0c00"] = "und dann !NG_COMMAND_2! die mittlere Spur nehmen Richtung !STREET!",
	-- 259: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0nf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 260: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0of0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 261: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET!
	["bl0w0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen Richtung !STREET!",
	-- 262: and then take the second left !NG_COMMAND_2! onto !STREET!
	["h00z0d00"] = "und dann !NG_COMMAND_2! die Zweite links abbiegen !STREET!",
	-- 263: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["bl0r0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen",
	-- 264: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0p0e0x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 265: After the junction turn left !NG_COMMAND_1!
	["bz0v0000"] = "Nach der Kreuzung !NG_COMMAND_1! links abbiegen",
	-- 266: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0q000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 267: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00wia00"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 268: and then take the exit !NG_COMMAND_2!
	["h000d000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 269: At the end of the road make a u turn !NG_COMMAND_1! onto !STREET!
	["c00t0d00"] = "Am Ende der Straße !NG_COMMAND_1! wenden !STREET!",
	-- 270: and then take the ferry towards !STREET_2! !SIGNPOST_2!
	["h00m000x"] = "und dann die Fähre Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 271: and then take the ferry !NG_COMMAND_2! towards !STREET!
	["h000mc00"] = "und dann !NG_COMMAND_2! die Fähre Richtung !STREET! nehmen",
	-- 272: and then you will reach your destination !NG_COMMAND_2!
	["h000a000"] = "und dann !NG_COMMAND_2! haben Sie Ihr Ziel erreicht",
	-- 273: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000dc00"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET! nehmen ",
	-- 274: and then keep right !NG_COMMAND_2! towards !SIGNPOST!
	["h00p00c0"] = "und dann !NG_COMMAND_2! rechts halten Richtung !SIGNPOST!",
	-- 275: and then immediately turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["j00q00c0"] = "und dann sofort !NG_COMMAND_2! leicht rechts abbiegen Richtung !SIGNPOST!",
	-- 276: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway
	["bl0wf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn fahren",
	-- 277: and then immediately go straight ahead !NG_COMMAND_2!
	["j00n0000"] = "und dann sofort !NG_COMMAND_2! geradeaus fahren",
	-- 278: and then immediately make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["j00t00c0"] = "und dann sofort !NG_COMMAND_2! wenden Richtung !SIGNPOST!",
	-- 279: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0siac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 280: Follow the course of the road for !DIST! !UNIT!
	["el000000"] = "Folgen Sie dem Verlauf der Straße für !DIST! !UNIT!",
	-- 281: Follow the motorway
	["d0000000"] = "Folgen Sie der Autobahn",
	-- 282: and then immediately keep right !NG_COMMAND_2! towards !SIGNPOST!
	["j00p00c0"] = "und dann sofort !NG_COMMAND_2! rechts halten Richtung !SIGNPOST!",
	-- 283: and then immediately keep left !NG_COMMAND_2! towards !SIGNPOST!
	["j00x00c0"] = "und dann sofort !NG_COMMAND_2! links halten Richtung !SIGNPOST!",
	-- 284: and then enter the motorway !STREET! towards !SIGNPOST!
	["h00f0ac0"] = "und dann auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 285: and then immediately turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["j00s00c0"] = "und dann sofort !NG_COMMAND_2! scharf rechts abbiegen Richtung !SIGNPOST!",
	-- 286: and then immediately turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["j00w00c0"] = "und dann sofort !NG_COMMAND_2! leicht links abbiegen Richtung !SIGNPOST!",
	-- 287: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0edz"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 288: and then immediately turn left !NG_COMMAND_2! towards !SIGNPOST!
	["j00v00c0"] = "und dann sofort !NG_COMMAND_2! links abbiegen Richtung !SIGNPOST!",
	-- 289: and then immediately enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000i0c0"] = "und dann sofort !NG_COMMAND_2! auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 290: and then immediately enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000f0c0"] = "und dann sofort !NG_COMMAND_2! auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 291: and then take the second left !NG_COMMAND_2!
	["h00z0000"] = "und dann !NG_COMMAND_2! die Zweite links abbiegen",
	-- 292: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET!
	["c00w0c00"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen Richtung !STREET!",
	-- 293: and then immediately take the second left !NG_COMMAND_2!
	["j00z0000"] = "und dann sofort !NG_COMMAND_2! die Zweite links abbiegen",
	-- 294: Now keep left !NG_COMMAND_1! enter the urban motorway
	["a00xi000"] = "Jetzt !NG_COMMAND_1! links halten, auf die Stadtautobahn fahren",
	-- 295: and then immediately take the ferry !NG_COMMAND_2!
	["j000m000"] = "und dann sofort !NG_COMMAND_2! die Fähre nehmen",
	-- 296: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto !STREET!
	["bl0r0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen !STREET!",
	-- 297: and then turn slightly left !NG_COMMAND_2! towards !STREET!
	["h00w0c00"] = "und dann !NG_COMMAND_2! leicht links abbiegen Richtung !STREET!",
	-- 298: and then immediately take the exit !NG_COMMAND_2!
	["j000d000"] = "und dann sofort !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 299: and then keep left !NG_COMMAND_2! towards !SIGNPOST!
	["h00x00c0"] = "und dann !NG_COMMAND_2! links halten Richtung !SIGNPOST!",
	-- 300: and then immediately take the ferry !NG_COMMAND_2! towards !STREET!
	["j000mc00"] = "und dann sofort !NG_COMMAND_2! die Fähre Richtung !STREET! nehmen",
	-- 301: and then take the exit !NG_COMMAND_2!
	["h000j000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 302: and then immediately take the exit !NG_COMMAND_2! onto !STREET!
	["j000dd00"] = "und dann sofort !NG_COMMAND_2! die Ausfahrt nehmen !STREET!",
	-- 303: and then immediately take the exit !NG_COMMAND_2!
	["j000j000"] = "und dann sofort !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 304: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0vfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Autobahn !STREET! fahren",
	-- 305: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["bl0ni000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Stadtautobahn fahren",
	-- 306: and then go straight ahead !NG_COMMAND_2!
	["h00n0000"] = "und dann !NG_COMMAND_2! geradeaus fahren",
	-- 307: After the junction keep left !NG_COMMAND_1!
	["bz0x0000"] = "Nach der Kreuzung !NG_COMMAND_1! links halten",
	-- 308: drive to nearest road
	["000l0000"] = "Fahren Sie zur nächsten Straße",
	-- 309: and then immediately keep left !NG_COMMAND_2! towards !STREET!
	["j00x0c00"] = "und dann sofort !NG_COMMAND_2! links halten Richtung !STREET!",
	-- 310: and then immediately enter the motorway !STREET! towards !SIGNPOST!
	["j000fac0"] = "und dann sofort auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 311: and then immediately enter the motorway !STREET!
	["j000fa00"] = "und dann sofort auf die Autobahn !STREET! fahren",
	-- 312: and then immediately take the second left !NG_COMMAND_2! towards !STREET!
	["j00z0c00"] = "und dann sofort !NG_COMMAND_2! die Zweite links abbiegen !STREET!",
	-- 313: Now go straight ahead !NG_COMMAND_1!
	["a00n0000"] = "Jetzt !NG_COMMAND_1! geradeaus fahren",
	-- 314: and then immediately turn slightly left !NG_COMMAND_2! towards !STREET!
	["j00w0c00"] = "und dann sofort !NG_COMMAND_2! leicht links abbiegen !STREET!",
	-- 315: and then immediately take the second left , !STREET!
	["j00z0a00"] = "und dann sofort die Zweite links nehmen !STREET!",
	-- 316: and then immediately make a u turn, !STREET! towards !SIGNPOST!
	["j00t0ac0"] = "und dann sofort wenden !STREET! Richtung !SIGNPOST!",
	-- 317: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET!
	["bl0u0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen Richtung !STREET!",
	-- 318: and then immediately keep right, !STREET! towards !SIGNPOST!
	["j00p0ac0"] = "und dann sofort rechts halten !STREET! Richtung !SIGNPOST!",
	-- 319: and then immediately turn left, !STREET! towards !SIGNPOST!
	["j00v0ac0"] = "und dann sofort links abbiegen !STREET! Richtung !SIGNPOST!",
	-- 320: and then immediately turn sharply left !NG_COMMAND_2! onto !STREET!
	["j00u0d00"] = "und dann sofort !NG_COMMAND_2! scharf links abbiegen !STREET!",
	-- 321: and then immediately go straight ahead !NG_COMMAND_2! towards !STREET!
	["j00n0c00"] = "und dann sofort !NG_COMMAND_2! geradeaus fahren !STREET!",
	-- 322: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0tfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 323: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway
	["c00ti000"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Stadtautobahn fahren ",
	-- 324: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0vfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 325: At the end of the road turn sharply left !NG_COMMAND_1! onto !STREET!
	["c00u0d00"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen !STREET!",
	-- 326: and then take the second left !NG_COMMAND_2! towards !STREET!
	["h00z0c00"] = "und dann !NG_COMMAND_2! die Zweite links abbiegen Richtung !STREET!",
	-- 327: and then immediately turn slightly right !NG_COMMAND_2!
	["j00q0000"] = "und dann sofort !NG_COMMAND_2! leicht rechts abbiegen",
	-- 328: and then go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["h00n00c0"] = "und dann !NG_COMMAND_2! geradeaus fahren Richtung !SIGNPOST! ",
	-- 329: After the junction turn right !NG_COMMAND_1!
	["bz0r0000"] = "Nach der Kreuzung !NG_COMMAND_1! rechts abbiegen",
	-- 330: and then immediately go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["j00n00c0"] = "und dann sofort !NG_COMMAND_2! geradeaus fahren Richtung !SIGNPOST!",
	-- 331: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j00t0d00"] = "und dann sofort !NG_COMMAND_2! wenden !STREET!",
	-- 332: and then immediately make a u turn !NG_COMMAND_2!
	["j00t0000"] = "und dann sofort !NG_COMMAND_2! wenden",
	-- 333: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0p0e00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! nehmen",
	-- 334: and then immediately enter the urban motorway !STREET!
	["j000ia00"] = "und dann sofort auf die Stadtautobahn !STREET! fahren",
	-- 335: and then keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["h00x0ac0"] = "und dann !NG_COMMAND_2! links halten !STREET! Richtung !SIGNPOST!",
	-- 336: and then immediately turn right !NG_COMMAND_2! towards !STREET!
	["j00r0c00"] = "und dann sofort !NG_COMMAND_2! rechts abbiegen Richtung !STREET!",
	-- 337: and then immediately turn right !NG_COMMAND_2! onto !STREET!
	["j00r0d00"] = "und dann sofort !NG_COMMAND_2! rechts abbiegen !STREET! ",
	-- 338: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0wia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 339: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["bl0si000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn fahren ",
	-- 340: and then immediately turn right !NG_COMMAND_2! towards !SIGNPOST!
	["j00r00c0"] = "und dann sofort !NG_COMMAND_2! rechts abbiegen Richtung !SIGNPOST!",
	-- 341: and then immediately turn sharply right !NG_COMMAND_2! towards !STREET!
	["j00s0c00"] = "und dann sofort !NG_COMMAND_2! scharf rechts abbiegen Richtung !STREET! ",
	-- 342: and then turn right !NG_COMMAND_2! towards !SIGNPOST!
	["h00r00c0"] = "und dann !NG_COMMAND_2! rechts abbiegen Richtung !SIGNPOST!",
	-- 343: and then enter the urban motorway !STREET!
	["h000ia00"] = "und dann auf die Stadtautobahn !STREET! fahren",
	-- 344: Now keep left !NG_COMMAND_1! , enter the motorway
	["a00xf000"] = "Jetzt !NG_COMMAND_1! links halten, auf die Autobahn fahren",
	-- 345: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["bl0ui000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn fahren",
	-- 346: and then immediately turn sharply right !NG_COMMAND_2!
	["j00s0000"] = "und dann sofort !NG_COMMAND_2! scharf rechts abbiegen",
	-- 347: and then immediately turn sharply left !NG_COMMAND_2! towards !STREET!
	["j00u0c00"] = "und dann sofort !NG_COMMAND_2! scharf links abbiegen Richtung !STREET!",
	-- 348: and then immediately turn sharply left !NG_COMMAND_2!
	["j00u0000"] = "und dann sofort !NG_COMMAND_2! scharf links abbiegen",
	-- 349: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0x0edx"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen Richtung !STREET_2! !SIGNPOST_2! ",
	-- 350: and then immediately take the second right !NG_COMMAND_2! towards !STREET!
	["j00y0c00"] = "und dann sofort !NG_COMMAND_2! die Zweite rechts nehmen Richtung !STREET!",
	-- 351: and then immediately turn slightly left !NG_COMMAND_2! onto !STREET!
	["j00w0d00"] = "und dann sofort !NG_COMMAND_2! leicht links abbiegen !STREET!",
	-- 352: and then take the second right !NG_COMMAND_2! towards !STREET!
	["h00y0c00"] = "und dann !NG_COMMAND_2! die Zweite rechts nehmen Richtung !STREET!",
	-- 353: and then immediately turn left !NG_COMMAND_2! towards !STREET!
	["j00v0c00"] = "und dann sofort !NG_COMMAND_2! links abbiegen Richtung !STREET!",
	-- 354: and then immediately keep left, !STREET!
	["j00x0a00"] = "und dann sofort links halten !STREET!",
	-- 355: and then immediately take the middle lane !NG_COMMAND_2! towards !STREET!
	["j00o0c00"] = "und dann sofort !NG_COMMAND_2! die mittlere Spur nehmen Richtung !STREET! ",
	-- 356: After the junction take the middle lane !NG_COMMAND_1!
	["bz0o0000"] = "Nach der Kreuzung !NG_COMMAND_1! die mittlere Spur nehmen",
	-- 357: and then immediately take the middle lane !NG_COMMAND_2! onto !STREET!
	["j00o0d00"] = "und dann sofort !NG_COMMAND_2! die mittlere Spur nehmen !STREET! ",
	-- 358: At the end of the road turn sharply left !NG_COMMAND_1!
	["c00u0000"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen",
	-- 359: and then turn sharply left !NG_COMMAND_2!
	["h00u0000"] = "und dann !NG_COMMAND_2! scharf links abbiegen",
	-- 360: and then immediately turn left !NG_COMMAND_2! onto !STREET!
	["j00v0d00"] = "und dann sofort !NG_COMMAND_2! links abbiegen !STREET!",
	-- 361: and then immediately make a u turn, !STREET!
	["j00t0a00"] = "und dann sofort wenden !STREET! ",
	-- 362: and then immediately keep right, !STREET!
	["j00p0a00"] = "und dann sofort rechts halten !STREET!",
	-- 363: and then immediately go straight ahead, !STREET! towards !SIGNPOST!
	["j00n0ac0"] = "und dann sofort geradeaus fahren !STREET! Richtung !SIGNPOST!",
	-- 364: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fg"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen und die Ausfahrt nehmen ",
	-- 365: and then immediately turn right, !STREET!
	["j00r0a00"] = "und dann sofort rechts abbiegen !STREET!",
	-- 366: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0rf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 367: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0xf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 368: Now turn sharply left !NG_COMMAND_1!
	["a00u0000"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen",
	-- 369: At the end of the road turn left !NG_COMMAND_1! onto !STREET!
	["c00v0d00"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen !STREET!",
	-- 370: and then take the middle lane, !STREET! towards !SIGNPOST!
	["h00o0ac0"] = "und dann die mittlere Spur nehmen !STREET! Richtung !SIGNPOST!",
	-- 371: After !DIST! !UNIT! take the exit !NG_COMMAND_1! towards !STREET!
	["bl0d0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Ausfahrt Richtung !STREET! nehmen",
	-- 372: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0vi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 373: and then immediately turn slightly left, !STREET!
	["j00w0a00"] = "und dann sofort leicht links abbiegen !STREET! ",
	-- 374: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1!
	["bl0n0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren",
	-- 375: and then you will reach your stopover !NG_COMMAND_2! on !STREET!
	["h000bb00"] = "und dann !NG_COMMAND_2! haben Sie Ihr Zwischenziel !STREET! erreicht",
	-- 376: and then go straight ahead, !STREET! towards !SIGNPOST!
	["h00n0ac0"] = "und dann geradeaus fahren !STREET! Richtung !SIGNPOST!",
	-- 377: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00wfa00"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn !STREET! fahren",
	-- 378: and then keep left !NG_COMMAND_2!
	["h00x0000"] = "und dann !NG_COMMAND_2! links halten",
	-- 379: and then turn slightly right !NG_COMMAND_2!
	["h00q0000"] = "und dann !NG_COMMAND_2! leicht rechts abbiegen",
	-- 380: and then turn right !NG_COMMAND_2!
	["h00r0000"] = "und dann !NG_COMMAND_2! rechts abbiegen",
	-- 381: and then you will reach your destination !NG_COMMAND_2!
	["h00a0000"] = "und dann !NG_COMMAND_2! haben Sie Ihr Ziel erreicht",
	-- 382: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0o000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen Richtung !STREET_2! !SIGNPOST_2!",
	-- 383: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000jc00"] = "und dann !NG_COMMAND_2! die Ausfahrt Richtung !STREET! nehmen",
	-- 384: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway
	["bl0qf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn fahren",
	-- 385: and then keep left !NG_COMMAND_2! onto !STREET!
	["h00x0d00"] = "und dann !NG_COMMAND_2! links halten !STREET!",
	-- 386: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000g"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, die Ausfahrt nehmen",
	-- 387: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000gd00"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen !STREET! ",
	-- 388: and then turn slightly left !NG_COMMAND_2! onto !STREET!
	["h00w0d00"] = "und dann !NG_COMMAND_2! leicht links abbiegen !STREET!",
	-- 389: and then turn sharply right !NG_COMMAND_2! onto !STREET!
	["h00s0d00"] = "und dann !NG_COMMAND_2! scharf rechts abbiegen !STREET!",
	-- 390: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fg"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen und die Ausfahrt nehmen",
	-- 391: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000jd00"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen !STREET! ",
	-- 392: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00rfac0"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 393: and then go straight ahead !NG_COMMAND_2! onto !STREET!
	["h00n0d00"] = "und dann !NG_COMMAND_2! geradeaus fahren !STREET! ",
	-- 394: At the end of the road turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00v000x"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 395: and then go straight ahead !NG_COMMAND_2! towards !STREET!
	["h00n0c00"] = "und dann !NG_COMMAND_2! geradeaus fahren Richtung !STREET!",
	-- 396: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h00t0d00"] = "und dann !NG_COMMAND_2! wenden !STREET! ",
	-- 397: After !DIST! !UNIT! turn left !NG_COMMAND_1! enter the motorway
	["bl0vf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Autobahn fahren",
	-- 398: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0pf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 399: and then turn sharply left !NG_COMMAND_2! onto !STREET!
	["h00u0d00"] = "und dann !NG_COMMAND_2! scharf links abbiegen !STREET!",
	-- 400: and then turn sharply left !NG_COMMAND_2! towards !STREET!
	["h00u0c00"] = "und dann !NG_COMMAND_2! scharf links abbiegen Richtung !STREET! ",
	-- 401: and then turn left !NG_COMMAND_2! onto !STREET!
	["h00v0d00"] = "und dann !NG_COMMAND_2! links abbiegen !STREET!",
	-- 402: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0nfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Autobahn !STREET! fahren",
	-- 403: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0ria00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 404: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway
	["bl0of000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Autobahn fahren",
	-- 405: and then keep right !NG_COMMAND_2! onto !STREET!
	["h00p0d00"] = "und dann !NG_COMMAND_2! rechts halten !STREET! ",
	-- 406: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! onto !STREET!
	["bl0n0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren !STREET!",
	-- 407: and then keep right !NG_COMMAND_2! towards !STREET!
	["h00p0c00"] = "und dann !NG_COMMAND_2! rechts halten Richtung !STREET!",
	-- 408: and then turn slightly right !NG_COMMAND_2! onto !STREET!
	["h00q0d00"] = "und dann !NG_COMMAND_2! leicht rechts abbiegen !STREET!",
	-- 409: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0n0e0x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 410: At the end of the road turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00rf0c0"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 411: and then turn sharply right !NG_COMMAND_2! towards !STREET!
	["h00s0c00"] = "und dann !NG_COMMAND_2! scharf rechts abbiegen Richtung !STREET!",
	-- 412: and then turn right !NG_COMMAND_2! onto !STREET!
	["h00r0d00"] = "und dann !NG_COMMAND_2! rechts abbiegen !STREET!",
	-- 413: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0vf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 414: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway
	["c00wf000"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn fahren",
	-- 415: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h000iac0"] = "und dann auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 416: Now keep left !NG_COMMAND_1!
	["a00x0000"] = "Jetzt !NG_COMMAND_1! links halten",
	-- 417: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00wiac0"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 418: and then enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000f0c0"] = "und dann !NG_COMMAND_2! auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 419: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0xi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 420: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ri0c0"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 421: and then enter the motorway !STREET!
	["h000fa00"] = "und dann auf die Autobahn !STREET! fahren",
	-- 422: and then go straight ahead, !STREET!
	["h00n0a00"] = "und dann geradeaus fahren !STREET!",
	-- 423: and then immediately keep left !NG_COMMAND_2!
	["j00x0000"] = "und dann sofort !NG_COMMAND_2! links halten",
	-- 424: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00w000x"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 425: and then make a u turn, !STREET! towards !SIGNPOST!
	["h00t0ac0"] = "und dann wenden !STREET! Richtung !SIGNPOST!",
	-- 426: and then take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["h00o00c0"] = "und dann !NG_COMMAND_2! die mittlere Spur nehmen Richtung !SIGNPOST!",
	-- 427: and then immediately turn sharply right, !STREET!
	["j00s0a00"] = "und dann sofort scharf rechts abbiegen !STREET!",
	-- 428: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00sia00"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 429: and then keep left, !STREET!
	["h00x0a00"] = "und dann links halten !STREET!",
	-- 430: Now turn sharply right !NG_COMMAND_1! , enter the motorway
	["a00sf000"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn fahren",
	-- 431: and then make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["h00t00c0"] = "und dann !NG_COMMAND_2! wenden Richtung !SIGNPOST!",
	-- 432: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway
	["c00sf000"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn fahren",
	-- 433: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["bl0u0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen",
	-- 434: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00tia00"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Stadtautobahn !STREET! fahren",
	-- 435: and then turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["h00w00c0"] = "und dann !NG_COMMAND_2! leicht links abbiegen Richtung !SIGNPOST!",
	-- 436: and then turn sharply left, !STREET!
	["h00u0a00"] = "und dann scharf links abbiegen !STREET!",
	-- 437: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000g"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, die Ausfahrt nehmen",
	-- 438: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00si0c0"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 439: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00riac0"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 440: and then turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["h00q00c0"] = "und dann !NG_COMMAND_2! leicht rechts abbiegen Richtung !SIGNPOST! ",
	-- 441: and then turn sharply right, !STREET!
	["h00s0a00"] = "und dann scharf rechts abbiegen !STREET!",
	-- 442: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["bl0v0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen",
	-- 443: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0e0z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 444: and then turn sharply right, !STREET! towards !SIGNPOST!
	["h00s0ac0"] = "und dann scharf rechts abbiegen !STREET! Richtung !SIGNPOST!",
	-- 445: and then turn right onto !STREET! towards !SIGNPOST!
	["h00r0ac0"] = "und dann rechts abbiegen !STREET! Richtung !SIGNPOST!",
	-- 446: and then !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["h000czb0"] = "und dann im Kreisverkehr !EXIT_NO_ROUNDABOUT! Richtung !STREET! ",
	-- 447: and then take the exit !NG_COMMAND_2!
	["h00j0000"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen",
	-- 448: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h00c0z00"] = "und dann im Kreisverkehr !EXIT_NO_ROUNDABOUT!",
	-- 449: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET!
	["bl0x0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten Richtung !STREET!",
	-- 450: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0x000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten Richtung !STREET_2! !SIGNPOST_2!",
	-- 451: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0v000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 452: After the junction make a u turn !NG_COMMAND_1!
	["bz0t0000"] = "Nach der Kreuzung !NG_COMMAND_1! wenden",
	-- 453: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0pfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Autobahn !STREET! fahren",
	-- 454: and then enter the motorway !NG_COMMAND_2!
	["h00f0000"] = "und dann !NG_COMMAND_2! auf die Autobahn fahren",
	-- 455: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1!
	["bl0a0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel erreicht",
	-- 456: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000dd00"] = "und dann !NG_COMMAND_2! die Ausfahrt nehmen !STREET!",
	-- 457: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0wf0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 458: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h000cz00"] = "und dann im Kreisverkehr !EXIT_NO_ROUNDABOUT!",
	-- 459: and then take the ferry !NG_COMMAND_2!
	["h000m000"] = "und dann !NG_COMMAND_2! die Fähre nehmen",
	-- 460: and then enter the urban motorway !STREET!
	["h00i0a00"] = "und dann auf die Stadtautobahn !STREET! fahren",
	-- 461: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway
	["bl0xi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Stadtautobahn fahren",
	-- 462: and then enter the motorway towards !SIGNPOST!
	["h00f00c0"] = "und dann auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 463: and then enter the motorway !STREET!
	["h00f0a00"] = "und dann auf die Autobahn !STREET! fahren",
	-- 464: and then immediately turn right !NG_COMMAND_2!
	["j00r0000"] = "und dann sofort !NG_COMMAND_2! rechts abbiegen",
	-- 465: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fg"] = "Jetzt !NG_COMMAND_1! links halten und die Ausfahrt nehmen",
	-- 466: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0r000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 467: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET!
	["bl0o0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen Richtung !STREET!",
	-- 468: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000g"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, die Ausfahrt nehmen",
	-- 469: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000g"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, die Ausfahrt nehmen",
	-- 470: and then make a u turn, !STREET!
	["h00t0a00"] = "und dann wenden !STREET!",
	-- 471: Now turn right !NG_COMMAND_1!
	["a00r0000"] = "Jetzt !NG_COMMAND_1! rechts abbiegen",
	-- 472: and then turn left !NG_COMMAND_2! towards !SIGNPOST!
	["h00v00c0"] = "und dann !NG_COMMAND_2! links abbiegen Richtung !SIGNPOST!",
	-- 473: At the end of the road turn right !NG_COMMAND_1!
	["c00r0000"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen",
	-- 474: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0p000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten Richtung !STREET_2! !SIGNPOST_2!",
	-- 475: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0s000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 476: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0u000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 477: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00qfa00"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 478: After !DIST! !UNIT! keep left !NG_COMMAND_1! onto !STREET!
	["bl0x0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten !STREET!",
	-- 479: and then enter the urban motorway !NG_COMMAND_2!
	["h00i0000"] = "und dann !NG_COMMAND_2! auf die Stadtautobahn fahren",
	-- 480: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0n0e0y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! folgen",
	-- 481: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0rfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 482: After !DIST! !UNIT! enter the urban motorway !STREET! towards !SIGNPOST!
	["bl00iac0"] = "Nach !DIST! !UNIT! auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 483: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0xiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 484: Now turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["a00wi000"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn fahren",
	-- 485: After !DIST! !UNIT! keep left !NG_COMMAND_1! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0x0e0y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! folgen",
	-- 486: At the end of the road turn left !NG_COMMAND_1! , enter the motorway
	["c00vf000"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Autobahn fahren",
	-- 487: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00sf0c0"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 488: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0w000x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 489: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !SIGNPOST!
	["h000czc0"] = "und dann im Kreisverkehr !EXIT_NO_ROUNDABOUT! Richtung !SIGNPOST!",
	-- 490: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00uiac0"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 491: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0x0e00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! nehmen",
	-- 492: and then immediately keep right !NG_COMMAND_2! towards !STREET!
	["j00p0c00"] = "und dann sofort !NG_COMMAND_2! rechts halten Richtung !STREET!",
	-- 493: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0e0z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 494: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000e0z"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 495: After !DIST! !UNIT! take exit !EXIT_NUMBER!
	["bl000e00"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! nehmen",
	-- 496: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000g"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 497: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0sfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 498: Now keep right !NG_COMMAND_1! , take the exit
	["a00p000g"] = "Jetzt !NG_COMMAND_1! rechts halten, die Ausfahrt nehmen",
	-- 499: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["bl0u0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen !STREET!",
	-- 500: Now take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["a00oi000"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen, auf die Stadtautobahn fahren",
	-- 501: After !DIST! !UNIT! keep right !NG_COMMAND_1! onto !STREET!
	["bl0p0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten !STREET!",
	-- 502: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0t0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden",
	-- 503: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ufa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn !STREET! fahren",
	-- 504: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00vfac0"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 505: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0qia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 506: Now keep right !NG_COMMAND_1! enter the motorway
	["a00pf000"] = "Jetzt !NG_COMMAND_1! rechts halten, auf die Autobahn fahren",
	-- 507: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0x0e0x"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 508: and then immediately enter the urban motorway !STREET! towards !SIGNPOST!
	["j000iac0"] = "und dann sofort auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 509: and then immediately turn sharply right !NG_COMMAND_2! onto !STREET!
	["j00s0d00"] = "und dann sofort !NG_COMMAND_2! scharf rechts abbiegen !STREET!",
	-- 510: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0p0e0y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! folgen",
	-- 511: Now turn slightly left !NG_COMMAND_1! , enter the motorway
	["a00wf000"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn fahren",
	-- 512: Now turn left !NG_COMMAND_1! , enter the motorway
	["a00vf000"] = "Jetzt !NG_COMMAND_1! links abbiegen, auf die Autobahn fahren",
	-- 513: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000g"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen, die Ausfahrt nehmen",
	-- 514: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ui0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 515: At the end of the road turn sharply right !NG_COMMAND_1! onto !STREET!
	["c00s0d00"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen !STREET!",
	-- 516: Now take the middle lane !NG_COMMAND_1! enter the motorway
	["a00of000"] = "Jetzt !NG_COMMAND_1! die mittlere Spur nehmen, auf die Autobahn fahren",
	-- 517: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00tiac0"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 518: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET!
	["c00t0c00"] = "Am Ende der Straße !NG_COMMAND_1! wenden Richtung !STREET! ",
	-- 519: At the end of the road make a u turn !NG_COMMAND_1! enter the motorway !STREET! towards !SIGNPOST!
	["c00tfac0"] = "Am Ende der Straße !NG_COMMAND_1! wenden, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 520: Now turn slightly right !NG_COMMAND_1! , enter the motorway
	["a00qf000"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn fahren",
	-- 521: At the end of the road turn slightly right !NG_COMMAND_1! onto !STREET!
	["c00q0d00"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen !STREET! ",
	-- 522: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0niac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 523: At the end of the road turn left !NG_COMMAND_1! towards !STREET!
	["c00v0c00"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen Richtung !STREET!",
	-- 524: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0nia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Stadtautobahn !STREET! fahren",
	-- 525: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0tiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 526: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j00t0c00"] = "und dann sofort !NG_COMMAND_2! wenden Richtung !STREET!",
	-- 527: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0pi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 528: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h00t0c00"] = "und dann !NG_COMMAND_2! wenden Richtung !STREET!",
	-- 529: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0o0ed0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen",
	-- 530: and then turn left !NG_COMMAND_2! towards !STREET!
	["h00v0c00"] = "und dann !NG_COMMAND_2! links abbiegen !STREET!",
	-- 531: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ri0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 532: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0sfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 533: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00u000x"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 534: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0wiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 535: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0wi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 536: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0viac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 537: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway
	["bl0vi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn fahren",
	-- 538: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0oiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 539: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0p0edx"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 540: After !DIST! !UNIT! take the ferry !NG_COMMAND_1! towards !STREET!
	["bl0m0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Fähre Richtung !STREET! nehmen",
	-- 541: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["bl0oi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, auf die Stadtautobahn fahren",
	-- 542: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0qfa00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn !STREET! fahren",
	-- 543: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0nfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 544: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway
	["bl0pf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Autobahn fahren",
	-- 545: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0xfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 546: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0rfac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 547: Now make a u turn !NG_COMMAND_1!
	["a00t0000"] = "Jetzt !NG_COMMAND_1! wenden",
	-- 548: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["c00qi000"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn fahren",
	-- 549: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ufac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 550: Now turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["a00qi000"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn fahren",
	-- 551: and then turn right !NG_COMMAND_2! towards !STREET!
	["h00r0c00"] = "und dann !NG_COMMAND_2! rechts abbiegen Richtung !STREET!",
	-- 552: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET!
	["bl0p0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten Richtung !STREET!",
	-- 553: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway
	["bl0pi000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten, auf die Stadtautobahn fahren",
	-- 554: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00t000x"] = "Am Ende der Straße !NG_COMMAND_1! wenden Richtung !STREET_2! !SIGNPOST_2!",
	-- 555: At the end of the road turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00r000x"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 556: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00s000x"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 557: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0o0e0y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! folgen",
	-- 558: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway
	["bl0uf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn fahren",
	-- 559: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0uia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 560: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["c00ui000"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn fahren",
	-- 561: Now turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["a00ui000"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, auf die Stadtautobahn fahren",
	-- 562: and then you will reach your stopover !NG_COMMAND_2!
	["h00b0000"] = "und dann !NG_COMMAND_2! haben Sie Ihr Zwischenziel erreicht",
	-- 563: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0qiac0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 564: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00ria00"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 565: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET!
	["bl0n0c00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren Richtung !STREET!",
	-- 566: At the end of the road turn right !NG_COMMAND_1! towards !STREET!
	["c00r0c00"] = "Am Ende der Straße !NG_COMMAND_1! rechts abbiegen Richtung !STREET!",
	-- 567: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00vi0c0"] = "Am Ende der Straße !NG_COMMAND_1! links abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 568: and then keep right, !STREET! towards !SIGNPOST!
	["h00p0ac0"] = "und dann rechts halten !STREET! Richtung !SIGNPOST!",
	-- 569: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["bl0t0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden !STREET! ",
	-- 570: and then immediately turn slightly right !NG_COMMAND_2! towards !STREET!
	["j00q0c00"] = "und dann sofort !NG_COMMAND_2! leicht rechts abbiegen Richtung !STREET!",
	-- 571: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00ufac0"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 572: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00sfac0"] = "Am Ende der Straße !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn !STREET! Richtung !SIGNPOST! fahren",
	-- 573: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0n0e00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! nehmen",
	-- 574: At the end of the road you will reach your destination !NG_COMMAND_1! on !STREET!
	["c00a0b00"] = "Am Ende der Straße !NG_COMMAND_1! haben Sie Ihr Ziel !STREET! erreicht",
	-- 575: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00q000x"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen Richtung !STREET_2! !SIGNPOST_2!",
	-- 576: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET!
	["c00q0c00"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen Richtung !STREET!",
	-- 577: After !DIST! !UNIT! keep left !NG_COMMAND_1!
	["bl0x0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten",
	-- 578: At the end of the road turn sharply left !NG_COMMAND_1! enter the motorway towards !SIGNPOST!
	["c00uf0c0"] = "Am Ende der Straße !NG_COMMAND_1! scharf links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 579: and then immediately go straight ahead !NG_COMMAND_2! onto !STREET!
	["j00n0d00"] = "und dann sofort !NG_COMMAND_2! geradeaus fahren !STREET!",
	-- 580: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000i0c0"] = "und dann !NG_COMMAND_2! auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 581: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway
	["c00qf000"] = "Am Ende der Straße !NG_COMMAND_1! leicht rechts abbiegen, auf die Autobahn fahren",
	-- 582: and then turn slightly right !NG_COMMAND_2! towards !STREET!
	["h00q0c00"] = "und dann !NG_COMMAND_2! leicht rechts abbiegen Richtung !STREET!",
	-- 583: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0e0z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 584: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl0d0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Ausfahrt nehmen",
	-- 585: Traffic on route, detouring
	["s0000000"] = "Verkehrsereignis auf der Route. Sie werden umgeleitet",
	-- 586: After the junction turn sharply left !NG_COMMAND_1!
	["bz0u0000"] = "Nach der Kreuzung !NG_COMMAND_1! scharf links abbiegen",
	-- 587: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway
	["bl0sf000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Autobahn fahren",
	-- 588: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00wf0c0"] = "Am Ende der Straße !NG_COMMAND_1! leicht links abbiegen, auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 589: After the junction turn slightly right !NG_COMMAND_1!
	["bz0q0000"] = "Nach der Kreuzung !NG_COMMAND_1! leicht rechts abbiegen",
	-- 590: Now make a u turn !NG_COMMAND_1!
	["a00e0000"] = "Jetzt !NG_COMMAND_1! wenden",
	-- 591: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0sia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, auf die Stadtautobahn !STREET! fahren",
	-- 592: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0x0edy"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten, Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! folgen",
	-- 593: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0tia00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden, auf die Stadtautobahn !STREET! fahren",
	-- 594: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0n0edx"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus fahren, Ausfahrt !EXIT_NUMBER! !SIGNPOST! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 595: After !DIST! !UNIT! keep right !NG_COMMAND_1!
	["bl0p0000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten",
	-- 596: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! onto !STREET!
	["bl0o0d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen !STREET!",
	-- 597: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0qi0c0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 598: and then immediately turn sharply left onto !STREET!
	["j00u0a00"] = "und dann sofort scharf links abbiegen !STREET!",
	-- 603: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["blt00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden",
	-- 614: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["blt00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden !STREET!",
	-- 615: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! and continue on !STREET!
	["blt00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! wenden und !STREET! folgen",
	-- 621: Now make a u turn !NG_COMMAND_1! onto !STREET!
	["a0t00d00"] = "Jetzt !NG_COMMAND_1! wenden !STREET!",
	-- 630: Now make a u turn !NG_COMMAND_1! and continue on !STREET!
	["a0t00f00"] = "Jetzt !NG_COMMAND_1! wenden und !STREET! folgen",
	-- 653: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your destination
	["ll0a0000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel erreicht",
	-- 654: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["ll0e0000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! wenden",
	-- 656: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your stopover
	["ll0b0000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Zwischenziel erreicht",
	-- 668: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["llt00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! wenden",
	-- 937: After !DIST! !UNIT! enter the highway !STREET!
	["bl00fa00"] = "Nach !DIST! !UNIT! auf die Autobahn !STREET! fahren",
	-- 938: and then immediately keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["j00x0ac0"] = "und dann sofort !NG_COMMAND_2! links halten, !STREET! Richtung !SIGNPOST!",
	-- 939: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl000e0y"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! nehmen und !STREET_2! folgen",
	-- 940: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST!
	["bl000ed0"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen",
	-- 941: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl000edx"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! !SIGNPOST! Richtung !STREET_2! !SIGNPOST_2! nehmen",
	-- 942: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000edz"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 943: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl000edy"] = "Nach !DIST! !UNIT! Ausfahrt !EXIT_NUMBER! !SIGNPOST! nehmen und !STREET_2! folgen",
	-- 944: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your left
	["bl0a000l"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel erreicht. Das Ziel befindet sich auf der linken Seite",
	-- 945: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your right
	["bl0a000r"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel erreicht. Das Ziel befindet sich auf der rechten Seite",
	-- 946: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your left
	["bl0a0b0l"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel !STREET! erreicht. Das Ziel befindet sich auf der linken Seite",
	-- 947: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your right
	["bl0a0b0r"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! haben Sie Ihr Ziel !STREET! erreicht. Das Ziel befindet sich auf der rechten Seite",
	-- 948: After !DIST! !UNIT! enter the motorway towards !SIGNPOST!
	["bl00f0c0"] = "Nach !DIST! !UNIT! auf die Autobahn Richtung !SIGNPOST! fahren",
	-- 949: After !DIST! !UNIT! enter the urban motorway towards !SIGNPOST!
	["bl00i0c0"] = "Nach !DIST! !UNIT! auf die Stadtautobahn Richtung !SIGNPOST! fahren",
	-- 950: After !DIST! !UNIT! enter the urban motorway !STREET!
	["bl00ia00"] = "Nach !DIST! !UNIT! auf die Stadtautobahn !STREET! fahren",
	-- 964: Enter the roundabout
	["000c0y00"] = "In den Kreisverkehr einbiegen",
	-- 965: After !DIST! !UNIT! enter the roundabout
	["bl0c0y00"] = "Nach !DIST! !UNIT! in den Kreisverkehr einbiegen",
	-- 966: At the end of the road enter the roundabout
	["c00c0y00"] = "Am Ende der Straße in den Kreisverkehr einbiegen",
	-- 967: and then enter the roundabout
	["h000cy00"] = "und dann in den Kreisverkehr einbiegen",
	-- 968: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2!
	["bl0x000y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten und !STREET_2! folgen",
	-- 969: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x000z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links halten und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 970: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2!
	["bl0o000y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen und !STREET_2! folgen",
	-- 971: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o000z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Spur nehmen und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 972: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2!
	["bl0p000y"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten und !STREET_2! folgen",
	-- 973: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p000z"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts halten und !STREET_2! Richtung !SIGNPOST_2! folgen",
	-- 974: Follow the course of the road
	["g0000000"] = "Folgen Sie dem Verlauf der Straße",
}

commands_ped = { -- Commands for ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 599: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1!
	["blo00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen",
	-- 600: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["blw00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen",
	-- 601: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["blu00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen",
	-- 602: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bls00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen",
	-- 604: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["blq00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen",
	-- 605: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , !STREET!
	["blo00a00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, !STREET!",
	-- 606: After !DIST! !UNIT! turn left !NG_COMMAND_1! and continue on !STREET!
	["blv00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und !STREET! folgen",
	-- 607: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["blw00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen !STREET!",
	-- 608: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["blw00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und !STREET! folgen",
	-- 609: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["blu00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen !STREET!",
	-- 610: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["blu00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und !STREET! folgen",
	-- 611: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bls00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen !STREET!",
	-- 612: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["bls00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und !STREET! folgen",
	-- 613: After !DIST! !UNIT! turn right !NG_COMMAND_1! and continue on !STREET!
	["blr00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und !STREET! folgen",
	-- 616: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["blq00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen !STREET!",
	-- 617: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["blq00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und !STREET! folgen",
	-- 618: Now turn slightly right !NG_COMMAND_1! onto !STREET!
	["a0q00d00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen !STREET!",
	-- 619: Now turn sharply right !NG_COMMAND_1! onto !STREET!
	["a0s00d00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen !STREET!",
	-- 620: Now turn slightly left !NG_COMMAND_1! onto !STREET!
	["a0w00d00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen !STREET!",
	-- 622: Now turn sharply left !NG_COMMAND_1! onto !STREET!
	["a0u00d00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen !STREET!",
	-- 623: Now take the street in the middle !NG_COMMAND_1! , !STREET!
	["a0o00a00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, !STREET!",
	-- 624: Now take the street in the middle !NG_COMMAND_1!
	["a0o00000"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen",
	-- 625: Now turn left !NG_COMMAND_1! and continue on !STREET!
	["a0v00f00"] = "Jetzt !NG_COMMAND_1! links abbiegen und !STREET! folgen",
	-- 626: Now turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["a0w00f00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und !STREET! folgen",
	-- 627: Now turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["a0u00f00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und !STREET! folgen",
	-- 628: Now turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["a0s00f00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und !STREET! folgen",
	-- 629: Now turn right !NG_COMMAND_1! and continue on !STREET!
	["a0r00f00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und !STREET! folgen",
	-- 631: Now walk straight ahead and continue on !STREET!
	["a0n00f00"] = "Jetzt geradeaus weitergehen und !STREET! folgen",
	-- 632: Now turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["a0q00f00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und !STREET! folgen",
	-- 633: Now walk around the roundabout and turn onto !STREET!
	["a0c00h00"] = "Jetzt den Kreisverkehr entlanggehen und !STREET! abbiegen",
	-- 634: After !DIST! !UNIT! turn right !NG_COMMAND_1! , go through the building
	["blr00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und durch das Gebäude gehen",
	-- 635: After !DIST! !UNIT! walk left around the roundabout
	["blb00000"] = "Nach !DIST! !UNIT! links den Kreisverkehr entlanggehen",
	-- 636: Now turn right !NG_COMMAND_1!
	["a0r00000"] = "Jetzt !NG_COMMAND_1! rechts abbiegen",
	-- 637: Now turn left !NG_COMMAND_1!
	["a0v00000"] = "Jetzt !NG_COMMAND_1! links abbiegen",
	-- 638: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , !STREET!
	["blp00a00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, !STREET!",
	-- 639: Now take the street on the right !NG_COMMAND_1! , !STREET!
	["a0p00a00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, !STREET!",
	-- 640: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1!
	["blp00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen",
	-- 641: Now take the street on the right !NG_COMMAND_1!
	["a0p00000"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen",
	-- 642: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , !STREET!
	["blx00a00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, !STREET!",
	-- 643: Now take the street on the left !NG_COMMAND_1! , !STREET!
	["a0x00a00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, !STREET!",
	-- 644: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1!
	["blx00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen",
	-- 645: Now take the street on the left !NG_COMMAND_1!
	["a0x00000"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen",
	-- 646: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["blv00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen",
	-- 647: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["blr00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen",
	-- 648: After !DIST! !UNIT! !NG_COMMAND_1! turn left onto !STREET!
	["blv00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen !STREET!",
	-- 649: After !DIST! !UNIT! !NG_COMMAND_1! turn right onto !STREET!
	["blr00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen !STREET!",
	-- 650: Now turn left onto !STREET!
	["a0v00d00"] = "Jetzt links abbiegen !STREET!",
	-- 651: Now turn right onto !STREET!
	["a0r00d00"] = "Jetzt rechts abbiegen !STREET!",
	-- 652: Now walk around the roundabout !PED_TURN_NO!
	["a0c00j00"] = "Jetzt den Kreisverkehr entlanggehen !PED_TURN_NO!",
	-- 655: and then after !DIST! !UNIT! !NG_COMMAND_1! take the ferry
	["ll0m0000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! die Fähre nehmen",
	-- 657: and then after !DIST! !UNIT! !NG_COMMAND_1! walk left around the roundabout
	["llb00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! links den Kreisverkehr entlanggehen",
	-- 658: and then after !DIST! !UNIT! !NG_COMMAND_1! walk around the roundabout
	["llc00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! den Kreisverkehr entlanggehen",
	-- 659: and then after !DIST! !UNIT! !NG_COMMAND_1! walk right around the roundabout
	["lla00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! rechts den Kreisverkehr entlanggehen",
	-- 660: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street in the middle
	["llo00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen",
	-- 661: and then after !DIST! !UNIT! !NG_COMMAND_1! turn left
	["llv00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen",
	-- 662: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly left
	["llw00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen",
	-- 663: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply left
	["llu00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen",
	-- 664: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply right
	["lls00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen",
	-- 665: and then after !DIST! !UNIT! !NG_COMMAND_1! turn right
	["llr00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen",
	-- 666: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the left
	["llx00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen",
	-- 667: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the right
	["llp00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen",
	-- 669: and then after !DIST! !UNIT! !NG_COMMAND_1! walk straight ahead
	["lln00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen",
	-- 670: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly right
	["llq00000"] = "und dann nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen",
	-- 671: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the lift
	["bln000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und den Aufzug nehmen",
	-- 672: Now turn slightly right onto the footpath
	["a0q00g00"] = "Jetzt leicht rechts abbiegen auf den Fußgängerweg",
	-- 673: Now turn right !NG_COMMAND_1! onto the footpath
	["a0r00g00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen auf den Fußgängerweg",
	-- 674: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the stairs
	["bln000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und die Treppe nehmen",
	-- 675: Now walk right around the roundabout and turn onto !STREET!
	["a0a00h00"] = "Jetzt rechts den Kreisverkehr entlanggehen und !STREET! abbiegen",
	-- 676: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the park
	["blr00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und den Park durchqueren",
	-- 677: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the stairs
	["bln00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und die Treppe nehmen",
	-- 678: Now turn left !NG_COMMAND_1! and take the escalator
	["a0v000t0"] = "Jetzt !NG_COMMAND_1! links abbiegen und die Rolltreppe nehmen",
	-- 679: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the lift
	["blo000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und den Aufzug nehmen",
	-- 680: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , go through the building
	["bls00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, durch das Gebäude gehen",
	-- 681: Now take the street in the middle !NG_COMMAND_1! , cross the park
	["a0o00q00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, den Park durchqueren",
	-- 682: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the escalator
	["blw00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, die Rolltreppe nehmen",
	-- 683: Now turn slightly left !NG_COMMAND_1! and take the escalator
	["a0w000t0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und die Rolltreppe nehmen",
	-- 684: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the lift
	["blw000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und den Aufzug nehmen",
	-- 685: Now walk left around the roundabout !PED_TURN_NO!
	["a0b00j00"] = "Jetzt links den Kreisverkehr entlanggehen !PED_TURN_NO!",
	-- 686: Now walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["a0b00h00"] = "Jetzt !NG_COMMAND_1! links den Kreisverkehr entlanggehen und !STREET! abbiegen",
	-- 687: Now turn slightly right !NG_COMMAND_1! , cross the square
	["a0q00p00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, den Platz überqueren",
	-- 688: Head !ORIENTATION!
	["f0000000"] = "Gehen Sie Richtung !ORIENTATION!",
	-- 689: Now turn slightly right !NG_COMMAND_1! , cross the park
	["a0q00q00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, den Park durchqueren",
	-- 690: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the park
	["blq000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und den Park durchqueren",
	-- 691: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and go through the building
	["blw000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und durch das Gebäude gehen",
	-- 692: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the lift
	["blw00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, den Aufzug nehmen",
	-- 693: Now turn sharply left !NG_COMMAND_1! and take the escalator
	["a0u000t0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und die Rolltreppe nehmen",
	-- 694: Now walk straight ahead !NG_COMMAND_1! and cross the square
	["a0n000p0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und den Platz überqueren",
	-- 695: Now take the street on the right !NG_COMMAND_1! and go through the building
	["a0p000o0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und durch das Gebäude gehen",
	-- 696: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the escalator
	["blw000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und die Rolltreppe nehmen",
	-- 697: Now turn left !NG_COMMAND_1! take the stairs
	["a0v00r00"] = "Jetzt !NG_COMMAND_1! links abbiegen, die Treppe nehmen",
	-- 698: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the park
	["blo000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und den Park durchqueren",
	-- 699: Now take the street in the middle !NG_COMMAND_1! and cross the square
	["a0o000p0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und den Platz überqueren",
	-- 700: Now turn slightly right !NG_COMMAND_1! and go through the building
	["a0q000o0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und durch das Gebäude gehen",
	-- 701: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the park
	["bln00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen, den Park durchqueren",
	-- 702: Now walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["a0a00j00"] = "Jetzt !NG_COMMAND_1! rechts den Kreisverkehr entlanggehen !PED_TURN_NO!",
	-- 703: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the escalator
	["blq000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und die Rolltreppe nehmen",
	-- 704: Now turn sharply right !NG_COMMAND_1! and take the escalator
	["a0s000t0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und die Rolltreppe nehmen",
	-- 705: Now take the street in the middle !NG_COMMAND_1! and go through the building
	["a0o000o0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und durch das Gebäude gehen",
	-- 706: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and go through the building
	["bln000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und durch das Gebäude gehen",
	-- 707: Now walk straight ahead !NG_COMMAND_1! , cross the square
	["a0n00p00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, den Platz überqueren",
	-- 708: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the park
	["bln000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und den Park durchqueren",
	-- 709: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the lift
	["blx000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und den Aufzug nehmen",
	-- 710: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the escalator
	["blx00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, die Rolltreppe nehmen",
	-- 711: Now turn slightly right !NG_COMMAND_1! , take the escalator
	["a0q00t00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, die Rolltreppe nehmen",
	-- 712: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the lift
	["blr000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und den Aufzug nehmen",
	-- 713: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the park
	["blw000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und den Park durchqueren",
	-- 714: Now turn slightly right !NG_COMMAND_1! , take the stairs
	["a0q00r00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, die Treppe nehmen",
	-- 715: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the stairs
	["blq000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und die Treppe nehmen",
	-- 716: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the stairs
	["blq00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, die Treppe nehmen",
	-- 717: Now turn !NG_COMMAND_1! onto the footpath
	["a0y00g00"] = "Jetzt  !NG_COMMAND_1! abbiegen auf den Fußgängerweg",
	-- 718: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the park
	["blu000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und den Park durchqueren",
	-- 719: Now turn right !NG_COMMAND_1! and go through the building
	["a0r000o0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und durch das Gebäude gehen",
	-- 720: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and go through the building
	["blu000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und durch das Gebäude gehen",
	-- 721: Now turn sharply right !NG_COMMAND_1! , go through the building
	["a0s00o00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, durch das Gebäude gehen",
	-- 722: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the escalator
	["blu000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und die Rolltreppe nehmen",
	-- 723: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the stairs
	["blo000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und die Treppe nehmen",
	-- 724: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the stairs
	["bls000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und die Treppe nehmen",
	-- 725: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the square
	["blv000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und den Platz überqueren",
	-- 726: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the park
	["blr000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und den Park durchqueren",
	-- 727: Now turn left !NG_COMMAND_1! and take the stairs
	["a0v000r0"] = "Jetzt !NG_COMMAND_1! links abbiegen und die Treppe nehmen",
	-- 728: Now take the street on the left !NG_COMMAND_1! , take the escalator
	["a0x00t00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, die Rolltreppe nehmen",
	-- 729: Now turn slightly left !NG_COMMAND_1! , cross the square
	["a0w00p00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, den Platz überqueren",
	-- 730: Now turn sharply right !NG_COMMAND_1! and cross the park
	["a0s000q0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, den Park durchqueren",
	-- 731: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the escalator
	["blr000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und die Rolltreppe nehmen",
	-- 732: After !DIST! !UNIT! turn right !NG_COMMAND_1! and go through the building
	["blr000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und durch das Gebäude gehen",
	-- 733: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the park
	["blp000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und den Park durchqueren",
	-- 734: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1!
	["bla00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts den Kreisverkehr entlanggehen",
	-- 735: Now take the street on the right !NG_COMMAND_1! and cross the square
	["a0p000p0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und den Platz überqueren",
	-- 736: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and go through the building
	["bls000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und durch das Gebäude gehen",
	-- 737: Now walk straight ahead !NG_COMMAND_1! and take the stairs
	["a0n000r0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und die Treppe nehmen",
	-- 738: Now turn sharply right !NG_COMMAND_1! and go through the building
	["a0s000o0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und durch das Gebäude gehen",
	-- 739: Now turn right !NG_COMMAND_1! and take the lift
	["a0r000s0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und den Aufzug nehmen",
	-- 740: Now turn slightly right !NG_COMMAND_1! and take the lift
	["a0q000s0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und den Aufzug nehmen",
	-- 741: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the lift
	["blo00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere   nehmen, den Aufzug nehmen",
	-- 742: Now walk straight ahead !NG_COMMAND_1! , take the stairs
	["a0n00r00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, die Treppe nehmen",
	-- 743: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the stairs
	["blr000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und die Treppe nehmen",
	-- 744: Now take the street on the left !NG_COMMAND_1! and take the escalator
	["a0x000t0"] = "Jetzt !NG_COMMAND_1! die linke   nehmen und die Rolltreppe nehmen",
	-- 745: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the park
	["blv000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und den Park durchqueren",
	-- 746: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the escalator
	["bln00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen, die Rolltreppe nehmen",
	-- 747: Now turn sharply left !NG_COMMAND_1! and take the stairs
	["a0u000r0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und die Treppe nehmen",
	-- 748: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! cross the park
	["blp00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, den Park durchqueren",
	-- 749: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , cross the square
	["blp00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, den Platz überqueren",
	-- 750: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! onto !STREET!
	["bln00d00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen !STREET!",
	-- 751: Now take the street on the right !NG_COMMAND_1! , take the stairs
	["a0p00r00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, die Treppe nehmen",
	-- 752: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the square
	["blq00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, den Platz überqueren",
	-- 753: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the park
	["blq00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, den Park durchqueren",
	-- 754: Now turn sharply right !NG_COMMAND_1! , take the stairs
	["a0s00r00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, die Treppe nehmen",
	-- 755: Now turn !NG_COMMAND_1!
	["a0y00000"] = "Jetzt !NG_COMMAND_1! abbiegen",
	-- 756: Now turn left !NG_COMMAND_1! , cross the square
	["a0v00p00"] = "Jetzt !NG_COMMAND_1! links abbiegen, den Platz überqueren",
	-- 757: After !DIST! !UNIT! turn left !NG_COMMAND_1! and go through the building
	["blv000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und durch das Gebäude gehen",
	-- 758: Now turn sharply right !NG_COMMAND_1! and take the lift
	["a0s000s0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und den Aufzug nehmen",
	-- 759: Now take the street on the left !NG_COMMAND_1! , take the stairs
	["a0x00r00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, die Treppe nehmen",
	-- 760: Now turn slightly right !NG_COMMAND_1! and cross the square
	["a0q000p0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und den Platz überqueren",
	-- 761: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1!
	["bln00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen",
	-- 762: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the square
	["blx000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und den Platz überqueren",
	-- 763: Now turn left !NG_COMMAND_1! and cross the park
	["a0v000q0"] = "Jetzt !NG_COMMAND_1! links abbiegen und den Park durchqueren",
	-- 764: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the stairs
	["blu00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, die Treppe nehmen",
	-- 765: Now take the street in the middle !NG_COMMAND_1! and take the escalator
	["a0o000t0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und die Rolltreppe nehmen",
	-- 766: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto the footpath
	["blu00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen auf den Fußgängerweg",
	-- 767: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the square
	["bln00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen, den Platz überqueren",
	-- 768: Now turn right !NG_COMMAND_1! and take the escalator
	["a0r000t0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und die Rolltreppe nehmen",
	-- 769: Now take the street on the left !NG_COMMAND_1! , cross the square
	["a0x00p00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, den Platz überqueren",
	-- 770: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the park
	["blx000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und den Park durchqueren",
	-- 771: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the stairs
	["blr00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, die Treppe nehmen",
	-- 772: Now turn sharply right !NG_COMMAND_1! , cross the park
	["a0s00q00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, den Park durchqueren",
	-- 773: Now take the street in the middle !NG_COMMAND_1! and cross the park
	["a0o000q0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und den Park durchqueren",
	-- 774: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the escalator
	["bls000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und die Rolltreppe nehmen",
	-- 775: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the square
	["bls00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, den Platz überqueren",
	-- 776: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the lift
	["bls000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und den Aufzug nehmen",
	-- 777: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the escalator
	["bln000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und die Rolltreppe nehmen",
	-- 778: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and go through the building
	["blx000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und durch das Gebäude gehen",
	-- 779: Now take the street on the right !NG_COMMAND_1! , cross the square
	["a0p00p00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, den Platz überqueren",
	-- 780: Now take the street on the right !NG_COMMAND_1! , take the lift
	["a0p00s00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, den Aufzug nehmen",
	-- 781: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the square
	["blv00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, den Platz überqueren",
	-- 782: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the stairs
	["blp00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, die Treppe nehmen",
	-- 783: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and continue on !STREET!
	["bln00f00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und !STREET! folgen",
	-- 784: Now turn slightly left !NG_COMMAND_1! , take the stairs
	["a0w00r00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, die Treppe nehmen",
	-- 785: Now turn left !NG_COMMAND_1! , go through the building
	["a0v00o00"] = "Jetzt !NG_COMMAND_1! links abbiegen, durch das Gebäude gehen",
	-- 786: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the escalator
	["blo00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, die Rolltreppe nehmen",
	-- 787: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the square
	["blo00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, den Platz überqueren",
	-- 788: Now walk straight ahead !NG_COMMAND_1! and take the lift
	["a0n000s0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und den Aufzug nehmen",
	-- 789: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the stairs
	["bls00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, die Treppe nehmen",
	-- 790: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the square
	["blu000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und den Platz überqueren",
	-- 791: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the park
	["blx00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, den Park durchqueren",
	-- 792: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the park
	["bls00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, den Park durchqueren",
	-- 793: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the park
	["blu00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, den Park durchqueren",
	-- 794: Now turn sharply left !NG_COMMAND_1! and cross the park
	["a0u000q0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und den Park durchqueren",
	-- 795: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the escalator
	["blp000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und die Rolltreppe nehmen",
	-- 796: Now turn slightly left !NG_COMMAND_1! , cross the park
	["a0w00q00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, den Park durchqueren",
	-- 797: Now take the street in the middle !NG_COMMAND_1! , take the escalator
	["a0o00t00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, die Rolltreppe nehmen",
	-- 798: Now turn slightly right !NG_COMMAND_1! and cross the park
	["a0q000q0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und den Park durchqueren",
	-- 799: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the park
	["blo00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, den Park durchqueren",
	-- 800: Now turn slightly left !NG_COMMAND_1! and cross the square
	["a0w000p0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und den Platz überqueren",
	-- 801: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the stairs
	["blx00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, die Treppe nehmen",
	-- 802: Now take the street in the middle !NG_COMMAND_1! , cross the square
	["a0o00p00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, den Platz überqueren",
	-- 803: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the stairs
	["blv00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, die Treppe nehmen",
	-- 804: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the stairs
	["blo00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, die Treppe nehmen",
	-- 805: Head !ORIENTATION! towards !SIGNPOST!
	["f00000c0"] = "Gehen Sie Richtung !ORIENTATION! , Richtung !SIGNPOST!",
	-- 806: Now turn slightly left !NG_COMMAND_1! , go through the building
	["a0w00o00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, durch das Gebäude gehen",
	-- 807: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the escalator
	["blv00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, die Rolltreppe nehmen",
	-- 808: Now turn left !NG_COMMAND_1! and cross the square
	["a0v000p0"] = "Jetzt !NG_COMMAND_1! links abbiegen und den Platz überqueren",
	-- 809: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! take the lift
	["blq00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, den Aufzug nehmen",
	-- 810: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the square
	["bls000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und den Platz überqueren",
	-- 811: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto the footpath
	["blq00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen auf den Fußgängerweg",
	-- 812: Now turn sharply left !NG_COMMAND_1! and go through the building
	["a0u000o0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und durch das Gebäude gehen",
	-- 813: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the lift
	["blx00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, den Aufzug nehmen",
	-- 814: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the lift
	["blr00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, den Aufzug nehmen",
	-- 815: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the lift
	["bls00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen, den Aufzug nehmen",
	-- 816: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the lift
	["blu00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, den Aufzug nehmen",
	-- 817: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the escalator
	["blp00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, die Rolltreppe nehmen",
	-- 818: Now turn left !NG_COMMAND_1! , take the lift
	["a0v00s00"] = "Jetzt !NG_COMMAND_1! links abbiegen, den Aufzug nehmen",
	-- 819: Now take the street on the left !NG_COMMAND_1! and go through the building
	["a0x000o0"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen und durch das Gebäude gehen",
	-- 820: Now take the street on the right !NG_COMMAND_1! and cross the park
	["a0p000q0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und den Park durchqueren",
	-- 821: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the escalator
	["blu00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, die Rolltreppe nehmen",
	-- 822: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , go through the building
	["blq00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, durch das Gebäude gehen",
	-- 823: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , go through the building
	["blp00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, durch das Gebäude gehen",
	-- 824: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the escalator
	["blo000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und die Rolltreppe nehmen",
	-- 825: Now turn sharply left !NG_COMMAND_1! , take the lift
	["a0u00s00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, den Aufzug nehmen",
	-- 826: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , go through the building
	["blx00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, durch das Gebäude gehen",
	-- 827: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , go through the building
	["blu00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, durch das Gebäude gehen",
	-- 828: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , go through the building
	["blw00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, durch das Gebäude gehen",
	-- 829: After !DIST! !UNIT! turn left !NG_COMMAND_1! , go through the building
	["blv00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, durch das Gebäude gehen",
	-- 830: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , go through the building
	["blo00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen, durch das Gebäude gehen",
	-- 831: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the square
	["blu00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen, den Platz überqueren",
	-- 832: Now turn sharply right !NG_COMMAND_1! and take the stairs
	["a0s000r0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und die Treppe nehmen",
	-- 833: Now turn right !NG_COMMAND_1! , cross the square
	["a0r00p00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, den Platz überqueren",
	-- 834: Now take the street in the middle !NG_COMMAND_1! and take the stairs
	["a0o000r0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und die Treppe nehmen",
	-- 835: Now turn sharply right !NG_COMMAND_1! , cross the square
	["a0s00p00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, den Platz überqueren",
	-- 836: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the stairs
	["blv000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und die Treppe nehmen",
	-- 837: Now turn right !NG_COMMAND_1! and cross the park
	["a0r000q0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und den Park durchqueren",
	-- 838: Now turn right !NG_COMMAND_1! and take the stairs
	["a0r000r0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und die Treppe nehmen",
	-- 839: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the park
	["bls000q0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen und den Park durchqueren",
	-- 840: Now turn sharply left !NG_COMMAND_1! , cross the square
	["a0u00p00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, den Platz überqueren",
	-- 841: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the stairs
	["blw00r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, die Treppe nehmen",
	-- 842: Now walk straight ahead !NG_COMMAND_1! , cross the park
	["a0n00q00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, den Park durchqueren",
	-- 843: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the stairs
	["blw000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und die Treppe nehmen",
	-- 844: Now take the street on the right !NG_COMMAND_1! , cross the park
	["a0p00q00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, den Park durchqueren",
	-- 845: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the square
	["blp000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und den Platz überqueren",
	-- 846: Now turn slightly right !NG_COMMAND_1! and take the escalator
	["a0q000t0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und die Rolltreppe nehmen",
	-- 847: Now turn left !NG_COMMAND_1! and take the lift
	["a0v000s0"] = "Jetzt !NG_COMMAND_1! links abbiegen und den Aufzug nehmen",
	-- 848: Now take the street on the left !NG_COMMAND_1! , cross the park
	["a0x00q00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, den Park durchqueren",
	-- 849: Now turn right !NG_COMMAND_1! , cross the park
	["a0r00q00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, den Park durchqueren",
	-- 850: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the square
	["blq000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und den Platz überqueren",
	-- 851: Now turn sharply left !NG_COMMAND_1! , cross the park
	["a0u00q00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, den Park durchqueren",
	-- 852: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the park
	["blw00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, den Park durchqueren",
	-- 853: Now turn left !NG_COMMAND_1! , cross the park
	["a0v00q00"] = "Jetzt !NG_COMMAND_1! links abbiegen, den Park durchqueren",
	-- 854: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and go through the building
	["blp000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und durch das Gebäude gehen",
	-- 855: Now turn right !NG_COMMAND_1! , take the stairs
	["a0r00r00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, die Treppe nehmen",
	-- 856: Now turn left !NG_COMMAND_1! onto the footpath
	["a0v00g00"] = "Jetzt !NG_COMMAND_1! links abbiegen auf den Fußgängerweg",
	-- 857: Now turn sharply left !NG_COMMAND_1! , take the stairs
	["a0u00r00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, die Treppe nehmen",
	-- 858: Now walk straight ahead !NG_COMMAND_1! and take the escalator
	["a0n000t0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und die Rolltreppe nehmen",
	-- 859: Now take the street on the left !NG_COMMAND_1! and take the stairs
	["a0x000r0"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen und die Treppe nehmen",
	-- 860: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the square
	["blr000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen und den Platz überqueren",
	-- 861: Now take the street in the middle !NG_COMMAND_1! , take the stairs
	["a0o00r00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, die Treppe nehmen",
	-- 862: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and go through the building
	["blq000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und durch das Gebäude gehen",
	-- 863: Now turn slightly right !NG_COMMAND_1! , take the lift
	["a0q00s00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, den Aufzug nehmen",
	-- 864: Now turn right !NG_COMMAND_1! , take the lift
	["a0r00s00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, den Aufzug nehmen",
	-- 865: Now turn slightly right !NG_COMMAND_1! and take the stairs
	["a0q000r0"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen und die Treppe nehmen",
	-- 866: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the square
	["blo000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und den Platz überqueren",
	-- 867: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the square
	["blw00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen, den Platz überqueren",
	-- 868: Now take the street on the left !NG_COMMAND_1! , take the lift
	["a0x00s00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, den Aufzug nehmen",
	-- 869: Now walk straight ahead !NG_COMMAND_1! onto !STREET!
	["a0n00d00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen !STREET!",
	-- 870: Now turn sharply right !NG_COMMAND_1! , take the lift
	["a0s00s00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, den Aufzug nehmen",
	-- 871: Now turn slightly left !NG_COMMAND_1! , take the lift
	["a0w00s00"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen, den Aufzug nehmen",
	-- 872: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the escalator
	["blq00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen, die Rolltreppe nehmen",
	-- 873: Now take the street in the middle !NG_COMMAND_1! , take the lift
	["a0o00s00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, den Aufzug nehmen",
	-- 874: Now walk straight ahead !NG_COMMAND_1! , take the escalator
	["a0n00t00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, die Rolltreppe nehmen",
	-- 875: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto the footpath
	["bls00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf rechts abbiegen auf den Fußgängerweg ",
	-- 876: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and go through the building
	["blo000o0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die mittlere Straße nehmen und durch das Gebäude gehen",
	-- 877: Now turn right !NG_COMMAND_1! , go through the building
	["a0r00o00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, durch das Gebäude gehen",
	-- 878: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the escalator
	["blv000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und die Rolltreppe nehmen",
	-- 879: Now turn slightly left !NG_COMMAND_1! and cross the park
	["a0w000q0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und den Park durchqueren",
	-- 880: Now turn right !NG_COMMAND_1! , take the escalator
	["a0r00t00"] = "Jetzt !NG_COMMAND_1! rechts abbiegen, die Rolltreppe nehmen",
	-- 881: Now turn sharply right !NG_COMMAND_1! , take the escalator
	["a0s00t00"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen, die Rolltreppe nehmen",
	-- 882: Now turn sharply left !NG_COMMAND_1! , take the escalator
	["a0u00t00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, die Rolltreppe nehmen",
	-- 883: Now turn left !NG_COMMAND_1! , take the escalator
	["a0v00t00"] = "Jetzt !NG_COMMAND_1! links abbiegen, die Rolltreppe nehmen",
	-- 884: Now turn slightly right !NG_COMMAND_1! , go through the building
	["a0q00o00"] = "Jetzt !NG_COMMAND_1! leicht rechts abbiegen, durch das Gebäude gehen",
	-- 885: Now walk straight ahead !NG_COMMAND_1! , go through the building
	["a0n00o00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, durch das Gebäude gehen",
	-- 886: Now take the street on the right !NG_COMMAND_1! , go through the building
	["a0p00o00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, durch das Gebäude gehen",
	-- 887: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the lift
	["blq000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht rechts abbiegen und den Aufzug nehmen",
	-- 888: Now take the street on the right !NG_COMMAND_1! and take the lift
	["a0p000s0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und den Aufzug nehmen",
	-- 889: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the lift
	["blu000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und den Aufzug nehmen",
	-- 890: Now take the street on the left !NG_COMMAND_1! , go through the building
	["a0x00o00"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen, durch das Gebäude gehen",
	-- 891: Now take the street on the right !NG_COMMAND_1! , take the escalator
	["a0p00t00"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen, die Rolltreppe nehmen",
	-- 892: Head !ORIENTATION! on !STREET! towards !SIGNPOST!
	["f0000bc0"] = "Gehen Sie auf !STREET! Richtung !ORIENTATION! , Richtung !SIGNPOST!",
	-- 893: Now take the street in the middle !NG_COMMAND_1! , go through the building
	["a0o00o00"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen, durch das Gebäude gehen",
	-- 894: Now take the street on the left !NG_COMMAND_1! and cross the square
	["a0x000p0"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen und den Platz überqueren",
	-- 895: Now turn right !NG_COMMAND_1! and cross the square
	["a0r000p0"] = "Jetzt !NG_COMMAND_1! rechts abbiegen und den Platz überqueren",
	-- 896: Now turn sharply right !NG_COMMAND_1! and cross the square
	["a0s000p0"] = "Jetzt !NG_COMMAND_1! scharf rechts abbiegen und den Platz überqueren",
	-- 897: Now turn sharply left !NG_COMMAND_1! and cross the square
	["a0u000p0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und den Platz überqueren",
	-- 898: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the park
	["blv00q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, den Park durchqueren",
	-- 899: Now walk straight ahead !NG_COMMAND_1! and cross the park
	["a0n000q0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und den Park durchqueren",
	-- 900: Now turn sharply left onto the footpath
	["a0u00g00"] = "Jetzt scharf links abbiegen auf den Fußgängerweg",
	-- 901: Now turn slightly left !NG_COMMAND_1! and go through the building
	["a0w000o0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und durch das Gebäude gehen",
	-- 902: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the escalator
	["blr00t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, die Rolltreppe nehmen",
	-- 903: Now turn sharply left !NG_COMMAND_1! and take the lift
	["a0u000s0"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen und den Aufzug nehmen",
	-- 904: Now take the street on the right !NG_COMMAND_1! and take the stairs
	["a0p000r0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und die Treppe nehmen",
	-- 905: Now turn left !NG_COMMAND_1! and go through the building
	["a0v000o0"] = "Jetzt !NG_COMMAND_1! links abbiegen und durch das Gebäude gehen",
	-- 906: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the square
	["blr00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen, den Platz überqueren",
	-- 907: Now walk straight ahead !NG_COMMAND_1! , take the lift
	["a0n00s00"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen, den Aufzug nehmen",
	-- 908: Now turn slightly left !NG_COMMAND_1! and take the stairs
	["a0w000r0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und die Treppe nehmen",
	-- 909: Now take the street on the left !NG_COMMAND_1! and take the lift
	["a0x000s0"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen und den Aufzug nehmen",
	-- 910: Now turn slightly left onto the footpath
	["a0w00g00"] = "Jetzt leicht links abbiegen auf den Fußgängerweg",
	-- 911: Now take the street in the middle !NG_COMMAND_1! and take the lift
	["a0o000s0"] = "Jetzt !NG_COMMAND_1! die mittlere Straße nehmen und den Aufzug nehmen",
	-- 912: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the lift
	["blv000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen und den Aufzug nehmen",
	-- 913: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto the footpath
	["blr00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts abbiegen auf den Fußgängerweg",
	-- 914: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the stairs
	["blp000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und die Treppe nehmen",
	-- 915: Head !ORIENTATION! on !STREET!
	["f0000b00"] = "Gehen Sie auf !STREET! Richtung !ORIENTATION!",
	-- 916: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the stairs
	["blx000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und die Treppe nehmen",
	-- 917: After !DIST! !UNIT! !NG_COMMAND_1! turn slightly left onto the footpath
	["blw00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen auf den Fußgängerweg",
	-- 918: Now walk straight ahead !NG_COMMAND_1! and go through the building
	["a0n000o0"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen und durch das Gebäude gehen",
	-- 919: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the square
	["bln000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen und den Platz überqueren",
	-- 920: After !DIST! !UNIT! walk around the roundabout !NG_COMMAND_1!
	["blc00000"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! den Kreisverkehr entlanggehen",
	-- 921: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the lift
	["bln00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen, den Aufzug nehmen",
	-- 922: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the square
	["blw000p0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! leicht links abbiegen und den Platz überqueren",
	-- 923: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the square
	["blx00p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen, den Platz überqueren",
	-- 924: Now take the street on the right !NG_COMMAND_1! and take the escalator
	["a0p000t0"] = "Jetzt !NG_COMMAND_1! die rechte Straße nehmen und die Rolltreppe nehmen",
	-- 925: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the lift
	["blv00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen, den Aufzug nehmen",
	-- 926: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the stairs
	["blu000r0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! scharf links abbiegen und die Treppe nehmen",
	-- 927: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the lift
	["blp000s0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen und den Aufzug nehmen",
	-- 928: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , go through the building
	["bln00o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! geradeaus weitergehen, durch das Gebäude gehen",
	-- 929: Now take the street on the left !NG_COMMAND_1! and cross the park
	["a0x000q0"] = "Jetzt !NG_COMMAND_1! die linke Straße nehmen und den Park durchqueren",
	-- 930: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the lift
	["blp00s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die rechte Straße nehmen, den Aufzug nehmen",
	-- 931: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto the footpath
	["blv00g00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links abbiegen auf den Fußgängerweg",
	-- 932: Now turn slightly left !NG_COMMAND_1! and take the lift
	["a0w000s0"] = "Jetzt !NG_COMMAND_1! leicht links abbiegen und den Aufzug nehmen",
	-- 933: Now walk straight ahead !NG_COMMAND_1!
	["a0n00000"] = "Jetzt !NG_COMMAND_1! geradeaus weitergehen",
	-- 934: Now turn sharply right onto the footpath
	["a0s00g00"] = "Jetzt scharf rechts abbiegen auf den Fußgängerweg",
	-- 935: Now turn !NG_COMMAND_1! onto !STREET!
	["a0y00d00"] = "Jetzt !NG_COMMAND_1! abbiegen !STREET!",
	-- 936: Now turn sharply left !NG_COMMAND_1! , go through the building
	["a0u00o00"] = "Jetzt !NG_COMMAND_1! scharf links abbiegen, durch das Gebäude gehen",
	-- 951: After !DIST! !UNIT! !NG_COMMAND_1! go through the building
	["bl000o00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! durch das Gebäude gehen",
	-- 952: After !DIST! !UNIT! !NG_COMMAND_1! cross the square
	["bl000p00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! den Platz überqueren",
	-- 953: After !DIST! !UNIT! !NG_COMMAND_1! cross the park
	["bl000q00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! den Park durchqueren",
	-- 954: After !DIST! !UNIT! !NG_COMMAND_1! take the stairs
	["bl000r00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Treppen nehmen",
	-- 955: After !DIST! !UNIT! !NG_COMMAND_1! take the lift
	["bl000s00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! den Aufzug nehmen",
	-- 956: After !DIST! !UNIT! !NG_COMMAND_1! take the escalator
	["bl000t00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die Rolltreppe nehmen",
	-- 957: After !DIST! !UNIT! walk right around the roundabout and turn onto !STREET!
	["bla00h00"] = "Nach !DIST! !UNIT! rechts um den Kreisverkehr gehen und !STREET! abbiegen",
	-- 958: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["bla00j00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! rechts um den Kreisverkehr gehen !PED_TURN_NO!",
	-- 959: After !DIST! !UNIT! walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["blb00h00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links um den Kreisverkehr gehen und !STREET! abbiegen",
	-- 960: After !DIST! !UNIT! walk left around the roundabout !PED_TURN_NO!
	["blb00j00"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! links um den Kreisverkehr gehen !PED_TURN_NO!",
	-- 961: After !DIST! !UNIT! walk around the roundabout and turn onto !STREET!
	["blc00h00"] = "Nach !DIST! !UNIT! um den Kreisverkehr gehen und !STREET! abbiegen",
	-- 962: After !DIST! !UNIT! walk around the roundabout !PED_TURN_NO!
	["blc00j00"] = "Nach !DIST! !UNIT! um den Kreisverkehr gehen !PED_TURN_NO!",
	-- 963: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the escalator
	["blx000t0"] = "Nach !DIST! !UNIT! !NG_COMMAND_1! die linke Straße nehmen und die Rolltreppe nehmen",
}
