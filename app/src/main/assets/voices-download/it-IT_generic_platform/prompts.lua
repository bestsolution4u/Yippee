-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Author: Fabian TP Riek
-- ----------------------------------------------------------------------------
--             Voice Prompts: it-IT Italian TTS

street_article = nil -- in italian no street-name articles are used.

nG_prepositions = {	-- prepositions code for natural guidance, delivered by navteq, no additional translation needed
	["ITABPRIM"] = "Prima",
	["ITABPRDE"] = "Prima de",
	["ITABPRDI"] = "Prima di",
	["ITABPDEL"] = "Prima del",
	["ITABPDLO"] = "Prima dello",
	["ITABPDLA"] = "Prima della",
	["ITABPDLL"] = "Prima dell'",
	["ITABPDEI"] = "Prima dei",
	["ITABPDEG"] = "Prima degli",
	["ITABPDLE"] = "Prima delle",
	["ITABSOTT"] = "Sotto",
	["ITABSTIL"] = "Sotto il",
	["ITABSTLO"] = "Sotto lo",
	["ITABSTLA"] = "Sotto la",
	["ITABSOTL"] = "Sotto l'",
	["ITABSOTI"] = "Sotto i",
	["ITABSOGL"] = "Sotto gli",
	["ITABSOLE"] = "Sotto le",
	["ITABDOPO"] = "Dopo",
	["ITABDPIL"] = "Dopo il",
	["ITABDPLO"] = "Dopo lo",
	["ITABDPLA"] = "Dopo la",
	["ITABDOPL"] = "Dopo l'",
	["ITABDOPI"] = "Dopo i",
	["ITABDPGL"] = "Dopo gli",
	["ITABDPLE"] = "Dopo le",
	["ITABAXXX"] = "A",
	["ITABALXX"] = "Al",
	["ITABALLO"] = "Allo",
	["ITABALLX"] = "All'",
	["ITABALLA"] = "Alla",
	["ITABAIXX"] = "Ai",
	["ITABAGLI"] = "Agli",
	["ITABALLE"] = "Alle",
	["ITABSPTO"] = "Superato",
	["ITABSPTA"] = "Superata",
	["ITABSPTI"] = "Superati",
	["ITABSPTE"] = "Superate",
	["ITABSPIL"] = "Superato il",
	["ITABSPLO"] = "Superato lo",
	["ITABSPOL"] = "Superato l'",
	["ITABSPAL"] = "Superata l'",
	["ITABSPLA"] = "Superata la",
	["ITABSPRI"] = "Superati i",
	["ITABSPGL"] = "Superati gli",
	["ITABSPLE"] = "Superate le",
	["ITABAVSO"] = "Attraverso",
	["ITABAVIL"] = "Attraverso il",
	["ITABAVLO"] = "Attraverso lo",
	["ITABAVSL"] = "Attraverso l'",
	["ITABAVLA"] = "Attraverso la",
	["ITABAVSI"] = "Attraverso i",
	["ITABAVGL"] = "Attraverso gli",
	["ITABAVLE"] = "Attraverso le",
	["ITABSOPR"] = "Sopra",
	["ITABSPRL"] = "Sopra il",
	["ITABSOPL"] = "Sopra lo",
	["ITABSOPA"] = "Sopra la",
	["ITABSOAL"] = "Sopra l'",
	["ITABSOPI"] = "Sopra i",
	["ITABSOPG"] = "Sopra gli",
	["ITABSOPE"] = "Sopra le",
	["ITABSUXX"] = "Su",
	["ITABSULX"] = "Sul",
	["ITABSULL"] = "Sull'",
	["ITABSULA"] = "Sulla",
	["ITABSULE"] = "Sulle",
	["ITABSUIX"] = "Sui",
	["NONE"] = "", -- leave this entry, it's important
}
nG_elements = { -- natural guidance traffic light command elements
	[1] = "al prossimo semaforo", -- at the next traffic light
	[2] = "al secondo semaforo", -- at the second traffic light
	[3] = "al terzo semaforo", -- at the third traffic light
	["UNDEFINED"] = "",
}

unit_after = { -- Units to be used in sentences like After xx kilometers turn ...
	["MILE"] = "miglio", -- mile
	["YARDS"] = "iarde", -- yards
	["FEET"] = "piedi", -- feet
	["KILOMETER"] = "chilometro", -- kilometer
	["METERS"] = "metri", -- meters
	["METER"] = "metro", -- meter
	["KILOMETERS"] = "chilometri", -- kilometers
	["MILES"] = "miglia", -- miles
	["UNDEFINED"] = "",
}

unit_follow = { -- Units to be used in sentences like Follow the road for xx kilometers.
	["MILE"] = "miglio", -- mile
	["YARDS"] = "iarde", -- yards
	["FEET"] = "piedi", -- feet
	["KILOMETER"] = "chilometro", -- kilometer
	["METERS"] = "metri", -- meters
	["METER"] = "metro", -- meter
	["KILOMETERS"] = "chilometri", -- kilometers
	["MILES"] = "miglia", -- miles
	["UNDEFINED"] = "",
}

dist = { --
	["a"] = "un chilometro", -- one kilometer
	["b"] = "un miglio", -- one mile
	["c"] = "un quarto di miglio", -- a quarter of a mile
	["d"] = "mezzo miglio", -- half a mile
	["e"] = "tre quarti di miglio", -- three quarters of a mile
	["UNDEFINED"] = "",
}

exit_number_roundabout = { -- exit numbers for roundabouts in car navigation
	[1] = "prendere la prima uscita", -- take the first exit
	[2] = "prendere la seconda uscita", -- take the second exit
	[3] = "prendere la terza uscita", -- take the third exit
	[4] = "prendere la quarta uscita", -- take the fourth exit
	[5] = "prendere la quinta uscita", -- take the fifth exit
	[6] = "prendere la sesta uscita", -- take the sixth exit
	[7] = "prendere la settima uscita", -- take the seventh exit
	[8] = "prendere l'ottava uscita", -- take the eighth exit
	[9] = "prendere la nona uscita", -- take the ninth exit
	[10] = "prendere la decima uscita", -- take the tenth exit
	[11] = "prendere l'undicesima uscita", -- take the eleventh exit
	[12] = "prendere la dodicesima uscita", -- take the twelfth exit
	["UNDEFINED"] = "",
}

orientation = { -- Heading directions for walk commands, e.g. Head north on Oxford Street
	["NORTH"] = "Nord", -- north
	["NORTH_EAST"] = "Nord-Est", -- northeast
	["EAST"] = "Est", -- east
	["SOUTH_EAST"] = "Sud-Est", -- southeast
	["SOUTH"] = "Sud", -- south
	["SOUTH_WEST"] = "Sud-Ovest", -- southwest
	["WEST"] = "Ovest", -- west
	["NORTH_WEST"] = "Nord-Ovest", -- northwest
	["UNDEFINED"] = "",
}

turn_number_ped = { -- exit numbers for roundabouts in walk navigation
	[1] = "e svoltare alla prima strada, !STREET!", -- and turn at the first street !STREET!
	[2] = "e svoltare alla seconda strada, !STREET!", -- and turn at the second street !STREET!
	[3] = "e svoltare alla terza strada, !STREET!", -- and turn at the third street !STREET!
	["UNDEFINED"] = "",
}

commands_common = { -- Common commands for car & ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 1: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout towards !SIGNPOST!
	["c00c0zc0"] = "Alla fine della strada alla rotatoria !EXIT_NO_ROUNDABOUT! verso !SIGNPOST!",
	-- 2: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout onto !STREET!
	["c00c0zb0"] = "Alla fine della strada alla rotatoria !EXIT_NO_ROUNDABOUT! su !STREET!",
	-- 3: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout
	["c00c0z00"] = "Alla fine della strada alla rotatoria !EXIT_NO_ROUNDABOUT!",
	-- 4: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00d000x"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 5: and then enter the motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00f000x"] = "e quindi prendere l'autostrada !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 6: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00j000x"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 7: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00e000x"] = "e quindi fare un'inversione !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 8: and then enter the urban motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00i000x"] = "e quindi prendere la superstrada !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 9: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00g000x"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 10: and then take the middle lane !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00o000x"] = "e quindi prendere la corsia centrale !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 11: and then turn left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00v000x"] = "e quindi svoltare a sinistra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 12: and then turn slightly left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00w000x"] = "e quindi svoltare leggermente a sinistra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 13: and then turn sharply left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00u000x"] = "e quindi svoltare decisamente a sinistra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 14: and then turn sharply right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00s000x"] = "e quindi svoltare decisamente a destra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 15: and then turn right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00r000x"] = "e quindi svoltare a destra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 16: and then keep right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00p000x"] = "e quindi mantenersi a destra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 17: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00t000x"] = "e quindi fare un'inversione !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 18: and then keep left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00x000x"] = "e quindi mantenersi a sinistra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 19: and then turn slightly right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00q000x"] = "e quindi svoltare leggermente a destra !NG_COMMAND_2! verso !STREET_2! !SIGNPOST_2!",
	-- 20: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !STREET_2! !SIGNPOST_2!
	["h000cz0x"] = "e quindi alla rotatoria !EXIT_NO_ROUNDABOUT! verso !STREET_2! !SIGNPOST_2!",
	-- 21: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000j"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita",
	-- 22: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000j"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita",
	-- 23: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000j"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita",
	-- 24: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000j"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita",
	-- 25: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fj"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! e prendere l'uscita",
	-- 26: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000j"] = "Fra !DIST! !UNIT! prendere l'uscita !NG_COMMAND_1!",
	-- 27: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fj"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! e prendere l'uscita",
	-- 28: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fj"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! e prendere l'uscita",
	-- 29: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fj"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e prendere l'uscita",
	-- 30: Now take the exit !NG_COMMAND_1!
	["a000000g"] = "Prendere l'uscita !NG_COMMAND_1!",
	-- 31: After !DIST! !UNIT! take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl000e0x"] = "Fra !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! verso !STREET_2! !SIGNPOST_2!",
	-- 32: Now go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["a00ni000"] = "Proseguire diritto !NG_COMMAND_1!, prendere la superstrada",
	-- 33: and then go straight ahead towards !STREET_2! !SIGNPOST_2!
	["h00n000x"] = "e quindi proseguire diritto verso !STREET_2! !SIGNPOST_2!",
	-- 34: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000j"] = "Prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita",
	-- 35: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000j"] = "Mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita",
	-- 36: Now keep right !NG_COMMAND_1!  , take the exit
	["a00p000j"] = "Mantenersi a destra !NG_COMMAND_1!, prendere l'uscita",
	-- 37: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Proseguire diritto !NG_COMMAND_1! e prendere l'uscita",
	-- 38: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000j"] = "Proseguire diritto !NG_COMMAND_1!, prendere l'uscita",
	-- 39: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fj"] = "Prendere la corsia centrale !NG_COMMAND_1! e prendere l'uscita",
	-- 40: Now take the exit !NG_COMMAND_1!
	["a000000j"] = "Prendere l'uscita !NG_COMMAND_1!",
	-- 41: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fj"] = "Mantenersi a sinistra !NG_COMMAND_1! e prendere l'uscita",
	-- 42: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fj"] = "Mantenersi a destra !NG_COMMAND_1! e prendere l'uscita",
	-- 43: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Proseguire diritto !NG_COMMAND_1! e prendere l'uscita",
	-- 44: and then you will reach your destination !NG_COMMAND_2! on !STREET!
	["h000ab00"] = "e quindi !NG_COMMAND_2! vostra destinazione sarà raggiunta in !STREET!",
	-- 45: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto !STREET!
	["bl0v0d00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! in !STREET!",
	-- 46: Now keep right !NG_COMMAND_1! , enter the urban motorway
	["a00pi000"] = "Mantenersi a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 47: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway
	["bl0nf000"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'autostrada",
	-- 48: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET!
	["bl0a0b00"] = "Fra !DIST! !UNIT! !NG_COMMAND_1! vostra destinazione sarà raggiunta in !STREET!",
	-- 49: and then immediately turn slightly right onto !STREET! towards !SIGNPOST!
	["j00q0ac0"] = "e poi subito dopo svoltare leggermente a destra in !STREET! verso !SIGNPOST!",
	-- 50: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0edz"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 51: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h000ed00"] = "e quindi fare un'inversione !NG_COMMAND_2! in !STREET!",
	-- 52: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET!
	["bl0r0c00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! verso !STREET!",
	-- 53: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j000ed00"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2! in !STREET!",
	-- 54: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0edz"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 55: Now turn right !NG_COMMAND_1! , enter the motorway
	["a00rf000"] = "Svoltare a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 56: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET!
	["bl0v0c00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 57: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET!
	["bl0q0c00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! verso !STREET!",
	-- 58: At the end of the road turn right !NG_COMMAND_1! , enter the motorway
	["c00rf000"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 59: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1!
	["bl0b0000"] = "Fra !DIST! !UNIT! si raggiungerà vostra fermata intermedia !NG_COMMAND_1!",
	-- 60: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0e0z"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 61: Now take the exit !NG_COMMAND_1!
	["a00d0000"] = "Prendere l'uscita !NG_COMMAND_1!",
	-- 62: After !DIST! !UNIT! enter the motorway
	["bl00f000"] = "Fra !DIST! !UNIT! prendere l'autostrada",
	-- 63: and then take the exit !NG_COMMAND_2!
	["h00d0000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 64: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0qf0c0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 65: and then turn left !NG_COMMAND_2!
	["h00v0000"] = "e quindi svoltare a sinistra !NG_COMMAND_2!",
	-- 66: and then immediately turn left !NG_COMMAND_2!
	["j00v0000"] = "e poi subito dopo svoltare a sinistra !NG_COMMAND_2!",
	-- 67: and then immediately make a u turn !NG_COMMAND_2!
	["j000e000"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2!",
	-- 68: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0uf0c0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 69: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ui0c0"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 70: and then make a u turn !NG_COMMAND_2!
	["h000e000"] = "e quindi fare un'inversione !NG_COMMAND_2!",
	-- 71: At the end of the road turn right !NG_COMMAND_1! onto !STREET!
	["c00r0d00"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1! in !STREET!",
	-- 72: and then turn right, !STREET!
	["h00r0a00"] = "e quindi svoltare a destra, !STREET!",
	-- 73: and then immediately take the exit !NG_COMMAND_2! towards !STREET!
	["j000dc00"] = "e poi subito dopo prendere l'uscita !NG_COMMAND_2! verso !STREET!",
	-- 74: Now turn left !NG_COMMAND_1!
	["a00v0000"] = "Svoltare a sinistra !NG_COMMAND_1!",
	-- 75: At the end of the road turn left !NG_COMMAND_1!
	["c00v0000"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!",
	-- 76: At the end of the road take the ferry !NG_COMMAND_1! towards !STREET!
	["c00m0c00"] = "Alla fine della strada prendere il traghetto !NG_COMMAND_1! verso !STREET!",
	-- 77: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1!
	["bl0o0000"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!",
	-- 78: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fg"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! e prendere l'uscita",
	-- 79: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0o0e0x"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! verso !STREET_2! !SIGNPOST_2!",
	-- 80: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ofac0"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 81: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fg"] = "Proseguire diritto !NG_COMMAND_1! e prendere l'uscita",
	-- 82: Now take the exit !NG_COMMAND_1! towards !STREET!
	["a00d0c00"] = "Prendere l'uscita !NG_COMMAND_1! verso !STREET!",
	-- 83: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000g"] = "Mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita",
	-- 84: and then you will reach your stopover !NG_COMMAND_2!
	["h000b000"] = "e quindi si raggiungerà vostra fermata intermedia !NG_COMMAND_2!",
	-- 85: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00qi0c0"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 86: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0sf0c0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 87: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0piac0"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 88: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0x0ed0"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST!",
	-- 89: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0p0edy"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2!",
	-- 90: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ti0c0"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 91: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["bl0w0d00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 92: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00wi0c0"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 93: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! !NG_COMMAND_1! at the roundabout
	["bl0c0z00"] = "Fra !DIST! !UNIT! !NG_COMMAND_1! alla rotatoria !EXIT_NO_ROUNDABOUT!",
	-- 94: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0o0edx"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! verso !STREET_2! !SIGNPOST_2!",
	-- 95: At the end of the road make a u turn !NG_COMMAND_1!
	["c00t0000"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!",
	-- 96: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ni0c0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 97: After the junction keep right !NG_COMMAND_1!
	["bz0p0000"] = "Dopo l'incrocio mantenersi a destra !NG_COMMAND_1!",
	-- 98: After the junction go straight ahead !NG_COMMAND_1!
	["bz0n0000"] = "Dopo l'incrocio proseguire diritto !NG_COMMAND_1!",
	-- 99: and then make a u turn !NG_COMMAND_2!
	["h00t0000"] = "e quindi fare un'inversione !NG_COMMAND_2!",
	-- 100: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fg"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e prendere l'uscita",
	-- 101: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0uiac0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 102: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0n000x"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 103: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0n0edy"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2!",
	-- 104: and then immediately turn sharply right onto !STREET! towards !SIGNPOST!
	["j00s0ac0"] = "e poi subito dopo svoltare decisamente a destra in !STREET! verso !SIGNPOST!",
	-- 105: After !DIST! !UNIT! take the ferry !NG_COMMAND_1!
	["bl0m0000"] = "Fra !DIST! !UNIT! prendere il traghetto !NG_COMMAND_1!",
	-- 106: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0oi0c0"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 107: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00via00"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 108: and then turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["h00s00c0"] = "e quindi svoltare decisamente a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 109: Now take the middle lane !NG_COMMAND_1!
	["a00o0000"] = "Prendere la corsia centrale !NG_COMMAND_1!",
	-- 110: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0o0edy"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2!",
	-- 111: At the end of the road turn slightly right !NG_COMMAND_1!
	["c00q0000"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!",
	-- 112: and then take the middle lane !NG_COMMAND_2!
	["h00o0000"] = "e quindi prendere la corsia centrale !NG_COMMAND_2!",
	-- 113: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fg"] = "Mantenersi a destra !NG_COMMAND_1! e prendere l'uscita",
	-- 114: and then immediately take the middle lane !NG_COMMAND_2!
	["j00o0000"] = "e poi subito dopo prendere la corsia centrale !NG_COMMAND_2!",
	-- 115: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0wfac0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 116: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! towards !STREET!
	["bl0t0c00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1! verso !STREET!",
	-- 117: and then take the ferry !NG_COMMAND_2!
	["h00m0000"] = "e quindi prendere il traghetto !NG_COMMAND_2!",
	-- 118: Now turn slightly right !NG_COMMAND_1!
	["a00q0000"] = "Svoltare leggermente a destra !NG_COMMAND_1!",
	-- 119: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway
	["bl0ri000"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 120: and then keep left !NG_COMMAND_2! towards !STREET!
	["h00x0c00"] = "e quindi mantenersi a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 121: and then immediately turn slightly right !NG_COMMAND_2! onto !STREET!
	["j00q0d00"] = "e poi subito dopo svoltare leggermente a destra !NG_COMMAND_2! in !STREET!",
	-- 122: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway
	["bl0rf000"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 123: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0e0000"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!",
	-- 124: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h00i00c0"] = "e quindi prendere la superstrada !NG_COMMAND_2! verso !SIGNPOST!",
	-- 125: At the end of the road take the ferry !NG_COMMAND_1!
	["c00m0000"] = "Alla fine della strada prendere il traghetto !NG_COMMAND_1!",
	-- 126: Now take the ferry !NG_COMMAND_1!
	["a00m0000"] = "Prendere il traghetto !NG_COMMAND_1!",
	-- 127: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET!
	["bl0s0c00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! verso !STREET!",
	-- 128: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00ufa00"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 129: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["c00tfa00"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 130: After !DIST! !UNIT! enter the motorway !STREET! towards !SIGNPOST!
	["bl00fac0"] = "Fra !DIST! !UNIT! prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 131: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h00i0ac0"] = "e quindi prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 132: and then immediately take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["j00o00c0"] = "e poi subito dopo prendere la corsia centrale !NG_COMMAND_2! verso !SIGNPOST!",
	-- 133: and then take the middle lane !NG_COMMAND_2! onto !STREET!
	["h00o0d00"] = "e quindi prendere la corsia centrale in !NG_COMMAND_2! !STREET!",
	-- 134: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0o0e00"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER!",
	-- 135: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0via00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 136: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway
	["c00uf000"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 137: Now turn sharply left !NG_COMMAND_1! , enter the motorway
	["a00uf000"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 138: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0p0ed0"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST!",
	-- 139: and then immediately enter the urban motorway !NG_COMMAND_2!
	["j000i000"] = "e poi subito dopo prendere la superstrada !NG_COMMAND_2!",
	-- 140: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00vfa00"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 141: and then enter the urban motorway !NG_COMMAND_2!
	["h000i000"] = "e quindi prendere la superstrada, !NG_COMMAND_2!",
	-- 142: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0qfac0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 143: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["bl0w0000"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!",
	-- 144: Now enter the urban motorway
	["a000i000"] = "Prendere la superstrada",
	-- 145: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0xia00"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 146: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0n0ed0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST!",
	-- 147: and then immediately turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["j00u00c0"] = "e poi subito dopo svoltare decisamente a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 148: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000g"] = "Proseguire diritto !NG_COMMAND_1!, prendere l'uscita",
	-- 149: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00uia00"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 150: and then turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["h00u00c0"] = "e quindi svoltare decisamente a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 151: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bl0s0d00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! in !STREET!",
	-- 152: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway
	["bl0tf000"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere l'autostrada",
	-- 153: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["bl0q0000"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!",
	-- 154: and then take the exit !NG_COMMAND_2!
	["h00g0000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 155: At the end of the road turn sharply right !NG_COMMAND_1!
	["c00s0000"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!",
	-- 156: and then make a u turn !NG_COMMAND_2!
	["h00e0000"] = "e quindi fare un'inversione !NG_COMMAND_2!",
	-- 157: Now turn sharply right !NG_COMMAND_1!
	["a00s0000"] = "Svoltare decisamente a destra !NG_COMMAND_1!",
	-- 158: and then immediately keep right !NG_COMMAND_2! onto !STREET!
	["j00p0d00"] = "e poi subito dopo mantenersi a destra !NG_COMMAND_2! in !STREET!",
	-- 159: At the end of the road make a u turn !NG_COMMAND_1!
	["c00e0000"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!",
	-- 160: and then turn sharply right !NG_COMMAND_2!
	["h00s0000"] = "e quindi svoltare decisamente a destra !NG_COMMAND_2!",
	-- 161: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET!
	["c00u0c00"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 162: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0tf0c0"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 163: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00wfac0"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 164: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["c00wi000"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 165: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ofa00"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! ed immettersi nell'autostrada !STREET!",
	-- 166: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway
	["bl0ti000"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere la superstrada",
	-- 167: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00qiac0"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 168: Now turn right !NG_COMMAND_1! take the exit
	["a00r000g"] = "Svoltare a destra !NG_COMMAND_1!, prendere l'uscita",
	-- 169: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["bl0qi000"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 170: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["bl0q0d00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! in !STREET!",
	-- 171: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fg"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! e prendere l'uscita",
	-- 173: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET!
	["c00s0c00"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1! verso !STREET!",
	-- 174: Now turn left !NG_COMMAND_1! , enter the urban motorway
	["a00vi000"] = "Svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 175: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway
	["c00vi000"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 176: Now turn left !NG_COMMAND_1! and take the exit
	["a00v00fg"] = "Svoltare a sinistra !NG_COMMAND_1! e prendere l'uscita",
	-- 177: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0xfa00"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 178: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout  towards !SIGNPOST!
	["bl0c0zc0"] = "Fra !DIST! !UNIT! alla rotatoria !EXIT_NO_ROUNDABOUT! verso !SIGNPOST!",
	-- 179: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00tf0c0"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 180: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0si0c0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 181: At the end of the road you will reach your stopover !NG_COMMAND_1! on !STREET!
	["c00b0b00"] = "Alla fine della strada si raggiungerà vostra fermata intermedia !NG_COMMAND_1! in !STREET!",
	-- 182: After the junction turn slightly left !NG_COMMAND_1!
	["bz0w0000"] = "Dopo l'incrocio svoltare leggermente a sinistra !NG_COMMAND_1!",
	-- 183: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00qfac0"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 184: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bl0s0000"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!",
	-- 185: and then turn left !STREET! towards !SIGNPOST!
	["h00v0ac0"] = "e quindi svoltare a sinistra in !STREET! verso !SIGNPOST!",
	-- 186: and then keep right, !STREET!
	["h00p0a00"] = "e quindi mantenersi a destra, !STREET!",
	-- 187: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway on !STREET! towards !SIGNPOST!
	["c00siac0"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 188: At the end of the road turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00vf0c0"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 189: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0tfa00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 190: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00viac0"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 191: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h000ec00"] = "e quindi fare un'inversione !NG_COMMAND_2! verso !STREET!",
	-- 192: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j000ec00"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2! verso !STREET!",
	-- 193: Now take the exit !NG_COMMAND_1! onto !STREET!
	["a00d0d00"] = "Prendere l'uscita !NG_COMMAND_1! in !STREET!",
	-- 194: and then take the exit !NG_COMMAND_2!
	["h000g000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 195: and then immediately take the middle lane, !STREET! towards !SIGNPOST!
	["j00o0ac0"] = "e poi subito dopo prendere la corsia centrale, !STREET! verso !SIGNPOST!",
	-- 196: and then immediately take the exit !NG_COMMAND_2!
	["j000g000"] = "e poi subito dopo prendere l'uscita !NG_COMMAND_2!",
	-- 197: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00qia00"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada, !STREET!",
	-- 198: and then enter the motorway !STREET! towards !SIGNPOST!
	["h000fac0"] = "e quindi prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 199: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["bl0c0zb0"] = "Fra !DIST! !UNIT! alla rotatoria !EXIT_NO_ROUNDABOUT! su !STREET!",
	-- 200: After !DIST! !UNIT! take the exit !NG_COMMAND_1! onto !STREET!
	["bl0d0d00"] = "Fra !DIST! !UNIT! prendere l'uscita !NG_COMMAND_1! in !STREET!",
	-- 201: Now turn right !NG_COMMAND_1! , enter the urban motorway
	["a00ri000"] = "Svoltare a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 202: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway
	["c00ri000"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 203: You have reached your destination
	["y0000000"] = "Vostra destinazione è stata raggiunta",
	-- 204: You have reached your destination. The destination is on your right
	["yp000000"] = "Vostra destinazione è stata raggiunta. La destinazione è alla vostra destra",
	-- 205: You have reached your destination. The destination is on your left
	["yq000000"] = "Vostra destinazione è stata raggiunta. La destinazione è alla vostra sinistra",
	-- 206: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!
	["x0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 207: Route recalculation
	["w0000000"] = "Rielaborazione dell'itinerario",
	-- 208: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Safety camera ahead
	["v0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Attenzione Autovelox più avanti",
	-- 209: !EXIT_NO_ROUNDABOUT! at the roundabout
	["000c0z00"] = "alla rotatoria !EXIT_NO_ROUNDABOUT!",
	-- 210: Now go straight ahead !NG_COMMAND_1! enter the motorway
	["a00nf000"] = "Proseguire diritto !NG_COMMAND_1!, prendere l'autostrada",
	-- 211: You have reached your stopover. The stopover is on your right
	["zr000000"] = "È stata raggiunta vostra fermata intermedia. La fermata intermedia è alla vostra destra",
	-- 212: You have reached your stopover. The stopover is on your left
	["zs000000"] = "È stata raggiunta vostra fermata intermedia. La fermata intermedia è alla vostra sinistra",
	-- 213: You have reached your stopover
	["z0000000"] = "È stata raggiunta vostra fermata intermedia",
	-- 214: GPS signal has been restored
	["q0000000"] = "Il segnale GPS è stato ripristinato",
	-- 215: GPS signal lost
	["p0000000"] = "Segnale GPS perso",
	-- 216: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00sfa00"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada, !STREET!",
	-- 217: No detour found around traffic
	["u0000000"] = "Nessun percorso alternativo trovato per evitare il traffico",
	-- 218: Traffic on route, do you want to detour?
	["t0000000"] = "Traffico sulla tratta, si desidera un percorso alternativo?",
	-- 219: !SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!
	["r0000000"] = "!SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 220: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00rfa00"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere l'autostrada, !STREET!",
	-- 221: and then immediately go straight ahead, !STREET!
	["j00n0a00"] = "e poi subito dopo proseguire diritto, !STREET!",
	-- 222: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00qf0c0"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 223: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0riac0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 224: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0pfac0"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'autostrada, !STREET!, verso !SIGNPOST!",
	-- 225: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway
	["c00tf000"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere l'autostrada",
	-- 226: Now make a u turn !NG_COMMAND_1! , enter the urban motorway
	["a00ti000"] = "Fare un'inversione !NG_COMMAND_1!, prendere la superstrada",
	-- 227: Now make a u turn !NG_COMMAND_1! , enter the motorway
	["a00tf000"] = "Fare un'inversione !NG_COMMAND_1!, prendere l'autostrada",
	-- 228: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1! on !STREET!
	["bl0b0b00"] = "Fra !DIST! !UNIT! si raggiungerà vostra fermata intermedia !NG_COMMAND_1! in !STREET!",
	-- 229: and then immediately take the second right !NG_COMMAND_2!
	["j00y0000"] = "e poi subito dopo prendere la seconda a destra !NG_COMMAND_2!",
	-- 230: and then take the second right !NG_COMMAND_2!
	["h00y0000"] = "e quindi prendere la seconda a destra !NG_COMMAND_2!",
	-- 231: After !DIST! !UNIT! enter the urban motorway
	["bl00i000"] = "Fra !DIST! !UNIT! prendere la superstrada",
	-- 232: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0pia00"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 233: Now enter the motorway
	["a000f000"] = "Prendere l'autostrada",
	-- 234: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["c00si000"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 235: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0oia00"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 236: At the end of the road turn slightly left !NG_COMMAND_1! onto !STREET!
	["c00w0d00"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 237: and then turn slightly left !NG_COMMAND_2!
	["h00w0000"] = "e quindi svoltare leggermente a sinistra !NG_COMMAND_2!",
	-- 238: and then immediately turn slightly left !NG_COMMAND_2!
	["j00w0000"] = "e poi subito dopo svoltare leggermente a sinistra !NG_COMMAND_2!",
	-- 239: and then immediately take the second right !NG_COMMAND_2! onto !STREET!
	["j00y0d00"] = "e poi subito dopo prendere la seconda a destra !NG_COMMAND_2! in !STREET!",
	-- 240: and then take the second right !NG_COMMAND_2! onto !STREET!
	["h00y0d00"] = "e quindi prendere la seconda a destra !NG_COMMAND_2! in !STREET!",
	-- 241: and then immediately enter the motorway !NG_COMMAND_2!
	["j000f000"] = "e poi subito dopo prendere l'autostrada !NG_COMMAND_2!",
	-- 242: Now turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["a00si000"] = "Svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 243: Now turn slightly left !NG_COMMAND_1!
	["a00w0000"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!",
	-- 244: After the junction turn sharply right !NG_COMMAND_1!
	["bz0s0000"] = "Dopo l'incrocio svoltare decisamente a destra !NG_COMMAND_1!",
	-- 245: At the end of the road turn slightly left !NG_COMMAND_1!
	["c00w0000"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!",
	-- 246: and then enter the motorway !NG_COMMAND_2!
	["h000f000"] = "e quindi prendere l'autostrada, !NG_COMMAND_2!",
	-- 247: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["bl0wi000"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 248: Now keep right !NG_COMMAND_1!
	["a00p0000"] = "Mantenersi a destra !NG_COMMAND_1!",
	-- 249: and then immediately keep left !NG_COMMAND_2! onto !STREET!
	["j00x0d00"] = "e poi subito dopo mantenersi a sinistra !NG_COMMAND_2! in !STREET!",
	-- 250: and then immediately turn right !STREET! towards !SIGNPOST!
	["j00r0ac0"] = "e poi subito dopo svoltare a destra !STREET! verso !SIGNPOST!",
	-- 251: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0wfa00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 252: and then keep right !NG_COMMAND_2!
	["h00p0000"] = "e quindi mantenersi a destra !NG_COMMAND_2!",
	-- 253: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway
	["bl0xf000"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 254: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000gc00"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET!",
	-- 255: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ti0c0"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 256: and then immediately take the second left !NG_COMMAND_2! onto !STREET!
	["j00z0d00"] = "e poi subito dopo prendere la seconda a sinistra !NG_COMMAND_2! in !STREET!",
	-- 257: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0edz"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 258: and then take the middle lane !NG_COMMAND_2! towards !STREET!
	["h00o0c00"] = "e quindi prendere la corsia centrale !NG_COMMAND_2! verso !STREET!",
	-- 259: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0nf0c0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 260: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0of0c0"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 261: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET!
	["bl0w0c00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 262: and then take the second left !NG_COMMAND_2! onto !STREET!
	["h00z0d00"] = "e quindi prendere la seconda a sinistra !NG_COMMAND_2! in !STREET!",
	-- 263: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["bl0r0000"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!",
	-- 264: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0p0e0x"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! verso !STREET_2! !SIGNPOST_2!",
	-- 265: After the junction turn left !NG_COMMAND_1!
	["bz0v0000"] = "Dopo l'incrocio svoltare a sinistra !NG_COMMAND_1!",
	-- 266: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0q000x"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 267: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00wia00"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 268: and then take the exit !NG_COMMAND_2!
	["h000d000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 269: At the end of the road make a u turn !NG_COMMAND_1! onto !STREET!
	["c00t0d00"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1! in !STREET!",
	-- 270: and then take the ferry towards !STREET_2! !SIGNPOST_2!
	["h00m000x"] = "e quindi prendere il traghetto verso !STREET_2! !SIGNPOST_2!",
	-- 271: and then take the ferry !NG_COMMAND_2! towards !STREET!
	["h000mc00"] = "e quindi prendere il traghetto !NG_COMMAND_2! verso !STREET!",
	-- 272: and then you will reach your destination !NG_COMMAND_2!
	["h000a000"] = "e quindi vostra destinazione sarà raggiunta !NG_COMMAND_2!",
	-- 273: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000dc00"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET!",
	-- 274: and then keep right !NG_COMMAND_2! towards !SIGNPOST!
	["h00p00c0"] = "e quindi mantenersi a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 275: and then immediately turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["j00q00c0"] = "e poi subito dopo svoltare leggermente a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 276: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway
	["bl0wf000"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 277: and then immediately go straight ahead !NG_COMMAND_2!
	["j00n0000"] = "e poi subito dopo proseguire diritto !NG_COMMAND_2!",
	-- 278: and then immediately make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["j00t00c0"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2! verso !SIGNPOST!",
	-- 279: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0siac0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 280: Follow the course of the road for !DIST! !UNIT!
	["el000000"] = "Proseguire su questa strada per !DIST! !UNIT!",
	-- 281: Follow the motorway
	["d0000000"] = "Proseguire sull'autostrada",
	-- 282: and then immediately keep right !NG_COMMAND_2! towards !SIGNPOST!
	["j00p00c0"] = "e poi subito dopo mantenersi a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 283: and then immediately keep left !NG_COMMAND_2! towards !SIGNPOST!
	["j00x00c0"] = "e poi subito dopo mantenersi a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 284: and then enter the motorway !STREET! towards !SIGNPOST!
	["h00f0ac0"] = "e quindi prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 285: and then immediately turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["j00s00c0"] = "e poi subito dopo svoltare decisamente a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 286: and then immediately turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["j00w00c0"] = "e poi subito dopo svoltare leggermente a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 287: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0edz"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 288: and then immediately turn left !NG_COMMAND_2! towards !SIGNPOST!
	["j00v00c0"] = "e poi subito dopo svoltare a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 289: and then immediately enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000i0c0"] = "e poi subito dopo prendere la superstrada !NG_COMMAND_2! verso !SIGNPOST!",
	-- 290: and then immediately enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000f0c0"] = "e poi subito dopo prendere l'autostrada !NG_COMMAND_2! verso !SIGNPOST!",
	-- 291: and then take the second left !NG_COMMAND_2!
	["h00z0000"] = "e quindi prendere la seconda a sinistra !NG_COMMAND_2!",
	-- 292: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET!
	["c00w0c00"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 293: and then immediately take the second left !NG_COMMAND_2!
	["j00z0000"] = "e poi subito dopo prendere la seconda a sinistra !NG_COMMAND_2!",
	-- 294: Now keep left !NG_COMMAND_1! enter the urban motorway
	["a00xi000"] = "Mantenersi a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 295: and then immediately take the ferry !NG_COMMAND_2!
	["j000m000"] = "e poi subito dopo prendere il traghetto !NG_COMMAND_2!",
	-- 296: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto !STREET!
	["bl0r0d00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! in !STREET!",
	-- 297: and then turn slightly left !NG_COMMAND_2! towards !STREET!
	["h00w0c00"] = "e quindi svoltare leggermente a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 298: and then immediately take the exit !NG_COMMAND_2!
	["j000d000"] = "e poi subito dopo prendere l'uscita !NG_COMMAND_2!",
	-- 299: and then keep left !NG_COMMAND_2! towards !SIGNPOST!
	["h00x00c0"] = "e quindi mantenersi a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 300: and then immediately take the ferry !NG_COMMAND_2! towards !STREET!
	["j000mc00"] = "e poi subito dopo prendere il traghetto !NG_COMMAND_2! verso !STREET!",
	-- 301: and then take the exit !NG_COMMAND_2!
	["h000j000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 302: and then immediately take the exit !NG_COMMAND_2! onto !STREET!
	["j000dd00"] = "e poi subito dopo prendere l'uscita !NG_COMMAND_2! in !STREET!",
	-- 303: and then immediately take the exit !NG_COMMAND_2!
	["j000j000"] = "e poi subito dopo prendere l'uscita !NG_COMMAND_2!",
	-- 304: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0vfa00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada, !STREET!",
	-- 305: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["bl0ni000"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere la superstrada",
	-- 306: and then go straight ahead !NG_COMMAND_2!
	["h00n0000"] = "e quindi proseguire diritto !NG_COMMAND_2!",
	-- 307: After the junction keep left !NG_COMMAND_1!
	["bz0x0000"] = "Dopo l'incrocio mantenersi a sinistra !NG_COMMAND_1!",
	-- 308: drive to nearest road
	["000l0000"] = "dirigersi verso la strada più vicina",
	-- 309: and then immediately keep left !NG_COMMAND_2! towards !STREET!
	["j00x0c00"] = "e poi subito dopo mantenersi a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 310: and then immediately enter the motorway !STREET! towards !SIGNPOST!
	["j000fac0"] = "e poi subito dopo prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 311: and then immediately enter the motorway !STREET!
	["j000fa00"] = "e poi subito dopo prendere l'autostrada !STREET!",
	-- 312: and then immediately take the second left !NG_COMMAND_2! towards !STREET!
	["j00z0c00"] = "e poi subito dopo prendere la seconda a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 313: Now go straight ahead !NG_COMMAND_1!
	["a00n0000"] = "Proseguire diritto !NG_COMMAND_1!",
	-- 314: and then immediately turn slightly left !NG_COMMAND_2! towards !STREET!
	["j00w0c00"] = "e poi subito dopo svoltare leggermente a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 315: and then immediately take the second left , !STREET!
	["j00z0a00"] = "e poi subito dopo prendere la seconda a sinistra, !STREET!",
	-- 316: and then immediately make a u turn, !STREET! towards !SIGNPOST!
	["j00t0ac0"] = "e poi subito dopo fare un'inversione, !STREET! verso !SIGNPOST!",
	-- 317: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET!
	["bl0u0c00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 318: and then immediately keep right, !STREET! towards !SIGNPOST!
	["j00p0ac0"] = "e poi subito dopo mantenersi a destra, !STREET! verso !SIGNPOST!",
	-- 319: and then immediately turn left, !STREET! towards !SIGNPOST!
	["j00v0ac0"] = "e poi subito dopo svoltare a sinistra, !STREET! verso !SIGNPOST!",
	-- 320: and then immediately turn sharply left !NG_COMMAND_2! onto !STREET!
	["j00u0d00"] = "e poi subito dopo svoltare decisamente a sinistra !NG_COMMAND_2! in !STREET!",
	-- 321: and then immediately go straight ahead !NG_COMMAND_2! towards !STREET!
	["j00n0c00"] = "e poi subito dopo proseguire diritto !NG_COMMAND_2! verso !STREET!",
	-- 322: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0tfac0"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 323: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway
	["c00ti000"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere la superstrada",
	-- 324: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0vfac0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 325: At the end of the road turn sharply left !NG_COMMAND_1! onto !STREET!
	["c00u0d00"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 326: and then take the second left !NG_COMMAND_2! towards !STREET!
	["h00z0c00"] = "e quindi prendere la seconda a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 327: and then immediately turn slightly right !NG_COMMAND_2!
	["j00q0000"] = "e poi subito dopo svoltare leggermente a destra !NG_COMMAND_2!",
	-- 328: and then go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["h00n00c0"] = "e quindi proseguire diritto !NG_COMMAND_2! verso !SIGNPOST!",
	-- 329: After the junction turn right !NG_COMMAND_1!
	["bz0r0000"] = "Dopo l'incrocio svoltare a destra !NG_COMMAND_1!",
	-- 330: and then immediately go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["j00n00c0"] = "e poi subito dopo proseguire diritto !NG_COMMAND_2! verso !SIGNPOST!",
	-- 331: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j00t0d00"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2! in !STREET!",
	-- 332: and then immediately make a u turn !NG_COMMAND_2!
	["j00t0000"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2!",
	-- 333: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0p0e00"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER!",
	-- 334: and then immediately enter the urban motorway !STREET!
	["j000ia00"] = "e poi subito dopo prendere la superstrada !STREET!",
	-- 335: and then keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["h00x0ac0"] = "e quindi mantenersi a sinistra !NG_COMMAND_2!, !STREET! verso !SIGNPOST!",
	-- 336: and then immediately turn right !NG_COMMAND_2! towards !STREET!
	["j00r0c00"] = "e poi subito dopo svoltare a destra !NG_COMMAND_2! verso !STREET!",
	-- 337: and then immediately turn right !NG_COMMAND_2! onto !STREET!
	["j00r0d00"] = "e poi subito dopo svoltare a destra !NG_COMMAND_2! in !STREET!",
	-- 338: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0wia00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 339: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["bl0si000"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 340: and then immediately turn right !NG_COMMAND_2! towards !SIGNPOST!
	["j00r00c0"] = "e poi subito dopo svoltare a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 341: and then immediately turn sharply right !NG_COMMAND_2! towards !STREET!
	["j00s0c00"] = "e poi subito dopo svoltare decisamente a destra !NG_COMMAND_2! verso !STREET!",
	-- 342: and then turn right !NG_COMMAND_2! towards !SIGNPOST!
	["h00r00c0"] = "e quindi svoltare a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 343: and then enter the urban motorway !STREET!
	["h000ia00"] = "e quindi prendere la superstrada, !STREET!",
	-- 344: Now keep left !NG_COMMAND_1! , enter the motorway
	["a00xf000"] = "Mantenersi a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 345: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["bl0ui000"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 346: and then immediately turn sharply right !NG_COMMAND_2!
	["j00s0000"] = "e poi subito dopo svoltare decisamente a destra !NG_COMMAND_2!",
	-- 347: and then immediately turn sharply left !NG_COMMAND_2! towards !STREET!
	["j00u0c00"] = "e poi subito dopo svoltare decisamente a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 348: and then immediately turn sharply left !NG_COMMAND_2!
	["j00u0000"] = "e poi subito dopo svoltare decisamente a sinistra !NG_COMMAND_2!",
	-- 349: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0x0edx"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! verso !STREET_2! !SIGNPOST_2!",
	-- 350: and then immediately take the second right !NG_COMMAND_2! towards !STREET!
	["j00y0c00"] = "e poi subito dopo prendere la seconda a destra !NG_COMMAND_2! verso !STREET!",
	-- 351: and then immediately turn slightly left !NG_COMMAND_2! onto !STREET!
	["j00w0d00"] = "e poi subito dopo svoltare leggermente a sinistra !NG_COMMAND_2! in !STREET!",
	-- 352: and then take the second right !NG_COMMAND_2! towards !STREET!
	["h00y0c00"] = "e quindi prendere la seconda a destra !NG_COMMAND_2! verso !STREET!",
	-- 353: and then immediately turn left !NG_COMMAND_2! towards !STREET!
	["j00v0c00"] = "e poi subito dopo svoltare a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 354: and then immediately keep left, !STREET!
	["j00x0a00"] = "e poi subito dopo mantenersi a sinistra, !STREET!",
	-- 355: and then immediately take the middle lane !NG_COMMAND_2! towards !STREET!
	["j00o0c00"] = "e poi subito dopo prendere la corsia centrale !NG_COMMAND_2! verso !STREET!",
	-- 356: After the junction take the middle lane !NG_COMMAND_1!
	["bz0o0000"] = "Dopo l'incrocio prendere la corsia centrale !NG_COMMAND_1!",
	-- 357: and then immediately take the middle lane !NG_COMMAND_2! onto !STREET!
	["j00o0d00"] = "e poi subito dopo prendere la corsia centrale !NG_COMMAND_2! in !STREET!",
	-- 358: At the end of the road turn sharply left !NG_COMMAND_1!
	["c00u0000"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!",
	-- 359: and then turn sharply left !NG_COMMAND_2!
	["h00u0000"] = "e quindi svoltare decisamente a sinistra !NG_COMMAND_2!",
	-- 360: and then immediately turn left !NG_COMMAND_2! onto !STREET!
	["j00v0d00"] = "e poi subito dopo svoltare a sinistra !NG_COMMAND_2! in !STREET!",
	-- 361: and then immediately make a u turn, !STREET!
	["j00t0a00"] = "e poi subito dopo fare un'inversione, !STREET!",
	-- 362: and then immediately keep right, !STREET!
	["j00p0a00"] = "e poi subito dopo mantenersi a destra, !STREET!",
	-- 363: and then immediately go straight ahead, !STREET! towards !SIGNPOST!
	["j00n0ac0"] = "e poi subito dopo proseguire diritto, !STREET! verso !SIGNPOST!",
	-- 364: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fg"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! e prendere l'uscita",
	-- 365: and then immediately turn right, !STREET!
	["j00r0a00"] = "e poi subito dopo svoltare a destra, !STREET!",
	-- 366: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0rf0c0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 367: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0xf0c0"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 368: Now turn sharply left !NG_COMMAND_1!
	["a00u0000"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!",
	-- 369: At the end of the road turn left !NG_COMMAND_1! onto !STREET!
	["c00v0d00"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1! in !STREET!",
	-- 370: and then take the middle lane, !STREET! towards !SIGNPOST!
	["h00o0ac0"] = "e quindi prendere la corsia centrale, !STREET! verso !SIGNPOST!",
	-- 371: After !DIST! !UNIT! take the exit !NG_COMMAND_1! towards !STREET!
	["bl0d0c00"] = "Fra !DIST! !UNIT! prendere l'uscita !NG_COMMAND_1! verso !STREET!",
	-- 372: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0vi0c0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 373: and then immediately turn slightly left, !STREET!
	["j00w0a00"] = "e poi subito dopo svoltare leggermente a sinistra, !STREET!",
	-- 374: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1!
	["bl0n0000"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!",
	-- 375: and then you will reach your stopover !NG_COMMAND_2! on !STREET!
	["h000bb00"] = "e quindi si raggiungerà vostra fermata intermedia !NG_COMMAND_2! in !STREET!",
	-- 376: and then go straight ahead, !STREET! towards !SIGNPOST!
	["h00n0ac0"] = "e quindi proseguire diritto, !STREET! verso !SIGNPOST!",
	-- 377: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00wfa00"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 378: and then keep left !NG_COMMAND_2!
	["h00x0000"] = "e quindi mantenersi a sinistra !NG_COMMAND_2!",
	-- 379: and then turn slightly right !NG_COMMAND_2!
	["h00q0000"] = "e quindi svoltare leggermente a destra !NG_COMMAND_2!",
	-- 380: and then turn right !NG_COMMAND_2!
	["h00r0000"] = "e quindi svoltare a destra !NG_COMMAND_2!",
	-- 381: and then you will reach your destination !NG_COMMAND_2!
	["h00a0000"] = "e quindi vostra destinazione sarà raggiunta !NG_COMMAND_2!",
	-- 382: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0o000x"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 383: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000jc00"] = "e quindi prendere l'uscita !NG_COMMAND_2! verso !STREET!",
	-- 384: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway
	["bl0qf000"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 385: and then keep left !NG_COMMAND_2! onto !STREET!
	["h00x0d00"] = "e quindi mantenersi a sinistra !NG_COMMAND_2! in !STREET!",
	-- 386: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000g"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita",
	-- 387: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000gd00"] = "e quindi prendere l'uscita !NG_COMMAND_2! in !STREET!",
	-- 388: and then turn slightly left !NG_COMMAND_2! onto !STREET!
	["h00w0d00"] = "e quindi svoltare leggermente a sinistra !NG_COMMAND_2! in !STREET!",
	-- 389: and then turn sharply right !NG_COMMAND_2! onto !STREET!
	["h00s0d00"] = "e quindi svoltare decisamente a destra !NG_COMMAND_2! in !STREET!",
	-- 390: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fg"] = "Prendere la corsia centrale !NG_COMMAND_1! e prendere l'uscita",
	-- 391: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000jd00"] = "e quindi prendere l'uscita !NG_COMMAND_2! in !STREET!",
	-- 392: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00rfac0"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 393: and then go straight ahead !NG_COMMAND_2! onto !STREET!
	["h00n0d00"] = "e quindi proseguire diritto !NG_COMMAND_2! in !STREET!",
	-- 394: At the end of the road turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00v000x"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 395: and then go straight ahead !NG_COMMAND_2! towards !STREET!
	["h00n0c00"] = "e quindi proseguire diritto !NG_COMMAND_2! verso !STREET!",
	-- 396: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h00t0d00"] = "e quindi fare un'inversione !NG_COMMAND_2! in !STREET!",
	-- 397: After !DIST! !UNIT! turn left !NG_COMMAND_1! enter the motorway
	["bl0vf000"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 398: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0pf0c0"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 399: and then turn sharply left !NG_COMMAND_2! onto !STREET!
	["h00u0d00"] = "e quindi svoltare decisamente a sinistra !NG_COMMAND_2! in !STREET!",
	-- 400: and then turn sharply left !NG_COMMAND_2! towards !STREET!
	["h00u0c00"] = "e quindi svoltare decisamente a sinistra !NG_COMMAND_2! verso !STREET!",
	-- 401: and then turn left !NG_COMMAND_2! onto !STREET!
	["h00v0d00"] = "e quindi svoltare a sinistra !NG_COMMAND_2! in !STREET!",
	-- 402: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0nfa00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'autostrada, !STREET!",
	-- 403: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0ria00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere la superstrada, !STREET!",
	-- 404: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway
	["bl0of000"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'autostrada",
	-- 405: and then keep right !NG_COMMAND_2! onto !STREET!
	["h00p0d00"] = "e quindi mantenersi a destra !NG_COMMAND_2! in !STREET!",
	-- 406: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! onto !STREET!
	["bl0n0d00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! in !STREET!",
	-- 407: and then keep right !NG_COMMAND_2! towards !STREET!
	["h00p0c00"] = "e quindi mantenersi a destra !NG_COMMAND_2! verso !STREET!",
	-- 408: and then turn slightly right !NG_COMMAND_2! onto !STREET!
	["h00q0d00"] = "e quindi svoltare leggermente a destra !NG_COMMAND_2! in !STREET!",
	-- 409: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0n0e0x"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! verso !STREET_2! !SIGNPOST_2!",
	-- 410: At the end of the road turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00rf0c0"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 411: and then turn sharply right !NG_COMMAND_2! towards !STREET!
	["h00s0c00"] = "e quindi svoltare decisamente a destra !NG_COMMAND_2! verso !STREET!",
	-- 412: and then turn right !NG_COMMAND_2! onto !STREET!
	["h00r0d00"] = "e quindi svoltare a destra !NG_COMMAND_2! in !STREET!",
	-- 413: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0vf0c0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 414: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway
	["c00wf000"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 415: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h000iac0"] = "e quindi prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 416: Now keep left !NG_COMMAND_1!
	["a00x0000"] = "Mantenersi a sinistra !NG_COMMAND_1!",
	-- 417: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00wiac0"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 418: and then enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000f0c0"] = "e quindi prendere l'autostrada !NG_COMMAND_2! verso !SIGNPOST!",
	-- 419: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0xi0c0"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 420: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ri0c0"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 421: and then enter the motorway !STREET!
	["h000fa00"] = "e quindi prendere l'autostrada, !STREET!",
	-- 422: and then go straight ahead, !STREET!
	["h00n0a00"] = "e quindi proseguire diritto, !STREET!",
	-- 423: and then immediately keep left !NG_COMMAND_2!
	["j00x0000"] = "e poi subito dopo mantenersi a sinistra !NG_COMMAND_2!",
	-- 424: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00w000x"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 425: and then make a u turn, !STREET! towards !SIGNPOST!
	["h00t0ac0"] = "e quindi fare un'inversione, !STREET! verso !SIGNPOST!",
	-- 426: and then take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["h00o00c0"] = "e quindi prendere la corsia centrale !NG_COMMAND_2! verso !SIGNPOST!",
	-- 427: and then immediately turn sharply right, !STREET!
	["j00s0a00"] = "e poi subito dopo svoltare decisamente a destra, !STREET!",
	-- 428: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00sia00"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 429: and then keep left, !STREET!
	["h00x0a00"] = "e quindi mantenersi a sinistra, !STREET!",
	-- 430: Now turn sharply right !NG_COMMAND_1! , enter the motorway
	["a00sf000"] = "Svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 431: and then make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["h00t00c0"] = "e quindi fare un'inversione !NG_COMMAND_2! verso !SIGNPOST!",
	-- 432: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway
	["c00sf000"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 433: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["bl0u0000"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!",
	-- 434: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00tia00"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere la superstrada, !STREET!",
	-- 435: and then turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["h00w00c0"] = "e quindi svoltare leggermente a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 436: and then turn sharply left, !STREET!
	["h00u0a00"] = "e quindi svoltare decisamente a sinistra, !STREET!",
	-- 437: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000g"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita",
	-- 438: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00si0c0"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 439: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00riac0"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 440: and then turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["h00q00c0"] = "e quindi svoltare leggermente a destra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 441: and then turn sharply right, !STREET!
	["h00s0a00"] = "e quindi svoltare decisamente a destra, !STREET!",
	-- 442: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["bl0v0000"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!",
	-- 443: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0e0z"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 444: and then turn sharply right, !STREET! towards !SIGNPOST!
	["h00s0ac0"] = "e quindi svoltare decisamente a destra, !STREET! verso !SIGNPOST!",
	-- 445: and then turn right onto !STREET! towards !SIGNPOST!
	["h00r0ac0"] = "e quindi svoltare a destra in !STREET! verso !SIGNPOST!",
	-- 446: and then !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["h000czb0"] = "e quindi alla rotatoria !EXIT_NO_ROUNDABOUT! su !STREET!",
	-- 447: and then take the exit !NG_COMMAND_2!
	["h00j0000"] = "e quindi prendere l'uscita !NG_COMMAND_2!",
	-- 448: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h00c0z00"] = "e quindi alla rotatoria !EXIT_NO_ROUNDABOUT!",
	-- 449: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET!
	["bl0x0c00"] = "Fra !DIST! !UNIT! mantenersi a sinistra verso !NG_COMMAND_1! verso !STREET!",
	-- 450: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0x000x"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 451: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0v000x"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 452: After the junction make a u turn !NG_COMMAND_1!
	["bz0t0000"] = "Dopo l'incrocio fare un'inversione !NG_COMMAND_1!",
	-- 453: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0pfa00"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 454: and then enter the motorway !NG_COMMAND_2!
	["h00f0000"] = "e quindi prendere l'autostrada, !NG_COMMAND_2!",
	-- 455: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1!
	["bl0a0000"] = "Fra !DIST! !UNIT! vostra destinazione sarà raggiunta !NG_COMMAND_1!",
	-- 456: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000dd00"] = "e quindi prendere l'uscita !NG_COMMAND_2! in !STREET!",
	-- 457: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0wf0c0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 458: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h000cz00"] = "e quindi alla rotatoria !EXIT_NO_ROUNDABOUT!",
	-- 459: and then take the ferry !NG_COMMAND_2!
	["h000m000"] = "e quindi prendere il traghetto !NG_COMMAND_2!",
	-- 460: and then enter the urban motorway !STREET!
	["h00i0a00"] = "e quindi prendere la superstrada, !STREET!",
	-- 461: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway
	["bl0xi000"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 462: and then enter the motorway towards !SIGNPOST!
	["h00f00c0"] = "e quindi prendere l'autostrada verso !SIGNPOST!",
	-- 463: and then enter the motorway !STREET!
	["h00f0a00"] = "e quindi prendere l'autostrada, !STREET!",
	-- 464: and then immediately turn right !NG_COMMAND_2!
	["j00r0000"] = "e poi subito dopo svoltare a destra !NG_COMMAND_2!",
	-- 465: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fg"] = "Mantenersi a sinistra !NG_COMMAND_1! e prendere l'uscita",
	-- 466: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0r000x"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 467: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET!
	["bl0o0c00"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! verso !STREET!",
	-- 468: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000g"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita",
	-- 469: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000g"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita",
	-- 470: and then make a u turn, !STREET!
	["h00t0a00"] = "e quindi fare un'inversione, !STREET!",
	-- 471: Now turn right !NG_COMMAND_1!
	["a00r0000"] = "Svoltare a destra !NG_COMMAND_1!",
	-- 472: and then turn left !NG_COMMAND_2! towards !SIGNPOST!
	["h00v00c0"] = "e quindi svoltare a sinistra !NG_COMMAND_2! verso !SIGNPOST!",
	-- 473: At the end of the road turn right !NG_COMMAND_1!
	["c00r0000"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!",
	-- 474: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0p000x"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 475: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0s000x"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 476: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0u000x"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 477: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00qfa00"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 478: After !DIST! !UNIT! keep left !NG_COMMAND_1! onto !STREET!
	["bl0x0d00"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! in !STREET!",
	-- 479: and then enter the urban motorway !NG_COMMAND_2!
	["h00i0000"] = "e quindi prendere la superstrada, !NG_COMMAND_2!",
	-- 480: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0n0e0y"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2!",
	-- 481: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0rfa00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 482: After !DIST! !UNIT! enter the urban motorway !STREET! towards !SIGNPOST!
	["bl00iac0"] = "Fra !DIST! !UNIT! prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 483: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0xiac0"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 484: Now turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["a00wi000"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 485: After !DIST! !UNIT! keep left !NG_COMMAND_1! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0x0e0y"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2!",
	-- 486: At the end of the road turn left !NG_COMMAND_1! , enter the motorway
	["c00vf000"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 487: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00sf0c0"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 488: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0w000x"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 489: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !SIGNPOST!
	["h000czc0"] = "e quindi alla rotatoria !EXIT_NO_ROUNDABOUT! verso !SIGNPOST!",
	-- 490: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00uiac0"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 491: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0x0e00"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER!",
	-- 492: and then immediately keep right !NG_COMMAND_2! towards !STREET!
	["j00p0c00"] = "e poi subito dopo mantenersi a destra !NG_COMMAND_2! verso !STREET!",
	-- 493: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0e0z"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 494: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000e0z"] = "Fra !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 495: After !DIST! !UNIT! take exit !EXIT_NUMBER!
	["bl000e00"] = "Fra !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER!",
	-- 496: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000g"] = "Fra !DIST! !UNIT! prendere l'uscita !NG_COMMAND_1!",
	-- 497: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0sfa00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 498: Now keep right !NG_COMMAND_1! , take the exit
	["a00p000g"] = "Mantenersi a destra !NG_COMMAND_1!, prendere l'uscita",
	-- 499: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["bl0u0d00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 500: Now take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["a00oi000"] = "Prendere la corsia centrale !NG_COMMAND_1!, prendere la superstrada",
	-- 501: After !DIST! !UNIT! keep right !NG_COMMAND_1! onto !STREET!
	["bl0p0d00"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! in !STREET!",
	-- 502: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0t0000"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!",
	-- 503: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ufa00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET!",
	-- 504: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00vfac0"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 505: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0qia00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 506: Now keep right !NG_COMMAND_1! enter the motorway
	["a00pf000"] = "Mantenersi a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 507: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0x0e0x"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! verso !STREET_2! !SIGNPOST_2!",
	-- 508: and then immediately enter the urban motorway !STREET! towards !SIGNPOST!
	["j000iac0"] = "e poi subito dopo prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 509: and then immediately turn sharply right !NG_COMMAND_2! onto !STREET!
	["j00s0d00"] = "e poi subito dopo svoltare decisamente a destra !NG_COMMAND_2! in !STREET!",
	-- 510: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0p0e0y"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2!",
	-- 511: Now turn slightly left !NG_COMMAND_1! , enter the motorway
	["a00wf000"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 512: Now turn left !NG_COMMAND_1! , enter the motorway
	["a00vf000"] = "Svoltare a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 513: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000g"] = "Prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita",
	-- 514: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ui0c0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 515: At the end of the road turn sharply right !NG_COMMAND_1! onto !STREET!
	["c00s0d00"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1! in !STREET!",
	-- 516: Now take the middle lane !NG_COMMAND_1! enter the motorway
	["a00of000"] = "Prendere la corsia centrale !NG_COMMAND_1!, prendere l'autostrada",
	-- 517: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00tiac0"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 518: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET!
	["c00t0c00"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1! verso !STREET!",
	-- 519: At the end of the road make a u turn !NG_COMMAND_1! enter the motorway !STREET! towards !SIGNPOST!
	["c00tfac0"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 520: Now turn slightly right !NG_COMMAND_1! , enter the motorway
	["a00qf000"] = "Svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 521: At the end of the road turn slightly right !NG_COMMAND_1! onto !STREET!
	["c00q0d00"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1! in !STREET!",
	-- 522: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0niac0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 523: At the end of the road turn left !NG_COMMAND_1! towards !STREET!
	["c00v0c00"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1! verso !STREET!",
	-- 524: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0nia00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 525: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0tiac0"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 526: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j00t0c00"] = "e poi subito dopo fare un'inversione !NG_COMMAND_2! verso !STREET!",
	-- 527: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0pi0c0"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 528: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h00t0c00"] = "e quindi fare un'inversione !NG_COMMAND_2! verso !STREET!",
	-- 529: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0o0ed0"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST!",
	-- 530: and then turn left !NG_COMMAND_2! towards !STREET!
	["h00v0c00"] = "e quindi svoltare a sinistra in !NG_COMMAND_2! verso !STREET!",
	-- 531: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ri0c0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 532: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0sfac0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 533: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00u000x"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 534: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0wiac0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 535: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0wi0c0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 536: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0viac0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 537: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway
	["bl0vi000"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 538: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0oiac0"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 539: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0p0edx"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! verso !STREET_2! !SIGNPOST_2!",
	-- 540: After !DIST! !UNIT! take the ferry !NG_COMMAND_1! towards !STREET!
	["bl0m0c00"] = "Fra !DIST! !UNIT! prendere il traghetto !NG_COMMAND_1! verso !STREET!",
	-- 541: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["bl0oi000"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere la superstrada",
	-- 542: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0qfa00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada, !STREET!",
	-- 543: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0nfac0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'autostrada, !STREET!, verso !SIGNPOST!",
	-- 544: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway
	["bl0pf000"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 545: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0xfac0"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'autostrada, !STREET!, verso !SIGNPOST!",
	-- 546: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0rfac0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere l'autostrada, !STREET!, verso !SIGNPOST!",
	-- 547: Now make a u turn !NG_COMMAND_1!
	["a00t0000"] = "Fare un'inversione !NG_COMMAND_1!",
	-- 548: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["c00qi000"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 549: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ufac0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada, !STREET!, verso !SIGNPOST!",
	-- 550: Now turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["a00qi000"] = "Svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 551: and then turn right !NG_COMMAND_2! towards !STREET!
	["h00r0c00"] = "e quindi svoltare a destra !NG_COMMAND_2! verso !STREET!",
	-- 552: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET!
	["bl0p0c00"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! verso !STREET!",
	-- 553: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway
	["bl0pi000"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!, prendere la superstrada",
	-- 554: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00t000x"] = "Alla fine della strada fare un'inversione !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 555: At the end of the road turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00r000x"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 556: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00s000x"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 557: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0o0e0y"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2!",
	-- 558: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway
	["bl0uf000"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada",
	-- 559: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0uia00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 560: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["c00ui000"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 561: Now turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["a00ui000"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, prendere la superstrada",
	-- 562: and then you will reach your stopover !NG_COMMAND_2!
	["h00b0000"] = "e quindi si raggiungerà vostra fermata intermedia !NG_COMMAND_2!",
	-- 563: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0qiac0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada !STREET! verso !SIGNPOST!",
	-- 564: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00ria00"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 565: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET!
	["bl0n0c00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! verso !STREET!",
	-- 566: At the end of the road turn right !NG_COMMAND_1! towards !STREET!
	["c00r0c00"] = "Alla fine della strada svoltare a destra !NG_COMMAND_1! verso !STREET!",
	-- 567: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00vi0c0"] = "Alla fine della strada svoltare a sinistra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 568: and then keep right, !STREET! towards !SIGNPOST!
	["h00p0ac0"] = "e quindi mantenersi a destra, !STREET! verso !SIGNPOST!",
	-- 569: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["bl0t0d00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1! in !STREET!",
	-- 570: and then immediately turn slightly right !NG_COMMAND_2! towards !STREET!
	["j00q0c00"] = "e poi subito dopo svoltare leggermente a destra !NG_COMMAND_2! verso !STREET!",
	-- 571: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00ufac0"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 572: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00sfac0"] = "Alla fine della strada svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada !STREET! verso !SIGNPOST!",
	-- 573: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0n0e00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER!",
	-- 574: At the end of the road you will reach your destination !NG_COMMAND_1! on !STREET!
	["c00a0b00"] = "Alla fine della strada verrà raggiunta vostra destinazione !NG_COMMAND_1! in !STREET!",
	-- 575: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00q000x"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1! verso !STREET_2! !SIGNPOST_2!",
	-- 576: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET!
	["c00q0c00"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1! verso !STREET!",
	-- 577: After !DIST! !UNIT! keep left !NG_COMMAND_1!
	["bl0x0000"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!",
	-- 578: At the end of the road turn sharply left !NG_COMMAND_1! enter the motorway towards !SIGNPOST!
	["c00uf0c0"] = "Alla fine della strada svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 579: and then immediately go straight ahead !NG_COMMAND_2! onto !STREET!
	["j00n0d00"] = "e poi subito dopo proseguire diritto !NG_COMMAND_2! in !STREET!",
	-- 580: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000i0c0"] = "e quindi prendere la superstrada !NG_COMMAND_2! verso !SIGNPOST!",
	-- 581: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway
	["c00qf000"] = "Alla fine della strada svoltare leggermente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 582: and then turn slightly right !NG_COMMAND_2! towards !STREET!
	["h00q0c00"] = "e quindi svoltare leggermente a destra !NG_COMMAND_2! verso !STREET!",
	-- 583: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0e0z"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2! verso !SIGNPOST_2!",
	-- 584: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl0d0000"] = "Fra !DIST! !UNIT! prendere l'uscita !NG_COMMAND_1!",
	-- 585: Traffic on route, detouring
	["s0000000"] = "Traffico sulla tratta, scelta di un percorso alternativo",
	-- 586: After the junction turn sharply left !NG_COMMAND_1!
	["bz0u0000"] = "Dopo l'incrocio svoltare decisamente a sinistra !NG_COMMAND_1!",
	-- 587: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway
	["bl0sf000"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere l'autostrada",
	-- 588: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00wf0c0"] = "Alla fine della strada svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'autostrada verso !SIGNPOST!",
	-- 589: After the junction turn slightly right !NG_COMMAND_1!
	["bz0q0000"] = "Dopo l'incrocio svoltare leggermente a destra !NG_COMMAND_1!",
	-- 590: Now make a u turn !NG_COMMAND_1!
	["a00e0000"] = "Fare un'inversione !NG_COMMAND_1!",
	-- 591: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0sia00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere la superstrada, !STREET!",
	-- 592: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0x0edy"] = "Fra !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2!",
	-- 593: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0tia00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!, prendere la superstrada !STREET!",
	-- 594: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0n0edx"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'uscita !EXIT_NUMBER! !SIGNPOST! verso !STREET_2! !SIGNPOST_2!",
	-- 595: After !DIST! !UNIT! keep right !NG_COMMAND_1!
	["bl0p0000"] = "Fra !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1!",
	-- 596: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! onto !STREET!
	["bl0o0d00"] = "Fra !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! in !STREET!",
	-- 597: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0qi0c0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere la superstrada verso !SIGNPOST!",
	-- 598: and then immediately turn sharply left onto !STREET!
	["j00u0a00"] = "e poi subito dopo svoltare decisamente a sinistra, !STREET!",
	-- 603: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["blt00000"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1!",
	-- 614: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["blt00d00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1! in !STREET!",
	-- 615: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! and continue on !STREET!
	["blt00f00"] = "Fra !DIST! !UNIT! fare un'inversione !NG_COMMAND_1! e proseguire su !STREET!",
	-- 621: Now make a u turn !NG_COMMAND_1! onto !STREET!
	["a0t00d00"] = "Fare un'inversione !NG_COMMAND_1! in !STREET!",
	-- 630: Now make a u turn !NG_COMMAND_1! and continue on !STREET!
	["a0t00f00"] = "Fare un'inversione !NG_COMMAND_1! e proseguire su !STREET!",
	-- 653: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your destination
	["ll0a0000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! vostra destinazione sarà raggiunta",
	-- 654: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["ll0e0000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! fare un'inversione",
	-- 656: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your stopover
	["ll0b0000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! si raggiungerà vostra fermata intermedia",
	-- 668: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["llt00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! fare un'inversione",
	-- 937: After !DIST! !UNIT! enter the highway !STREET!
	["bl00fa00"] = "Dopo !DIST! !UNIT! prendere l'autostrada !STREET!",
	-- 938: and then immediately keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["j00x0ac0"] = "ed immediatamente mantenersi a sinistra !NG_COMMAND_2! !STREET! in direzione !SIGNPOST!",
	-- 939: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl000e0y"] = "Dopo !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! e proseguire su !STREET_2!",
	-- 940: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST!
	["bl000ed0"] = "Dopo !DIST! !UNIT! prensede l'uscita !EXIT_NUMBER! !SIGNPOST!",
	-- 941: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl000edx"] = "Dopo !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! !SIGNPOST! in direzione !STREET_2! !SIGNPOST_2!",
	-- 942: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000edz"] = "Dopo !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! !SIGNPOST!  e proseguire su !STREET_2! in direzione !SIGNPOST_2!",
	-- 943: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl000edy"] = "Dopo !DIST! !UNIT! prendere l'uscita !EXIT_NUMBER! !SIGNPOST! e proseguire su !STREET_2!",
	-- 944: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your left
	["bl0a000l"] = "Dopo !DIST! !UNIT! vostra destinazione sará raggiunta !NG_COMMAND_1!. La destinazione è alla vostra sinistra",
	-- 945: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your right
	["bl0a000r"] = "Dopo !DIST! !UNIT! vostra destinazione sará raggiunta !NG_COMMAND_1!. La destinazione è alla vostra destra",
	-- 946: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your left
	["bl0a0b0l"] = "Dopo !DIST! !UNIT! vostra destinazione sará raggiunta !NG_COMMAND_1! in !STREET!. La destinazione è alla vostra sinistra",
	-- 947: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your right
	["bl0a0b0r"] = "Dopo !DIST! !UNIT! vostra destinazione sará raggiunta !NG_COMMAND_1! in !STREET!. La destinazione è alla vostra destra",
	-- 948: After !DIST! !UNIT! enter the motorway towards !SIGNPOST!
	["bl00f0c0"] = "Dopo !DIST! !UNIT! prendere l'autostrada in direzione !SIGNPOST!",
	-- 949: After !DIST! !UNIT! enter the urban motorway towards !SIGNPOST!
	["bl00i0c0"] = "Dopo  !DIST! !UNIT! prendere la superstrada verso !SIGNPOST!",
	-- 950: After !DIST! !UNIT! enter the urban motorway !STREET!
	["bl00ia00"] = "Dopo !DIST! !UNIT! prendere la superstrada !STREET!",
	-- 964: Enter the roundabout
	["000c0y00"] = "Prendere la rotonda",
	-- 965: After !DIST! !UNIT! enter the roundabout
	["bl0c0y00"] = "Dopo !DIST! !UNIT! prendere la rotonda",
	-- 966: At the end of the road enter the roundabout
	["c00c0y00"] = "Alla fine della strada prendere la rotonda",
	-- 967: and then enter the roundabout
	["h000cy00"] = "e poi prendere la rotonda",
	-- 968: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2!
	["bl0x000y"] = "Dopo  !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! e proseguire su !STREET_2!",
	-- 969: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x000z"] = "Dopo !DIST! !UNIT! mantenersi a sinistra !NG_COMMAND_1! e proseguire su !STREET_2! in direzione !SIGNPOST_2!",
	-- 970: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2!
	["bl0o000y"] = "Dopo !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! e proseguire su !STREET_2!",
	-- 971: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o000z"] = "Dopo !DIST! !UNIT! prendere la corsia centrale !NG_COMMAND_1! e continuare su !STREET_2! in direzione !SIGNPOST_2!",
	-- 972: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2!
	["bl0p000y"] = "Dopo !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! e continuare su !STREET_2!",
	-- 973: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p000z"] = "Dopo  !DIST! !UNIT! mantenersi a destra !NG_COMMAND_1! e continuare su !STREET_2! in direzione !SIGNPOST_2!",
	-- 974: Follow the course of the road
	["g0000000"] = "Proseguire su questa strada",
}

commands_ped = { -- Commands for ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 599: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1!
	["blo00000"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!",
	-- 600: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["blw00000"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!",
	-- 601: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["blu00000"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!",
	-- 602: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bls00000"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!",
	-- 604: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["blq00000"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!",
	-- 605: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , !STREET!
	["blo00a00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, !STREET!",
	-- 606: After !DIST! !UNIT! turn left !NG_COMMAND_1! and continue on !STREET!
	["blv00f00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 607: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["blw00d00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 608: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["blw00f00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 609: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["blu00d00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 610: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["blu00f00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 611: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bls00d00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! in !STREET!",
	-- 612: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["bls00f00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 613: After !DIST! !UNIT! turn right !NG_COMMAND_1! and continue on !STREET!
	["blr00f00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 616: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["blq00d00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! in !STREET!",
	-- 617: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["blq00f00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 618: Now turn slightly right !NG_COMMAND_1! onto !STREET!
	["a0q00d00"] = "Svoltare leggermente a destra !NG_COMMAND_1! in !STREET!",
	-- 619: Now turn sharply right !NG_COMMAND_1! onto !STREET!
	["a0s00d00"] = "Svoltare decisamente a destra !NG_COMMAND_1! in !STREET!",
	-- 620: Now turn slightly left !NG_COMMAND_1! onto !STREET!
	["a0w00d00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 622: Now turn sharply left !NG_COMMAND_1! onto !STREET!
	["a0u00d00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! in !STREET!",
	-- 623: Now take the street in the middle !NG_COMMAND_1! , !STREET!
	["a0o00a00"] = "Prendere la strada al centro !NG_COMMAND_1!, !STREET!",
	-- 624: Now take the street in the middle !NG_COMMAND_1!
	["a0o00000"] = "Prendere la strada al centro !NG_COMMAND_1!",
	-- 625: Now turn left !NG_COMMAND_1! and continue on !STREET!
	["a0v00f00"] = "Svoltare a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 626: Now turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["a0w00f00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 627: Now turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["a0u00f00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 628: Now turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["a0s00f00"] = "Svoltare decisamente a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 629: Now turn right !NG_COMMAND_1! and continue on !STREET!
	["a0r00f00"] = "Svoltare a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 631: Now walk straight ahead and continue on !STREET!
	["a0n00f00"] = "Proseguire diritto e proseguire su !STREET!",
	-- 632: Now turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["a0q00f00"] = "Svoltare leggermente a destra !NG_COMMAND_1! e proseguire su !STREET!",
	-- 633: Now walk around the roundabout and turn onto !STREET!
	["a0c00h00"] = "Camminare lungo la rotatoria e svoltare in !STREET!",
	-- 634: After !DIST! !UNIT! turn right !NG_COMMAND_1! , go through the building
	["blr00o00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 635: After !DIST! !UNIT! walk left around the roundabout
	["blb00000"] = "Fra !DIST! !UNIT! camminare a sinistra lungo la rotatoria",
	-- 636: Now turn right !NG_COMMAND_1!
	["a0r00000"] = "Svoltare a destra !NG_COMMAND_1!",
	-- 637: Now turn left !NG_COMMAND_1!
	["a0v00000"] = "Svoltare a sinistra !NG_COMMAND_1!",
	-- 638: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , !STREET!
	["blp00a00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, !STREET!",
	-- 639: Now take the street on the right !NG_COMMAND_1! , !STREET!
	["a0p00a00"] = "Prendere la strada sulla destra !NG_COMMAND_1!, !STREET!",
	-- 640: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1!
	["blp00000"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!",
	-- 641: Now take the street on the right !NG_COMMAND_1!
	["a0p00000"] = "Prendere la strada sulla destra !NG_COMMAND_1!",
	-- 642: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , !STREET!
	["blx00a00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, !STREET!",
	-- 643: Now take the street on the left !NG_COMMAND_1! , !STREET!
	["a0x00a00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, !STREET!",
	-- 644: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1!
	["blx00000"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!",
	-- 645: Now take the street on the left !NG_COMMAND_1!
	["a0x00000"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!",
	-- 646: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["blv00000"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!",
	-- 647: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["blr00000"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!",
	-- 648: After !DIST! !UNIT! !NG_COMMAND_1! turn left onto !STREET!
	["blv00d00"] = "Fra !DIST! !UNIT! !NG_COMMAND_1! svoltare a sinistra in !STREET!",
	-- 649: After !DIST! !UNIT! !NG_COMMAND_1! turn right onto !STREET!
	["blr00d00"] = "Fra !DIST! !UNIT! !NG_COMMAND_1! svoltare a destra in !STREET!",
	-- 650: Now turn left onto !STREET!
	["a0v00d00"] = "Svoltare a sinistra in !STREET!",
	-- 651: Now turn right onto !STREET!
	["a0r00d00"] = "Svoltare a destra in !STREET!",
	-- 652: Now walk around the roundabout !PED_TURN_NO!
	["a0c00j00"] = "Camminare lungo la rotatoria !PED_TURN_NO!",
	-- 655: and then after !DIST! !UNIT! !NG_COMMAND_1! take the ferry
	["ll0m0000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! prendere il traghetto",
	-- 657: and then after !DIST! !UNIT! !NG_COMMAND_1! walk left around the roundabout
	["llb00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! camminare a sinistra lungo la rotatoria",
	-- 658: and then after !DIST! !UNIT! !NG_COMMAND_1! walk around the roundabout
	["llc00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! camminare lungo la rotatoria",
	-- 659: and then after !DIST! !UNIT! !NG_COMMAND_1! walk right around the roundabout
	["lla00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! camminare a destra lungo la rotatoria",
	-- 660: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street in the middle
	["llo00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! prendere la strada al centro",
	-- 661: and then after !DIST! !UNIT! !NG_COMMAND_1! turn left
	["llv00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare a sinistra",
	-- 662: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly left
	["llw00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare leggermente a sinistra",
	-- 663: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply left
	["llu00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare decisamente a sinistra",
	-- 664: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply right
	["lls00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare decisamente a destra",
	-- 665: and then after !DIST! !UNIT! !NG_COMMAND_1! turn right
	["llr00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare a destra",
	-- 666: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the left
	["llx00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! prendere la strada sulla sinistra",
	-- 667: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the right
	["llp00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! prendere la strada sulla destra",
	-- 669: and then after !DIST! !UNIT! !NG_COMMAND_1! walk straight ahead
	["lln00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! proseguire diritto",
	-- 670: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly right
	["llq00000"] = "e quindi dopo !DIST! !UNIT! !NG_COMMAND_1! svoltare leggermente a destra",
	-- 671: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the lift
	["bln000s0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e prendere l'ascensore",
	-- 672: Now turn slightly right onto the footpath
	["a0q00g00"] = "Svoltare leggermente a destra sulla via pedonale",
	-- 673: Now turn right !NG_COMMAND_1! onto the footpath
	["a0r00g00"] = "Svoltare a destra !NG_COMMAND_1! sulla via pedonale",
	-- 674: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the stairs
	["bln000r0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e prendere le scale",
	-- 675: Now walk right around the roundabout and turn onto !STREET!
	["a0a00h00"] = "Camminare a destra lungo la rotatoria e svoltare in !STREET!",
	-- 676: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the park
	["blr00q00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, attraversare il parco",
	-- 677: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the stairs
	["bln00r00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere le scale",
	-- 678: Now turn left !NG_COMMAND_1! and take the escalator
	["a0v000t0"] = "Svoltare a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 679: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the lift
	["blo000s0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e prendere l'ascensore",
	-- 680: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , go through the building
	["bls00o00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 681: Now take the street in the middle !NG_COMMAND_1! , cross the park
	["a0o00q00"] = "Prendere la strada al centro !NG_COMMAND_1!, attraversare il parco",
	-- 682: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the escalator
	["blw00t00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere le scale mobili",
	-- 683: Now turn slightly left !NG_COMMAND_1! and take the escalator
	["a0w000t0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 684: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the lift
	["blw000s0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 685: Now walk left around the roundabout !PED_TURN_NO!
	["a0b00j00"] = "Camminare a sinistra lungo la rotatoria !PED_TURN_NO!",
	-- 686: Now walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["a0b00h00"] = "Camminare a sinistra lungo la rotatoria !NG_COMMAND_1! e svoltare in !STREET!",
	-- 687: Now turn slightly right !NG_COMMAND_1! , cross the square
	["a0q00p00"] = "Svoltare leggermente a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 688: Head !ORIENTATION!
	["f0000000"] = "Proseguire verso !ORIENTATION!",
	-- 689: Now turn slightly right !NG_COMMAND_1! , cross the park
	["a0q00q00"] = "Svoltare leggermente a destra !NG_COMMAND_1!, attraversare il parco",
	-- 690: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the park
	["blq000q0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e attraversare il parco",
	-- 691: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and go through the building
	["blw000o0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 692: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the lift
	["blw00s00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 693: Now turn sharply left !NG_COMMAND_1! and take the escalator
	["a0u000t0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 694: Now walk straight ahead !NG_COMMAND_1! and cross the square
	["a0n000p0"] = "Proseguire diritto !NG_COMMAND_1! e attraversare la piazza",
	-- 695: Now take the street on the right !NG_COMMAND_1! and go through the building
	["a0p000o0"] = "Prendere la strada sulla destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 696: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the escalator
	["blw000t0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 697: Now turn left !NG_COMMAND_1! take the stairs
	["a0v00r00"] = "Svoltare a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 698: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the park
	["blo000q0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e attraversare il parco",
	-- 699: Now take the street in the middle !NG_COMMAND_1! and cross the square
	["a0o000p0"] = "Prendere la strada al centro !NG_COMMAND_1! e attraversare la piazza",
	-- 700: Now turn slightly right !NG_COMMAND_1! and go through the building
	["a0q000o0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 701: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the park
	["bln00q00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, attraversare il parco",
	-- 702: Now walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["a0a00j00"] = "Camminare a destra lungo la rotatoria !NG_COMMAND_1! !PED_TURN_NO!",
	-- 703: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the escalator
	["blq000t0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 704: Now turn sharply right !NG_COMMAND_1! and take the escalator
	["a0s000t0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 705: Now take the street in the middle !NG_COMMAND_1! and go through the building
	["a0o000o0"] = "Prendere la strada al centro !NG_COMMAND_1! e attraversare l'edificio",
	-- 706: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and go through the building
	["bln000o0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e attraversare l'edificio",
	-- 707: Now walk straight ahead !NG_COMMAND_1! , cross the square
	["a0n00p00"] = "Proseguire diritto !NG_COMMAND_1!, attraversare la piazza",
	-- 708: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the park
	["bln000q0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e attraversare il parco",
	-- 709: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the lift
	["blx000s0"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 710: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the escalator
	["blx00t00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, prendere le scale mobili",
	-- 711: Now turn slightly right !NG_COMMAND_1! , take the escalator
	["a0q00t00"] = "Svoltare leggermente a destra !NG_COMMAND_1!, prendere le scale mobili",
	-- 712: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the lift
	["blr000s0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 713: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the park
	["blw000q0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 714: Now turn slightly right !NG_COMMAND_1! , take the stairs
	["a0q00r00"] = "Svoltare leggermente a destra !NG_COMMAND_1!, prendere le scale",
	-- 715: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the stairs
	["blq000r0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e prendere le scale",
	-- 716: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the stairs
	["blq00r00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere le scale",
	-- 717: Now turn !NG_COMMAND_1! onto the footpath
	["a0y00g00"] = "Svoltare !NG_COMMAND_1! sulla via pedonale",
	-- 718: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the park
	["blu000q0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 719: Now turn right !NG_COMMAND_1! and go through the building
	["a0r000o0"] = "Svoltare a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 720: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and go through the building
	["blu000o0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 721: Now turn sharply right !NG_COMMAND_1! , go through the building
	["a0s00o00"] = "Svoltare decisamente a destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 722: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the escalator
	["blu000t0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 723: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the stairs
	["blo000r0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e prendere le scale",
	-- 724: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the stairs
	["bls000r0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e prendere le scale",
	-- 725: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the square
	["blv000p0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 726: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the park
	["blr000q0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e attraversare il parco",
	-- 727: Now turn left !NG_COMMAND_1! and take the stairs
	["a0v000r0"] = "Svoltare a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 728: Now take the street on the left !NG_COMMAND_1! , take the escalator
	["a0x00t00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, prendere le scale mobili",
	-- 729: Now turn slightly left !NG_COMMAND_1! , cross the square
	["a0w00p00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 730: Now turn sharply right !NG_COMMAND_1! and cross the park
	["a0s000q0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e attraversare il parco",
	-- 731: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the escalator
	["blr000t0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 732: After !DIST! !UNIT! turn right !NG_COMMAND_1! and go through the building
	["blr000o0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 733: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the park
	["blp000q0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e attraversare il parco",
	-- 734: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1!
	["bla00000"] = "Fra !DIST! !UNIT! camminare a destra lungo la rotatoria !NG_COMMAND_1!",
	-- 735: Now take the street on the right !NG_COMMAND_1! and cross the square
	["a0p000p0"] = "Prendere la strada sulla destra !NG_COMMAND_1! e attraversare la piazza",
	-- 736: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and go through the building
	["bls000o0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 737: Now walk straight ahead !NG_COMMAND_1! and take the stairs
	["a0n000r0"] = "Proseguire diritto !NG_COMMAND_1! e prendere le scale",
	-- 738: Now turn sharply right !NG_COMMAND_1! and go through the building
	["a0s000o0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 739: Now turn right !NG_COMMAND_1! and take the lift
	["a0r000s0"] = "Svoltare a destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 740: Now turn slightly right !NG_COMMAND_1! and take the lift
	["a0q000s0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 741: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the lift
	["blo00s00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, prendere l'ascensore",
	-- 742: Now walk straight ahead !NG_COMMAND_1! , take the stairs
	["a0n00r00"] = "Proseguire diritto !NG_COMMAND_1!, prendere le scale",
	-- 743: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the stairs
	["blr000r0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e prendere le scale",
	-- 744: Now take the street on the left !NG_COMMAND_1! and take the escalator
	["a0x000t0"] = "Prendere la strada sulla sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 745: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the park
	["blv000q0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 746: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the escalator
	["bln00t00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere le scale mobili",
	-- 747: Now turn sharply left !NG_COMMAND_1! and take the stairs
	["a0u000r0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 748: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! cross the park
	["blp00q00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, attraversare il parco",
	-- 749: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , cross the square
	["blp00p00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, attraversare la piazza",
	-- 750: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! onto !STREET!
	["bln00d00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! in !STREET!",
	-- 751: Now take the street on the right !NG_COMMAND_1! , take the stairs
	["a0p00r00"] = "Prendere la strada sulla destra !NG_COMMAND_1!, prendere le scale",
	-- 752: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the square
	["blq00p00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 753: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the park
	["blq00q00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, attraversare il parco",
	-- 754: Now turn sharply right !NG_COMMAND_1! , take the stairs
	["a0s00r00"] = "Svoltare decisamente a destra !NG_COMMAND_1!, prendere le scale",
	-- 755: Now turn !NG_COMMAND_1!
	["a0y00000"] = "Svoltare !NG_COMMAND_1!",
	-- 756: Now turn left !NG_COMMAND_1! , cross the square
	["a0v00p00"] = "Svoltare a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 757: After !DIST! !UNIT! turn left !NG_COMMAND_1! and go through the building
	["blv000o0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 758: Now turn sharply right !NG_COMMAND_1! and take the lift
	["a0s000s0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 759: Now take the street on the left !NG_COMMAND_1! , take the stairs
	["a0x00r00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, prendere le scale",
	-- 760: Now turn slightly right !NG_COMMAND_1! and cross the square
	["a0q000p0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 761: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1!
	["bln00000"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!",
	-- 762: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the square
	["blx000p0"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 763: Now turn left !NG_COMMAND_1! and cross the park
	["a0v000q0"] = "Svoltare a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 764: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the stairs
	["blu00r00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 765: Now take the street in the middle !NG_COMMAND_1! and take the escalator
	["a0o000t0"] = "Prendere la strada al centro !NG_COMMAND_1! e prendere le scale mobili",
	-- 766: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto the footpath
	["blu00g00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! sulla via pedonale",
	-- 767: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the square
	["bln00p00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, attraversare la piazza",
	-- 768: Now turn right !NG_COMMAND_1! and take the escalator
	["a0r000t0"] = "Svoltare a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 769: Now take the street on the left !NG_COMMAND_1! , cross the square
	["a0x00p00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 770: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the park
	["blx000q0"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 771: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the stairs
	["blr00r00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere le scale",
	-- 772: Now turn sharply right !NG_COMMAND_1! , cross the park
	["a0s00q00"] = "Svoltare decisamente a destra !NG_COMMAND_1!, attraversare il parco",
	-- 773: Now take the street in the middle !NG_COMMAND_1! and cross the park
	["a0o000q0"] = "Prendere la strada al centro !NG_COMMAND_1! e attraversare il parco",
	-- 774: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the escalator
	["bls000t0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 775: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the square
	["bls00p00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 776: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the lift
	["bls000s0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 777: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the escalator
	["bln000t0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e prendere le scale mobili",
	-- 778: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and go through the building
	["blx000o0"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 779: Now take the street on the right !NG_COMMAND_1! , cross the square
	["a0p00p00"] = "Prendere la strada sulla destra !NG_COMMAND_1!, attraversare la piazza",
	-- 780: Now take the street on the right !NG_COMMAND_1! , take the lift
	["a0p00s00"] = "Prendere la strada sulla destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 781: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the square
	["blv00p00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 782: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the stairs
	["blp00r00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, prendere le scale",
	-- 783: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and continue on !STREET!
	["bln00f00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e proseguire su !STREET!",
	-- 784: Now turn slightly left !NG_COMMAND_1! , take the stairs
	["a0w00r00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 785: Now turn left !NG_COMMAND_1! , go through the building
	["a0v00o00"] = "Svoltare a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 786: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the escalator
	["blo00t00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, prendere le scale mobili",
	-- 787: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the square
	["blo00p00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, attraversare la piazza",
	-- 788: Now walk straight ahead !NG_COMMAND_1! and take the lift
	["a0n000s0"] = "Proseguire diritto !NG_COMMAND_1! e prendere l'ascensore",
	-- 789: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the stairs
	["bls00r00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere le scale",
	-- 790: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the square
	["blu000p0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 791: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the park
	["blx00q00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 792: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the park
	["bls00q00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, attraversare il parco",
	-- 793: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the park
	["blu00q00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 794: Now turn sharply left !NG_COMMAND_1! and cross the park
	["a0u000q0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 795: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the escalator
	["blp000t0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 796: Now turn slightly left !NG_COMMAND_1! , cross the park
	["a0w00q00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 797: Now take the street in the middle !NG_COMMAND_1! , take the escalator
	["a0o00t00"] = "Prendere la strada al centro !NG_COMMAND_1!, prendere le scale mobili",
	-- 798: Now turn slightly right !NG_COMMAND_1! and cross the park
	["a0q000q0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e attraversare il parco",
	-- 799: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the park
	["blo00q00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, attraversare il parco",
	-- 800: Now turn slightly left !NG_COMMAND_1! and cross the square
	["a0w000p0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 801: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the stairs
	["blx00r00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, prendere le scale",
	-- 802: Now take the street in the middle !NG_COMMAND_1! , cross the square
	["a0o00p00"] = "Prendere la strada al centro !NG_COMMAND_1!, attraversare la piazza",
	-- 803: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the stairs
	["blv00r00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 804: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the stairs
	["blo00r00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, prendere le scale",
	-- 805: Head !ORIENTATION! towards !SIGNPOST!
	["f00000c0"] = "Proseguire verso !ORIENTATION! direzione !SIGNPOST!",
	-- 806: Now turn slightly left !NG_COMMAND_1! , go through the building
	["a0w00o00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 807: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the escalator
	["blv00t00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere le scale mobili",
	-- 808: Now turn left !NG_COMMAND_1! and cross the square
	["a0v000p0"] = "Svoltare a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 809: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! take the lift
	["blq00s00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 810: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the square
	["bls000p0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 811: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto the footpath
	["blq00g00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! sulla via pedonale",
	-- 812: Now turn sharply left !NG_COMMAND_1! and go through the building
	["a0u000o0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 813: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the lift
	["blx00s00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 814: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the lift
	["blr00s00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 815: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the lift
	["bls00s00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 816: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the lift
	["blu00s00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 817: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the escalator
	["blp00t00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, prendere le scale mobili",
	-- 818: Now turn left !NG_COMMAND_1! , take the lift
	["a0v00s00"] = "Svoltare a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 819: Now take the street on the left !NG_COMMAND_1! and go through the building
	["a0x000o0"] = "Prendere la strada sulla sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 820: Now take the street on the right !NG_COMMAND_1! and cross the park
	["a0p000q0"] = "Prendere la strada sulla destra !NG_COMMAND_1! e attraversare il parco",
	-- 821: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the escalator
	["blu00t00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, prendere le scale mobili",
	-- 822: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , go through the building
	["blq00o00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 823: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , go through the building
	["blp00o00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 824: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the escalator
	["blo000t0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e prendere le scale mobili",
	-- 825: Now turn sharply left !NG_COMMAND_1! , take the lift
	["a0u00s00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 826: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , go through the building
	["blx00o00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 827: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , go through the building
	["blu00o00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 828: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , go through the building
	["blw00o00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 829: After !DIST! !UNIT! turn left !NG_COMMAND_1! , go through the building
	["blv00o00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 830: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , go through the building
	["blo00o00"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1!, attraversare l'edificio",
	-- 831: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the square
	["blu00p00"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 832: Now turn sharply right !NG_COMMAND_1! and take the stairs
	["a0s000r0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e prendere le scale",
	-- 833: Now turn right !NG_COMMAND_1! , cross the square
	["a0r00p00"] = "Svoltare a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 834: Now take the street in the middle !NG_COMMAND_1! and take the stairs
	["a0o000r0"] = "Prendere la strada al centro !NG_COMMAND_1! e prendere le scale",
	-- 835: Now turn sharply right !NG_COMMAND_1! , cross the square
	["a0s00p00"] = "Svoltare decisamente a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 836: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the stairs
	["blv000r0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 837: Now turn right !NG_COMMAND_1! and cross the park
	["a0r000q0"] = "Svoltare a destra !NG_COMMAND_1! e attraversare il parco",
	-- 838: Now turn right !NG_COMMAND_1! and take the stairs
	["a0r000r0"] = "Svoltare a destra !NG_COMMAND_1! e prendere le scale",
	-- 839: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the park
	["bls000q0"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! e attraversare il parco",
	-- 840: Now turn sharply left !NG_COMMAND_1! , cross the square
	["a0u00p00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 841: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the stairs
	["blw00r00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 842: Now walk straight ahead !NG_COMMAND_1! , cross the park
	["a0n00q00"] = "Proseguire diritto !NG_COMMAND_1!, attraversare il parco",
	-- 843: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the stairs
	["blw000r0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 844: Now take the street on the right !NG_COMMAND_1! , cross the park
	["a0p00q00"] = "Prendere la strada sulla destra !NG_COMMAND_1!, attraversare il parco",
	-- 845: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the square
	["blp000p0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e attraversare la piazza",
	-- 846: Now turn slightly right !NG_COMMAND_1! and take the escalator
	["a0q000t0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 847: Now turn left !NG_COMMAND_1! and take the lift
	["a0v000s0"] = "Svoltare a sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 848: Now take the street on the left !NG_COMMAND_1! , cross the park
	["a0x00q00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 849: Now turn right !NG_COMMAND_1! , cross the park
	["a0r00q00"] = "Svoltare a destra !NG_COMMAND_1!, attraversare il parco",
	-- 850: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the square
	["blq000p0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 851: Now turn sharply left !NG_COMMAND_1! , cross the park
	["a0u00q00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 852: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the park
	["blw00q00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 853: Now turn left !NG_COMMAND_1! , cross the park
	["a0v00q00"] = "Svoltare a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 854: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and go through the building
	["blp000o0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 855: Now turn right !NG_COMMAND_1! , take the stairs
	["a0r00r00"] = "Svoltare a destra !NG_COMMAND_1!, prendere le scale",
	-- 856: Now turn left !NG_COMMAND_1! onto the footpath
	["a0v00g00"] = "Svoltare a sinistra !NG_COMMAND_1! sulla via pedonale",
	-- 857: Now turn sharply left !NG_COMMAND_1! , take the stairs
	["a0u00r00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, prendere le scale",
	-- 858: Now walk straight ahead !NG_COMMAND_1! and take the escalator
	["a0n000t0"] = "Proseguire diritto !NG_COMMAND_1! e prendere le scale mobili",
	-- 859: Now take the street on the left !NG_COMMAND_1! and take the stairs
	["a0x000r0"] = "Prendere la strada sulla sinistra !NG_COMMAND_1! e prendere le scale",
	-- 860: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the square
	["blr000p0"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 861: Now take the street in the middle !NG_COMMAND_1! , take the stairs
	["a0o00r00"] = "Prendere la strada al centro !NG_COMMAND_1!, prendere le scale",
	-- 862: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and go through the building
	["blq000o0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1! e attraversare l'edificio",
	-- 863: Now turn slightly right !NG_COMMAND_1! , take the lift
	["a0q00s00"] = "Svoltare leggermente a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 864: Now turn right !NG_COMMAND_1! , take the lift
	["a0r00s00"] = "Svoltare a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 865: Now turn slightly right !NG_COMMAND_1! and take the stairs
	["a0q000r0"] = "Svoltare leggermente a destra !NG_COMMAND_1! e prendere le scale",
	-- 866: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the square
	["blo000p0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e attraversare la piazza",
	-- 867: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the square
	["blw00p00"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 868: Now take the street on the left !NG_COMMAND_1! , take the lift
	["a0x00s00"] = "Prendere la strada sulla sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 869: Now walk straight ahead !NG_COMMAND_1! onto !STREET!
	["a0n00d00"] = "Proseguire diritto !NG_COMMAND_1! in !STREET!",
	-- 870: Now turn sharply right !NG_COMMAND_1! , take the lift
	["a0s00s00"] = "Svoltare decisamente a destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 871: Now turn slightly left !NG_COMMAND_1! , take the lift
	["a0w00s00"] = "Svoltare leggermente a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 872: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the escalator
	["blq00t00"] = "Fra !DIST! !UNIT! svoltare leggermente a destra !NG_COMMAND_1!, prendere le scale mobili",
	-- 873: Now take the street in the middle !NG_COMMAND_1! , take the lift
	["a0o00s00"] = "Prendere la strada al centro !NG_COMMAND_1!, prendere l'ascensore",
	-- 874: Now walk straight ahead !NG_COMMAND_1! , take the escalator
	["a0n00t00"] = "Proseguire diritto !NG_COMMAND_1!, prendere le scale mobili",
	-- 875: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto the footpath
	["bls00g00"] = "Fra !DIST! !UNIT! svoltare decisamente a destra !NG_COMMAND_1! sulla via pedonale",
	-- 876: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and go through the building
	["blo000o0"] = "Fra !DIST! !UNIT! prendere la strada al centro !NG_COMMAND_1! e attraversare l'edificio",
	-- 877: Now turn right !NG_COMMAND_1! , go through the building
	["a0r00o00"] = "Svoltare a destra !NG_COMMAND_1!, attraversare l'edificio",
	-- 878: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the escalator
	["blv000t0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e prendere le scale mobili",
	-- 879: Now turn slightly left !NG_COMMAND_1! and cross the park
	["a0w000q0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 880: Now turn right !NG_COMMAND_1! , take the escalator
	["a0r00t00"] = "Svoltare a destra !NG_COMMAND_1!, prendere le scale mobili",
	-- 881: Now turn sharply right !NG_COMMAND_1! , take the escalator
	["a0s00t00"] = "Svoltare decisamente a destra, !NG_COMMAND_1! prendere le scale mobili",
	-- 882: Now turn sharply left !NG_COMMAND_1! , take the escalator
	["a0u00t00"] = "Svoltare decisamente a sinistra, !NG_COMMAND_1! prendere le scale mobili",
	-- 883: Now turn left !NG_COMMAND_1! , take the escalator
	["a0v00t00"] = "Svoltare a sinistra, !NG_COMMAND_1! prendere le scale mobili",
	-- 884: Now turn slightly right !NG_COMMAND_1! , go through the building
	["a0q00o00"] = "Svoltare leggermente a destra, !NG_COMMAND_1! attraversare l'edificio",
	-- 885: Now walk straight ahead !NG_COMMAND_1! , go through the building
	["a0n00o00"] = "Proseguire diritto, !NG_COMMAND_1! attraversare l'edificio",
	-- 886: Now take the street on the right !NG_COMMAND_1! , go through the building
	["a0p00o00"] = "Prendere la strada sulla destra, !NG_COMMAND_1! attraversare l'edificio",
	-- 887: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the lift
	["blq000s0"] = "Fra !DIST! !UNIT! svoltare leggermente a destra, !NG_COMMAND_1! prendere l'ascensore",
	-- 888: Now take the street on the right !NG_COMMAND_1! and take the lift
	["a0p000s0"] = "Prendere la strada sulla destra, !NG_COMMAND_1! prendere l'ascensore",
	-- 889: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the lift
	["blu000s0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra, !NG_COMMAND_1! prendere l'ascensore",
	-- 890: Now take the street on the left !NG_COMMAND_1! , go through the building
	["a0x00o00"] = "Prendere la strada sulla sinistra, !NG_COMMAND_1! attraversare l'edificio",
	-- 891: Now take the street on the right !NG_COMMAND_1! , take the escalator
	["a0p00t00"] = "Prendere la strada sulla destra, !NG_COMMAND_1! prendere le scale mobili",
	-- 892: Head !ORIENTATION! on !STREET! towards !SIGNPOST!
	["f0000bc0"] = "Proseguire verso !ORIENTATION! in !STREET! in direzione !SIGNPOST!",
	-- 893: Now take the street in the middle !NG_COMMAND_1! , go through the building
	["a0o00o00"] = "Prendere la strada al centro, !NG_COMMAND_1! attraversare l'edificio",
	-- 894: Now take the street on the left !NG_COMMAND_1! and cross the square
	["a0x000p0"] = "Prendere la strada sulla sinistra, !NG_COMMAND_1! attraversare la piazza",
	-- 895: Now turn right !NG_COMMAND_1! and cross the square
	["a0r000p0"] = "Svoltare a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 896: Now turn sharply right !NG_COMMAND_1! and cross the square
	["a0s000p0"] = "Svoltare decisamente a destra !NG_COMMAND_1! e attraversare la piazza",
	-- 897: Now turn sharply left !NG_COMMAND_1! and cross the square
	["a0u000p0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 898: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the park
	["blv00q00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, attraversare il parco",
	-- 899: Now walk straight ahead !NG_COMMAND_1! and cross the park
	["a0n000q0"] = "Proseguire diritto !NG_COMMAND_1! e attraversare il parco",
	-- 900: Now turn sharply left onto the footpath
	["a0u00g00"] = "Svoltare decisamente a sinistra sulla via pedonale",
	-- 901: Now turn slightly left !NG_COMMAND_1! and go through the building
	["a0w000o0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 902: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the escalator
	["blr00t00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, prendere le scale mobili",
	-- 903: Now turn sharply left !NG_COMMAND_1! and take the lift
	["a0u000s0"] = "Svoltare decisamente a sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 904: Now take the street on the right !NG_COMMAND_1! and take the stairs
	["a0p000r0"] = "Prendere la strada sulla destra !NG_COMMAND_1! e prendere le scale",
	-- 905: Now turn left !NG_COMMAND_1! and go through the building
	["a0v000o0"] = "Svoltare a sinistra !NG_COMMAND_1! e attraversare l'edificio",
	-- 906: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the square
	["blr00p00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1!, attraversare la piazza",
	-- 907: Now walk straight ahead !NG_COMMAND_1! , take the lift
	["a0n00s00"] = "Proseguire diritto !NG_COMMAND_1!, prendere l'ascensore",
	-- 908: Now turn slightly left !NG_COMMAND_1! and take the stairs
	["a0w000r0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 909: Now take the street on the left !NG_COMMAND_1! and take the lift
	["a0x000s0"] = "Prendere la strada sulla sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 910: Now turn slightly left onto the footpath
	["a0w00g00"] = "Svoltare leggermente a sinistra sulla via pedonale",
	-- 911: Now take the street in the middle !NG_COMMAND_1! and take the lift
	["a0o000s0"] = "Prendere la strada al centro !NG_COMMAND_1! e prendere l'ascensore",
	-- 912: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the lift
	["blv000s0"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 913: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto the footpath
	["blr00g00"] = "Fra !DIST! !UNIT! svoltare a destra !NG_COMMAND_1! sulla via pedonale",
	-- 914: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the stairs
	["blp000r0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e prendere le scale",
	-- 915: Head !ORIENTATION! on !STREET!
	["f0000b00"] = "Proseguire verso !ORIENTATION! in !STREET!",
	-- 916: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the stairs
	["blx000r0"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e prendere le scale",
	-- 917: After !DIST! !UNIT! !NG_COMMAND_1! turn slightly left onto the footpath
	["blw00g00"] = "Fra !DIST! !UNIT! !NG_COMMAND_1! svoltare leggermente a sinistra sulla via pedonale",
	-- 918: Now walk straight ahead !NG_COMMAND_1! and go through the building
	["a0n000o0"] = "Proseguire diritto !NG_COMMAND_1! e attraversare l'edificio",
	-- 919: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the square
	["bln000p0"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1! e attraversare la piazza",
	-- 920: After !DIST! !UNIT! walk around the roundabout !NG_COMMAND_1!
	["blc00000"] = "Fra !DIST! !UNIT! camminare lungo la rotatoria !NG_COMMAND_1!",
	-- 921: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the lift
	["bln00s00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, prendere l'ascensore",
	-- 922: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the square
	["blw000p0"] = "Fra !DIST! !UNIT! svoltare leggermente a sinistra !NG_COMMAND_1! e attraversare la piazza",
	-- 923: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the square
	["blx00p00"] = "Fra !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1!, attraversare la piazza",
	-- 924: Now take the street on the right !NG_COMMAND_1! and take the escalator
	["a0p000t0"] = "Prendere la strada sulla destra !NG_COMMAND_1! e prendere le scale mobili",
	-- 925: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the lift
	["blv00s00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1!, prendere l'ascensore",
	-- 926: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the stairs
	["blu000r0"] = "Fra !DIST! !UNIT! svoltare decisamente a sinistra !NG_COMMAND_1! e prendere le scale",
	-- 927: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the lift
	["blp000s0"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1! e prendere l'ascensore",
	-- 928: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , go through the building
	["bln00o00"] = "Fra !DIST! !UNIT! proseguire diritto !NG_COMMAND_1!, attraversare l'edificio",
	-- 929: Now take the street on the left !NG_COMMAND_1! and cross the park
	["a0x000q0"] = "Prendere la strada sulla sinistra !NG_COMMAND_1! e attraversare il parco",
	-- 930: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the lift
	["blp00s00"] = "Fra !DIST! !UNIT! prendere la strada sulla destra !NG_COMMAND_1!, prendere l'ascensore",
	-- 931: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto the footpath
	["blv00g00"] = "Fra !DIST! !UNIT! svoltare a sinistra !NG_COMMAND_1! sulla via pedonale",
	-- 932: Now turn slightly left !NG_COMMAND_1! and take the lift
	["a0w000s0"] = "Svoltare leggermente a sinistra !NG_COMMAND_1! e prendere l'ascensore",
	-- 933: Now walk straight ahead !NG_COMMAND_1!
	["a0n00000"] = "Proseguire diritto !NG_COMMAND_1!",
	-- 934: Now turn sharply right onto the footpath
	["a0s00g00"] = "Svoltare decisamente a destra sulla via pedonale",
	-- 935: Now turn !NG_COMMAND_1! onto !STREET!
	["a0y00d00"] = "Svoltare !NG_COMMAND_1! in !STREET!",
	-- 936: Now turn sharply left !NG_COMMAND_1! , go through the building
	["a0u00o00"] = "Svoltare decisamente a sinistra !NG_COMMAND_1!, attraversare l'edificio",
	-- 951: After !DIST! !UNIT! !NG_COMMAND_1! go through the building
	["bl000o00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! attraversare l'edificio",
	-- 952: After !DIST! !UNIT! !NG_COMMAND_1! cross the square
	["bl000p00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! attraversare la piazza",
	-- 953: After !DIST! !UNIT! !NG_COMMAND_1! cross the park
	["bl000q00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! attraversare il parco",
	-- 954: After !DIST! !UNIT! !NG_COMMAND_1! take the stairs
	["bl000r00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! prendere le scale",
	-- 955: After !DIST! !UNIT! !NG_COMMAND_1! take the lift
	["bl000s00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! prendere l'ascensore",
	-- 956: After !DIST! !UNIT! !NG_COMMAND_1! take the escalator
	["bl000t00"] = "Dopo !DIST! !UNIT! !NG_COMMAND_1! prendere le scale mobili",
	-- 957: After !DIST! !UNIT! walk right around the roundabout and turn onto !STREET!
	["bla00h00"] = "Dopo  !DIST! !UNIT! camminare sulla destra della rotonda e prendere !STREET!",
	-- 958: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["bla00j00"] = "Dopo  !DIST! !UNIT! camminare sulla destra della rotonda !NG_COMMAND_1! !PED_TURN_NO!",
	-- 959: After !DIST! !UNIT! walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["blb00h00"] = "Dopo !DIST! !UNIT! camminare sulla sinistra della rotonda !NG_COMMAND_1! e prendere !STREET!",
	-- 960: After !DIST! !UNIT! walk left around the roundabout !PED_TURN_NO!
	["blb00j00"] = "Dopo  !DIST! !UNIT! camminare sulla sinistra della rotonda !PED_TURN_NO!",
	-- 961: After !DIST! !UNIT! walk around the roundabout and turn onto !STREET!
	["blc00h00"] = "Dopo  !DIST! !UNIT! camminare attorno alla rotonda e prendere !STREET!",
	-- 962: After !DIST! !UNIT! walk around the roundabout !PED_TURN_NO!
	["blc00j00"] = "Dopo  !DIST! !UNIT! camminare attorno la rotonda !PED_TURN_NO!",
	-- 963: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the escalator
	["blx000t0"] = "Dopo !DIST! !UNIT! prendere la strada sulla sinistra !NG_COMMAND_1! e prendere le scale mobili",
}
