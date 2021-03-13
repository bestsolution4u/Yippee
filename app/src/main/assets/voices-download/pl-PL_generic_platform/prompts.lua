-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ----------------------------------------------------------------------------
--   Author: Lucian Machison
-- ----------------------------------------------------------------------------
--   Voice Skin: pl-PL  Polish TTS

street_article = { -- MANUALLY DEFINED, articles to be used in context of street names.
	["w stronę"] = {
		[" "] = { ".+" },
		},

	["kieruj się dalej"] = {
		[" "] = { ".+" },
		},

	["Jedź"] = {
		[" "] = { ".+" },
		},

	["do celu na "] = {
		[" "] = { ".+" },
		},

	[" na "] = {
		[" "] = { ".+" },
		},

	["dotrzesz do celu pośredniego na"] = {
		[" "] = { ".+" },
		},

	["baseArticle"] = {
		["na"] = { "bulwar", "bulwary", "droga", "estakada", "grobla", "mosty", "obwodnica", "osiedle", "plac", "promenada", "rola", "rondo", "rynek", "skwer", "szosa", "trakt", "trasa", "wiadukt", "wybrzeże" },
		["w"] = { "aleja", "tunel", "ul.", "ulica", "zaułek" },
		},
}

nG_prepositions = {	-- MANUALLY DEFINED, prepositions code for natural guidance, delivered by navteq, no additional translation needed
	["POLBZAXX"] = "za", -- After / After the
	["POLBPRZY"] = "przy", -- At / At the
	["POLBPRZD"] = "przed", -- Before / Before the
	["POLBKRKU"] = "w kierunku", -- Onto / Onto the
	["POLBNADX"] = "nad", -- Over / Over the
	["POLBOBOK"] = "obok", -- Past / Past the
	["POLBPRZZ"] = "przez", -- Through / Through the
	["POLBPODX"] = "pod", -- Under / Under the
	["POLBNAXX"] = "na", -- Onto / Onto the or On / On the
	["NONE"] = "", -- leave this entry, it's important
}

nG_elements = { -- natural guidance traffic light command elements
	[1] = "na kolejnych światłach", -- at the next traffic light
	[2] = "na drugich światłach", -- at the second traffic light
	[3] = "na trzecich światłach", -- at the third traffic light
	["UNDEFINED"] = "",
}

unit_after = { -- Units to be used in sentences like After xx kilometers turn ...
	["MILE"] = "milę", -- mile
	["YARDS"] = "jardów", -- yards
	["FEET"] = "stóp", -- feet
	["KILOMETER"] = "kilometr", -- kilometer
	["METERS"] = "metrów", -- meters
	["METER"] = "metr", -- meter
	["KILOMETERS"] = "kilometrów", -- kilometers
	["MILES"] = "mil", -- miles
	["UNDEFINED"] = "",
}

unit_follow = { -- Units to be used in sentences like Follow the road for xx kilometers.
	["MILE"] = "milę", -- mile
	["YARDS"] = "jardów", -- yards
	["FEET"] = "stóp", -- feet
	["KILOMETER"] = "kilometr", -- kilometer
	["METERS"] = "metrów", -- meters
	["METER"] = "metr", -- meter
	["KILOMETERS"] = "kilometrów", -- kilometers
	["MILES"] = "mil", -- miles
	["UNDEFINED"] = "",
}

dist = { --
	["a"] = "jeden kilometr", -- one kilometer
	["b"] = "jedną milę", -- one mile
	["c"] = "ćwierć mili", -- a quarter of a mile
	["d"] = "pół mili", -- half a mile
	["e"] = "trzy czwarte mili", -- three quarters of a mile
	["UNDEFINED"] = "",
}

exit_number_roundabout = { -- exit numbers for roundabouts in car navigation
	[1] = "pierwszym zjazdem", -- take the first exit
	[2] = "drugim zjazdem", -- take the second exit
	[3] = "trzecim zjazdem", -- take the third exit
	[4] = "czwartym zjazdem", -- take the fourth exit
	[5] = "piątym zjazdem", -- take the fifth exit
	[6] = "szóstym zjazdem", -- take the sixth exit
	[7] = "siódmym zjazdem", -- take the seventh exit
	[8] = "ósmym zjazdem", -- take the eighth exit
	[9] = "dziewiątym zjazdem", -- take the ninth exit
	[10] = "dziesiątym zjazdem", -- take the tenth exit
	[11] = "jedenastym zjazdem", -- take the eleventh exit
	[12] = "dwunastym zjazdem", -- take the twelfth exit
	["UNDEFINED"] = "",
}

orientation = { -- Heading directions for walk commands, e.g. Head north on Oxford Street
	["NORTH"] = "na północ", -- north
	["NORTH_EAST"] = "na północny wschód", -- northeast
	["EAST"] = "na wschód", -- east
	["SOUTH_EAST"] = "na południowy wschód", -- southeast
	["SOUTH"] = "na południe", -- south
	["SOUTH_WEST"] = "na południowy zachód", -- southwest
	["WEST"] = "na zachód", -- west
	["NORTH_WEST"] = "na północny zachód", -- northwest
	["UNDEFINED"] = "",
}

turn_number_ped = { -- exit numbers for roundabouts in walk navigation
	[1] = "i wybierz pierwszy skręt na !STREET!", -- and turn at the first street !STREET!
	[2] = "i wybierz drugi skręt na !STREET!", -- and turn at the second street !STREET!
	[3] = "i wybierz trzeci skręt na !STREET!", -- and turn at the third street !STREET!
	["UNDEFINED"] = "",
}

commands_common = { -- Common commands for car & ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 1: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout towards !SIGNPOST!
	["c00c0zc0"] = "Na końcu drogi opuść rondo !EXIT_NO_ROUNDABOUT! w kierunku na !SIGNPOST!",
	-- 2: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout onto !STREET!
	["c00c0zb0"] = "Na końcu drogi opuść rondo !EXIT_NO_ROUNDABOUT! na !STREET!",
	-- 3: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout
	["c00c0z00"] = "Na końcu drogi opuść rondo !EXIT_NO_ROUNDABOUT!",
	-- 4: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00d000x"] = "a następnie !NG_COMMAND_2! zjedź zjazdem w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 5: and then enter the motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00f000x"] = "a następnie !NG_COMMAND_2! wjedź na autostradę w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 6: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00j000x"] = "a następnie !NG_COMMAND_2! zjedź zjazdem w stronę !STREET_2! !SIGNPOST_2!",
	-- 7: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00e000x"] = "a następnie zawróć !NG_COMMAND_2! w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 8: and then enter the urban motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00i000x"] = "a następnie !NG_COMMAND_2! wjedź na autostradę w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 9: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00g000x"] = "a następnie !NG_COMMAND_2! zjedź zjazdem w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 10: and then take the middle lane !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00o000x"] = "a następnie !NG_COMMAND_2! zajmij środkowy pas w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 11: and then turn left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00v000x"] = "a następnie skręć w lewo !NG_COMMAND_2! w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 12: and then turn slightly left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00w000x"] = "a następnie skręć lekko w lewo !NG_COMMAND_2! w stronę w stronę !STREET_2! !SIGNPOST_2!",
	-- 13: and then turn sharply left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00u000x"] = "a następnie skręć ostro w lewo !NG_COMMAND_2! w stronę !STREET_2! !SIGNPOST_2!",
	-- 14: and then turn sharply right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00s000x"] = "a następnie skręć ostro w prawo !NG_COMMAND_2! w stronę !STREET_2! !SIGNPOST_2!",
	-- 15: and then turn right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00r000x"] = "a następnie skręć w prawo !NG_COMMAND_2! w stronę !STREET_2! !SIGNPOST_2!",
	-- 16: and then keep right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00p000x"] = "a następnie !NG_COMMAND_2! trzymaj się prawej strony w stronę !STREET_2! !SIGNPOST_2!",
	-- 17: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00t000x"] = "a następnie zawróć !NG_COMMAND_2! w stronę !STREET_2! !SIGNPOST_2!",
	-- 18: and then keep left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00x000x"] = "a następnie !NG_COMMAND_2! trzymaj się lewej strony w stronę !STREET_2! !SIGNPOST_2!",
	-- 19: and then turn slightly right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00q000x"] = "a następnie skręć lekko w prawo !NG_COMMAND_2! w stronę !STREET_2! !SIGNPOST_2!",
	-- 20: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !STREET_2! !SIGNPOST_2!
	["h000cz0x"] = "a następnie opuść rondo !EXIT_NO_ROUNDABOUT! w stronę !STREET_2! !SIGNPOST_2!",
	-- 21: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000j"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , zjedź zjazdem",
	-- 22: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000j"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , zjedź zjazdem",
	-- 23: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000j"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , zjedź zjazdem",
	-- 24: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000j"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , zjedź zjazdem",
	-- 25: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fj"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas i zjedź zjazdem",
	-- 26: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000j"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zjedź zjazdem",
	-- 27: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fj"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony i zjedź zjazdem",
	-- 28: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fj"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony i zjedź zjazdem",
	-- 29: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fj"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto i zjedź zjazdem",
	-- 30: Now take the exit !NG_COMMAND_1!
	["a000000g"] = "Teraz zjedź zjazdem !NG_COMMAND_1!",
	-- 31: After !DIST! !UNIT! take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl000e0x"] = "Za !DIST! !UNIT! wybierz zjazd !EXIT_NUMBER! w stronę !STREET_2! !SIGNPOST_2!",
	-- 32: Now go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["a00ni000"] = "Teraz jedź prosto !NG_COMMAND_1! wjedź na autostradę",
	-- 33: and then go straight ahead towards !STREET_2! !SIGNPOST_2!
	["h00n000x"] = "a następnie jedź prosto w stronę !STREET_2! !SIGNPOST_2!",
	-- 34: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000j"] = "Teraz zajmij środkowy pas !NG_COMMAND_1! zjedź zjazdem",
	-- 35: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000j"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! zjedź zjazdem",
	-- 36: Now keep right !NG_COMMAND_1!  , take the exit
	["a00p000j"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1! zjedź zjazdem",
	-- 37: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Teraz jedź prosto !NG_COMMAND_1! i zjedź zjazdem",
	-- 38: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000j"] = "Teraz jedź prosto , zjedź zjazdem !NG_COMMAND_1!",
	-- 39: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fj"] = "Teraz zajmij środkowy pas !NG_COMMAND_1! i zjedź zjazdem",
	-- 40: Now take the exit !NG_COMMAND_1!
	["a000000j"] = "Teraz zjedź zjazdem !NG_COMMAND_1!",
	-- 41: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fj"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! i zjedź zjazdem",
	-- 42: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fj"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1! i zjedź zjazdem",
	-- 43: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Teraz jedź prosto !NG_COMMAND_1! i zjedź zjazdem",
	-- 44: and then you will reach your destination !NG_COMMAND_2! on !STREET!
	["h000ab00"] = "a następnie !NG_COMMAND_2! dotrzesz do celu na !STREET!",
	-- 45: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto !STREET!
	["bl0v0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo !STREET!",
	-- 46: Now keep right !NG_COMMAND_1! , enter the urban motorway
	["a00pi000"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1! wjedź na autostradę",
	-- 47: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway
	["bl0nf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź na autostradę",
	-- 48: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET!
	["bl0a0b00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu na !STREET!",
	-- 49: and then immediately turn slightly right onto !STREET! towards !SIGNPOST!
	["j00q0ac0"] = "i od razu skręć lekko w prawo !STREET! w kierunku na !SIGNPOST!",
	-- 50: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0edz"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 51: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h000ed00"] = "a następnie zawróć !NG_COMMAND_2! !STREET!",
	-- 52: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET!
	["bl0r0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo w stronę !STREET!",
	-- 53: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j000ed00"] = "i od razu !NG_COMMAND_2! zawróć !STREET!",
	-- 54: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0edz"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 55: Now turn right !NG_COMMAND_1! , enter the motorway
	["a00rf000"] = "Teraz skręć w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 56: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET!
	["bl0v0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo w stronę !STREET!",
	-- 57: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET!
	["bl0q0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo w stronę !STREET!",
	-- 58: At the end of the road turn right !NG_COMMAND_1! , enter the motorway
	["c00rf000"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo , wjedź na autostradę",
	-- 59: After !DIST! !UNIT! you will reach a stopover !NG_COMMAND_1!
	["bl0b0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu pośredniego",
	-- 60: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0e0z"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 61: Now take the exit !NG_COMMAND_1!
	["a00d0000"] = "Teraz zjedź zjazdem !NG_COMMAND_1!",
	-- 62: After !DIST! !UNIT! enter the motorway
	["bl00f000"] = "Za !DIST! !UNIT! wjedź na autostradę",
	-- 63: and then take the exit !NG_COMMAND_2!
	["h00d0000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 64: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0qf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 65: and then turn left !NG_COMMAND_2!
	["h00v0000"] = "a następnie skręć w lewo !NG_COMMAND_2!",
	-- 66: and then immediately turn left !NG_COMMAND_2!
	["j00v0000"] = "i od razu !NG_COMMAND_2! skręć w lewo",
	-- 67: and then immediately make a u turn !NG_COMMAND_2!
	["j000e000"] = "i od razu !NG_COMMAND_2! zawróć",
	-- 68: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0uf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 69: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ui0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 70: and then make a u turn !NG_COMMAND_2!
	["h000e000"] = "a następnie zawróć !NG_COMMAND_2!",
	-- 71: At the end of the road turn right !NG_COMMAND_1! onto !STREET!
	["c00r0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo !STREET!",
	-- 72: and then turn right, !STREET!
	["h00r0a00"] = "a następnie skręć w prawo !STREET!",
	-- 73: and then immediately take the exit !NG_COMMAND_2! towards !STREET!
	["j000dc00"] = "i od razu !NG_COMMAND_2! zjedź zjazdem w stronę !STREET!",
	-- 74: Now turn left !NG_COMMAND_1!
	["a00v0000"] = "Teraz skręć w lewo !NG_COMMAND_1!",
	-- 75: At the end of the road turn left !NG_COMMAND_1!
	["c00v0000"] = "Na końcu drogi skręć w lewo !NG_COMMAND_1!",
	-- 76: At the end of the road take the ferry !NG_COMMAND_1! towards !STREET!
	["c00m0c00"] = "Na końcu drogi !NG_COMMAND_1! skorzystaj z promu w stronę !STREET!",
	-- 77: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1!
	["bl0o0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas",
	-- 78: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fg"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony i zjedź zjazdem",
	-- 79: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0o0e0x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! w stronę !STREET_2! !SIGNPOST_2!",
	-- 80: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ofac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 81: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fg"] = "Teraz jedź prosto !NG_COMMAND_1! i zjedź zjazdem",
	-- 82: Now take the exit !NG_COMMAND_1! towards !STREET!
	["a00d0c00"] = "Teraz zjedź zjazdem !NG_COMMAND_1! w stronę !STREET!",
	-- 83: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000g"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! zjedź zjazdem",
	-- 84: and then you will reach a stopover !NG_COMMAND_2!
	["h000b000"] = "a następnie dotrzesz do celu pośredniego !NG_COMMAND_2!",
	-- 85: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00qi0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 86: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0sf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 87: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0piac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 88: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0x0ed0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST!",
	-- 89: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0p0edy"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2!",
	-- 90: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ti0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 91: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["bl0w0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo !STREET!",
	-- 92: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00wi0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 93: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! !NG_COMMAND_1! at the roundabout
	["bl0c0z00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! opuść rondo !EXIT_NO_ROUNDABOUT!",
	-- 94: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0o0edx"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! w stronę !STREET_2! !SIGNPOST_2!",
	-- 95: At the end of the road make a u turn !NG_COMMAND_1!
	["c00t0000"] = "Na końcu drogi !NG_COMMAND_1! zawróć",
	-- 96: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ni0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 97: After the junction keep right !NG_COMMAND_1!
	["bz0p0000"] = "Za skrzyżowaniem !NG_COMMAND_1! trzymaj się prawej strony",
	-- 98: After the junction go straight ahead !NG_COMMAND_1!
	["bz0n0000"] = "Za skrzyżowaniem !NG_COMMAND_1! jedź prosto",
	-- 99: and then make a u turn !NG_COMMAND_2!
	["h00t0000"] = "a następnie zawróć !NG_COMMAND_2!",
	-- 100: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fg"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto i zjedź zjazdem",
	-- 101: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0uiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 102: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0n000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto w stronę !STREET_2! !SIGNPOST_2!",
	-- 103: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0n0edy"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2!",
	-- 104: and then immediately turn sharply right onto !STREET! towards !SIGNPOST!
	["j00s0ac0"] = "i od razu skręć ostro w prawo !STREET! w kierunku na !SIGNPOST!",
	-- 105: After !DIST! !UNIT! take the ferry !NG_COMMAND_1!
	["bl0m0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skorzystaj z promu",
	-- 106: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0oi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 107: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00via00"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź !STREET!",
	-- 108: and then turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["h00s00c0"] = "a następnie skręć ostro w prawo !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 109: Now take the middle lane !NG_COMMAND_1!
	["a00o0000"] = "Teraz zajmij środkowy pas !NG_COMMAND_1!",
	-- 110: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0o0edy"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2!",
	-- 111: At the end of the road turn slightly right !NG_COMMAND_1!
	["c00q0000"] = "Na końcu drogi skręć lekko w prawo !NG_COMMAND_1!",
	-- 112: and then take the middle lane !NG_COMMAND_2!
	["h00o0000"] = "a następnie zajmij środkowy pas !NG_COMMAND_2!",
	-- 113: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fg"] = "Teraz trzymaj się prawej strony i zjedź zjazdem !NG_COMMAND_1!",
	-- 114: and then immediately take the middle lane !NG_COMMAND_2!
	["j00o0000"] = "i od razu !NG_COMMAND_2! zajmij środkowy pas",
	-- 115: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0wfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 116: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! towards !STREET!
	["bl0t0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć w stronę !STREET!",
	-- 117: and then take the ferry !NG_COMMAND_2!
	["h00m0000"] = "a następnie skorzystaj z promu !NG_COMMAND_2!",
	-- 118: Now turn slightly right !NG_COMMAND_1!
	["a00q0000"] = "Teraz skręć lekko w prawo !NG_COMMAND_1!",
	-- 119: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway
	["bl0ri000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź na autostradę",
	-- 120: and then keep left !NG_COMMAND_2! towards !STREET!
	["h00x0c00"] = "a następnie !NG_COMMAND_2! trzymaj się lewej strony w stronę !STREET!",
	-- 121: and then immediately turn slightly right !NG_COMMAND_2! onto !STREET!
	["j00q0d00"] = "i od razu !NG_COMMAND_2! skręć lekko w prawo !STREET!",
	-- 122: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway
	["bl0rf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź na autostradę",
	-- 123: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0e0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć",
	-- 124: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h00i00c0"] = "a następnie !NG_COMMAND_2! wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 125: At the end of the road take the ferry !NG_COMMAND_1!
	["c00m0000"] = "Na końcu drogi skorzystaj z promu !NG_COMMAND_1!",
	-- 126: Now take the ferry !NG_COMMAND_1!
	["a00m0000"] = "Teraz skorzystaj z promu !NG_COMMAND_1!",
	-- 127: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET!
	["bl0s0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo w stronę !STREET!",
	-- 128: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00ufa00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET!",
	-- 129: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["c00tfa00"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź !STREET!",
	-- 130: After !DIST! !UNIT! enter the motorway !STREET! towards !SIGNPOST!
	["bl00fac0"] = "Za !DIST! !UNIT! wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 131: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h00i0ac0"] = "a następnie wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 132: and then immediately take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["j00o00c0"] = "i od razu !NG_COMMAND_2! zajmij środkowy pas w kierunku na !SIGNPOST!",
	-- 133: and then take the middle lane !NG_COMMAND_2! onto !STREET!
	["h00o0d00"] = "a następnie zajmij środkowy pas !NG_COMMAND_2! i wjedź !STREET!",
	-- 134: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0o0e00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER!",
	-- 135: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0via00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź !STREET!",
	-- 136: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway
	["c00uf000"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę",
	-- 137: Now turn sharply left !NG_COMMAND_1! , enter the motorway
	["a00uf000"] = "Teraz skręć ostro w lewo !NG_COMMAND_1! wjedź na autostradę",
	-- 138: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0p0ed0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST!",
	-- 139: and then immediately enter the urban motorway !NG_COMMAND_2!
	["j000i000"] = "i od razu !NG_COMMAND_2! wjedź na autostradę",
	-- 140: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00vfa00"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź !STREET!",
	-- 141: and then enter the urban motorway !NG_COMMAND_2!
	["h000i000"] = "a następnie wjedź na autostradę !NG_COMMAND_2!",
	-- 142: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0qfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 143: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["bl0w0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo",
	-- 144: Now enter the urban motorway
	["a000i000"] = "Teraz wjedź na autostradę",
	-- 145: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0xia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź !STREET!",
	-- 146: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0n0ed0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! !SIGNPOST!",
	-- 147: and then immediately turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["j00u00c0"] = "i od razu !NG_COMMAND_2! skręć ostro w lewo w kierunku na !SIGNPOST!",
	-- 148: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000g"] = "Teraz jedź prosto , zjedź zjazdem !NG_COMMAND_1!",
	-- 149: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00uia00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET!",
	-- 150: and then turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["h00u00c0"] = "a następnie skręć ostro w lewo !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 151: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bl0s0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo !STREET!",
	-- 152: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway
	["bl0tf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź na autostradę",
	-- 153: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["bl0q0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo",
	-- 154: and then take the exit !NG_COMMAND_2!
	["h00g0000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 155: At the end of the road turn sharply right !NG_COMMAND_1!
	["c00s0000"] = "Na końcu drogi skręć ostro w prawo !NG_COMMAND_1!",
	-- 156: and then make a u turn !NG_COMMAND_2!
	["h00e0000"] = "a następnie zawróć !NG_COMMAND_2!",
	-- 157: Now turn sharply right !NG_COMMAND_1!
	["a00s0000"] = "Teraz skręć ostro w prawo !NG_COMMAND_1!",
	-- 158: and then immediately keep right !NG_COMMAND_2! onto !STREET!
	["j00p0d00"] = "i od razu !NG_COMMAND_2! trzymaj się prawej strony !STREET!",
	-- 159: At the end of the road make a u turn !NG_COMMAND_1!
	["c00e0000"] = "Na końcu drogi !NG_COMMAND_1! zawróć",
	-- 160: and then turn sharply right !NG_COMMAND_2!
	["h00s0000"] = "a następnie skręć ostro w prawo !NG_COMMAND_2!",
	-- 161: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET!
	["c00u0c00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo w stronę !STREET!",
	-- 162: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0tf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 163: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00wfac0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 164: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["c00wi000"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę",
	-- 165: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ofa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź !STREET!",
	-- 166: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway
	["bl0ti000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź na autostradę",
	-- 167: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00qiac0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 168: Now turn right !NG_COMMAND_1! take the exit
	["a00r000g"] = "Teraz skręć w prawo !NG_COMMAND_1! zjedź zjazdem",
	-- 169: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["bl0qi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę",
	-- 170: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["bl0q0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo !STREET!",
	-- 171: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fg"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony i zjedź zjazdem",
	-- 173: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET!
	["c00s0c00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo w stronę !STREET!",
	-- 174: Now turn left !NG_COMMAND_1! , enter the urban motorway
	["a00vi000"] = "Teraz skręć w lewo !NG_COMMAND_1! wjedź na autostradę",
	-- 175: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway
	["c00vi000"] = "Na końcu drogi skręć w lewo !NG_COMMAND_1! wjedź na autostradę",
	-- 176: Now turn left !NG_COMMAND_1! and take the exit
	["a00v00fg"] = "Teraz skręć w lewo !NG_COMMAND_1! i zjedź zjazdem",
	-- 177: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0xfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź !STREET!",
	-- 178: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout  towards !SIGNPOST!
	["bl0c0zc0"] = "Za !DIST! !UNIT! opuść rondo !EXIT_NO_ROUNDABOUT! w kierunku na !SIGNPOST!",
	-- 179: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00tf0c0"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 180: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0si0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 181: At the end of the road you will reach a stopover !NG_COMMAND_1! on !STREET!
	["c00b0b00"] = "Na końcu drogi !NG_COMMAND_1! dotrzesz do celu pośredniego !STREET!",
	-- 182: After the junction turn slightly left !NG_COMMAND_1!
	["bz0w0000"] = "Za skrzyżowaniem skręć lekko w lewo !NG_COMMAND_1!",
	-- 183: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00qfac0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 184: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bl0s0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo",
	-- 185: and then turn left !STREET! towards !SIGNPOST!
	["h00v0ac0"] = "a następnie skręć w lewo !STREET! w kierunku na !SIGNPOST!",
	-- 186: and then keep right, !STREET!
	["h00p0a00"] = "a następnie trzymaj się prawej strony !STREET!",
	-- 187: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway on !STREET! towards !SIGNPOST!
	["c00siac0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 188: At the end of the road turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00vf0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 189: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0tfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź !STREET!",
	-- 190: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00viac0"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 191: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h000ec00"] = "a następnie zawróć !NG_COMMAND_2! w stronę !STREET!",
	-- 192: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j000ec00"] = "i od razu !NG_COMMAND_2! zawróć w stronę !STREET!",
	-- 193: Now take the exit !NG_COMMAND_1! onto !STREET!
	["a00d0d00"] = "Teraz zjedź zjazdem !NG_COMMAND_1! !STREET!",
	-- 194: and then take the exit !NG_COMMAND_2!
	["h000g000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 195: and then immediately take the middle lane, !STREET! towards !SIGNPOST!
	["j00o0ac0"] = "i od razu zajmij środkowy pas, wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 196: and then immediately take the exit !NG_COMMAND_2!
	["j000g000"] = "i od razu !NG_COMMAND_2! zjedź zjazdem",
	-- 197: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00qia00"] = "Na końcu drogi skręć !NG_COMMAND_1! lekko w prawo , wjedź na autostradę !STREET!",
	-- 198: and then enter the motorway !STREET! towards !SIGNPOST!
	["h000fac0"] = "a następnie wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 199: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["bl0c0zb0"] = "Za !DIST! !UNIT! opuść rondo !EXIT_NO_ROUNDABOUT! w stronę !STREET!",
	-- 200: After !DIST! !UNIT! take the exit !NG_COMMAND_1! onto !STREET!
	["bl0d0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zjedź zjazdem !STREET!",
	-- 201: Now turn right !NG_COMMAND_1! , enter the urban motorway
	["a00ri000"] = "Teraz skręć w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 202: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway
	["c00ri000"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo , wjedź na autostradę",
	-- 203: You've reached your destination
	["y0000000"] = "Jesteś na miejscu",
	-- 204: You've reached your destination. The destination is on your right
	["yp000000"] = "Jesteś na miejscu. Cel podróży znajduje się z prawej strony",
	-- 205: You've reached your destination. The destination is on your left
	["yq000000"] = "Jesteś na miejscu. Cel podróży znajduje się z lewej strony",
	-- 206: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!
	["x0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 207: Route recalculation
	["w0000000"] = "Ponowne obliczanie trasy",
	-- 208: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Safety camera ahead
	["v0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Przed Tobą fotoradar",
	-- 209: !EXIT_NO_ROUNDABOUT! at the roundabout
	["000c0z00"] = "opuść rondo !EXIT_NO_ROUNDABOUT!",
	-- 210: Now go straight ahead !NG_COMMAND_1! enter the motorway
	["a00nf000"] = "Teraz jedź prosto , wjedź na autostradę !NG_COMMAND_1!",
	-- 211: You've reached a stopover. The stopover is on your right
	["zr000000"] = "Dotarłeś do celu pośredniego. Cel pośredni znajduje się z prawej strony",
	-- 212: You've reached a stopover. The stopover is on your left
	["zs000000"] = "Dotarłeś do celu pośredniego. Cel pośredni znajduje się z lewej strony",
	-- 213: You've reached a stopover
	["z0000000"] = "Dotarłeś do celu pośredniego",
	-- 214: GPS signal has been restored
	["q0000000"] = "Połączenie GPS zostało przywrócone",
	-- 215: GPS signal lost
	["p0000000"] = "Utracono sygnał GPS",
	-- 216: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00sfa00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET!",
	-- 217: No detour found around traffic
	["u0000000"] = "Nie znaleziono objazdu zatorów",
	-- 218: Traffic on route, do you want to detour?
	["t0000000"] = "Zatory na trasie, czy chcesz jechać objazdem?",
	-- 219: !SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!
	["r0000000"] = "!SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 220: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00rfa00"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo , wjedź !STREET!",
	-- 221: and then immediately go straight ahead, !STREET!
	["j00n0a00"] = "i od razu jedź prosto !STREET!",
	-- 222: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00qf0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 223: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0riac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 224: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0pfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 225: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway
	["c00tf000"] = "Na końcu drogi !NG_COMMAND_1! zawróć, wjedź na autostradę",
	-- 226: Now make a u turn !NG_COMMAND_1! , enter the urban motorway
	["a00ti000"] = "Teraz zawróć !NG_COMMAND_1! wjedź na autostradę",
	-- 227: Now make a u turn !NG_COMMAND_1! , enter the motorway
	["a00tf000"] = "Teraz zawróć !NG_COMMAND_1! wjedź na autostradę",
	-- 228: After !DIST! !UNIT! you will reach a stopover !NG_COMMAND_1! on !STREET!
	["bl0b0b00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu pośredniego na !STREET!",
	-- 229: and then immediately take the second right !NG_COMMAND_2!
	["j00y0000"] = "i od razu !NG_COMMAND_2! skręć w drugą w prawo",
	-- 230: and then take the second right !NG_COMMAND_2!
	["h00y0000"] = "a następnie skręć w drugą w prawo !NG_COMMAND_2!",
	-- 231: After !DIST! !UNIT! enter the urban motorway
	["bl00i000"] = "Za !DIST! !UNIT! wjedź na autostradę",
	-- 232: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0pia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź !STREET!",
	-- 233: Now enter the motorway
	["a000f000"] = "Teraz wjedź na autostradę",
	-- 234: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["c00si000"] = "Na końcu drogi skręć ostro w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 235: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0oia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź !STREET!",
	-- 236: At the end of the road turn slightly left !NG_COMMAND_1! onto !STREET!
	["c00w0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo !STREET!",
	-- 237: and then turn slightly left !NG_COMMAND_2!
	["h00w0000"] = "a następnie skręć lekko w lewo !NG_COMMAND_2!",
	-- 238: and then immediately turn slightly left !NG_COMMAND_2!
	["j00w0000"] = "i od razu !NG_COMMAND_2! skręć lekko w lewo",
	-- 239: and then immediately take the second right !NG_COMMAND_2! onto !STREET!
	["j00y0d00"] = "i od razu !NG_COMMAND_2! skręć w drugą w prawo !STREET!",
	-- 240: and then take the second right !NG_COMMAND_2! onto !STREET!
	["h00y0d00"] = "a następnie !NG_COMMAND_2! skręć w drugą w prawo !STREET!",
	-- 241: and then immediately enter the motorway !NG_COMMAND_2!
	["j000f000"] = "i od razu !NG_COMMAND_2! wjedź na autostradę",
	-- 242: Now turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["a00si000"] = "Teraz skręć ostro w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 243: Now turn slightly left !NG_COMMAND_1!
	["a00w0000"] = "Teraz skręć lekko w lewo !NG_COMMAND_1!",
	-- 244: After the junction turn sharply right !NG_COMMAND_1!
	["bz0s0000"] = "Za skrzyżowaniem skręć ostro w prawo !NG_COMMAND_1!",
	-- 245: At the end of the road turn slightly left !NG_COMMAND_1!
	["c00w0000"] = "Na końcu drogi skręć lekko w lewo !NG_COMMAND_1!",
	-- 246: and then enter the motorway !NG_COMMAND_2!
	["h000f000"] = "a następnie wjedź na autostradę !NG_COMMAND_2!",
	-- 247: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["bl0wi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę",
	-- 248: Now keep right !NG_COMMAND_1!
	["a00p0000"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1!",
	-- 249: and then immediately keep left !NG_COMMAND_2! onto !STREET!
	["j00x0d00"] = "i od razu !NG_COMMAND_2! trzymaj się lewej strony i wjedź !STREET!",
	-- 250: and then immediately turn right !STREET! towards !SIGNPOST!
	["j00r0ac0"] = "i od razu skręć w prawo !STREET! w kierunku na !SIGNPOST!",
	-- 251: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0wfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET!",
	-- 252: and then keep right !NG_COMMAND_2!
	["h00p0000"] = "a następnie trzymaj się prawej strony !NG_COMMAND_2!",
	-- 253: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway
	["bl0xf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź na autostradę",
	-- 254: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000gc00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! w stronę !STREET!",
	-- 255: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ti0c0"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 256: and then immediately take the second left !NG_COMMAND_2! onto !STREET!
	["j00z0d00"] = "i od razu !NG_COMMAND_2! skręć w drugą w lewo !STREET!",
	-- 257: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0edz"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 258: and then take the middle lane !NG_COMMAND_2! towards !STREET!
	["h00o0c00"] = "a następnie !NG_COMMAND_2! zajmij środkowy pas w stronę !STREET!",
	-- 259: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0nf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 260: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0of0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 261: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET!
	["bl0w0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo w stronę !STREET!",
	-- 262: and then take the second left !NG_COMMAND_2! onto !STREET!
	["h00z0d00"] = "a następnie !NG_COMMAND_2! skręć w drugą w lewo !STREET!",
	-- 263: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["bl0r0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo",
	-- 264: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0p0e0x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wybierz zjazd !EXIT_NUMBER! w stronę !STREET_2! !SIGNPOST_2!",
	-- 265: After the junction turn left !NG_COMMAND_1!
	["bz0v0000"] = "Za skrzyżowaniem !NG_COMMAND_1! skręć w lewo",
	-- 266: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0q000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 267: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00wia00"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET!",
	-- 268: and then take the exit !NG_COMMAND_2!
	["h000d000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 269: At the end of the road make a u turn !NG_COMMAND_1! onto !STREET!
	["c00t0d00"] = "Na końcu drogi !NG_COMMAND_1! zawróć !STREET!",
	-- 270: and then take the ferry towards !STREET_2! !SIGNPOST_2!
	["h00m000x"] = "a następnie skorzystaj z promu w stronę !STREET_2! !SIGNPOST_2!",
	-- 271: and then take the ferry !NG_COMMAND_2! towards !STREET!
	["h000mc00"] = "a następnie !NG_COMMAND_2! skorzystaj z promu w stronę !STREET!",
	-- 272: and then you will reach your destination !NG_COMMAND_2!
	["h000a000"] = "a następnie dotrzesz do celu !NG_COMMAND_2!",
	-- 273: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000dc00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! w stronę !STREET!",
	-- 274: and then keep right !NG_COMMAND_2! towards !SIGNPOST!
	["h00p00c0"] = "a następnie trzymaj się prawej strony !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 275: and then immediately turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["j00q00c0"] = "i od razu !NG_COMMAND_2! skręć lekko w prawo w kierunku na !SIGNPOST!",
	-- 276: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway
	["bl0wf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę",
	-- 277: and then immediately go straight ahead !NG_COMMAND_2!
	["j00n0000"] = "i od razu !NG_COMMAND_2! jedź prosto",
	-- 278: and then immediately make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["j00t00c0"] = "i od razu !NG_COMMAND_2! zawróć w kierunku na !SIGNPOST!",
	-- 279: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0siac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 280: Follow the course of the road for !DIST! !UNIT!
	["el000000"] = "Jedź drogą przez !DIST! !UNIT!",
	-- 281: Follow the motorway !STREET! for !DIST! !UNIT!
	["d0000000"] = "Jedź !STREET! przez !DIST! !UNIT!",
	-- 282: and then immediately keep right !NG_COMMAND_2! towards !SIGNPOST!
	["j00p00c0"] = "i od razu !NG_COMMAND_2! trzymaj się prawej strony w kierunku na !SIGNPOST!",
	-- 283: and then immediately keep left !NG_COMMAND_2! towards !SIGNPOST!
	["j00x00c0"] = "i od razu !NG_COMMAND_2! trzymaj się lewej strony w kierunku na !SIGNPOST!",
	-- 284: and then enter the motorway !STREET! towards !SIGNPOST!
	["h00f0ac0"] = "a następnie wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 285: and then immediately turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["j00s00c0"] = "i od razu !NG_COMMAND_2! skręć ostro w prawo w kierunku na !SIGNPOST!",
	-- 286: and then immediately turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["j00w00c0"] = "i od razu !NG_COMMAND_2! skręć lekko w lewo w kierunku na !SIGNPOST!",
	-- 287: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0edz"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 288: and then immediately turn left !NG_COMMAND_2! towards !SIGNPOST!
	["j00v00c0"] = "i od razu !NG_COMMAND_2! skręć w lewo w kierunku na !SIGNPOST!",
	-- 289: and then immediately enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000i0c0"] = "i od razu !NG_COMMAND_2! wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 290: and then immediately enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000f0c0"] = "i od razu !NG_COMMAND_2! wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 291: and then take the second left !NG_COMMAND_2!
	["h00z0000"] = "a następnie skręć w drugą w lewo !NG_COMMAND_2!",
	-- 292: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET!
	["c00w0c00"] = "Na końcu drogi skręć lekko w lewo !NG_COMMAND_1! w stronę !STREET!",
	-- 293: and then immediately take the second left !NG_COMMAND_2!
	["j00z0000"] = "i od razu !NG_COMMAND_2! skręć w drugą w lewo",
	-- 294: Now keep left !NG_COMMAND_1! enter the urban motorway
	["a00xi000"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! wjedź na autostradę",
	-- 295: and then immediately take the ferry !NG_COMMAND_2!
	["j000m000"] = "i od razu !NG_COMMAND_2! skorzystaj z promu",
	-- 296: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto !STREET!
	["bl0r0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo !STREET!",
	-- 297: and then turn slightly left !NG_COMMAND_2! towards !STREET!
	["h00w0c00"] = "a następnie skręć lekko w lewo !NG_COMMAND_2! w stronę !STREET!",
	-- 298: and then immediately take the exit !NG_COMMAND_2!
	["j000d000"] = "i od razu !NG_COMMAND_2! zjedź zjazdem",
	-- 299: and then keep left !NG_COMMAND_2! towards !SIGNPOST!
	["h00x00c0"] = "a następnie !NG_COMMAND_2! trzymaj się lewej strony w kierunku na !SIGNPOST!",
	-- 300: and then immediately take the ferry !NG_COMMAND_2! towards !STREET!
	["j000mc00"] = "i od razu !NG_COMMAND_2! skorzystaj z promu w stronę !STREET!",
	-- 301: and then take the exit !NG_COMMAND_2!
	["h000j000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 302: and then immediately take the exit !NG_COMMAND_2! onto !STREET!
	["j000dd00"] = "i od razu !NG_COMMAND_2! zjedź zjazdem !STREET!",
	-- 303: and then immediately take the exit !NG_COMMAND_2!
	["j000j000"] = "i od razu !NG_COMMAND_2! zjedź zjazdem",
	-- 304: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0vfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź !STREET!",
	-- 305: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["bl0ni000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź na autostradę",
	-- 306: and then go straight ahead !NG_COMMAND_2!
	["h00n0000"] = "a następnie jedź prosto !NG_COMMAND_2!",
	-- 307: After the junction keep left !NG_COMMAND_1!
	["bz0x0000"] = "Za skrzyżowaniem !NG_COMMAND_1! trzymaj się lewej strony",
	-- 308: drive to nearest road
	["000l0000"] = "jedź do najbliższej drogi",
	-- 309: and then immediately keep left !NG_COMMAND_2! towards !STREET!
	["j00x0c00"] = "i od razu !NG_COMMAND_2! trzymaj się lewej strony w stronę !STREET!",
	-- 310: and then immediately enter the motorway !STREET! towards !SIGNPOST!
	["j000fac0"] = "i od razu wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 311: and then immediately enter the motorway !STREET!
	["j000fa00"] = "i od razu wjedź !STREET!",
	-- 312: and then immediately take the second left !NG_COMMAND_2! towards !STREET!
	["j00z0c00"] = "i od razu !NG_COMMAND_2! skręć w drugą w lewo w stronę !STREET!",
	-- 313: Now go straight ahead !NG_COMMAND_1!
	["a00n0000"] = "Teraz jedź prosto !NG_COMMAND_1!",
	-- 314: and then immediately turn slightly left !NG_COMMAND_2! towards !STREET!
	["j00w0c00"] = "i od razu !NG_COMMAND_2! skręć lekko w lewo w stronę !STREET!",
	-- 315: and then immediately take the second left , !STREET!
	["j00z0a00"] = "i od razu wybierz drugi skręt w lewo !STREET!",
	-- 316: and then immediately make a u turn, !STREET! towards !SIGNPOST!
	["j00t0ac0"] = "i od razu zawróć !STREET! w kierunku na !SIGNPOST!",
	-- 317: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET!
	["bl0u0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo w stronę !STREET!",
	-- 318: and then immediately keep right, !STREET! towards !SIGNPOST!
	["j00p0ac0"] = "i od razu trzymaj się prawej strony !STREET! w kierunku na !SIGNPOST!",
	-- 319: and then immediately turn left, !STREET! towards !SIGNPOST!
	["j00v0ac0"] = "i od razu skręć w lewo !STREET! w kierunku na !SIGNPOST!",
	-- 320: and then immediately turn sharply left !NG_COMMAND_2! onto !STREET!
	["j00u0d00"] = "i od razu !NG_COMMAND_2! skręć ostro w lewo !STREET!",
	-- 321: and then immediately go straight ahead !NG_COMMAND_2! towards !STREET!
	["j00n0c00"] = "i od razu !NG_COMMAND_2! jedź prosto w stronę !STREET!",
	-- 322: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0tfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 323: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway
	["c00ti000"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź na autostradę",
	-- 324: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0vfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 325: At the end of the road turn sharply left !NG_COMMAND_1! onto !STREET!
	["c00u0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo !STREET!",
	-- 326: and then take the second left !NG_COMMAND_2! towards !STREET!
	["h00z0c00"] = "a następnie skręć w drugą w lewo !NG_COMMAND_2! w stronę !STREET!",
	-- 327: and then immediately turn slightly right !NG_COMMAND_2!
	["j00q0000"] = "i od razu !NG_COMMAND_2! skręć lekko w prawo",
	-- 328: and then go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["h00n00c0"] = "a następnie jedź prosto !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 329: After the junction turn right !NG_COMMAND_1!
	["bz0r0000"] = "Za skrzyżowaniem skręć w prawo !NG_COMMAND_1!",
	-- 330: and then immediately go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["j00n00c0"] = "i od razu !NG_COMMAND_2! jedź prosto w kierunku na !SIGNPOST!",
	-- 331: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j00t0d00"] = "i od razu !NG_COMMAND_2! zawróć !STREET!",
	-- 332: and then immediately make a u turn !NG_COMMAND_2!
	["j00t0000"] = "i od razu !NG_COMMAND_2! zawróć",
	-- 333: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0p0e00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! . trzymaj się prawej strony , wybierz zjazd !EXIT_NUMBER!",
	-- 334: and then immediately enter the urban motorway !STREET!
	["j000ia00"] = "i od razu wjedź !STREET!",
	-- 335: and then keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["h00x0ac0"] = "a następnie !NG_COMMAND_2! trzymaj się lewej strony !STREET! w kierunku na !SIGNPOST!",
	-- 336: and then immediately turn right !NG_COMMAND_2! towards !STREET!
	["j00r0c00"] = "i od razu !NG_COMMAND_2! skręć w prawo w stronę !STREET!",
	-- 337: and then immediately turn right !NG_COMMAND_2! onto !STREET!
	["j00r0d00"] = "i od razu !NG_COMMAND_2! skręć w prawo !STREET!",
	-- 338: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0wia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET!",
	-- 339: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["bl0si000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę",
	-- 340: and then immediately turn right !NG_COMMAND_2! towards !SIGNPOST!
	["j00r00c0"] = "i od razu !NG_COMMAND_2! skręć w prawo w kierunku na !SIGNPOST!",
	-- 341: and then immediately turn sharply right !NG_COMMAND_2! towards !STREET!
	["j00s0c00"] = "i od razu !NG_COMMAND_2! skręć ostro w prawo w stronę !STREET!",
	-- 342: and then turn right !NG_COMMAND_2! towards !SIGNPOST!
	["h00r00c0"] = "a następnie skręć w prawo !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 343: and then enter the urban motorway !STREET!
	["h000ia00"] = "a następnie wjedź !STREET!",
	-- 344: Now keep left !NG_COMMAND_1! , enter the motorway
	["a00xf000"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! wjedź na autostradę",
	-- 345: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["bl0ui000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę",
	-- 346: and then immediately turn sharply right !NG_COMMAND_2!
	["j00s0000"] = "i od razu !NG_COMMAND_2! skręć ostro w prawo",
	-- 347: and then immediately turn sharply left !NG_COMMAND_2! towards !STREET!
	["j00u0c00"] = "i od razu !NG_COMMAND_2! skręć ostro w lewo w stronę !STREET!",
	-- 348: and then immediately turn sharply left !NG_COMMAND_2!
	["j00u0000"] = "i od razu !NG_COMMAND_2! skręć ostro w lewo",
	-- 349: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0x0edx"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! w stronę !STREET_2! !SIGNPOST_2!",
	-- 350: and then immediately take the second right !NG_COMMAND_2! towards !STREET!
	["j00y0c00"] = "i od razu !NG_COMMAND_2! skręć w drugą w prawo w stronę !STREET!",
	-- 351: and then immediately turn slightly left !NG_COMMAND_2! onto !STREET!
	["j00w0d00"] = "i od razu !NG_COMMAND_2! skręć lekko w lewo !STREET!",
	-- 352: and then take the second right !NG_COMMAND_2! towards !STREET!
	["h00y0c00"] = "a następnie !NG_COMMAND_2! skręć w drugą w prawo w stronę !STREET!",
	-- 353: and then immediately turn left !NG_COMMAND_2! towards !STREET!
	["j00v0c00"] = "i od razu !NG_COMMAND_2! skręć w lewo w stronę !STREET!",
	-- 354: and then immediately keep left, !STREET!
	["j00x0a00"] = "i od razu trzymaj się lewej strony i wjedź !STREET!",
	-- 355: and then immediately take the middle lane !NG_COMMAND_2! towards !STREET!
	["j00o0c00"] = "i od razu !NG_COMMAND_2! zajmij środkowy pas w stronę !STREET!",
	-- 356: After the junction take the middle lane !NG_COMMAND_1!
	["bz0o0000"] = "Za skrzyżowaniem zajmij środkowy pas !NG_COMMAND_1!",
	-- 357: and then immediately take the middle lane !NG_COMMAND_2! onto !STREET!
	["j00o0d00"] = "i od razu !NG_COMMAND_2! zajmij środkowy pas i wjedź !STREET!",
	-- 358: At the end of the road turn sharply left !NG_COMMAND_1!
	["c00u0000"] = "Na końcu drogi skręć ostro w lewo !NG_COMMAND_1!",
	-- 359: and then turn sharply left !NG_COMMAND_2!
	["h00u0000"] = "a następnie skręć ostro w lewo !NG_COMMAND_2!",
	-- 360: and then immediately turn left !NG_COMMAND_2! onto !STREET!
	["j00v0d00"] = "i od razu !NG_COMMAND_2! skręć w lewo !STREET!",
	-- 361: and then immediately make a u turn, !STREET!
	["j00t0a00"] = "i od razu zawróć !STREET!",
	-- 362: and then immediately keep right, !STREET!
	["j00p0a00"] = "i od razu trzymaj się prawej strony i wjedź !STREET!",
	-- 363: and then immediately go straight ahead, !STREET! towards !SIGNPOST!
	["j00n0ac0"] = "i od razu jedź prosto !STREET! w kierunku na !SIGNPOST!",
	-- 364: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fg"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas i zjedź zjazdem",
	-- 365: and then immediately turn right, !STREET!
	["j00r0a00"] = "i od razu skręć w prawo !STREET!",
	-- 366: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0rf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 367: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0xf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 368: Now turn sharply left !NG_COMMAND_1!
	["a00u0000"] = "Teraz skręć ostro w lewo !NG_COMMAND_1!",
	-- 369: At the end of the road turn left !NG_COMMAND_1! onto !STREET!
	["c00v0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo !STREET!",
	-- 370: and then take the middle lane, !STREET! towards !SIGNPOST!
	["h00o0ac0"] = "a następnie zajmij środkowy pas i wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 371: After !DIST! !UNIT! take the exit !NG_COMMAND_1! towards !STREET!
	["bl0d0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zjedź zjazdem w stronę !STREET!",
	-- 372: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0vi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 373: and then immediately turn slightly left, !STREET!
	["j00w0a00"] = "i od razu skręć lekko w lewo !STREET!",
	-- 374: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1!
	["bl0n0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto",
	-- 375: and then you will reach a stopover !NG_COMMAND_2! on !STREET!
	["h000bb00"] = "a następnie !NG_COMMAND_2! dotrzesz do celu pośredniego na !STREET!",
	-- 376: and then go straight ahead, !STREET! towards !SIGNPOST!
	["h00n0ac0"] = "a następnie jedź prosto !STREET! w kierunku na !SIGNPOST!",
	-- 377: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00wfa00"] = "Na końcu drogi skręć lekko w lewo !NG_COMMAND_1! wjedź !STREET!",
	-- 378: and then keep left !NG_COMMAND_2!
	["h00x0000"] = "a następnie trzymaj się lewej strony !NG_COMMAND_2!",
	-- 379: and then turn slightly right !NG_COMMAND_2!
	["h00q0000"] = "a następnie skręć lekko w prawo !NG_COMMAND_2!",
	-- 380: and then turn right !NG_COMMAND_2!
	["h00r0000"] = "a następnie skręć w prawo !NG_COMMAND_2!",
	-- 381: and then you will reach your destination !NG_COMMAND_2!
	["h00a0000"] = "a następnie !NG_COMMAND_2! dotrzesz do celu",
	-- 382: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0o000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas w stronę !STREET_2! !SIGNPOST_2!",
	-- 383: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000jc00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! w stronę !STREET!",
	-- 384: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway
	["bl0qf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę",
	-- 385: and then keep left !NG_COMMAND_2! onto !STREET!
	["h00x0d00"] = "a następnie !NG_COMMAND_2! trzymaj się lewej strony !STREET!",
	-- 386: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000g"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , zjedź zjazdem",
	-- 387: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000gd00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! !STREET!",
	-- 388: and then turn slightly left !NG_COMMAND_2! onto !STREET!
	["h00w0d00"] = "a następnie !NG_COMMAND_2! skręć lekko w lewo !STREET!",
	-- 389: and then turn sharply right !NG_COMMAND_2! onto !STREET!
	["h00s0d00"] = "a następnie !NG_COMMAND_2! skręć ostro w prawo !STREET!",
	-- 390: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fg"] = "Teraz zajmij środkowy pas !NG_COMMAND_1! i zjedź zjazdem",
	-- 391: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000jd00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! !STREET!",
	-- 392: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00rfac0"] = "Na końcu drogi!NG_COMMAND_1! skręć w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 393: and then go straight ahead !NG_COMMAND_2! onto !STREET!
	["h00n0d00"] = "a następnie !NG_COMMAND_2! jedź prosto !STREET!",
	-- 394: At the end of the road turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00v000x"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 395: and then go straight ahead !NG_COMMAND_2! towards !STREET!
	["h00n0c00"] = "a następnie !NG_COMMAND_2! jedź prosto w stronę !STREET!",
	-- 396: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h00t0d00"] = "a następnie zawróć !NG_COMMAND_2! !STREET!",
	-- 397: After !DIST! !UNIT! turn left !NG_COMMAND_1! enter the motorway
	["bl0vf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź na autostradę",
	-- 398: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0pf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 399: and then turn sharply left !NG_COMMAND_2! onto !STREET!
	["h00u0d00"] = "a następnie !NG_COMMAND_2! skręć ostro w lewo !STREET!",
	-- 400: and then turn sharply left !NG_COMMAND_2! towards !STREET!
	["h00u0c00"] = "a następnie !NG_COMMAND_2! skręć ostro w lewo w stronę !STREET!",
	-- 401: and then turn left !NG_COMMAND_2! onto !STREET!
	["h00v0d00"] = "a następnie !NG_COMMAND_2! skręć w lewo !STREET!",
	-- 402: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0nfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź !STREET!",
	-- 403: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0ria00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź !STREET!",
	-- 404: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway
	["bl0of000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź na autostradę",
	-- 405: and then keep right !NG_COMMAND_2! onto !STREET!
	["h00p0d00"] = "a następnie !NG_COMMAND_2! trzymaj się prawej strony i wjedź !STREET!",
	-- 406: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! onto !STREET!
	["bl0n0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto !STREET!",
	-- 407: and then keep right !NG_COMMAND_2! towards !STREET!
	["h00p0c00"] = "a następnie !NG_COMMAND_2! trzymaj się prawej strony w stronę !STREET!",
	-- 408: and then turn slightly right !NG_COMMAND_2! onto !STREET!
	["h00q0d00"] = "a następnie skręć lekko w prawo !NG_COMMAND_2! !STREET!",
	-- 409: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0n0e0x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! w stronę !STREET_2! !SIGNPOST_2!",
	-- 410: At the end of the road turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00rf0c0"] = "Na końcu drogi!NG_COMMAND_1! skręć w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 411: and then turn sharply right !NG_COMMAND_2! towards !STREET!
	["h00s0c00"] = "a następnie !NG_COMMAND_2! skręć ostro w prawo w stronę !STREET!",
	-- 412: and then turn right !NG_COMMAND_2! onto !STREET!
	["h00r0d00"] = "a następnie !NG_COMMAND_2! skręć w prawo !STREET!",
	-- 413: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0vf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 414: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway
	["c00wf000"] = "Na końcu drogi!NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę",
	-- 415: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h000iac0"] = "a następnie wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 416: Now keep left !NG_COMMAND_1!
	["a00x0000"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1!",
	-- 417: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00wiac0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 418: and then enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000f0c0"] = "a następnie !NG_COMMAND_2! wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 419: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0xi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 420: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ri0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 421: and then enter the motorway !STREET!
	["h000fa00"] = "a następnie wjedź !STREET!",
	-- 422: and then go straight ahead, !STREET!
	["h00n0a00"] = "a następnie jedź prosto !STREET!",
	-- 423: and then immediately keep left !NG_COMMAND_2!
	["j00x0000"] = "i od razu !NG_COMMAND_2! trzymaj się lewej strony",
	-- 424: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00w000x"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 425: and then make a u turn, !STREET! towards !SIGNPOST!
	["h00t0ac0"] = "a następnie zawróć !STREET! w kierunku na !SIGNPOST!",
	-- 426: and then take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["h00o00c0"] = "a następnie zajmij środkowy pas !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 427: and then immediately turn sharply right, !STREET!
	["j00s0a00"] = "i od razu skręć ostro w prawo !STREET!",
	-- 428: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00sia00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET!",
	-- 429: and then keep left, !STREET!
	["h00x0a00"] = "a następnie trzymaj się lewej strony !STREET!",
	-- 430: Now turn sharply right !NG_COMMAND_1! , enter the motorway
	["a00sf000"] = "Teraz skręć ostro w prawo , wjedź na autostradę !NG_COMMAND_1!",
	-- 431: and then make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["h00t00c0"] = "a następnie zawróć !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 432: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway
	["c00sf000"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę",
	-- 433: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["bl0u0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo",
	-- 434: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00tia00"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź !STREET!",
	-- 435: and then turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["h00w00c0"] = "a następnie !NG_COMMAND_2! skręć lekko w lewo w kierunku na !SIGNPOST!",
	-- 436: and then turn sharply left, !STREET!
	["h00u0a00"] = "a następnie skręć ostro w lewo !STREET!",
	-- 437: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000g"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , zjedź zjazdem",
	-- 438: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00si0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 439: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00riac0"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 440: and then turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["h00q00c0"] = "a następnie !NG_COMMAND_2! skręć lekko w prawo w kierunku na !SIGNPOST!",
	-- 441: and then turn sharply right, !STREET!
	["h00s0a00"] = "a następnie skręć ostro w prawo !STREET!",
	-- 442: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["bl0v0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo",
	-- 443: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0e0z"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 444: and then turn sharply right, !STREET! towards !SIGNPOST!
	["h00s0ac0"] = "a następnie skręć ostro w prawo !STREET! w kierunku na !SIGNPOST!",
	-- 445: and then turn right onto !STREET! towards !SIGNPOST!
	["h00r0ac0"] = "a następnie skręć w prawo !STREET! w kierunku na !SIGNPOST!",
	-- 446: and then !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["h000czb0"] = "a następnie opuść rondo !EXIT_NO_ROUNDABOUT! !STREET!",
	-- 447: and then take the exit !NG_COMMAND_2!
	["h00j0000"] = "a następnie zjedź zjazdem !NG_COMMAND_2!",
	-- 448: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h00c0z00"] = "a następnie opuść rondo !EXIT_NO_ROUNDABOUT!",
	-- 449: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET!
	["bl0x0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony w stronę !STREET!",
	-- 450: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0x000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony w stronę !STREET_2! !SIGNPOST_2!",
	-- 451: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0v000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 452: After the junction make a u turn !NG_COMMAND_1!
	["bz0t0000"] = "Za skrzyżowaniem zawróć !NG_COMMAND_1!",
	-- 453: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0pfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź !STREET!",
	-- 454: and then enter the motorway !NG_COMMAND_2!
	["h00f0000"] = "a następnie !NG_COMMAND_2! wjedź na autostradę",
	-- 455: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1!
	["bl0a0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu",
	-- 456: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000dd00"] = "a następnie zjedź zjazdem !NG_COMMAND_2! !STREET!",
	-- 457: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0wf0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 458: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h000cz00"] = "a następnie opuść rondo !EXIT_NO_ROUNDABOUT!",
	-- 459: and then take the ferry !NG_COMMAND_2!
	["h000m000"] = "a następnie skorzystaj z promu !NG_COMMAND_2!",
	-- 460: and then enter the urban motorway !STREET!
	["h00i0a00"] = "a następnie wjedź !STREET!",
	-- 461: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway
	["bl0xi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź na autostradę",
	-- 462: and then enter the motorway towards !SIGNPOST!
	["h00f00c0"] = "a następnie wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 463: and then enter the motorway !STREET!
	["h00f0a00"] = "a następnie wjedź !STREET!",
	-- 464: and then immediately turn right !NG_COMMAND_2!
	["j00r0000"] = "i od razu !NG_COMMAND_2! skręć w prawo",
	-- 465: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fg"] = "Teraz trzymaj się lewej strony !NG_COMMAND_1! i zjedź zjazdem",
	-- 466: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0r000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 467: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET!
	["bl0o0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas w stronę !STREET!",
	-- 468: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000g"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , zjedź zjazdem",
	-- 469: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000g"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , zjedź zjazdem",
	-- 470: and then make a u turn, !STREET!
	["h00t0a00"] = "a następnie zawróć !STREET!",
	-- 471: Now turn right !NG_COMMAND_1!
	["a00r0000"] = "Teraz skręć w prawo !NG_COMMAND_1!",
	-- 472: and then turn left !NG_COMMAND_2! towards !SIGNPOST!
	["h00v00c0"] = "a następnie skręć w lewo !NG_COMMAND_2! w kierunku na !SIGNPOST!",
	-- 473: At the end of the road turn right !NG_COMMAND_1!
	["c00r0000"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo",
	-- 474: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0p000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony w stronę !STREET_2! !SIGNPOST_2!",
	-- 475: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0s000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 476: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0u000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 477: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00qfa00"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET!",
	-- 478: After !DIST! !UNIT! keep left !NG_COMMAND_1! onto !STREET!
	["bl0x0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony i wjedź !STREET!",
	-- 479: and then enter the urban motorway !NG_COMMAND_2!
	["h00i0000"] = "a następnie wjedź na autostradę !NG_COMMAND_2!",
	-- 480: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0n0e0y"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2!",
	-- 481: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0rfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź !STREET!",
	-- 482: After !DIST! !UNIT! enter the urban motorway !STREET! towards !SIGNPOST!
	["bl00iac0"] = "Za !DIST! !UNIT! wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 483: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0xiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 484: Now turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["a00wi000"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę",
	-- 485: After !DIST! !UNIT! keep left !NG_COMMAND_1! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0x0e0y"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony, wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2!",
	-- 486: At the end of the road turn left !NG_COMMAND_1! , enter the motorway
	["c00vf000"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź na autostradę",
	-- 487: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00sf0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 488: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0w000x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 489: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !SIGNPOST!
	["h000czc0"] = "a następnie opuść rondo !EXIT_NO_ROUNDABOUT! w kierunku na !SIGNPOST!",
	-- 490: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00uiac0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 491: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0x0e00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony, wybierz zjazd !EXIT_NUMBER!",
	-- 492: and then immediately keep right !NG_COMMAND_2! towards !STREET!
	["j00p0c00"] = "i od razu !NG_COMMAND_2! trzymaj się prawej strony w stronę !STREET!",
	-- 493: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0e0z"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony, wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 494: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000e0z"] = "Za !DIST! !UNIT! wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 495: After !DIST! !UNIT! take exit !EXIT_NUMBER!
	["bl000e00"] = "Za !DIST! !UNIT! wybierz zjazd !EXIT_NUMBER!",
	-- 496: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000g"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zjedź zjazdem",
	-- 497: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0sfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET!",
	-- 498: Now keep right !NG_COMMAND_1! , take the exit
	["a00p000g"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1! zjedź zjazdem",
	-- 499: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["bl0u0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo !STREET!",
	-- 500: Now take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["a00oi000"] = "Teraz !NG_COMMAND_1! zajmij środkowy pas , wjedź na autostradę",
	-- 501: After !DIST! !UNIT! keep right !NG_COMMAND_1! onto !STREET!
	["bl0p0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony i wjedź !STREET!",
	-- 502: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0t0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć",
	-- 503: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ufa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET!",
	-- 504: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00vfac0"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 505: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0qia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET!",
	-- 506: Now keep right !NG_COMMAND_1! enter the motorway
	["a00pf000"] = "Teraz trzymaj się prawej strony !NG_COMMAND_1! wjedź na autostradę",
	-- 507: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0x0e0x"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony, wybierz zjazd !EXIT_NUMBER! w stronę !STREET_2! !SIGNPOST_2!",
	-- 508: and then immediately enter the urban motorway !STREET! towards !SIGNPOST!
	["j000iac0"] = "i od razu wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 509: and then immediately turn sharply right !NG_COMMAND_2! onto !STREET!
	["j00s0d00"] = "i od razu !NG_COMMAND_2! skręć ostro w prawo !STREET!",
	-- 510: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0p0e0y"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony, wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2!",
	-- 511: Now turn slightly left !NG_COMMAND_1! , enter the motorway
	["a00wf000"] = "Teraz skręć lekko w lewo !NG_COMMAND_1! wjedź na autostradę",
	-- 512: Now turn left !NG_COMMAND_1! , enter the motorway
	["a00vf000"] = "Teraz skręć w lewo !NG_COMMAND_1! wjedź na autostradę",
	-- 513: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000g"] = "Teraz zajmij środkowy pas !NG_COMMAND_1! zjedź zjazdem",
	-- 514: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ui0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 515: At the end of the road turn sharply right !NG_COMMAND_1! onto !STREET!
	["c00s0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo !STREET!",
	-- 516: Now take the middle lane !NG_COMMAND_1! enter the motorway
	["a00of000"] = "Teraz zajmij środkowy pas !NG_COMMAND_1! wjedź na autostradę",
	-- 517: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00tiac0"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 518: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET!
	["c00t0c00"] = "Na końcu drogi !NG_COMMAND_1! zawróć w stronę !STREET!",
	-- 519: At the end of the road make a u turn !NG_COMMAND_1! enter the motorway !STREET! towards !SIGNPOST!
	["c00tfac0"] = "Na końcu drogi !NG_COMMAND_1! zawróć , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 520: Now turn slightly right !NG_COMMAND_1! , enter the motorway
	["a00qf000"] = "Teraz skręć lekko w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 521: At the end of the road turn slightly right !NG_COMMAND_1! onto !STREET!
	["c00q0d00"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo !STREET!",
	-- 522: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0niac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 523: At the end of the road turn left !NG_COMMAND_1! towards !STREET!
	["c00v0c00"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo w stronę !STREET!",
	-- 524: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0nia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź !STREET!",
	-- 525: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0tiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 526: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j00t0c00"] = "i od razu !NG_COMMAND_2! zawróć w stronę !STREET!",
	-- 527: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0pi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 528: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h00t0c00"] = "a następnie zawróć !NG_COMMAND_2! w stronę !STREET!",
	-- 529: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0o0ed0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! !SIGNPOST!",
	-- 530: and then turn left !NG_COMMAND_2! towards !STREET!
	["h00v0c00"] = "a następnie !NG_COMMAND_2! skręć w lewo w stronę !STREET!",
	-- 531: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ri0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 532: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0sfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 533: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00u000x"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo w stronę !STREET_2! !SIGNPOST_2!",
	-- 534: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0wiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 535: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0wi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 536: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0viac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 537: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway
	["bl0vi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wjedź na autostradę",
	-- 538: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0oiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 539: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0p0edx"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony, wybierz zjazd !EXIT_NUMBER! !SIGNPOST! w stronę !STREET_2! !SIGNPOST_2!",
	-- 540: After !DIST! !UNIT! take the ferry !NG_COMMAND_1! towards !STREET!
	["bl0m0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skorzystaj z promu w stronę !STREET!",
	-- 541: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["bl0oi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wjedź na autostradę",
	-- 542: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0qfa00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET!",
	-- 543: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0nfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 544: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway
	["bl0pf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź na autostradę",
	-- 545: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0xfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 546: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0rfac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 547: Now make a u turn !NG_COMMAND_1!
	["a00t0000"] = "Teraz zawróć !NG_COMMAND_1!",
	-- 548: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["c00qi000"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę",
	-- 549: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ufac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 550: Now turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["a00qi000"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę",
	-- 551: and then turn right !NG_COMMAND_2! towards !STREET!
	["h00r0c00"] = "a następnie !NG_COMMAND_2! skręć w prawo w stronę !STREET!",
	-- 552: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET!
	["bl0p0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony w stronę !STREET!",
	-- 553: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway
	["bl0pi000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony , wjedź na autostradę",
	-- 554: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00t000x"] = "Na końcu drogi !NG_COMMAND_1! zawróć w stronę !STREET_2! !SIGNPOST_2!",
	-- 555: At the end of the road turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00r000x"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 556: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00s000x"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 557: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0o0e0y"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas , wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2!",
	-- 558: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway
	["bl0uf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę",
	-- 559: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0uia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET!",
	-- 560: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["c00ui000"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę",
	-- 561: Now turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["a00ui000"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę",
	-- 562: and then you will reach a stopover !NG_COMMAND_2!
	["h00b0000"] = "a następnie !NG_COMMAND_2! dotrzesz do celu pośredniego",
	-- 563: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0qiac0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 564: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00ria00"] = "Na końcu drogi skręć w prawo !NG_COMMAND_1! wjedź !STREET!",
	-- 565: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET!
	["bl0n0c00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto w stronę !STREET!",
	-- 566: At the end of the road turn right !NG_COMMAND_1! towards !STREET!
	["c00r0c00"] = "Na końcu drogi !NG_COMMAND_1! skręć w prawo w stronę !STREET!",
	-- 567: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00vi0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 568: and then keep right, !STREET! towards !SIGNPOST!
	["h00p0ac0"] = "a następnie trzymaj się prawej strony i skręć !STREET! w kierunku na !SIGNPOST!",
	-- 569: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["bl0t0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć !STREET!",
	-- 570: and then immediately turn slightly right !NG_COMMAND_2! towards !STREET!
	["j00q0c00"] = "i od razu !NG_COMMAND_2! skręć lekko w prawo w stronę !STREET!",
	-- 571: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00ufac0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 572: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00sfac0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 573: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0n0e00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER!",
	-- 574: At the end of the road you will reach your destination !NG_COMMAND_1! on !STREET!
	["c00a0b00"] = "Na końcu drogi !NG_COMMAND_1! dotrzesz do celu na !STREET!",
	-- 575: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00q000x"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo w stronę !STREET_2! !SIGNPOST_2!",
	-- 576: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET!
	["c00q0c00"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w prawo w stronę !STREET!",
	-- 577: After !DIST! !UNIT! keep left !NG_COMMAND_1!
	["bl0x0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony",
	-- 578: At the end of the road turn sharply left !NG_COMMAND_1! enter the motorway towards !SIGNPOST!
	["c00uf0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć ostro w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 579: and then immediately go straight ahead !NG_COMMAND_2! onto !STREET!
	["j00n0d00"] = "i od razu !NG_COMMAND_2! jedź prosto !STREET!",
	-- 580: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000i0c0"] = "a następnie !NG_COMMAND_2! wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 581: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway
	["c00qf000"] = "Na końcu drogi skręć lekko w prawo !NG_COMMAND_1! wjedź na autostradę",
	-- 582: and then turn slightly right !NG_COMMAND_2! towards !STREET!
	["h00q0c00"] = "a następnie skręć lekko w prawo !NG_COMMAND_2! w stronę !STREET!",
	-- 583: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0e0z"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! i kieruj się dalej !STREET_2! w kierunku na !SIGNPOST_2!",
	-- 584: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl0d0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zjedź zjazdem",
	-- 585: Traffic on route, detouring
	["s0000000"] = "Zatory na trasie, trwa wyznaczanie objazdu",
	-- 586: After the junction turn sharply left !NG_COMMAND_1!
	["bz0u0000"] = "Za skrzyżowaniem skręć ostro w lewo !NG_COMMAND_1!",
	-- 587: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway
	["bl0sf000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź na autostradę",
	-- 588: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00wf0c0"] = "Na końcu drogi !NG_COMMAND_1! skręć lekko w lewo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 589: After the junction turn slightly right !NG_COMMAND_1!
	["bz0q0000"] = "Za skrzyżowaniem skręć lekko w prawo !NG_COMMAND_1!",
	-- 590: Now make a u turn !NG_COMMAND_1!
	["a00e0000"] = "Teraz zawróć !NG_COMMAND_1!",
	-- 591: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0sia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wjedź !STREET!",
	-- 592: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0x0edy"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się lewej strony, wybierz zjazd !EXIT_NUMBER! !SIGNPOST! i kieruj się dalej !STREET_2!",
	-- 593: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0tia00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć , wjedź !STREET!",
	-- 594: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0n0edx"] = "Za !DIST! !UNIT! !NG_COMMAND_1! jedź prosto , wybierz zjazd !EXIT_NUMBER! !SIGNPOST! w stronę !STREET_2! !SIGNPOST_2!",
	-- 595: After !DIST! !UNIT! keep right !NG_COMMAND_1!
	["bl0p0000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! trzymaj się prawej strony",
	-- 596: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! onto !STREET!
	["bl0o0d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zajmij środkowy pas i wjedź !STREET!",
	-- 597: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0qi0c0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wjedź na autostradę w kierunku na !SIGNPOST!",
	-- 598: and then immediately turn sharply left onto !STREET!
	["j00u0a00"] = "i od razu skręć ostro w lewo !STREET!",
	-- 603: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["blt00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć",
	-- 614: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["blt00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć !STREET!",
	-- 615: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! and continue on !STREET!
	["blt00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! zawróć i kieruj się dalej !STREET!",
	-- 621: Now make a u turn !NG_COMMAND_1! onto !STREET!
	["a0t00d00"] = "Teraz zawróć !NG_COMMAND_1! !STREET!",
	-- 630: Now make a u turn !NG_COMMAND_1! and continue on !STREET!
	["a0t00f00"] = "Teraz zawróć !NG_COMMAND_1! i kieruj się dalej !STREET!",
	-- 653: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your destination
	["ll0a0000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu",
	-- 654: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["ll0e0000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! zawróć",
	-- 656: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach a stopover
	["ll0b0000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! dotrzesz do celu pośredniego",
	-- 668: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["llt00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! zawróć",
	-- 937: After !DIST! !UNIT! enter the highway !STREET!
	["bl00fa00"] = "Za !DIST! !UNIT! wjedź na autostradę !STREET!",
	-- 938: and then immediately keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["j00x0ac0"] = "i od razu !NG_COMMAND_2! trzymaj się lewej strony i wjedź !STREET! w kierunku na !SIGNPOST!",
	-- 939: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl000e0y"] = "Po przejechaniu !DIST! !UNIT! zjedź zjazdem numer !EXIT_NUMBER! i kontynuuj jazdę !STREET_2!",
	-- 940: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST!
	["bl000ed0"] = "Po przejechaniu !DIST! !UNIT! zjedź zjazdem numer !EXIT_NUMBER! !SIGNPOST!",
	-- 941: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl000edx"] = "Po przejechaniu !DIST! !UNIT! zjedź zjazdem numer !EXIT_NUMBER! !SIGNPOST! w kierunku !STREET_2! !SIGNPOST_2!",
	-- 942: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000edz"] = "Po przejechaniu !DIST! !UNIT! zjedź zjazdem numer !EXIT_NUMBER! !SIGNPOST! i kontynuuj jazdę !STREET_2! w kierunku !SIGNPOST_2!",
	-- 943: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl000edy"] = "Po przejechaniu !DIST! !UNIT! zjedź zjazdem numer !EXIT_NUMBER! !SIGNPOST! i kontynuuj jazdę !STREET_2!",
	-- 944: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your left
	["bl0a000l"] = "Po przejechaniu/przejściu !DIST! !UNIT! dotrzesz do celu !NG_COMMAND_1!. Twój cel jest po Twojej lewej stronie",
	-- 945: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your right
	["bl0a000r"] = "Po przejechaniu/przejściu !DIST! !UNIT! dotrzesz do celu !NG_COMMAND_1!. Twój cel jest po Twojej prawej stronie",
	-- 946: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your left
	["bl0a0b0l"] = "Po przejechaniu/przejściu !DIST! !UNIT! dotrzesz do celu !NG_COMMAND_1! na !STREET!. Twój cel jest po Twojej lewej stronie",
	-- 947: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your right
	["bl0a0b0r"] = "Po przejechaniu/przejściu !DIST! !UNIT! dotrzesz do celu !NG_COMMAND_1! na !STREET!. Twój cel jest po Twojej prawej stronie",
	-- 948: After !DIST! !UNIT! enter the motorway towards !SIGNPOST!
	["bl00f0c0"] = "Po przejechaniu !DIST! !UNIT! wjedź na autostradę w kierunku !SIGNPOST!",
	-- 949: After !DIST! !UNIT! enter the urban motorway towards !SIGNPOST!
	["bl00i0c0"] = "Po przejechaniu !DIST! !UNIT! wjedź na miejską autostradę w kierunku !SIGNPOST!",
	-- 950: After !DIST! !UNIT! enter the urban motorway !STREET!
	["bl00ia00"] = "Po przejechaniu !DIST! !UNIT! wjedź na miejską autostradę !STREET!",
	-- 964: Enter the roundabout
	["000c0y00"] = "Wjedź/Wejdż na rondo",
	-- 965: After !DIST! !UNIT! enter the roundabout
	["bl0c0y00"] = "Po przejechaniu/przejściu !DIST! !UNIT! wjedź/wejdź na rodno",
	-- 966: At the end of the road enter the roundabout
	["c00c0y00"] = "Na końcu drogi wjedź/wejdź na rondo",
	-- 967: and then enter the roundabout
	["h000cy00"] = "i wtedy wjedź/wejdź na rodno",
	-- 968: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2!
	["bl0x000y"] = "Po przejechaniu !DIST! !UNIT! trzymaj się lewej strony !NG_COMMAND_1! i kontynuuj jazdę !STREET_2!",
	-- 969: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x000z"] = "Po przejechaniu !DIST! !UNIT! trzymaj się lewej strony !NG_COMMAND_1! i kontynuuj jazdę !STREET_2! w kierunku !SIGNPOST_2!",
	-- 970: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2!
	["bl0o000y"] = "Po przejechaniu !DIST! !UNIT! trzymaj się środkowego pasa !NG_COMMAND_1! i kontynuuj jazdę !STREET_2!",
	-- 971: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o000z"] = "Po przejechaniu !DIST! !UNIT! trzymaj się środkowego pasa !NG_COMMAND_1! i kontynuuj jazdę !STREET_2! w kierunku !SIGNPOST_2!",
	-- 972: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2!
	["bl0p000y"] = "Po przejechaniu !DIST! !UNIT! trzymaj się prawej strony !NG_COMMAND_1! i kontynuuj jazdę !STREET_2!",
	-- 973: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p000z"] = "Po przejechaniu !DIST! !UNIT! trzymaj się prawej strony !NG_COMMAND_1! i kontynuuj jazdę !STREET_2! w kierunku !SIGNPOST_2!",
	-- 974: Follow the course of the road
	["g0000000"] = "Jedź drogą",
}

commands_ped = { -- Common commands for car & ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 599: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1!
	["blo00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę",
	-- 600: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["blw00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo",
	-- 601: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["blu00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo",
	-- 602: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bls00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo",
	-- 604: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["blq00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo",
	-- 605: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , !STREET!
	["blo00a00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową drogę , !STREET!",
	-- 606: After !DIST! !UNIT! turn left !NG_COMMAND_1! and continue on !STREET!
	["blv00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i kieruj się dalej !STREET!",
	-- 607: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["blw00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo !STREET!",
	-- 608: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["blw00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i kieruj się dalej !STREET!",
	-- 609: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["blu00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo !STREET!",
	-- 610: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["blu00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i kieruj się dalej !STREET!",
	-- 611: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bls00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo !STREET!",
	-- 612: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["bls00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i kieruj się dalej !STREET!",
	-- 613: After !DIST! !UNIT! turn right !NG_COMMAND_1! and continue on !STREET!
	["blr00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i kieruj się dalej !STREET!",
	-- 616: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["blq00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo !STREET!",
	-- 617: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["blq00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i kieruj się dalej !STREET!",
	-- 618: Now turn slightly right !NG_COMMAND_1! onto !STREET!
	["a0q00d00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo !STREET!",
	-- 619: Now turn sharply right !NG_COMMAND_1! onto !STREET!
	["a0s00d00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo !STREET!",
	-- 620: Now turn slightly left !NG_COMMAND_1! onto !STREET!
	["a0w00d00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo !STREET!",
	-- 622: Now turn sharply left !NG_COMMAND_1! onto !STREET!
	["a0u00d00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo !STREET!",
	-- 623: Now take the street in the middle !NG_COMMAND_1! , !STREET!
	["a0o00a00"] = "Teraz !NG_COMMAND_1! wybierz środkową drogę, !STREET!",
	-- 624: Now take the street in the middle !NG_COMMAND_1!
	["a0o00000"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1!",
	-- 625: Now turn left !NG_COMMAND_1! and continue on !STREET!
	["a0v00f00"] = "Teraz !NG_COMMAND_1! skręć w lewo i kieruj się dalej !STREET!",
	-- 626: Now turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["a0w00f00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i kieruj się dalej !STREET!",
	-- 627: Now turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["a0u00f00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i kieruj się dalej !STREET!",
	-- 628: Now turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["a0s00f00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i kieruj się dalej !STREET!",
	-- 629: Now turn right !NG_COMMAND_1! and continue on !STREET!
	["a0r00f00"] = "Teraz !NG_COMMAND_1! skręć w prawo i kieruj się dalej !STREET!",
	-- 631: Now walk straight ahead and continue on !STREET!
	["a0n00f00"] = "Teraz idź prosto i kieruj się dalej !STREET!",
	-- 632: Now turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["a0q00f00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i kieruj się dalej !STREET!",
	-- 633: Now walk around the roundabout and turn onto !STREET!
	["a0c00h00"] = "Teraz przejdź przez rondo i skręć !STREET!",
	-- 634: After !DIST! !UNIT! turn right !NG_COMMAND_1! , go through the building
	["blr00o00"] = "Za !DIST! !UNIT! skręć w prawo !NG_COMMAND_1! przejdź przez budynek",
	-- 635: After !DIST! !UNIT! walk left around the roundabout
	["blb00000"] = "Za !DIST! !UNIT! idź w lewo przez rondo",
	-- 636: Now turn right !NG_COMMAND_1!
	["a0r00000"] = "Teraz skręć w prawo !NG_COMMAND_1!",
	-- 637: Now turn left !NG_COMMAND_1!
	["a0v00000"] = "Teraz skręć w lewo !NG_COMMAND_1!",
	-- 638: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , !STREET!
	["blp00a00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w drogę po prawej !STREET!",
	-- 639: Now take the street on the right !NG_COMMAND_1! , !STREET!
	["a0p00a00"] = "Teraz !NG_COMMAND_1! skręć w drogę po prawej !STREET!",
	-- 640: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1!
	["blp00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej",
	-- 641: Now take the street on the right !NG_COMMAND_1!
	["a0p00000"] = "Teraz skręć w ulicę po prawej !NG_COMMAND_1!",
	-- 642: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , !STREET!
	["blx00a00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w drogę po lewej !STREET!",
	-- 643: Now take the street on the left !NG_COMMAND_1! , !STREET!
	["a0x00a00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej !STREET!",
	-- 644: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1!
	["blx00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej",
	-- 645: Now take the street on the left !NG_COMMAND_1!
	["a0x00000"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej",
	-- 646: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["blv00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo",
	-- 647: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["blr00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo",
	-- 648: After !DIST! !UNIT! !NG_COMMAND_1! turn left onto !STREET!
	["blv00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo !STREET!",
	-- 649: After !DIST! !UNIT! !NG_COMMAND_1! turn right onto !STREET!
	["blr00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo !STREET!",
	-- 650: Now turn left onto !STREET!
	["a0v00d00"] = "Teraz skręć w lewo !STREET!",
	-- 651: Now turn right onto !STREET!
	["a0r00d00"] = "Teraz skręć w prawo !STREET!",
	-- 652: Now walk around the roundabout !PED_TURN_NO!
	["a0c00j00"] = "Teraz przejdź przez rondo !PED_TURN_NO!",
	-- 655: and then after !DIST! !UNIT! !NG_COMMAND_1! take the ferry
	["ll0m0000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! wsiądź na prom",
	-- 657: and then after !DIST! !UNIT! !NG_COMMAND_1! walk left around the roundabout
	["llb00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! idź w lewo wokół ronda",
	-- 658: and then after !DIST! !UNIT! !NG_COMMAND_1! walk around the roundabout
	["llc00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! idź wokół ronda",
	-- 659: and then after !DIST! !UNIT! !NG_COMMAND_1! walk right around the roundabout
	["lla00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! idź w prawo wokół ronda",
	-- 660: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street in the middle
	["llo00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę",
	-- 661: and then after !DIST! !UNIT! !NG_COMMAND_1! turn left
	["llv00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo",
	-- 662: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly left
	["llw00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo",
	-- 663: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply left
	["llu00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo",
	-- 664: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply right
	["lls00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo",
	-- 665: and then after !DIST! !UNIT! !NG_COMMAND_1! turn right
	["llr00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo",
	-- 666: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the left
	["llx00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewą ulicę",
	-- 667: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the right
	["llp00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawą ulicę",
	-- 669: and then after !DIST! !UNIT! !NG_COMMAND_1! walk straight ahead
	["lln00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! idź prosto",
	-- 670: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly right
	["llq00000"] = "następnie, za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo",
	-- 671: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the lift
	["bln000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i wsiądź do windy",
	-- 672: Now turn slightly right onto the footpath
	["a0q00g00"] = "Teraz skręć lekko w prawo na chodnik",
	-- 673: Now turn right !NG_COMMAND_1! onto the footpath
	["a0r00g00"] = "Teraz !NG_COMMAND_1! skręć w prawo na chodnik",
	-- 674: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the stairs
	["bln000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i wejdź na schody",
	-- 675: Now walk right around the roundabout and turn onto !STREET!
	["a0a00h00"] = "Teraz idź w prawo wokół ronda i skręć !STREET!",
	-- 676: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the park
	["blr00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , przejdź przez park",
	-- 677: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the stairs
	["bln00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , wejdź na schody",
	-- 678: Now turn left !NG_COMMAND_1! and take the escalator
	["a0v000t0"] = "Teraz skręć w lewo !NG_COMMAND_1! i wejdź na schody ruchome",
	-- 679: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the lift
	["blo000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę i wsiądź do windy",
	-- 680: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , go through the building
	["bls00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , przejdź przez budynek",
	-- 681: Now take the street in the middle !NG_COMMAND_1! , cross the park
	["a0o00q00"] = "Teraz !NG_COMMAND_1! wybierz środkową ulicę , przejdź przez park",
	-- 682: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the escalator
	["blw00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wejdź na schody ruchome",
	-- 683: Now turn slightly left !NG_COMMAND_1! and take the escalator
	["a0w000t0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i wejdź na schody ruchome",
	-- 684: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the lift
	["blw000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i wsiądź do windy",
	-- 685: Now walk left around the roundabout !PED_TURN_NO!
	["a0b00j00"] = "Teraz idź w lewo wokół ronda !PED_TURN_NO!",
	-- 686: Now walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["a0b00h00"] = "Teraz !NG_COMMAND_1! idź w lewo wokół ronda i skręć !STREET!",
	-- 687: Now turn slightly right !NG_COMMAND_1! , cross the square
	["a0q00p00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , przejdź przez plac",
	-- 688: Head !ORIENTATION!
	["f0000000"] = "Kieruj się !ORIENTATION!",
	-- 689: Now turn slightly right !NG_COMMAND_1! , cross the park
	["a0q00q00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , przejdź przez park",
	-- 690: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the park
	["blq000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i przejdź przez park",
	-- 691: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and go through the building
	["blw000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i przejdź przez budynek",
	-- 692: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the lift
	["blw00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wsiądź do windy",
	-- 693: Now turn sharply left !NG_COMMAND_1! and take the escalator
	["a0u000t0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i wejdź na schody ruchome",
	-- 694: Now walk straight ahead !NG_COMMAND_1! and cross the square
	["a0n000p0"] = "Teraz !NG_COMMAND_1! idź prosto i przejdź przez plac",
	-- 695: Now take the street on the right !NG_COMMAND_1! and go through the building
	["a0p000o0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez budynek",
	-- 696: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the escalator
	["blw000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i wejdź na schody ruchome",
	-- 697: Now turn left !NG_COMMAND_1! take the stairs
	["a0v00r00"] = "Teraz skręć w lewo !NG_COMMAND_1! i wejdź na schody",
	-- 698: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the park
	["blo000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę i przejdź przez park",
	-- 699: Now take the street in the middle !NG_COMMAND_1! and cross the square
	["a0o000p0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i przejdź przez plac",
	-- 700: Now turn slightly right !NG_COMMAND_1! and go through the building
	["a0q000o0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i przejdź przez budynek",
	-- 701: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the park
	["bln00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , przejdź przez park",
	-- 702: Now walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["a0a00j00"] = "Teraz idź w prawo wokół ronda !NG_COMMAND_1! !PED_TURN_NO!",
	-- 703: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the escalator
	["blq000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i wejdź na schody ruchome",
	-- 704: Now turn sharply right !NG_COMMAND_1! and take the escalator
	["a0s000t0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i wejdź na schody ruchome",
	-- 705: Now take the street in the middle !NG_COMMAND_1! and go through the building
	["a0o000o0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i przejdź przez budynek",
	-- 706: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and go through the building
	["bln000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i przejdź przez budynek",
	-- 707: Now walk straight ahead !NG_COMMAND_1! , cross the square
	["a0n00p00"] = "Teraz idź prosto !NG_COMMAND_1! przejdź przez plac",
	-- 708: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the park
	["bln000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i przejdź przez park",
	-- 709: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the lift
	["blx000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej i wsiądź do windy",
	-- 710: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the escalator
	["blx00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , wejdź na schody ruchome",
	-- 711: Now turn slightly right !NG_COMMAND_1! , take the escalator
	["a0q00t00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , wejdź na schody ruchome",
	-- 712: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the lift
	["blr000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i wsiądź do windy",
	-- 713: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the park
	["blw000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i przejdź przez park",
	-- 714: Now turn slightly right !NG_COMMAND_1! , take the stairs
	["a0q00r00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , wejdź na schody",
	-- 715: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the stairs
	["blq000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i wejdź na schody",
	-- 716: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the stairs
	["blq00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wejdź na schody",
	-- 717: Now turn !NG_COMMAND_1! onto the footpath
	["a0y00g00"] = "Teraz !NG_COMMAND_1! skręć na chodnik",
	-- 718: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the park
	["blu000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i przejdź przez park",
	-- 719: Now turn right !NG_COMMAND_1! and go through the building
	["a0r000o0"] = "Teraz !NG_COMMAND_1! skręć w prawo i przejdź przez budynek",
	-- 720: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and go through the building
	["blu000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i przejdź przez budynek",
	-- 721: Now turn sharply right !NG_COMMAND_1! , go through the building
	["a0s00o00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , przejdź przez budynek",
	-- 722: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the escalator
	["blu000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i wejdź na schody ruchome",
	-- 723: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the stairs
	["blo000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę i wejdź na schody",
	-- 724: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the stairs
	["bls000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i wejdź na schody",
	-- 725: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the square
	["blv000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i przejdź przez plac",
	-- 726: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the park
	["blr000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i przejdź przez park",
	-- 727: Now turn left !NG_COMMAND_1! and take the stairs
	["a0v000r0"] = "Teraz !NG_COMMAND_1! skręć w lewo i wejdź na schody",
	-- 728: Now take the street on the left !NG_COMMAND_1! , take the escalator
	["a0x00t00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , wejdź na schody ruchome",
	-- 729: Now turn slightly left !NG_COMMAND_1! , cross the square
	["a0w00p00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , przejdź przez plac",
	-- 730: Now turn sharply right !NG_COMMAND_1! and cross the park
	["a0s000q0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i przejdź przez park",
	-- 731: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the escalator
	["blr000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i wejdź na schody ruchome",
	-- 732: After !DIST! !UNIT! turn right !NG_COMMAND_1! and go through the building
	["blr000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i przejdź przez budynek",
	-- 733: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the park
	["blp000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez park",
	-- 734: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1!
	["bla00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź w prawo wokół ronda",
	-- 735: Now take the street on the right !NG_COMMAND_1! and cross the square
	["a0p000p0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez plac",
	-- 736: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and go through the building
	["bls000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i przejdź przez budynek",
	-- 737: Now walk straight ahead !NG_COMMAND_1! and take the stairs
	["a0n000r0"] = "Teraz idź prosto !NG_COMMAND_1! i wejdź na schody",
	-- 738: Now turn sharply right !NG_COMMAND_1! and go through the building
	["a0s000o0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i przejdź przez budynek",
	-- 739: Now turn right !NG_COMMAND_1! and take the lift
	["a0r000s0"] = "Teraz !NG_COMMAND_1! skręć w prawo i wsiądź do windy",
	-- 740: Now turn slightly right !NG_COMMAND_1! and take the lift
	["a0q000s0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i wsiądź do windy",
	-- 741: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the lift
	["blo00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , wsiądź do windy",
	-- 742: Now walk straight ahead !NG_COMMAND_1! , take the stairs
	["a0n00r00"] = "Teraz idź prosto !NG_COMMAND_1! wejdź na schody",
	-- 743: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the stairs
	["blr000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i wejdź na schody",
	-- 744: Now take the street on the left !NG_COMMAND_1! and take the escalator
	["a0x000t0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i wejdź na schody ruchome",
	-- 745: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the park
	["blv000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i przejdź przez park",
	-- 746: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the escalator
	["bln00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , wejdź na schody ruchome",
	-- 747: Now turn sharply left !NG_COMMAND_1! and take the stairs
	["a0u000r0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i wejdź na schody",
	-- 748: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! cross the park
	["blp00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez park",
	-- 749: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , cross the square
	["blp00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej , przejdź przez plac",
	-- 750: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! onto !STREET!
	["bln00d00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto !STREET!",
	-- 751: Now take the street on the right !NG_COMMAND_1! , take the stairs
	["a0p00r00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , wejdź na schody",
	-- 752: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the square
	["blq00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , przejdź przez plac",
	-- 753: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the park
	["blq00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , przejdź przez park",
	-- 754: Now turn sharply right !NG_COMMAND_1! , take the stairs
	["a0s00r00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , wejdź na schody",
	-- 755: Now turn !NG_COMMAND_1!
	["a0y00000"] = "Teraz skręć !NG_COMMAND_1!",
	-- 756: Now turn left !NG_COMMAND_1! , cross the square
	["a0v00p00"] = "Teraz !NG_COMMAND_1! skręć w lewo , przejdź przez plac",
	-- 757: After !DIST! !UNIT! turn left !NG_COMMAND_1! and go through the building
	["blv000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i przejdź przez budynek",
	-- 758: Now turn sharply right !NG_COMMAND_1! and take the lift
	["a0s000s0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i wsiądź do windy",
	-- 759: Now take the street on the left !NG_COMMAND_1! , take the stairs
	["a0x00r00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , wejdź na schody",
	-- 760: Now turn slightly right !NG_COMMAND_1! and cross the square
	["a0q000p0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i przejdź przez plac",
	-- 761: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1!
	["bln00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto",
	-- 762: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the square
	["blx000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez plac",
	-- 763: Now turn left !NG_COMMAND_1! and cross the park
	["a0v000q0"] = "Teraz !NG_COMMAND_1! skręć w lewo i przejdź przez park",
	-- 764: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the stairs
	["blu00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wejdź na schody",
	-- 765: Now take the street in the middle !NG_COMMAND_1! and take the escalator
	["a0o000t0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i wejdź na schody ruchome",
	-- 766: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto the footpath
	["blu00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo na chodnik",
	-- 767: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the square
	["bln00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , przejdź przez plac",
	-- 768: Now turn right !NG_COMMAND_1! and take the escalator
	["a0r000t0"] = "Teraz !NG_COMMAND_1! skręć w prawo i wejdź na schody ruchome",
	-- 769: Now take the street on the left !NG_COMMAND_1! , cross the square
	["a0x00p00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez plac",
	-- 770: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the park
	["blx000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez park",
	-- 771: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the stairs
	["blr00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wejdź na schody",
	-- 772: Now turn sharply right !NG_COMMAND_1! , cross the park
	["a0s00q00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , przejdź przez park",
	-- 773: Now take the street in the middle !NG_COMMAND_1! and cross the park
	["a0o000q0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i przejdź przez park",
	-- 774: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the escalator
	["bls000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i wejdź na schody ruchome",
	-- 775: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the square
	["bls00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , przejdź przez plac",
	-- 776: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the lift
	["bls000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i wsiądź do windy",
	-- 777: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the escalator
	["bln000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i wejdź na schody ruchome",
	-- 778: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and go through the building
	["blx000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez budynek",
	-- 779: Now take the street on the right !NG_COMMAND_1! , cross the square
	["a0p00p00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , przejdź przez plac",
	-- 780: Now take the street on the right !NG_COMMAND_1! , take the lift
	["a0p00s00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , wsiądź do windy",
	-- 781: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the square
	["blv00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , przejdź przez plac",
	-- 782: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the stairs
	["blp00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej , wejdź na schody",
	-- 783: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and continue on !STREET!
	["bln00f00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i kieruj się dalej !STREET!",
	-- 784: Now turn slightly left !NG_COMMAND_1! , take the stairs
	["a0w00r00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , wejdź na schody",
	-- 785: Now turn left !NG_COMMAND_1! , go through the building
	["a0v00o00"] = "Teraz !NG_COMMAND_1! skręć w lewo , przejdź przez budynek",
	-- 786: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the escalator
	["blo00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , wejdź na schody ruchome",
	-- 787: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the square
	["blo00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , przejdź przez plac",
	-- 788: Now walk straight ahead !NG_COMMAND_1! and take the lift
	["a0n000s0"] = "Teraz idź prosto !NG_COMMAND_1! i wsiądź do windy",
	-- 789: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the stairs
	["bls00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wejdź na schody",
	-- 790: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the square
	["blu000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i przejdź przez plac",
	-- 791: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the park
	["blx00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez park",
	-- 792: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the park
	["bls00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , przejdź przez park",
	-- 793: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the park
	["blu00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , przejdź przez park",
	-- 794: Now turn sharply left !NG_COMMAND_1! and cross the park
	["a0u000q0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i przejdź przez park",
	-- 795: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the escalator
	["blp000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i wejdź na schody ruchome",
	-- 796: Now turn slightly left !NG_COMMAND_1! , cross the park
	["a0w00q00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , przejdź przez park",
	-- 797: Now take the street in the middle !NG_COMMAND_1! , take the escalator
	["a0o00t00"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! wejdź na schody ruchome",
	-- 798: Now turn slightly right !NG_COMMAND_1! and cross the park
	["a0q000q0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i przejdź przez park",
	-- 799: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the park
	["blo00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , przejdź przez park",
	-- 800: Now turn slightly left !NG_COMMAND_1! and cross the square
	["a0w000p0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i przejdź przez plac",
	-- 801: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the stairs
	["blx00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , wejdź na schody",
	-- 802: Now take the street in the middle !NG_COMMAND_1! , cross the square
	["a0o00p00"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! przejdź przez plac",
	-- 803: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the stairs
	["blv00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wejdź na schody",
	-- 804: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the stairs
	["blo00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , wejdź na schody",
	-- 805: Head !ORIENTATION! towards !SIGNPOST!
	["f00000c0"] = "Kieruj się !ORIENTATION! w kierunku na !SIGNPOST!",
	-- 806: Now turn slightly left !NG_COMMAND_1! , go through the building
	["a0w00o00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , przejdź przez budynek",
	-- 807: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the escalator
	["blv00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wejdź na schody ruchome",
	-- 808: Now turn left !NG_COMMAND_1! and cross the square
	["a0v000p0"] = "Teraz !NG_COMMAND_1! skręć w lewo i przejdź przez plac",
	-- 809: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! take the lift
	["blq00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wsiądź do windy",
	-- 810: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the square
	["bls000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i przejdź przez plac",
	-- 811: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto the footpath
	["blq00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo na chodnik",
	-- 812: Now turn sharply left !NG_COMMAND_1! and go through the building
	["a0u000o0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i przejdź przez budynek",
	-- 813: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the lift
	["blx00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , wsiądź do windy",
	-- 814: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the lift
	["blr00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wsiądź do windy",
	-- 815: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the lift
	["bls00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo , wsiądź do windy",
	-- 816: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the lift
	["blu00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wsiądź do windy",
	-- 817: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the escalator
	["blp00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej , wejdź na schody ruchome",
	-- 818: Now turn left !NG_COMMAND_1! , take the lift
	["a0v00s00"] = "Teraz !NG_COMMAND_1! skręć w lewo , wsiądź do windy",
	-- 819: Now take the street on the left !NG_COMMAND_1! and go through the building
	["a0x000o0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez budynek",
	-- 820: Now take the street on the right !NG_COMMAND_1! and cross the park
	["a0p000q0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez park",
	-- 821: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the escalator
	["blu00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , wejdź na schody ruchome",
	-- 822: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , go through the building
	["blq00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , przejdź przez budynek",
	-- 823: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , go through the building
	["blp00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej , przejdź przez budynek",
	-- 824: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the escalator
	["blo000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicą i wejdź na schody ruchome",
	-- 825: Now turn sharply left !NG_COMMAND_1! , take the lift
	["a0u00s00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , wsiądź do windy",
	-- 826: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , go through the building
	["blx00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez budynek",
	-- 827: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , go through the building
	["blu00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , przejdź przez budynek",
	-- 828: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , go through the building
	["blw00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , przejdź przez budynek",
	-- 829: After !DIST! !UNIT! turn left !NG_COMMAND_1! , go through the building
	["blv00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , przejdź przez budynek",
	-- 830: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , go through the building
	["blo00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę , przejdź przez budynek",
	-- 831: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the square
	["blu00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo , przejdź przez plac",
	-- 832: Now turn sharply right !NG_COMMAND_1! and take the stairs
	["a0s000r0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i wejdź na schody",
	-- 833: Now turn right !NG_COMMAND_1! , cross the square
	["a0r00p00"] = "Teraz !NG_COMMAND_1! skręć w prawo , przejdź przez plac",
	-- 834: Now take the street in the middle !NG_COMMAND_1! and take the stairs
	["a0o000r0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i wejdź na schody",
	-- 835: Now turn sharply right !NG_COMMAND_1! , cross the square
	["a0s00p00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , przejdź przez plac",
	-- 836: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the stairs
	["blv000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i wejdź na schody",
	-- 837: Now turn right !NG_COMMAND_1! and cross the park
	["a0r000q0"] = "Teraz !NG_COMMAND_1! skręć w prawo i przejdź przez park",
	-- 838: Now turn right !NG_COMMAND_1! and take the stairs
	["a0r000r0"] = "Teraz !NG_COMMAND_1! skręć w prawo i wejdź na schody",
	-- 839: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the park
	["bls000q0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo i przejdź przez park",
	-- 840: Now turn sharply left !NG_COMMAND_1! , cross the square
	["a0u00p00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , przejdź przez plac",
	-- 841: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the stairs
	["blw00r00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , wejdź na schody",
	-- 842: Now walk straight ahead !NG_COMMAND_1! , cross the park
	["a0n00q00"] = "Teraz idź prosto !NG_COMMAND_1! przejdź przez park",
	-- 843: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the stairs
	["blw000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i wejdź na schody",
	-- 844: Now take the street on the right !NG_COMMAND_1! , cross the park
	["a0p00q00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , przejdź przez park",
	-- 845: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the square
	["blp000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez plac",
	-- 846: Now turn slightly right !NG_COMMAND_1! and take the escalator
	["a0q000t0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i wejdź na schody ruchome",
	-- 847: Now turn left !NG_COMMAND_1! and take the lift
	["a0v000s0"] = "Teraz !NG_COMMAND_1! skręć w lewo i wsiądź do windy",
	-- 848: Now take the street on the left !NG_COMMAND_1! , cross the park
	["a0x00q00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez park",
	-- 849: Now turn right !NG_COMMAND_1! , cross the park
	["a0r00q00"] = "Teraz !NG_COMMAND_1! skręć w prawo , przejdź przez park",
	-- 850: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the square
	["blq000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i przejdź przez plac",
	-- 851: Now turn sharply left !NG_COMMAND_1! , cross the park
	["a0u00q00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , przejdź przez park",
	-- 852: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the park
	["blw00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , przejdź przez park",
	-- 853: Now turn left !NG_COMMAND_1! , cross the park
	["a0v00q00"] = "Teraz !NG_COMMAND_1! skręć w lewo , przejdź przez park",
	-- 854: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and go through the building
	["blp000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i przejdź przez budynek",
	-- 855: Now turn right !NG_COMMAND_1! , take the stairs
	["a0r00r00"] = "Teraz !NG_COMMAND_1! skręć w prawo , wejdź na schody",
	-- 856: Now turn left !NG_COMMAND_1! onto the footpath
	["a0v00g00"] = "Teraz !NG_COMMAND_1! skręć w lewo na chodnik",
	-- 857: Now turn sharply left !NG_COMMAND_1! , take the stairs
	["a0u00r00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , wejdź na schody",
	-- 858: Now walk straight ahead !NG_COMMAND_1! and take the escalator
	["a0n000t0"] = "Teraz idź prosto !NG_COMMAND_1! i wejdź na schody ruchome",
	-- 859: Now take the street on the left !NG_COMMAND_1! and take the stairs
	["a0x000r0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i wejdź na schody",
	-- 860: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the square
	["blr000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo i przejdź przez plac",
	-- 861: Now take the street in the middle !NG_COMMAND_1! , take the stairs
	["a0o00r00"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! wejdź na schody",
	-- 862: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and go through the building
	["blq000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i przejdź przez budynek",
	-- 863: Now turn slightly right !NG_COMMAND_1! , take the lift
	["a0q00s00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , wsiądź do windy",
	-- 864: Now turn right !NG_COMMAND_1! , take the lift
	["a0r00s00"] = "Teraz !NG_COMMAND_1! skręć w prawo , wsiądź do windy",
	-- 865: Now turn slightly right !NG_COMMAND_1! and take the stairs
	["a0q000r0"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo i wejdź na schody",
	-- 866: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the square
	["blo000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę i przejdź przez plac",
	-- 867: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the square
	["blw00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo , przejdź przez plac",
	-- 868: Now take the street on the left !NG_COMMAND_1! , take the lift
	["a0x00s00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , wsiądź do windy",
	-- 869: Now walk straight ahead !NG_COMMAND_1! onto !STREET!
	["a0n00d00"] = "Teraz idź prosto !NG_COMMAND_1! !STREET!",
	-- 870: Now turn sharply right !NG_COMMAND_1! , take the lift
	["a0s00s00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , wsiądź do windy",
	-- 871: Now turn slightly left !NG_COMMAND_1! , take the lift
	["a0w00s00"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo , wsiądź do windy",
	-- 872: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the escalator
	["blq00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo , wejdź na schody ruchome",
	-- 873: Now take the street in the middle !NG_COMMAND_1! , take the lift
	["a0o00s00"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! wsiądź do windy",
	-- 874: Now walk straight ahead !NG_COMMAND_1! , take the escalator
	["a0n00t00"] = "Teraz idź prosto !NG_COMMAND_1! wejdź na schody ruchome",
	-- 875: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto the footpath
	["bls00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w prawo na chodnik",
	-- 876: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and go through the building
	["blo000o0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! wybierz środkową ulicę i przejdź przez budynek",
	-- 877: Now turn right !NG_COMMAND_1! , go through the building
	["a0r00o00"] = "Teraz !NG_COMMAND_1! skręć w prawo , przejdź przez budynek",
	-- 878: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the escalator
	["blv000t0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i wejdź na schody ruchome",
	-- 879: Now turn slightly left !NG_COMMAND_1! and cross the park
	["a0w000q0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i przejdź przez park",
	-- 880: Now turn right !NG_COMMAND_1! , take the escalator
	["a0r00t00"] = "Teraz !NG_COMMAND_1! skręć w prawo , wejdź na schody ruchome",
	-- 881: Now turn sharply right !NG_COMMAND_1! , take the escalator
	["a0s00t00"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo , wejdź na schody ruchome",
	-- 882: Now turn sharply left !NG_COMMAND_1! , take the escalator
	["a0u00t00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , wejdź na schody ruchome",
	-- 883: Now turn left !NG_COMMAND_1! , take the escalator
	["a0v00t00"] = "Teraz !NG_COMMAND_1! skręć w lewo , wejdź na schody ruchome",
	-- 884: Now turn slightly right !NG_COMMAND_1! , go through the building
	["a0q00o00"] = "Teraz !NG_COMMAND_1! skręć lekko w prawo , przejdź przez budynek",
	-- 885: Now walk straight ahead !NG_COMMAND_1! , go through the building
	["a0n00o00"] = "Teraz idź prosto !NG_COMMAND_1! przejdź przez budynek",
	-- 886: Now take the street on the right !NG_COMMAND_1! , go through the building
	["a0p00o00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , przejdź przez budynek",
	-- 887: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the lift
	["blq000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w prawo i wsiądź do windy",
	-- 888: Now take the street on the right !NG_COMMAND_1! and take the lift
	["a0p000s0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i wsiądź do windy",
	-- 889: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the lift
	["blu000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i wsiądź do windy",
	-- 890: Now take the street on the left !NG_COMMAND_1! , go through the building
	["a0x00o00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez budynek",
	-- 891: Now take the street on the right !NG_COMMAND_1! , take the escalator
	["a0p00t00"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej , wejdź na schody ruchome",
	-- 892: Head !ORIENTATION! on !STREET! towards !SIGNPOST!
	["f0000bc0"] = "Kieruj się !ORIENTATION! !STREET! w kierunku na !SIGNPOST!",
	-- 893: Now take the street in the middle !NG_COMMAND_1! , go through the building
	["a0o00o00"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! przejdź przez budynek",
	-- 894: Now take the street on the left !NG_COMMAND_1! and cross the square
	["a0x000p0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez plac",
	-- 895: Now turn right !NG_COMMAND_1! and cross the square
	["a0r000p0"] = "Teraz !NG_COMMAND_1! skręć w prawo i przejdź przez plac",
	-- 896: Now turn sharply right !NG_COMMAND_1! and cross the square
	["a0s000p0"] = "Teraz !NG_COMMAND_1! skręć ostro w prawo i przejdź przez plac",
	-- 897: Now turn sharply left !NG_COMMAND_1! and cross the square
	["a0u000p0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i przejdź przez plac",
	-- 898: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the park
	["blv00q00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , przejdź przez park",
	-- 899: Now walk straight ahead !NG_COMMAND_1! and cross the park
	["a0n000q0"] = "Teraz idź prosto !NG_COMMAND_1! i przejdź przez park",
	-- 900: Now turn sharply left onto the footpath
	["a0u00g00"] = "Teraz skręć ostro w lewo na chodnik",
	-- 901: Now turn slightly left !NG_COMMAND_1! and go through the building
	["a0w000o0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i przejdź przez budynek",
	-- 902: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the escalator
	["blr00t00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , wejdź na schody ruchome",
	-- 903: Now turn sharply left !NG_COMMAND_1! and take the lift
	["a0u000s0"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo i wsiądź do windy",
	-- 904: Now take the street on the right !NG_COMMAND_1! and take the stairs
	["a0p000r0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i wejdź na schody",
	-- 905: Now turn left !NG_COMMAND_1! and go through the building
	["a0v000o0"] = "Teraz !NG_COMMAND_1! skręć w lewo i przejdź przez budynek",
	-- 906: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the square
	["blr00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo , przejdź przez plac",
	-- 907: Now walk straight ahead !NG_COMMAND_1! , take the lift
	["a0n00s00"] = "Teraz idź prosto !NG_COMMAND_1! wsiądź do windy",
	-- 908: Now turn slightly left !NG_COMMAND_1! and take the stairs
	["a0w000r0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i wejdź na schody",
	-- 909: Now take the street on the left !NG_COMMAND_1! and take the lift
	["a0x000s0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i wsiądź do windy",
	-- 910: Now turn slightly left onto the footpath
	["a0w00g00"] = "Teraz skręć lekko w lewo na chodnik",
	-- 911: Now take the street in the middle !NG_COMMAND_1! and take the lift
	["a0o000s0"] = "Teraz wybierz środkową ulicę !NG_COMMAND_1! i wsiądź do windy",
	-- 912: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the lift
	["blv000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo i wsiądź do windy",
	-- 913: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto the footpath
	["blr00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w prawo na chodnik",
	-- 914: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the stairs
	["blp000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i wejdź na schody",
	-- 915: Head !ORIENTATION! on !STREET!
	["f0000b00"] = "Kieruj się !ORIENTATION! !STREET!",
	-- 916: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the stairs
	["blx000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej i wejdź na schody",
	-- 917: After !DIST! !UNIT! !NG_COMMAND_1! turn slightly left onto the footpath
	["blw00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo na chodnik",
	-- 918: Now walk straight ahead !NG_COMMAND_1! and go through the building
	["a0n000o0"] = "Teraz idź prosto !NG_COMMAND_1! i przejdź przez budynek",
	-- 919: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the square
	["bln000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto i przejdź przez plac",
	-- 920: After !DIST! !UNIT! walk around the roundabout !NG_COMMAND_1!
	["blc00000"] = "Za !DIST! !UNIT! !NG_COMMAND_1! przejdź przez rondo",
	-- 921: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the lift
	["bln00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , wsiądź do windy",
	-- 922: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the square
	["blw000p0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć lekko w lewo i przejdź przez plac",
	-- 923: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the square
	["blx00p00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po lewej , przejdź przez plac",
	-- 924: Now take the street on the right !NG_COMMAND_1! and take the escalator
	["a0p000t0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po prawej i wejdź na schody ruchome",
	-- 925: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the lift
	["blv00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo , wsiądź do windy",
	-- 926: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the stairs
	["blu000r0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć ostro w lewo i wejdź na schody",
	-- 927: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the lift
	["blp000s0"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej i wsiądź do windy",
	-- 928: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , go through the building
	["bln00o00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! idź prosto , przejdź przez budynek",
	-- 929: Now take the street on the left !NG_COMMAND_1! and cross the park
	["a0x000q0"] = "Teraz !NG_COMMAND_1! skręć w ulicę po lewej i przejdź przez park",
	-- 930: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the lift
	["blp00s00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w ulicę po prawej , wsiądź do windy",
	-- 931: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto the footpath
	["blv00g00"] = "Za !DIST! !UNIT! !NG_COMMAND_1! skręć w lewo na chodnik",
	-- 932: Now turn slightly left !NG_COMMAND_1! and take the lift
	["a0w000s0"] = "Teraz !NG_COMMAND_1! skręć lekko w lewo i wsiądź do windy",
	-- 933: Now walk straight ahead !NG_COMMAND_1!
	["a0n00000"] = "Teraz idź prosto !NG_COMMAND_1!",
	-- 934: Now turn sharply right onto the footpath
	["a0s00g00"] = "Teraz skręć ostro w prawo na chodnik",
	-- 935: Now turn !NG_COMMAND_1! onto !STREET!
	["a0y00d00"] = "Teraz skręć !NG_COMMAND_1! !STREET!",
	-- 936: Now turn sharply left !NG_COMMAND_1! , go through the building
	["a0u00o00"] = "Teraz !NG_COMMAND_1! skręć ostro w lewo , przejdź przez budynek",
	-- 951: After !DIST! !UNIT! !NG_COMMAND_1! go through the building
	["bl000o00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! przejedź przez budynek",
	-- 952: After !DIST! !UNIT! !NG_COMMAND_1! cross the square
	["bl000p00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! przejedź przez plac",
	-- 953: After !DIST! !UNIT! !NG_COMMAND_1! cross the park
	["bl000q00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! przejedź przez park",
	-- 954: After !DIST! !UNIT! !NG_COMMAND_1! take the stairs
	["bl000r00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! wejdź na schody",
	-- 955: After !DIST! !UNIT! !NG_COMMAND_1! take the lift
	["bl000s00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! wejdź do windy",
	-- 956: After !DIST! !UNIT! !NG_COMMAND_1! take the escalator
	["bl000t00"] = "Po przejściu !DIST! !UNIT! !NG_COMMAND_1! wejdź na ruchome schody",
	-- 957: After !DIST! !UNIT! walk right around the roundabout and turn onto !STREET!
	["bla00h00"] = "Po przejściu !DIST! !UNIT! obejdź rondo z prawej strony i skręć w !STREET!",
	-- 958: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["bla00j00"] = "Po przejściu !DIST! !UNIT! obejdź rondo z prawej strony !NG_COMMAND_1! !PED_TURN_NO!",
	-- 959: After !DIST! !UNIT! walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["blb00h00"] = "Po przejściu !DIST! !UNIT! obejdź rondo z lewej strony !NG_COMMAND_1! i skręć w !STREET!",
	-- 960: After !DIST! !UNIT! walk left around the roundabout !PED_TURN_NO!
	["blb00j00"] = "Po przejściu !DIST! !UNIT! obejdź rondo z lewej strony !PED_TURN_NO!",
	-- 961: After !DIST! !UNIT! walk around the roundabout and turn onto !STREET!
	["blc00h00"] = "Po przejściu !DIST! !UNIT! obejdź rondo i skręć w !STREET!",
	-- 962: After !DIST! !UNIT! walk around the roundabout !PED_TURN_NO!
	["blc00j00"] = "Po przejściu !DIST! !UNIT! obejdź rondo !PED_TURN_NO!",
	-- 963: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the escalator
	["blx000t0"] = "Po przejściu !DIST! !UNIT! skręć w ulicę po lewej stronie !NG_COMMAND_1! i wejdź na ruchome schody",
}

