-- ----------------------------------------------------------------------------
-- Copyright (C) 2012 - 2013 HERE Global B.V., including its affiliated companies.
--
-- These coded instructions, statements, and computer programs contain
-- unpublished proprietary information of HERE Global B.V., and
-- are copy protected by law. They may not be disclosed to third parties
-- or copied or duplicated in any form, in whole or in part, without the
-- specific, prior written permission of HERE Global B.V.
-- ---------------------------------------------------------------------------- 
--      Author: Dirk Huppermann, Bill King
-- ----------------------------------------------------------------------------
--             Voice Prompts: fr-FR French (France) TTS

street_article = { -- MANUALLY DEFINED, articles to be used in context of street names.
	["baseArticle"] = {
		["la"] = { "Allée", "Allées", "Ancien Chemin", "Ancienne", "Arcade des", "Autoroute", "Avenue", "Échangeur", "Enclos", "Escalier", "Espace", "Esplanade", "Étoile", "Île", "Îlot", "Impasse", "Orée", "Bab", "Baie", "Barrière d'", "Berge au", "Boucle", "Bretelle", "Carraire", "Carrière", "Cavée", "Chaussée", "Cité", "Closerie", "Concession", "Corniche", "Côte", "Cour", "Croix", "Descente", "Desserte", "Digue", "Draille", "Drève", "Galerie", "Grande", "Jetée", "Levée", "Ligne des", "Montée", "Nouveau Chemin", "Nouvelle", "Passe", "Passerelle", "Petite", "Piazza", "Piste", "Place", "Placette", "Plaine", "Porte", "Poterne", "Promenade", "Promenée", "Rampe", "Rangée", "Résidence", "Rocade", "Rotonde", "Route", "Rue", "Ruelle", "Sente", "Terrasse", "Traverse", "Vallée", "Venelle", "Vieille", "Villa", "Ville de", "Voie", "Voirie", "Zat" },
		["le"] = { "Bassin", "Bâtiment", "Boulevard", "Canton", "Carré", "Carrefour", "Cercle", "Chemin", "Cheminement", "Clos", "Coin", "Col", "Contour", "Cordon du", "Coron", "Coteau", "Cottage", "Croissant", "Demi-échangeur", "Diffuseur", "Domaine", "Faubourg", "Forum", "Giratoire", "Grand Sentier", "Hameau", "Jardin", "Jardins du", "Lieu-dit", "Lotissement", "Mail", "Marché", "Parc", "Parvis", "Passage", "Petit", "Plan", "Plateau", "Pont", "Port", "Quai", "Quaie", "Quartier", "Rang", "Rempart", "Rond-Point", "Sentier", "Sentiers des", "Seuil de", "Square", "Terre-plein", "Toualat", "Trait-carré", "Triangle", "Trik", "Tunnel", "Vallon", "Viaduc", "Vieux", "Village", "Zenkat" },
		["les"] = { "Cottages", "Cours", "Ponts", "Villas" } },
}

nG_prepositions = {	-- prepositions code for natural guidance, delivered by navteq, no additional translation needed
	["FREBAPRS"] = "après",
	["FREBAPLA"] = "après la",
	["FREBAPLE"] = "après le",
	["FREBAPRL"] = "après l'",
	["FREBAPLS"] = "après les",
	["FREBAXXX"] = "à",
	["FREBALAX"] = "à la",
	["FREBALXX"] = "à l'",
	["FREBAUNX"] = "au",
	["FREBAUXX"] = "aux",
	["FREBAVNT"] = "avant",
	["FREBAVLA"] = "avant la",
	["FREBAVLE"] = "avant le",
	["FREBAVTL"] = "avant l'",
	["FREBAVLS"] = "avant les",
	["FREBSURX"] = "sur",
	["FREBSRLA"] = "sur la",
	["FREBSRLE"] = "sur le",
	["FREBSURL"] = "sur l'",
	["FREBSRLS"] = "sur les ",
	["FREBAUDS"] = "au-dessus",
	["FREBADDL"] = "au-dessus de la",
	["FREBADSD"] = "au-dessus du",
	["FREBADEL"] = "au-dessus de l'",
	["FREBADES"] = "au-dessus des",
	["FREBPASS"] = "passé",
	["FREBPSLA"] = "passé la",
	["FREBPSLE"] = "passé le",
	["FREBPASL"] = "passé l'",
	["FREBPSLS"] = "passé les",
	["FREBPARX"] = "par",
	["FREBPRLA"] = "par la",
	["FREBPRLE"] = "par le",
	["FREBPARL"] = "par l'",
	["FREBPRLS"] = "par les ",
	["FREBSOUS"] = "sous",
	["FREBSSLA"] = "sous la",
	["FREBSSLE"] = "sous le",
	["FREBSOSL"] = "sous l'",
	["FREBSSLS"] = "sous les",
	["FREBDANS"] = "dans le",
	["FREBVERS"] = "vers le",
	["NONE"] = "", -- leave this entry, it's important
}
nG_elements = { -- natural guidance traffic light command elements
	[1] = "au prochain feu", -- at the next traffic light
	[2] = "au deuxième feu", -- at the second traffic light
	[3] = "au troisième feu", -- at the third traffic light
	["UNDEFINED"] = "",
}

unit_after = { -- Units to be used in sentences like After xx kilometers turn ...
	["MILE"] = "mile", -- mile
	["YARDS"] = "yards", -- yards
	["FEET"] = "pieds", -- feet
	["KILOMETER"] = "kilomètre", -- kilometer
	["METERS"] = "mètres", -- meters
	["METER"] = "mètre", -- meter
	["KILOMETERS"] = "kilomètres", -- kilometers
	["MILES"] = "miles", -- miles
	["UNDEFINED"] = "",
}

unit_follow = { -- Units to be used in sentences like Follow the road for xx kilometers.
	["MILE"] = "mile", -- mile
	["YARDS"] = "yards", -- yards
	["FEET"] = "pieds", -- feet
	["KILOMETER"] = "kilomètre", -- kilometer
	["METERS"] = "mètres", -- meters
	["METER"] = "mètre", -- meter
	["KILOMETERS"] = "kilomètres", -- kilometers
	["MILES"] = "miles", -- miles
	["UNDEFINED"] = "",
}

dist = { --
	["a"] = "un kilomètre", -- one kilometer
	["b"] = "un mile ", -- one mile
	["c"] = "un quart de mile", -- a quarter of a mile
	["d"] = "un demi-mile", -- half a mile
	["e"] = "trois-quarts de mile", -- three quarters of a mile
	["UNDEFINED"] = "",
}

exit_number_roundabout = { -- exit numbers for roundabouts in car navigation
	[1] = "prenez la première sortie", -- take the first exit
	[2] = "prenez la deuxième sortie", -- take the second exit
	[3] = "prenez la troisième sortie", -- take the third exit
	[4] = "prenez la quatrième sortie", -- take the fourth exit
	[5] = "prenez la cinquième sortie", -- take the fifth exit
	[6] = "prenez la sixième sortie", -- take the sixth exit
	[7] = "prenez la septième sortie", -- take the seventh exit
	[8] = "prenez la huitième sortie", -- take the eighth exit
	[9] = "prenez la neuvième sortie", -- take the ninth exit
	[10] = "prenez la dixième sortie", -- take the tenth exit
	[11] = "prenez la onzième sortie", -- take the eleventh exit
	[12] = "prenez la douzième sortie", -- take the twelfth exit
	["UNDEFINED"] = "",
}

orientation = { -- Heading directions for walk commands, e.g. Head north on Oxford Street
	["NORTH"] = "le nord", -- north
	["NORTH_EAST"] = "le nord-est", -- northeast
	["EAST"] = "l'est", -- east
	["SOUTH_EAST"] = "le sud-est", -- southeast
	["SOUTH"] = "le sud", -- south
	["SOUTH_WEST"] = "le sud-ouest", -- southwest
	["WEST"] = "l'ouest", -- west
	["NORTH_WEST"] = "le nord-ouest", -- northwest
	["UNDEFINED"] = "",
}

turn_number_ped = { -- exit numbers for roundabouts in walk navigation
	[1] = "et tournez dans la première intersection, !STREET!", -- and turn at the first street !STREET!
	[2] = "et tournez dans la deuxième intersection, !STREET! ", -- and turn at the second street !STREET!
	[3] = "et tournez dans la troisième intersection, !STREET! ", -- and turn at the third street !STREET!
	["UNDEFINED"] = "",
}

commands_common = { -- Common commands for car & ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 1: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout towards !SIGNPOST!
	["c00c0zc0"] = "Au bout de la route, !EXIT_NO_ROUNDABOUT! au rond-point en direction de !SIGNPOST!",
	-- 2: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout onto !STREET!
	["c00c0zb0"] = "Au bout de la route, !EXIT_NO_ROUNDABOUT! au rond-point dans !STREET!",
	-- 3: !EXIT_NO_ROUNDABOUT! at the end of the road at the roundabout
	["c00c0z00"] = "Au bout de la route, !EXIT_NO_ROUNDABOUT! au rond-point",
	-- 4: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00d000x"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 5: and then enter the motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00f000x"] = "et puis entrez sur l'autoroute !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 6: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00j000x"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 7: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00e000x"] = "et puis faites demi-tour !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 8: and then enter the urban motorway !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00i000x"] = "et puis entrez sur la rocade !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 9: and then take the exit !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00g000x"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 10: and then take the middle lane !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00o000x"] = "et puis prenez la voie du milieu !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 11: and then turn left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00v000x"] = "et puis tournez à gauche !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 12: and then turn slightly left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00w000x"] = "et puis tournez légèrement à gauche !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 13: and then turn sharply left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00u000x"] = "et puis tournez complètement à gauche !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 14: and then turn sharply right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00s000x"] = "et puis tournez complètement à droite !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 15: and then turn right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00r000x"] = "et puis tournez à droite !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 16: and then keep right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00p000x"] = "et puis restez à droite !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 17: and then make a u turn !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00t000x"] = "et puis faites demi-tour !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 18: and then keep left !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00x000x"] = "et puis restez à gauche !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 19: and then turn slightly right !NG_COMMAND_2! towards !STREET_2! !SIGNPOST_2!
	["h00q000x"] = "et puis tournez légèrement à droite !NG_COMMAND_2! en direction de !STREET_2! !SIGNPOST_2!",
	-- 20: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !STREET_2! !SIGNPOST_2!
	["h000cz0x"] = "et puis !EXIT_NO_ROUNDABOUT! au rond-point en direction de !STREET_2! !SIGNPOST_2!",
	-- 21: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000j"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie",
	-- 22: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000j"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie",
	-- 23: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000j"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie",
	-- 24: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000j"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie",
	-- 25: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fj"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1! et prenez la sortie",
	-- 26: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000j"] = "Dans !DIST! !UNIT!, prenez la sortie !NG_COMMAND_1!",
	-- 27: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fj"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1! et prenez la sortie",
	-- 28: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fj"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1! et prenez la sortie",
	-- 29: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fj"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et prenez la sortie",
	-- 30: Now take the exit !NG_COMMAND_1!
	["a000000g"] = "Maintenant, prenez la sortie !NG_COMMAND_1!",
	-- 31: After !DIST! !UNIT! take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl000e0x"] = "Dans !DIST! !UNIT!, prenez la sortie !EXIT_NUMBER! en direction de !STREET_2! !SIGNPOST_2!",
	-- 32: Now go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["a00ni000"] = "Maintenant, allez tout droit !NG_COMMAND_1!, entrez sur la rocade",
	-- 33: and then go straight ahead towards !STREET_2! !SIGNPOST_2!
	["h00n000x"] = "et puis allez tout droit en direction de !STREET_2! !SIGNPOST_2!",
	-- 34: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000j"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie",
	-- 35: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000j"] = "Maintenant, restez à gauche !NG_COMMAND_1!, prenez la sortie",
	-- 36: Now keep right !NG_COMMAND_1!  , take the exit
	["a00p000j"] = "Maintenant, restez à droite !NG_COMMAND_1!, prenez la sortie",
	-- 37: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez la sortie",
	-- 38: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000j"] = "Maintenant, allez tout droit !NG_COMMAND_1!, prenez la sortie",
	-- 39: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fj"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1! et prenez la sortie",
	-- 40: Now take the exit !NG_COMMAND_1!
	["a000000j"] = "Maintenant, prenez la sortie !NG_COMMAND_1!",
	-- 41: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fj"] = "Maintenant, restez à gauche !NG_COMMAND_1! et prenez la sortie",
	-- 42: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fj"] = "Maintenant, restez à droite !NG_COMMAND_1! et prenez la sortie",
	-- 43: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fj"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez la sortie",
	-- 44: and then you will reach your destination !NG_COMMAND_2! on !STREET!
	["h000ab00"] = "et puis vous arriverez à votre destination !NG_COMMAND_2! dans !STREET!",
	-- 45: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto !STREET!
	["bl0v0d00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! dans !STREET!",
	-- 46: Now keep right !NG_COMMAND_1! , enter the urban motorway
	["a00pi000"] = "Maintenant, restez à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 47: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway
	["bl0nf000"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 48: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET!
	["bl0a0b00"] = "Dans !DIST! !UNIT!, vous arriverez à votre destination !NG_COMMAND_1! dans !STREET!",
	-- 49: and then immediately turn slightly right onto !STREET! towards !SIGNPOST!
	["j00q0ac0"] = "puis, tournez tout de suite légèrement à droite dans !STREET! en direction de !SIGNPOST!",
	-- 50: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0edz"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 51: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h000ed00"] = "et puis faites demi-tour !NG_COMMAND_2! dans !STREET!",
	-- 52: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET!
	["bl0r0c00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 53: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j000ed00"] = "puis, faites demi-tour tout de suite !NG_COMMAND_2! dans !STREET!",
	-- 54: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0edz"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 55: Now turn right !NG_COMMAND_1! , enter the motorway
	["a00rf000"] = "Maintenant, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 56: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET!
	["bl0v0c00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 57: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET!
	["bl0q0c00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 58: At the end of the road turn right !NG_COMMAND_1! , enter the motorway
	["c00rf000"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 59: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1!
	["bl0b0000"] = "Dans !DIST! !UNIT!, vous arriverez à votre étape !NG_COMMAND_1!",
	-- 60: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x0e0z"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 61: Now take the exit !NG_COMMAND_1!
	["a00d0000"] = "Maintenant, prenez la sortie !NG_COMMAND_1!",
	-- 62: After !DIST! !UNIT! enter the motorway
	["bl00f000"] = "Dans !DIST! !UNIT!, entrez sur l'autoroute",
	-- 63: and then take the exit !NG_COMMAND_2!
	["h00d0000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 64: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0qf0c0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 65: and then turn left !NG_COMMAND_2!
	["h00v0000"] = "et puis tournez à gauche !NG_COMMAND_2!",
	-- 66: and then immediately turn left !NG_COMMAND_2!
	["j00v0000"] = "puis, tournez tout de suite à gauche !NG_COMMAND_2!",
	-- 67: and then immediately make a u turn !NG_COMMAND_2!
	["j000e000"] = "puis, faites demi-tour tout de suite !NG_COMMAND_2!",
	-- 68: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0uf0c0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 69: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ui0c0"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 70: and then make a u turn !NG_COMMAND_2!
	["h000e000"] = "et puis faites demi-tour !NG_COMMAND_2!",
	-- 71: At the end of the road turn right !NG_COMMAND_1! onto !STREET!
	["c00r0d00"] = "Au bout de la route, tournez à droite !NG_COMMAND_1! dans !STREET!",
	-- 72: and then turn right, !STREET!
	["h00r0a00"] = "et puis tournez à droite, !STREET!",
	-- 73: and then immediately take the exit !NG_COMMAND_2! towards !STREET!
	["j000dc00"] = "puis, prenez tout de suite la sortie !NG_COMMAND_2! en direction de !STREET!",
	-- 74: Now turn left !NG_COMMAND_1!
	["a00v0000"] = "Maintenant, tournez à gauche !NG_COMMAND_1!",
	-- 75: At the end of the road turn left !NG_COMMAND_1!
	["c00v0000"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!",
	-- 76: At the end of the road take the ferry !NG_COMMAND_1! towards !STREET!
	["c00m0c00"] = "Au bout de la route, prenez le ferry !NG_COMMAND_1! en direction de !STREET!",
	-- 77: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1!
	["bl0o0000"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!",
	-- 78: After !DIST! !UNIT! keep left !NG_COMMAND_1! and take the exit
	["bl0x00fg"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1! et prenez la sortie",
	-- 79: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0o0e0x"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! en direction de !STREET_2! !SIGNPOST_2!",
	-- 80: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ofac0"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 81: Now go straight ahead !NG_COMMAND_1! and take the exit
	["a00n00fg"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez la sortie",
	-- 82: Now take the exit !NG_COMMAND_1! towards !STREET!
	["a00d0c00"] = "Maintenant, prenez la sortie !NG_COMMAND_1! en direction de !STREET!",
	-- 83: Now keep left !NG_COMMAND_1! , take the exit
	["a00x000g"] = "Maintenant, restez à gauche !NG_COMMAND_1!, prenez la sortie",
	-- 84: and then you will reach your stopover !NG_COMMAND_2!
	["h000b000"] = "et puis vous arriverez à votre étape !NG_COMMAND_2!",
	-- 85: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00qi0c0"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 86: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0sf0c0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 87: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0piac0"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 88: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0x0ed0"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST!",
	-- 89: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0p0edy"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2!",
	-- 90: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ti0c0"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 91: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["bl0w0d00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 92: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00wi0c0"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 93: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! !NG_COMMAND_1! at the roundabout
	["bl0c0z00"] = "Dans !DIST! !UNIT!, !EXIT_NO_ROUNDABOUT! au rond-point !NG_COMMAND_1!",
	-- 94: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0o0edx"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! en direction de !STREET_2! !SIGNPOST_2!",
	-- 95: At the end of the road make a u turn !NG_COMMAND_1!
	["c00t0000"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!",
	-- 96: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ni0c0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 97: After the junction keep right !NG_COMMAND_1!
	["bz0p0000"] = "Après le croisement, restez à droite !NG_COMMAND_1!",
	-- 98: After the junction go straight ahead !NG_COMMAND_1!
	["bz0n0000"] = "Après le croisement, allez tout droit !NG_COMMAND_1!",
	-- 99: and then make a u turn !NG_COMMAND_2!
	["h00t0000"] = "et puis faites demi-tour !NG_COMMAND_2!",
	-- 100: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! and take the exit
	["bl0n00fg"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et prenez la sortie",
	-- 101: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0uiac0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 102: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0n000x"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 103: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0n0edy"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2!",
	-- 104: and then immediately turn sharply right onto !STREET! towards !SIGNPOST!
	["j00s0ac0"] = "puis, tournez tout de suite complètement à droite dans !STREET! en direction de !SIGNPOST!",
	-- 105: After !DIST! !UNIT! take the ferry !NG_COMMAND_1!
	["bl0m0000"] = "Dans !DIST! !UNIT!, prenez le ferry !NG_COMMAND_1!",
	-- 106: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0oi0c0"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 107: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00via00"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 108: and then turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["h00s00c0"] = "et puis tournez complètement à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 109: Now take the middle lane !NG_COMMAND_1!
	["a00o0000"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1!",
	-- 110: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0o0edy"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2!",
	-- 111: At the end of the road turn slightly right !NG_COMMAND_1!
	["c00q0000"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!",
	-- 112: and then take the middle lane !NG_COMMAND_2!
	["h00o0000"] = "et puis prenez la voie du milieu !NG_COMMAND_2!",
	-- 113: Now keep right !NG_COMMAND_1! and take the exit
	["a00p00fg"] = "Maintenant, restez à droite !NG_COMMAND_1! et prenez la sortie",
	-- 114: and then immediately take the middle lane !NG_COMMAND_2!
	["j00o0000"] = "puis, prenez tout de suite la voie du milieu !NG_COMMAND_2!",
	-- 115: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0wfac0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 116: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! towards !STREET!
	["bl0t0c00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1! en direction de !STREET!",
	-- 117: and then take the ferry !NG_COMMAND_2!
	["h00m0000"] = "et puis prenez le ferry !NG_COMMAND_2!",
	-- 118: Now turn slightly right !NG_COMMAND_1!
	["a00q0000"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!",
	-- 119: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway
	["bl0ri000"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 120: and then keep left !NG_COMMAND_2! towards !STREET!
	["h00x0c00"] = "et puis restez à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 121: and then immediately turn slightly right !NG_COMMAND_2! onto !STREET!
	["j00q0d00"] = "puis, tournez tout de suite légèrement à droite !NG_COMMAND_2! dans !STREET!",
	-- 122: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway
	["bl0rf000"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 123: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0e0000"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!",
	-- 124: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h00i00c0"] = "et puis entrez sur la rocade !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 125: At the end of the road take the ferry !NG_COMMAND_1!
	["c00m0000"] = "Au bout de la route, prenez le ferry !NG_COMMAND_1!",
	-- 126: Now take the ferry !NG_COMMAND_1!
	["a00m0000"] = "Maintenant, prenez le ferry !NG_COMMAND_1!",
	-- 127: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET!
	["bl0s0c00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 128: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00ufa00"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 129: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["c00tfa00"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 130: After !DIST! !UNIT! enter the motorway !STREET! towards !SIGNPOST!
	["bl00fac0"] = "Dans !DIST! !UNIT!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 131: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h00i0ac0"] = "et puis entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 132: and then immediately take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["j00o00c0"] = "puis, prenez tout de suite la voie du milieu !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 133: and then take the middle lane !NG_COMMAND_2! onto !STREET!
	["h00o0d00"] = "et puis prenez la voie du milieu !NG_COMMAND_2! dans !STREET!",
	-- 134: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0o0e00"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER!",
	-- 135: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0via00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 136: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway
	["c00uf000"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 137: Now turn sharply left !NG_COMMAND_1! , enter the motorway
	["a00uf000"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 138: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0p0ed0"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST!",
	-- 139: and then immediately enter the urban motorway !NG_COMMAND_2!
	["j000i000"] = "puis, entrez tout de suite sur la rocade !NG_COMMAND_2!",
	-- 120: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00vfa00"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 141: and then enter the urban motorway !NG_COMMAND_2!
	["h000i000"] = "et puis entrez sur la rocade !NG_COMMAND_2!",
	-- 142: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0qfac0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 143: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["bl0w0000"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!",
	-- 144: Now enter the urban motorway
	["a000i000"] = "Maintenant, entrez sur la rocade",
	-- 145: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0xia00"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 146: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0n0ed0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST!",
	-- 147: and then immediately turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["j00u00c0"] = "puis, tournez tout de suite complètement à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 148: Now go straight ahead !NG_COMMAND_1! , take the exit
	["a00n000g"] = "Maintenant, allez tout droit !NG_COMMAND_1!, prenez la sortie",
	-- 149: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00uia00"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 150: and then turn sharply left !NG_COMMAND_2! towards !SIGNPOST!
	["h00u00c0"] = "et puis tournez complètement à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 151: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bl0s0d00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! dans !STREET!",
	-- 152: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway
	["bl0tf000"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 153: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["bl0q0000"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!",
	-- 154: and then take the exit !NG_COMMAND_2!
	["h00g0000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 155: At the end of the road turn sharply right !NG_COMMAND_1!
	["c00s0000"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!",
	-- 156: and then make a u turn !NG_COMMAND_2!
	["h00e0000"] = "et puis faites demi-tour !NG_COMMAND_2!",
	-- 157: Now turn sharply right !NG_COMMAND_1!
	["a00s0000"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!",
	-- 158: and then immediately keep right !NG_COMMAND_2! onto !STREET!
	["j00p0d00"] = "puis, serrez tout de suite à droite !NG_COMMAND_2! dans !STREET!",
	-- 159: At the end of the road make a u turn !NG_COMMAND_1!
	["c00e0000"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!",
	-- 160: and then turn sharply right !NG_COMMAND_2!
	["h00s0000"] = "et puis tournez complètement à droite !NG_COMMAND_2!",
	-- 161: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET!
	["c00u0c00"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 162: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0tf0c0"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 163: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00wfac0"] = "Au bout de la route tournez, légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 164: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["c00wi000"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 165: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ofa00"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 166: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway
	["bl0ti000"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade",
	-- 167: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00qiac0"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 168: Now turn right !NG_COMMAND_1! take the exit
	["a00r000g"] = "Maintenant, tournez à droite !NG_COMMAND_1!, prenez la sortie",
	-- 169: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["bl0qi000"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 170: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["bl0q0d00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! dans !STREET!",
	-- 171: After !DIST! !UNIT! keep right !NG_COMMAND_1! and take the exit
	["bl0p00fg"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1! et prenez la sortie",
	-- 173: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET!
	["c00s0c00"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 174: Now turn left !NG_COMMAND_1! , enter the urban motorway
	["a00vi000"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 175: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway
	["c00vi000"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 176: Now turn left !NG_COMMAND_1! and take the exit
	["a00v00fg"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et prenez la sortie",
	-- 177: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0xfa00"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 178: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout  towards !SIGNPOST!
	["bl0c0zc0"] = "Dans !DIST! !UNIT!, !EXIT_NO_ROUNDABOUT! au rond-point en direction de !SIGNPOST!",
	-- 179: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00tf0c0"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 180: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0si0c0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 181: At the end of the road you will reach your stopover !NG_COMMAND_1! on !STREET!
	["c00b0b00"] = "Au bout de la route, vous arriverez à votre étape !NG_COMMAND_1! dans !STREET!",
	-- 182: After the junction turn slightly left !NG_COMMAND_1!
	["bz0w0000"] = "Après le croisement, tournez légèrement à gauche !NG_COMMAND_1!",
	-- 183: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00qfac0"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 184: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bl0s0000"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!",
	-- 185: and then turn left !STREET! towards !SIGNPOST!
	["h00v0ac0"] = "et puis tournez à gauche, !STREET! en direction de !SIGNPOST!",
	-- 186: and then keep right, !STREET!
	["h00p0a00"] = "et puis restez à droite, !STREET!",
	-- 187: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway on !STREET! towards !SIGNPOST!
	["c00siac0"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 188: At the end of the road turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00vf0c0"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 189: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0tfa00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 190: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00viac0"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 191: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h000ec00"] = "et puis faites demi-tour !NG_COMMAND_2! en direction de !STREET!",
	-- 192: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j000ec00"] = "puis, faites tout de suite demi-tour !NG_COMMAND_2! en direction de !STREET!",
	-- 193: Now take the exit !NG_COMMAND_1! onto !STREET!
	["a00d0d00"] = "Maintenant, prenez la sortie !NG_COMMAND_1! dans !STREET!",
	-- 194: and then take the exit !NG_COMMAND_2!
	["h000g000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 195: and then immediately take the middle lane, !STREET! towards !SIGNPOST!
	["j00o0ac0"] = "puis, prenez tout de suite la voie du milieu, !STREET! en direction de !SIGNPOST!",
	-- 196: and then immediately take the exit !NG_COMMAND_2!
	["j000g000"] = "puis, prenez tout de suite la sortie !NG_COMMAND_2!",
	-- 197: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00qia00"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 198: and then enter the motorway !STREET! towards !SIGNPOST!
	["h000fac0"] = "et puis entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 199: After !DIST! !UNIT! !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["bl0c0zb0"] = "Dans !DIST! !UNIT!, !EXIT_NO_ROUNDABOUT! au rond-point dans !STREET!",
	-- 200: After !DIST! !UNIT! take the exit !NG_COMMAND_1! onto !STREET!
	["bl0d0d00"] = "Dans !DIST! !UNIT!, prenez la sortie !NG_COMMAND_1! dans !STREET!",
	-- 201: Now turn right !NG_COMMAND_1! , enter the urban motorway
	["a00ri000"] = "Maintenant, tournez à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 202: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway
	["c00ri000"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 203: You have reached your destination
	["y0000000"] = "Vous êtes arrivé à votre destination",
	-- 204: You have reached your destination. The destination is on your right
	["yp000000"] = "Vous êtes arrivé à votre destination. La destination est sur votre droite",
	-- 205: You have reached your destination. The destination is on your left
	["yq000000"] = "Vous êtes arrivé à votre destination. La destination est sur votre gauche",
	-- 206: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!
	["x0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 207: Route recalculation
	["w0000000"] = "Recalcul de l'itinéraire",
	-- 208: !SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO! Safety camera ahead
	["v0000000"] = "!SET_AUDIO!beep!FREQUENCY!K.wav!SET_AUDIO!  Vous approchez d'un radar",
	-- 209: !EXIT_NO_ROUNDABOUT! at the roundabout
	["000c0z00"] = "!EXIT_NO_ROUNDABOUT! au rond-point",
	-- 210: Now go straight ahead !NG_COMMAND_1! enter the motorway
	["a00nf000"] = "Maintenant, allez tout droit !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 211: You have reached your stopover. The stopover is on your right
	["zr000000"] = "Vous êtes arrivé à votre étape. L'étape est sur votre droite",
	-- 212: You have reached your stopover. The stopover is on your left
	["zs000000"] = "Vous êtes arrivé à votre étape. L'étape est sur votre gauche",
	-- 213: You have reached your stopover
	["z0000000"] = "Vous êtes arrivé à votre étape",
	-- 214: GPS signal has been restored
	["q0000000"] = "La connexion GPS a été rétablie",
	-- 215: GPS signal lost
	["p0000000"] = "Signal GPS perdu",
	-- 216: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00sfa00"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 217: No detour found around traffic
	["u0000000"] = "Pas de détour trouvé pour contourner le bouchon",
	-- 218: Traffic on route, do you want to detour?
	["t0000000"] = "Bouchons sur la route, voulez-vous faire un détour?",
	-- 219: !SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!
	["r0000000"] = "!SET_AUDIO!speeding_beep!FREQUENCY!K.wav!SET_AUDIO!",
	-- 220: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00rfa00"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 221: and then immediately go straight ahead, !STREET!
	["j00n0a00"] = "puis, allez tout de suite tout droit !STREET!",
	-- 222: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00qf0c0"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 223: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0riac0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 224: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0pfac0"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 225: At the end of the road make a u turn !NG_COMMAND_1! , enter the motorway
	["c00tf000"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 226: Now make a u turn !NG_COMMAND_1! , enter the urban motorway
	["a00ti000"] = "Maintenant, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade",
	-- 227: Now make a u turn !NG_COMMAND_1! , enter the motorway
	["a00tf000"] = "Maintenant, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 228: After !DIST! !UNIT! you will reach your stopover !NG_COMMAND_1! on !STREET!
	["bl0b0b00"] = "Dans !DIST! !UNIT!, vous arriverez à votre étape !NG_COMMAND_1! dans !STREET!",
	-- 229: and then immediately take the second right !NG_COMMAND_2!
	["j00y0000"] = "puis, prenez tout de suite la deuxième à droite !NG_COMMAND_2!",
	-- 230: and then take the second right !NG_COMMAND_2!
	["h00y0000"] = "et puis prenez la deuxième à droite !NG_COMMAND_2!",
	-- 231: After !DIST! !UNIT! enter the urban motorway
	["bl00i000"] = "Dans !DIST! !UNIT!, entrez sur la rocade",
	-- 232: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0pia00"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 233: Now enter the motorway
	["a000f000"] = "Maintenant, entrez sur l'autoroute",
	-- 234: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["c00si000"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 235: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0oia00"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 236: At the end of the road turn slightly left !NG_COMMAND_1! onto !STREET!
	["c00w0d00"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 237: and then turn slightly left !NG_COMMAND_2!
	["h00w0000"] = "et puis tournez légèrement à gauche !NG_COMMAND_2!",
	-- 238: and then immediately turn slightly left !NG_COMMAND_2!
	["j00w0000"] = "puis, tournez tout de suite légèrement à gauche !NG_COMMAND_2!",
	-- 239: and then immediately take the second right !NG_COMMAND_2! onto !STREET!
	["j00y0d00"] = "puis, prenez tout de suite la deuxième à droite !NG_COMMAND_2! dans !STREET!",
	-- 240: and then take the second right !NG_COMMAND_2! onto !STREET!
	["h00y0d00"] = "et puis prenez la deuxième à droite !NG_COMMAND_2! dans !STREET!",
	-- 241: and then immediately enter the motorway !NG_COMMAND_2!
	["j000f000"] = "puis, entrez tout de suite sur l'autoroute !NG_COMMAND_2!",
	-- 242: Now turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["a00si000"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 243: Now turn slightly left !NG_COMMAND_1!
	["a00w0000"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!",
	-- 244: After the junction turn sharply right !NG_COMMAND_1!
	["bz0s0000"] = "Après le croisement, tournez complètement à droite !NG_COMMAND_1!",
	-- 245: At the end of the road turn slightly left !NG_COMMAND_1!
	["c00w0000"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!",
	-- 246: and then enter the motorway !NG_COMMAND_2!
	["h000f000"] = "et puis entrez sur l'autoroute !NG_COMMAND_2!",
	-- 247: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["bl0wi000"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 248: Now keep right !NG_COMMAND_1!
	["a00p0000"] = "Maintenant, restez à droite !NG_COMMAND_1!",
	-- 249: and then immediately keep left !NG_COMMAND_2! onto !STREET!
	["j00x0d00"] = "puis, serrez tout de suite à gauche !NG_COMMAND_2! dans !STREET!",
	-- 250: and then immediately turn right !STREET! towards !SIGNPOST!
	["j00r0ac0"] = "puis, tournez tout de suite à droite !STREET! en direction de !SIGNPOST!",
	-- 251: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0wfa00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 252: and then keep right !NG_COMMAND_2!
	["h00p0000"] = "et puis restez à droite !NG_COMMAND_2!",
	-- 253: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway
	["bl0xf000"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 254: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000gc00"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET!",
	-- 255: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ti0c0"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 256: and then immediately take the second left !NG_COMMAND_2! onto !STREET!
	["j00z0d00"] = "puis, prenez tout de suite la deuxième à gauche !NG_COMMAND_2! dans !STREET!",
	-- 257: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0edz"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 258: and then take the middle lane !NG_COMMAND_2! towards !STREET!
	["h00o0c00"] = "et puis prenez la voie du milieu !NG_COMMAND_2! en direction de !STREET!",
	-- 259: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0nf0c0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 260: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0of0c0"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 261: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET!
	["bl0w0c00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 262: and then take the second left !NG_COMMAND_2! onto !STREET!
	["h00z0d00"] = "et puis prenez la deuxième à gauche !NG_COMMAND_2! dans !STREET!",
	-- 263: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["bl0r0000"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!",
	-- 264: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0p0e0x"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! en direction de !STREET_2! !SIGNPOST_2!",
	-- 265: After the junction turn left !NG_COMMAND_1!
	["bz0v0000"] = "Après le croisement, tournez à gauche !NG_COMMAND_1!",
	-- 266: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0q000x"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 267: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00wia00"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 268: and then take the exit !NG_COMMAND_2!
	["h000d000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 269: At the end of the road make a u turn !NG_COMMAND_1! onto !STREET!
	["c00t0d00"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1! dans !STREET!",
	-- 270: and then take the ferry towards !STREET_2! !SIGNPOST_2!
	["h00m000x"] = "et puis prenez le ferry en direction de !STREET_2! !SIGNPOST_2!",
	-- 271: and then take the ferry !NG_COMMAND_2! towards !STREET!
	["h000mc00"] = "et puis prenez le ferry !NG_COMMAND_2! en direction de !STREET!",
	-- 272: and then you will reach your destination !NG_COMMAND_2!
	["h000a000"] = "et puis vous arriverez à votre destination !NG_COMMAND_2!",
	-- 273: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000dc00"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET!",
	-- 274: and then keep right !NG_COMMAND_2! towards !SIGNPOST!
	["h00p00c0"] = "et puis restez à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 275: and then immediately turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["j00q00c0"] = "puis, tournez tout de suite légèrement à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 276: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway
	["bl0wf000"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 277: and then immediately go straight ahead !NG_COMMAND_2!
	["j00n0000"] = "puis, allez tout de suite tout droit !NG_COMMAND_2!",
	-- 278: and then immediately make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["j00t00c0"] = "puis, faites tout de suite demi-tour !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 279: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0siac0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 280: Follow the course of the road for !DIST! !UNIT!
	["el000000"] = "Suivez cette route sur !DIST! !UNIT!",
	-- 281: Follow the motorway
	["d0000000"] = "Suivez l'autoroute",
	-- 282: and then immediately keep right !NG_COMMAND_2! towards !SIGNPOST!
	["j00p00c0"] = "puis, serrez tout de suite à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 283: and then immediately keep left !NG_COMMAND_2! towards !SIGNPOST!
	["j00x00c0"] = "puis, serrez tout de suite à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 284: and then enter the motorway !STREET! towards !SIGNPOST!
	["h00f0ac0"] = "et puis entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 285: and then immediately turn sharply right !NG_COMMAND_2! towards !SIGNPOST!
	["j00s00c0"] = "puis, tournez tout de suite complètement à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 286: and then immediately turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["j00w00c0"] = "puis, tournez tout de suite légèrement à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 287: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0edz"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 288: and then immediately turn left !NG_COMMAND_2! towards !SIGNPOST!
	["j00v00c0"] = "puis, tournez tout de suite à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 289: and then immediately enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000i0c0"] = "puis, entrez tout de suite sur la rocade !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 290: and then immediately enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["j000f0c0"] = "puis, entrez tout de suite sur l'autoroute !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 291: and then take the second left !NG_COMMAND_2!
	["h00z0000"] = "et puis prenez la deuxième à gauche !NG_COMMAND_2!",
	-- 292: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET!
	["c00w0c00"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 293: and then immediately take the second left !NG_COMMAND_2!
	["j00z0000"] = "puis, prenez tout de suite la deuxième à gauche !NG_COMMAND_2!",
	-- 294: Now keep left !NG_COMMAND_1! enter the urban motorway
	["a00xi000"] = "Maintenant, restez à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 295: and then immediately take the ferry !NG_COMMAND_2!
	["j000m000"] = "puis, prenez tout de suite le ferry !NG_COMMAND_2!",
	-- 296: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto !STREET!
	["bl0r0d00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! dans !STREET!",
	-- 297: and then turn slightly left !NG_COMMAND_2! towards !STREET!
	["h00w0c00"] = "et puis tournez légèrement à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 298: and then immediately take the exit !NG_COMMAND_2!
	["j000d000"] = "puis, prenez tout de suite la sortie !NG_COMMAND_2!",
	-- 299: and then keep left !NG_COMMAND_2! towards !SIGNPOST!
	["h00x00c0"] = "et puis restez à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 300: and then immediately take the ferry !NG_COMMAND_2! towards !STREET!
	["j000mc00"] = "puis, prenez tout de suite le ferry !NG_COMMAND_2! en direction de !STREET!",
	-- 301: and then take the exit !NG_COMMAND_2!
	["h000j000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 302: and then immediately take the exit !NG_COMMAND_2! onto !STREET!
	["j000dd00"] = "puis, prenez tout de suite la sortie !NG_COMMAND_2! dans !STREET!",
	-- 303: and then immediately take the exit !NG_COMMAND_2!
	["j000j000"] = "puis, prenez tout de suite la sortie !NG_COMMAND_2!",
	-- 304: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0vfa00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 305: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway
	["bl0ni000"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur la rocade",
	-- 306: and then go straight ahead !NG_COMMAND_2!
	["h00n0000"] = "et puis allez tout droit !NG_COMMAND_2!",
	-- 307: After the junction keep left !NG_COMMAND_1!
	["bz0x0000"] = "Après le croisement, restez à gauche !NG_COMMAND_1!",
	-- 308: drive to nearest road
	["000l0000"] = "allez jusqu'à la route la plus proche",
	-- 309: and then immediately keep left !NG_COMMAND_2! towards !STREET!
	["j00x0c00"] = "puis, serrez tout de suite à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 310: and then immediately enter the motorway !STREET! towards !SIGNPOST!
	["j000fac0"] = "puis, entrez tout de suite sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 311: and then immediately enter the motorway !STREET!
	["j000fa00"] = "puis, entrez tout de suite sur l'autoroute !STREET!",
	-- 312: and then immediately take the second left !NG_COMMAND_2! towards !STREET!
	["j00z0c00"] = "puis, prenez tout de suite la deuxième à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 313: Now go straight ahead !NG_COMMAND_1!
	["a00n0000"] = "Maintenant, allez tout droit !NG_COMMAND_1!",
	-- 314: and then immediately turn slightly left !NG_COMMAND_2! towards !STREET!
	["j00w0c00"] = "puis, tournez tout de suite légèrement à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 315: and then immediately take the second left , !STREET!
	["j00z0a00"] = "puis, prenez tout de suite la deuxième à gauche, !STREET!",
	-- 316: and then immediately make a u turn, !STREET! towards !SIGNPOST!
	["j00t0ac0"] = "puis, faites demi-tour tout de suite, !STREET! en direction de !SIGNPOST!",
	-- 317: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET!
	["bl0u0c00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 318: and then immediately keep right, !STREET! towards !SIGNPOST!
	["j00p0ac0"] = "puis, serrez tout de suite à droite, !STREET! en direction de !SIGNPOST!",
	-- 319: and then immediately turn left, !STREET! towards !SIGNPOST!
	["j00v0ac0"] = "puis, tournez tout de suite à gauche, !STREET! en direction de !SIGNPOST!",
	-- 320: and then immediately turn sharply left !NG_COMMAND_2! onto !STREET!
	["j00u0d00"] = "puis, tournez tout de suite complètement à gauche !NG_COMMAND_2! dans !STREET!",
	-- 321: and then immediately go straight ahead !NG_COMMAND_2! towards !STREET!
	["j00n0c00"] = "puis, allez tout de suite tout droit !NG_COMMAND_2! en direction de !STREET!",
	-- 322: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0tfac0"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 323: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway
	["c00ti000"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade",
	-- 324: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0vfac0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 325: At the end of the road turn sharply left !NG_COMMAND_1! onto !STREET!
	["c00u0d00"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 326: and then take the second left !NG_COMMAND_2! towards !STREET!
	["h00z0c00"] = "et puis prenez la deuxième à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 327: and then immediately turn slightly right !NG_COMMAND_2!
	["j00q0000"] = "puis, tournez tout de suite légèrement à droite !NG_COMMAND_2!",
	-- 328: and then go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["h00n00c0"] = "et puis allez tout droit !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 329: After the junction turn right !NG_COMMAND_1!
	["bz0r0000"] = "Après le croisement, tournez à droite !NG_COMMAND_1!",
	-- 330: and then immediately go straight ahead !NG_COMMAND_2! towards !SIGNPOST!
	["j00n00c0"] = "puis, allez tout de suite tout droit !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 331: and then immediately make a u turn !NG_COMMAND_2! onto !STREET!
	["j00t0d00"] = "puis, faites demi-tour tout de suite !NG_COMMAND_2! dans !STREET!",
	-- 332: and then immediately make a u turn !NG_COMMAND_2!
	["j00t0000"] = "puis, faites demi-tour tout de suite !NG_COMMAND_2!",
	-- 333: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0p0e00"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER!",
	-- 334: and then immediately enter the urban motorway !STREET!
	["j000ia00"] = "puis, entrez tout de suite sur la rocade !STREET!",
	-- 335: and then keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["h00x0ac0"] = "et puis restez à gauche !NG_COMMAND_2!, !STREET! en direction de !SIGNPOST!",
	-- 336: and then immediately turn right !NG_COMMAND_2! towards !STREET!
	["j00r0c00"] = "puis, tournez tout de suite à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 337: and then immediately turn right !NG_COMMAND_2! onto !STREET!
	["j00r0d00"] = "puis, tournez tout de suite à droite !NG_COMMAND_2! dans !STREET!",
	-- 338: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0wia00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 339: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway
	["bl0si000"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 340: and then immediately turn right !NG_COMMAND_2! towards !SIGNPOST!
	["j00r00c0"] = "puis, tournez tout de suite à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 341: and then immediately turn sharply right !NG_COMMAND_2! towards !STREET!
	["j00s0c00"] = "puis, tournez tout de suite complètement à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 342: and then turn right !NG_COMMAND_2! towards !SIGNPOST!
	["h00r00c0"] = "et puis tournez à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 343: and then enter the urban motorway !STREET!
	["h000ia00"] = "et puis entrez sur la rocade, !STREET!",
	-- 344: Now keep left !NG_COMMAND_1! , enter the motorway
	["a00xf000"] = "Maintenant, restez à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 345: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["bl0ui000"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 346: and then immediately turn sharply right !NG_COMMAND_2!
	["j00s0000"] = "puis, tournez tout de suite complètement à droite !NG_COMMAND_2!",
	-- 347: and then immediately turn sharply left !NG_COMMAND_2! towards !STREET!
	["j00u0c00"] = "puis, tournez tout de suite complètement à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 348: and then immediately turn sharply left !NG_COMMAND_2!
	["j00u0000"] = "puis, tournez tout de suite complètement à gauche !NG_COMMAND_2!",
	-- 349: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0x0edx"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! en direction de !STREET_2! !SIGNPOST_2!",
	-- 350: and then immediately take the second right !NG_COMMAND_2! towards !STREET!
	["j00y0c00"] = "puis, prenez tout de suite la deuxième à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 351: and then immediately turn slightly left !NG_COMMAND_2! onto !STREET!
	["j00w0d00"] = "puis, tournez tout de suite légèrement à gauche !NG_COMMAND_2! dans !STREET!",
	-- 352: and then take the second right !NG_COMMAND_2! towards !STREET!
	["h00y0c00"] = "et puis prenez la deuxième à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 353: and then immediately turn left !NG_COMMAND_2! towards !STREET!
	["j00v0c00"] = "puis, tournez tout de suite à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 354: and then immediately keep left, !STREET!
	["j00x0a00"] = "puis, serrez tout de suite à gauche, !STREET!",
	-- 355: and then immediately take the middle lane !NG_COMMAND_2! towards !STREET!
	["j00o0c00"] = "puis, prenez tout de suite la voie du milieu !NG_COMMAND_2! en direction de !STREET!",
	-- 356: After the junction take the middle lane !NG_COMMAND_1!
	["bz0o0000"] = "Après le croisement, prenez la voie du milieu !NG_COMMAND_1!",
	-- 357: and then immediately take the middle lane !NG_COMMAND_2! onto !STREET!
	["j00o0d00"] = "puis, prenez tout de suite la voie du milieu !NG_COMMAND_2! dans !STREET!",
	-- 358: At the end of the road turn sharply left !NG_COMMAND_1!
	["c00u0000"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!",
	-- 359: and then turn sharply left !NG_COMMAND_2!
	["h00u0000"] = "et puis tournez complètement à gauche !NG_COMMAND_2!",
	-- 360: and then immediately turn left !NG_COMMAND_2! onto !STREET!
	["j00v0d00"] = "puis, tournez tout de suite à gauche !NG_COMMAND_2! dans !STREET!",
	-- 361: and then immediately make a u turn, !STREET!
	["j00t0a00"] = "puis, faites demi-tour tout de suite, !STREET!",
	-- 362: and then immediately keep right, !STREET!
	["j00p0a00"] = "puis, serrez tout de suite à droite, !STREET!",
	-- 363: and then immediately go straight ahead, !STREET! towards !SIGNPOST!
	["j00n0ac0"] = "puis, allez tout de suite tout droit !STREET! en direction de !SIGNPOST!",
	-- 364: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and take the exit
	["bl0o00fg"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1! et prenez la sortie",
	-- 365: and then immediately turn right, !STREET!
	["j00r0a00"] = "puis, tournez tout de suite à droite, !STREET!",
	-- 366: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0rf0c0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 367: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0xf0c0"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 368: Now turn sharply left !NG_COMMAND_1!
	["a00u0000"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!",
	-- 369: At the end of the road turn left !NG_COMMAND_1! onto !STREET!
	["c00v0d00"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1! dans !STREET!",
	-- 370: and then take the middle lane, !STREET! towards !SIGNPOST!
	["h00o0ac0"] = "et puis prenez la voie du milieu, !STREET! en direction de !SIGNPOST!",
	-- 371: After !DIST! !UNIT! take the exit !NG_COMMAND_1! towards !STREET!
	["bl0d0c00"] = "Dans !DIST! !UNIT!, prenez la sortie !NG_COMMAND_1! en direction de !STREET!",
	-- 372: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0vi0c0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 373: and then immediately turn slightly left, !STREET!
	["j00w0a00"] = "puis, tournez tout de suite légèrement à gauche, !STREET!",
	-- 374: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1!
	["bl0n0000"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!",
	-- 375: and then you will reach your stopover !NG_COMMAND_2! on !STREET!
	["h000bb00"] = "et puis vous arriverez à votre étape !NG_COMMAND_2! dans !STREET!",
	-- 376: and then go straight ahead, !STREET! towards !SIGNPOST!
	["h00n0ac0"] = "et puis allez tout droit, !STREET! en direction de !SIGNPOST!",
	-- 377: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway !STREET!
	["c00wfa00"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 378: and then keep left !NG_COMMAND_2!
	["h00x0000"] = "et puis restez à gauche !NG_COMMAND_2!",
	-- 379: and then turn slightly right !NG_COMMAND_2!
	["h00q0000"] = "et puis tournez légèrement à droite !NG_COMMAND_2!",
	-- 380: and then turn right !NG_COMMAND_2!
	["h00r0000"] = "et puis tournez à droite !NG_COMMAND_2!",
	-- 381: and then you will reach your destination !NG_COMMAND_2!
	["h00a0000"] = "et puis vous arriverez à votre destination !NG_COMMAND_2!",
	-- 382: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0o000x"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 383: and then take the exit !NG_COMMAND_2! towards !STREET!
	["h000jc00"] = "et puis prenez la sortie !NG_COMMAND_2! en direction de !STREET!",
	-- 384: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway
	["bl0qf000"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 385: and then keep left !NG_COMMAND_2! onto !STREET!
	["h00x0d00"] = "et puis restez à gauche !NG_COMMAND_2! dans !STREET!",
	-- 386: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take the exit
	["bl0n000g"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie",
	-- 387: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000gd00"] = "et puis prenez la sortie !NG_COMMAND_2! dans !STREET!",
	-- 388: and then turn slightly left !NG_COMMAND_2! onto !STREET!
	["h00w0d00"] = "et puis tournez légèrement à gauche !NG_COMMAND_2! dans !STREET!",
	-- 389: and then turn sharply right !NG_COMMAND_2! onto !STREET!
	["h00s0d00"] = "et puis tournez complètement à droite !NG_COMMAND_2! dans !STREET!",
	-- 390: Now take the middle lane !NG_COMMAND_1! and take the exit
	["a00o00fg"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1! et prenez la sortie",
	-- 391: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000jd00"] = "et puis prenez la sortie !NG_COMMAND_2! dans !STREET!",
	-- 392: At the end of the road turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00rfac0"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 393: and then go straight ahead !NG_COMMAND_2! onto !STREET!
	["h00n0d00"] = "et puis allez tout droit !NG_COMMAND_2! dans !STREET!",
	-- 394: At the end of the road turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00v000x"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 395: and then go straight ahead !NG_COMMAND_2! towards !STREET!
	["h00n0c00"] = "et puis allez tout droit !NG_COMMAND_2! en direction de !STREET!",
	-- 396: and then make a u turn !NG_COMMAND_2! onto !STREET!
	["h00t0d00"] = "et puis faites demi-tour !NG_COMMAND_2! dans !STREET!",
	-- 397: After !DIST! !UNIT! turn left !NG_COMMAND_1! enter the motorway
	["bl0vf000"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 398: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0pf0c0"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 399: and then turn sharply left !NG_COMMAND_2! onto !STREET!
	["h00u0d00"] = "et puis tournez complètement à gauche !NG_COMMAND_2! dans !STREET!",
	-- 400: and then turn sharply left !NG_COMMAND_2! towards !STREET!
	["h00u0c00"] = "et puis tournez complètement à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 401: and then turn left !NG_COMMAND_2! onto !STREET!
	["h00v0d00"] = "et puis tournez à gauche !NG_COMMAND_2! dans !STREET!",
	-- 402: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0nfa00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 403: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0ria00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 404: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the motorway
	["bl0of000"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 405: and then keep right !NG_COMMAND_2! onto !STREET!
	["h00p0d00"] = "et puis restez à droite !NG_COMMAND_2! dans !STREET!",
	-- 406: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! onto !STREET!
	["bl0n0d00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! dans !STREET!",
	-- 407: and then keep right !NG_COMMAND_2! towards !STREET!
	["h00p0c00"] = "et puis restez à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 408: and then turn slightly right !NG_COMMAND_2! onto !STREET!
	["h00q0d00"] = "et puis tournez légèrement à droite !NG_COMMAND_2! dans !STREET!",
	-- 409: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0n0e0x"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! en direction de !STREET_2! !SIGNPOST_2!",
	-- 410: At the end of the road turn right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00rf0c0"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 411: and then turn sharply right !NG_COMMAND_2! towards !STREET!
	["h00s0c00"] = "et puis tournez complètement à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 412: and then turn right !NG_COMMAND_2! onto !STREET!
	["h00r0d00"] = "et puis tournez à droite !NG_COMMAND_2! dans !STREET!",
	-- 413: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0vf0c0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 414: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway
	["c00wf000"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 415: and then enter the urban motorway !STREET! towards !SIGNPOST!
	["h000iac0"] = "et puis entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 416: Now keep left !NG_COMMAND_1!
	["a00x0000"] = "Maintenant, restez à gauche !NG_COMMAND_1!",
	-- 417: At the end of the road turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00wiac0"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 418: and then enter the motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000f0c0"] = "et puis entrez sur l'autoroute !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 419: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0xi0c0"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 420: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00ri0c0"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 421: and then enter the motorway !STREET!
	["h000fa00"] = "et puis entrez sur l'autoroute !STREET!",
	-- 422: and then go straight ahead, !STREET!
	["h00n0a00"] = "et puis allez tout droit, !STREET!",
	-- 423: and then immediately keep left !NG_COMMAND_2!
	["j00x0000"] = "puis, serrez tout de suite à gauche !NG_COMMAND_2!",
	-- 424: At the end of the road turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00w000x"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 425: and then make a u turn, !STREET! towards !SIGNPOST!
	["h00t0ac0"] = "et puis faites demi-tour, !STREET! en direction de !SIGNPOST!",
	-- 426: and then take the middle lane !NG_COMMAND_2! towards !SIGNPOST!
	["h00o00c0"] = "et puis prenez la voie du milieu !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 427: and then immediately turn sharply right, !STREET!
	["j00s0a00"] = "puis, tournez tout de suite complètement à droite, !STREET!",
	-- 428: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00sia00"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 429: and then keep left, !STREET!
	["h00x0a00"] = "et puis restez à gauche, !STREET!",
	-- 430: Now turn sharply right !NG_COMMAND_1! , enter the motorway
	["a00sf000"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 431: and then make a u turn !NG_COMMAND_2! towards !SIGNPOST!
	["h00t00c0"] = "et puis faites demi-tour !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 432: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway
	["c00sf000"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 433: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["bl0u0000"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!",
	-- 434: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00tia00"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 435: and then turn slightly left !NG_COMMAND_2! towards !SIGNPOST!
	["h00w00c0"] = "et puis tournez légèrement à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 436: and then turn sharply left, !STREET!
	["h00u0a00"] = "et puis tournez complètement à gauche, !STREET!",
	-- 437: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take the exit
	["bl0o000g"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie",
	-- 438: At the end of the road turn sharply right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00si0c0"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 439: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00riac0"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 440: and then turn slightly right !NG_COMMAND_2! towards !SIGNPOST!
	["h00q00c0"] = "et puis tournez légèrement à droite !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 441: and then turn sharply right, !STREET!
	["h00s0a00"] = "et puis tournez complètement à droite, !STREET!",
	-- 442: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["bl0v0000"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!",
	-- 443: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o0e0z"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 444: and then turn sharply right, !STREET! towards !SIGNPOST!
	["h00s0ac0"] = "et puis tournez complètement à droite, !STREET! en direction de !SIGNPOST!",
	-- 445: and then turn right onto !STREET! towards !SIGNPOST!
	["h00r0ac0"] = "et puis tournez à droite dans !STREET! en direction de !SIGNPOST!",
	-- 446: and then !EXIT_NO_ROUNDABOUT! at the roundabout onto !STREET!
	["h000czb0"] = "et puis au rond-point !EXIT_NO_ROUNDABOUT! dans !STREET!",
	-- 447: and then take the exit !NG_COMMAND_2!
	["h00j0000"] = "et puis prenez la sortie !NG_COMMAND_2!",
	-- 448: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h00c0z00"] = "et puis au rond-point !EXIT_NO_ROUNDABOUT!",
	-- 449: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET!
	["bl0x0c00"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 450: After !DIST! !UNIT! keep left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0x000x"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 451: After !DIST! !UNIT! turn left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0v000x"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 452: After the junction make a u turn !NG_COMMAND_1!
	["bz0t0000"] = "Après le croisement, faites demi-tour !NG_COMMAND_1!",
	-- 453: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0pfa00"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 454: and then enter the motorway !NG_COMMAND_2!
	["h00f0000"] = "et puis entrez sur l'autoroute !NG_COMMAND_2!",
	-- 455: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1!
	["bl0a0000"] = "Dans !DIST! !UNIT!, vous arriverez à votre destination !NG_COMMAND_1!",
	-- 456: and then take the exit !NG_COMMAND_2! onto !STREET!
	["h000dd00"] = "et puis prenez la sortie !NG_COMMAND_2! dans !STREET!",
	-- 457: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["bl0wf0c0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 458: and then !EXIT_NO_ROUNDABOUT! at the roundabout
	["h000cz00"] = "et puis !EXIT_NO_ROUNDABOUT! au rond-point",
	-- 459: and then take the ferry !NG_COMMAND_2!
	["h000m000"] = "et puis prenez le ferry !NG_COMMAND_2!",
	-- 460: and then enter the urban motorway !STREET!
	["h00i0a00"] = "et puis entrez sur la rocade !STREET!",
	-- 461: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway
	["bl0xi000"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 462: and then enter the motorway towards !SIGNPOST!
	["h00f00c0"] = "et puis entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 463: and then enter the motorway !STREET!
	["h00f0a00"] = "et puis entrez sur l'autoroute !STREET!",
	-- 464: and then immediately turn right !NG_COMMAND_2!
	["j00r0000"] = "puis, tournez tout de suite à droite !NG_COMMAND_2!",
	-- 465: Now keep left !NG_COMMAND_1! and take the exit
	["a00x00fg"] = "Maintenant, restez à gauche !NG_COMMAND_1! et prenez la sortie",
	-- 466: After !DIST! !UNIT! turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0r000x"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 467: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! towards !STREET!
	["bl0o0c00"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1! en direction de !STREET!",
	-- 468: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take the exit
	["bl0x000g"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie",
	-- 469: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take the exit
	["bl0p000g"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie",
	-- 470: and then make a u turn, !STREET!
	["h00t0a00"] = "et puis faites demi-tour, !STREET!",
	-- 471: Now turn right !NG_COMMAND_1!
	["a00r0000"] = "Maintenant, tournez à droite !NG_COMMAND_1!",
	-- 472: and then turn left !NG_COMMAND_2! towards !SIGNPOST!
	["h00v00c0"] = "et puis tournez à gauche !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 473: At the end of the road turn right !NG_COMMAND_1!
	["c00r0000"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!",
	-- 474: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0p000x"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 475: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0s000x"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 476: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0u000x"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 477: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["c00qfa00"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 478: After !DIST! !UNIT! keep left !NG_COMMAND_1! onto !STREET!
	["bl0x0d00"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1! dans !STREET!",
	-- 479: and then enter the urban motorway !NG_COMMAND_2!
	["h00i0000"] = "et puis entrez sur la rocade !NG_COMMAND_2!",
	-- 480: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0n0e0y"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2!",
	-- 481: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0rfa00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 482: After !DIST! !UNIT! enter the urban motorway !STREET! towards !SIGNPOST!
	["bl00iac0"] = "Dans !DIST! !UNIT!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 483: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0xiac0"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 484: Now turn slightly left !NG_COMMAND_1! , enter the urban motorway
	["a00wi000"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 485: After !DIST! !UNIT! keep left !NG_COMMAND_1! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0x0e0y"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2!",
	-- 486: At the end of the road turn left !NG_COMMAND_1! , enter the motorway
	["c00vf000"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 487: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00sf0c0"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 488: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["bl0w000x"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 489: and then !EXIT_NO_ROUNDABOUT! at the roundabout towards !SIGNPOST!
	["h000czc0"] = "et puis !EXIT_NO_ROUNDABOUT! au rond-point en direction de !SIGNPOST!",
	-- 490: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00uiac0"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 491: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0x0e00"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER!",
	-- 492: and then immediately keep right !NG_COMMAND_2! towards !STREET!
	["j00p0c00"] = "puis, serrez tout de suite à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 493: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p0e0z"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 494: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000e0z"] = "Dans !DIST! !UNIT!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 495: After !DIST! !UNIT! take exit !EXIT_NUMBER!
	["bl000e00"] = "Dans !DIST! !UNIT!, prenez la sortie !EXIT_NUMBER!",
	-- 496: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl00000g"] = "Dans !DIST! !UNIT!, prenez la sortie !NG_COMMAND_1!",
	-- 497: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0sfa00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 498: Now keep right !NG_COMMAND_1! , take the exit
	["a00p000g"] = "Maintenant, restez à droite !NG_COMMAND_1!, prenez la sortie",
	-- 499: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["bl0u0d00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 500: Now take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["a00oi000"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1!, entrez sur la rocade",
	-- 501: After !DIST! !UNIT! keep right !NG_COMMAND_1! onto !STREET!
	["bl0p0d00"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1! dans !STREET!",
	-- 502: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["bl0t0000"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!",
	-- 503: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0ufa00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 504: At the end of the road turn left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00vfac0"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 505: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0qia00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 506: Now keep right !NG_COMMAND_1! enter the motorway
	["a00pf000"] = "Maintenant, restez à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 507: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! towards !STREET_2! !SIGNPOST_2!
	["bl0x0e0x"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! en direction de !STREET_2! !SIGNPOST_2!",
	-- 508: and then immediately enter the urban motorway !STREET! towards !SIGNPOST!
	["j000iac0"] = "puis, entrez tout de suite sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 509: and then immediately turn sharply right !NG_COMMAND_2! onto !STREET!
	["j00s0d00"] = "puis, tournez tout de suite complètement à droite !NG_COMMAND_2! dans !STREET!",
	-- 510: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0p0e0y"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2!",
	-- 511: Now turn slightly left !NG_COMMAND_1! , enter the motorway
	["a00wf000"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 512: Now turn left !NG_COMMAND_1! , enter the motorway
	["a00vf000"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 513: Now take the middle lane !NG_COMMAND_1! , take the exit
	["a00o000g"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie",
	-- 514: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ui0c0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 515: At the end of the road turn sharply right !NG_COMMAND_1! onto !STREET!
	["c00s0d00"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1! dans !STREET!",
	-- 516: Now take the middle lane !NG_COMMAND_1! enter the motorway
	["a00of000"] = "Maintenant, prenez la voie du milieu !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 517: At the end of the road make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["c00tiac0"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 518: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET!
	["c00t0c00"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1! en direction de !STREET!",
	-- 519: At the end of the road make a u turn !NG_COMMAND_1! enter the motorway !STREET! towards !SIGNPOST!
	["c00tfac0"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 520: Now turn slightly right !NG_COMMAND_1! , enter the motorway
	["a00qf000"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 521: At the end of the road turn slightly right !NG_COMMAND_1! onto !STREET!
	["c00q0d00"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1! dans !STREET!",
	-- 522: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0niac0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 523: At the end of the road turn left !NG_COMMAND_1! towards !STREET!
	["c00v0c00"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1! en direction de !STREET!",
	-- 524: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0nia00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 525: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0tiac0"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 526: and then immediately make a u turn !NG_COMMAND_2! towards !STREET!
	["j00t0c00"] = "puis, faites tout de suite demi-tour !NG_COMMAND_2! en direction de !STREET!",
	-- 527: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0pi0c0"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 528: and then make a u turn !NG_COMMAND_2! towards !STREET!
	["h00t0c00"] = "et puis faites demi-tour !NG_COMMAND_2! en direction de !STREET!",
	-- 529: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST!
	["bl0o0ed0"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST!",
	-- 530: and then turn left !NG_COMMAND_2! towards !STREET!
	["h00v0c00"] = "et puis tournez à gauche !NG_COMMAND_2! en direction de !STREET!",
	-- 531: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0ri0c0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 532: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0sfac0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 533: At the end of the road turn sharply left !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00u000x"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 534: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0wiac0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 535: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0wi0c0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 536: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0viac0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 537: After !DIST! !UNIT! turn left !NG_COMMAND_1! , enter the urban motorway
	["bl0vi000"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 538: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0oiac0"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 539: After !DIST! !UNIT! keep right !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0p0edx"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! en direction de !STREET_2! !SIGNPOST_2!",
	-- 540: After !DIST! !UNIT! take the ferry !NG_COMMAND_1! towards !STREET!
	["bl0m0c00"] = "Dans !DIST! !UNIT!, prenez le ferry !NG_COMMAND_1! en direction de !STREET!",
	-- 541: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , enter the urban motorway
	["bl0oi000"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, entrez sur la rocade",
	-- 542: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the motorway !STREET!
	["bl0qfa00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET!",
	-- 543: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0nfac0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 544: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the motorway
	["bl0pf000"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 545: After !DIST! !UNIT! keep left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0xfac0"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 546: After !DIST! !UNIT! turn right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0rfac0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 547: Now make a u turn !NG_COMMAND_1!
	["a00t0000"] = "Maintenant, faites demi-tour !NG_COMMAND_1!",
	-- 548: At the end of the road turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["c00qi000"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 549: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["bl0ufac0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 550: Now turn slightly right !NG_COMMAND_1! , enter the urban motorway
	["a00qi000"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 551: and then turn right !NG_COMMAND_2! towards !STREET!
	["h00r0c00"] = "et puis tournez à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 552: After !DIST! !UNIT! keep right !NG_COMMAND_1! towards !STREET!
	["bl0p0c00"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 553: After !DIST! !UNIT! keep right !NG_COMMAND_1! , enter the urban motorway
	["bl0pi000"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!, entrez sur la rocade",
	-- 554: At the end of the road make a u turn !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00t000x"] = "Au bout de la route, faites demi-tour !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 555: At the end of the road turn right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00r000x"] = "Au bout de la route, tournez à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 556: At the end of the road turn sharply right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00s000x"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 557: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl0o0e0y"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2!",
	-- 558: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the motorway
	["bl0uf000"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 559: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0uia00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 560: At the end of the road turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["c00ui000"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 561: Now turn sharply left !NG_COMMAND_1! , enter the urban motorway
	["a00ui000"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, entrez sur la rocade",
	-- 562: and then you will reach your stopover !NG_COMMAND_2!
	["h00b0000"] = "et puis vous arriverez à votre étape !NG_COMMAND_2!",
	-- 563: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway !STREET! towards !SIGNPOST!
	["bl0qiac0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET! en direction de !SIGNPOST!",
	-- 564: At the end of the road turn right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["c00ria00"] = "Au bout de la route, tournez à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 565: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! towards !STREET!
	["bl0n0c00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! en direction de !STREET!",
	-- 566: At the end of the road turn right !NG_COMMAND_1! towards !STREET!
	["c00r0c00"] = "Au bout de la route, tournez à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 567: At the end of the road turn left !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["c00vi0c0"] = "Au bout de la route, tournez à gauche !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 568: and then keep right, !STREET! towards !SIGNPOST!
	["h00p0ac0"] = "et puis restez à droite, !STREET! en direction de !SIGNPOST!",
	-- 569: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["bl0t0d00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1! dans !STREET!",
	-- 570: and then immediately turn slightly right !NG_COMMAND_2! towards !STREET!
	["j00q0c00"] = "puis, tournez tout de suite légèrement à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 571: At the end of the road turn sharply left !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00ufac0"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 572: At the end of the road turn sharply right !NG_COMMAND_1! , enter the motorway !STREET! towards !SIGNPOST!
	["c00sfac0"] = "Au bout de la route, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute !STREET! en direction de !SIGNPOST!",
	-- 573: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER!
	["bl0n0e00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER!",
	-- 574: At the end of the road you will reach your destination !NG_COMMAND_1! on !STREET!
	["c00a0b00"] = "Au bout de la route, vous arriverez à votre destination !NG_COMMAND_1! dans !STREET!",
	-- 575: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET_2! !SIGNPOST_2!
	["c00q000x"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1! en direction de !STREET_2! !SIGNPOST_2!",
	-- 576: At the end of the road turn slightly right !NG_COMMAND_1! towards !STREET!
	["c00q0c00"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1! en direction de !STREET!",
	-- 577: After !DIST! !UNIT! keep left !NG_COMMAND_1!
	["bl0x0000"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!",
	-- 578: At the end of the road turn sharply left !NG_COMMAND_1! enter the motorway towards !SIGNPOST!
	["c00uf0c0"] = "Au bout de la route, tournez complètement à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 579: and then immediately go straight ahead !NG_COMMAND_2! onto !STREET!
	["j00n0d00"] = "puis, allez tout de suite tout droit !NG_COMMAND_2! dans !STREET!",
	-- 580: and then enter the urban motorway !NG_COMMAND_2! towards !SIGNPOST!
	["h000i0c0"] = "et puis entrez sur la rocade !NG_COMMAND_2! en direction de !SIGNPOST!",
	-- 581: At the end of the road turn slightly right !NG_COMMAND_1! , enter the motorway
	["c00qf000"] = "Au bout de la route, tournez légèrement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 582: and then turn slightly right !NG_COMMAND_2! towards !STREET!
	["h00q0c00"] = "et puis tournez légèrement à droite !NG_COMMAND_2! en direction de !STREET!",
	-- 583: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0n0e0z"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 584: After !DIST! !UNIT! take the exit !NG_COMMAND_1!
	["bl0d0000"] = "Dans !DIST! !UNIT!, prenez la sortie !NG_COMMAND_1!",
	-- 585: Traffic on route, detouring
	["s0000000"] = "Bouchons sur la route, calcul de la déviation",
	-- 586: After the junction turn sharply left !NG_COMMAND_1!
	["bz0u0000"] = "Après le croisement, tournez complètement à gauche !NG_COMMAND_1!",
	-- 587: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the motorway
	["bl0sf000"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur l'autoroute",
	-- 588: At the end of the road turn slightly left !NG_COMMAND_1! , enter the motorway towards !SIGNPOST!
	["c00wf0c0"] = "Au bout de la route, tournez légèrement à gauche !NG_COMMAND_1!, entrez sur l'autoroute en direction de !SIGNPOST!",
	-- 589: After the junction turn slightly right !NG_COMMAND_1!
	["bz0q0000"] = "Après le croisement, tournez légèrement à droite !NG_COMMAND_1!",
	-- 590: Now make a u turn !NG_COMMAND_1!
	["a00e0000"] = "Maintenant, faites demi-tour !NG_COMMAND_1!",
	-- 591: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0sia00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 592: After !DIST! !UNIT! keep left !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl0x0edy"] = "Dans !DIST! !UNIT!, restez à gauche !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2!",
	-- 593: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! , enter the urban motorway !STREET!
	["bl0tia00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!, entrez sur la rocade !STREET!",
	-- 594: After !DIST! !UNIT! go straight ahead !NG_COMMAND_1! , take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl0n0edx"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez la sortie !EXIT_NUMBER! !SIGNPOST! en direction de !STREET_2! !SIGNPOST_2!",
	-- 595: After !DIST! !UNIT! keep right !NG_COMMAND_1!
	["bl0p0000"] = "Dans !DIST! !UNIT!, restez à droite !NG_COMMAND_1!",
	-- 596: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! onto !STREET!
	["bl0o0d00"] = "Dans !DIST! !UNIT!, prenez la voie du milieu !NG_COMMAND_1! dans !STREET!",
	-- 597: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , enter the urban motorway towards !SIGNPOST!
	["bl0qi0c0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, entrez sur la rocade en direction de !SIGNPOST!",
	-- 598: and then immediately turn sharply left onto !STREET!
	["j00u0a00"] = "puis, tournez tout de suite complètement à gauche dans !STREET!",
	-- 603: After !DIST! !UNIT! make a u turn !NG_COMMAND_1!
	["blt00000"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1!",
	-- 614: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! onto !STREET!
	["blt00d00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1! dans !STREET!",
	-- 615: After !DIST! !UNIT! make a u turn !NG_COMMAND_1! and continue on !STREET!
	["blt00f00"] = "Dans !DIST! !UNIT!, faites demi-tour !NG_COMMAND_1! et continuez dans !STREET!",
	-- 621: Now make a u turn !NG_COMMAND_1! onto !STREET!
	["a0t00d00"] = "Maintenant, faites demi-tour !NG_COMMAND_1! dans !STREET!",
	-- 630: Now make a u turn !NG_COMMAND_1! and continue on !STREET!
	["a0t00f00"] = "Maintenant, faites demi-tour !NG_COMMAND_1! et continuez dans !STREET!",
	-- 653: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your destination
	["ll0a0000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! vous arriverez à votre destination",
	-- 654: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["ll0e0000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! faites demi-tour",
	-- 656: and then after !DIST! !UNIT! !NG_COMMAND_1! you will reach your stopover
	["ll0b0000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! vous arriverez à votre étape",
	-- 668: and then after !DIST! !UNIT! !NG_COMMAND_1! make a u turn
	["llt00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! faites demi-tour",
	-- 937: After !DIST! !UNIT! enter the highway !STREET!
	["bl00fa00"] = "Dans !DIST! !UNIT!, entrez sur l'autoroute !STREET!",
	-- 938: and then immediately keep left !NG_COMMAND_2! , !STREET! towards !SIGNPOST!
	["j00x0ac0"] = "puis, serrez tout de suite à gauche !NG_COMMAND_2!, !STREET! en direction de !SIGNPOST!",
	-- 939: After !DIST! !UNIT! take exit !EXIT_NUMBER! and continue on !STREET_2!
	["bl000e0y"] = "Après !DIST! !UNIT! prenez la sortie !EXIT_NUMBER! en direction de !STREET_2!",
	-- 940: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST!
	["bl000ed0"] = "Après !DIST! !UNIT! prenez la sortie !EXIT_NUMBER! !SIGNPOST!",
	-- 941: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! towards !STREET_2! !SIGNPOST_2!
	["bl000edx"] = "Après !DIST! !UNIT! prenez la sortie !EXIT_NUMBER! !SIGNPOST! en direction de !STREET_2! !SIGNPOST_2!",
	-- 942: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl000edz"] = "Après !DIST! !UNIT! prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2! en direction de  !SIGNPOST_2!",
	-- 943: After !DIST! !UNIT! take exit !EXIT_NUMBER! !SIGNPOST! and continue on !STREET_2!
	["bl000edy"] = "Après !DIST! !UNIT! prenez la sortie !EXIT_NUMBER! !SIGNPOST! et continuez dans !STREET_2!",
	-- 944: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your left
	["bl0a000l"] = "Après !DIST! !UNIT! vous arriverez à votre destination !NG_COMMAND_1! La destination est sur votre gauche",
	-- 945: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! . The destination is on your right
	["bl0a000r"] = "Après !DIST! !UNIT! vous arriverez à votre destination !NG_COMMAND_1! La destination est sur votre droite",
	-- 946: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your left
	["bl0a0b0l"] = "Après !DIST! !UNIT! vous arriverez à votre destination !NG_COMMAND_1! dans !STREET!. La destination est sur votre gauche",
	-- 947: After !DIST! !UNIT! you will reach your destination !NG_COMMAND_1! on !STREET! . The destination is on your right
	["bl0a0b0r"] = "Après !DIST! !UNIT! vous arriverez à votre destination !NG_COMMAND_1! dans !STREET!. La destination est sur votre droite",
	-- 948: After !DIST! !UNIT! enter the motorway towards !SIGNPOST!
	["bl00f0c0"] = "Après !DIST! !UNIT! entrez sur l'autoroute  en direction de  !SIGNPOST!",
	-- 949: After !DIST! !UNIT! enter the urban motorway towards !SIGNPOST!
	["bl00i0c0"] = "Après !DIST! !UNIT! prenez la périphérique  en direction de  !SIGNPOST!",
	-- 950: After !DIST! !UNIT! enter the urban motorway !STREET!
	["bl00ia00"] = "Après !DIST! !UNIT! prenez la périphérique  !STREET!",
	-- 964: Enter the roundabout
	["000c0y00"] = "prenez le rond-point",
	-- 965: After !DIST! !UNIT! enter the roundabout
	["bl0c0y00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  prenez le rond-point",
	-- 966: At the end of the road enter the roundabout
	["c00c0y00"] = "Au bout de la route prenez le rond-point",
	-- 967: and then enter the roundabout
	["h000cy00"] = "et puis, prenez le rond-point",
	-- 968: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2!
	["bl0x000y"] = "Après !DIST! !UNIT!  restez sur la gauche !NG_COMMAND_1!  et continuez dans !STREET_2!",
	-- 969: After !DIST! !UNIT! keep left !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0x000z"] = "Après !DIST! !UNIT!  restez sur la gauche !NG_COMMAND_1!  et continuez sur  !STREET_2! en direction de !SIGNPOST_2!",
	-- 970: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2!
	["bl0o000y"] = "Après !DIST! !UNIT! prenez la voie du milieu !NG_COMMAND_1! et continuez dans !STREET_2!",
	-- 971: After !DIST! !UNIT! take the middle lane !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0o000z"] = "Après !DIST! !UNIT! prenez la voie du milieu !NG_COMMAND_1! et continuez dans !STREET_2! en direction de !SIGNPOST_2!",
	-- 972: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2!
	["bl0p000y"] = "Après !DIST! !UNIT! restez sur la droite !NG_COMMAND_1! et continuez sur !STREET_2!",
	-- 973: After !DIST! !UNIT! keep right !NG_COMMAND_1! and continue on !STREET_2! towards !SIGNPOST_2!
	["bl0p000z"] = "Après !DIST! !UNIT! restez sur la droite !NG_COMMAND_1! et continuez sur !STREET_2! en direction de !SIGNPOST_2!",
	-- 974: Follow the course of the road
	["g0000000"] = "Suivez cette route",
}

commands_ped = { -- Commands for ped navigation.
	-- empty command
	["00000000"] = " ",
	-- 599: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1!
	["blo00000"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!",
	-- 600: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1!
	["blw00000"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!",
	-- 601: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1!
	["blu00000"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!",
	-- 602: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1!
	["bls00000"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!",
	-- 604: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1!
	["blq00000"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!",
	-- 605: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , !STREET!
	["blo00a00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, !STREET!",
	-- 606: After !DIST! !UNIT! turn left !NG_COMMAND_1! and continue on !STREET!
	["blv00f00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 607: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! onto !STREET!
	["blw00d00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 608: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["blw00f00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 609: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto !STREET!
	["blu00d00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 610: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["blu00f00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 611: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto !STREET!
	["bls00d00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! dans !STREET!",
	-- 612: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["bls00f00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 613: After !DIST! !UNIT! turn right !NG_COMMAND_1! and continue on !STREET!
	["blr00f00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 616: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto !STREET!
	["blq00d00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! dans !STREET!",
	-- 617: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["blq00f00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 618: Now turn slightly right !NG_COMMAND_1! onto !STREET!
	["a0q00d00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! dans !STREET!",
	-- 619: Now turn sharply right !NG_COMMAND_1! onto !STREET!
	["a0s00d00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! dans !STREET!",
	-- 620: Now turn slightly left !NG_COMMAND_1! onto !STREET!
	["a0w00d00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 622: Now turn sharply left !NG_COMMAND_1! onto !STREET!
	["a0u00d00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! dans !STREET!",
	-- 623: Now take the street in the middle !NG_COMMAND_1! , !STREET!
	["a0o00a00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, !STREET!",
	-- 624: Now take the street in the middle !NG_COMMAND_1!
	["a0o00000"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!",
	-- 625: Now turn left !NG_COMMAND_1! and continue on !STREET!
	["a0v00f00"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 626: Now turn slightly left !NG_COMMAND_1! and continue on !STREET!
	["a0w00f00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 627: Now turn sharply left !NG_COMMAND_1! and continue on !STREET!
	["a0u00f00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et continuez dans !STREET!",
	-- 628: Now turn sharply right !NG_COMMAND_1! and continue on !STREET!
	["a0s00f00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 629: Now turn right !NG_COMMAND_1! and continue on !STREET!
	["a0r00f00"] = "Maintenant, tournez à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 631: Now walk straight ahead and continue on !STREET!
	["a0n00f00"] = "Maintenant, allez tout droit et continuez dans !STREET!",
	-- 632: Now turn slightly right !NG_COMMAND_1! and continue on !STREET!
	["a0q00f00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et continuez dans !STREET!",
	-- 633: Now walk around the roundabout and turn onto !STREET!
	["a0c00h00"] = "Maintenant, prenez le rond-point et tournez dans !STREET!",
	-- 634: After !DIST! !UNIT! turn right !NG_COMMAND_1! , go through the building
	["blr00o00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 635: After !DIST! !UNIT! walk left around the roundabout
	["blb00000"] = "Dans !DIST! !UNIT!, prenez le rond-point par la gauche",
	-- 636: Now turn right !NG_COMMAND_1!
	["a0r00000"] = "Maintenant, tournez à droite !NG_COMMAND_1!",
	-- 637: Now turn left !NG_COMMAND_1!
	["a0v00000"] = "Maintenant, tournez à gauche !NG_COMMAND_1!",
	-- 638: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , !STREET!
	["blp00a00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, !STREET!",
	-- 639: Now take the street on the right !NG_COMMAND_1! , !STREET!
	["a0p00a00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, !STREET!",
	-- 640: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1!
	["blp00000"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!",
	-- 641: Now take the street on the right !NG_COMMAND_1!
	["a0p00000"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!",
	-- 642: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , !STREET!
	["blx00a00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, !STREET!",
	-- 643: Now take the street on the left !NG_COMMAND_1! , !STREET!
	["a0x00a00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, !STREET!",
	-- 644: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1!
	["blx00000"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!",
	-- 645: Now take the street on the left !NG_COMMAND_1!
	["a0x00000"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!",
	-- 646: After !DIST! !UNIT! turn left !NG_COMMAND_1!
	["blv00000"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!",
	-- 647: After !DIST! !UNIT! turn right !NG_COMMAND_1!
	["blr00000"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!",
	-- 648: After !DIST! !UNIT! !NG_COMMAND_1! turn left onto !STREET!
	["blv00d00"] = "Dans !DIST! !UNIT! !NG_COMMAND_1! tournez à gauche dans !STREET!",
	-- 649: After !DIST! !UNIT! !NG_COMMAND_1! turn right onto !STREET!
	["blr00d00"] = "Dans !DIST! !UNIT! !NG_COMMAND_1! tournez à droite dans !STREET!",
	-- 650: Now turn left onto !STREET!
	["a0v00d00"] = "Maintenant, tournez à gauche dans !STREET!",
	-- 651: Now turn right onto !STREET!
	["a0r00d00"] = "Maintenant, tournez à droite dans !STREET!",
	-- 652: Now walk around the roundabout !PED_TURN_NO!
	["a0c00j00"] = "Maintenant, prenez le rond-point !PED_TURN_NO!",
	-- 655: and then after !DIST! !UNIT! !NG_COMMAND_1! take the ferry
	["ll0m0000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez le ferry",
	-- 657: and then after !DIST! !UNIT! !NG_COMMAND_1! walk left around the roundabout
	["llb00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez le rond-point par la gauche",
	-- 658: and then after !DIST! !UNIT! !NG_COMMAND_1! walk around the roundabout
	["llc00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez le rond-point",
	-- 659: and then after !DIST! !UNIT! !NG_COMMAND_1! walk right around the roundabout
	["lla00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez le rond-point par la droite",
	-- 660: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street in the middle
	["llo00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez la rue du milieu",
	-- 661: and then after !DIST! !UNIT! !NG_COMMAND_1! turn left
	["llv00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez à gauche",
	-- 662: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly left
	["llw00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez légèrement à gauche",
	-- 663: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply left
	["llu00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez complètement à gauche",
	-- 664: and then after !DIST! !UNIT! !NG_COMMAND_1! turn sharply right
	["lls00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez complètement à droite",
	-- 665: and then after !DIST! !UNIT! !NG_COMMAND_1! turn right
	["llr00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez à droite",
	-- 666: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the left
	["llx00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez la rue de gauche",
	-- 667: and then after !DIST! !UNIT! !NG_COMMAND_1! take the street on the right
	["llp00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! prenez la rue de droite",
	-- 669: and then after !DIST! !UNIT! !NG_COMMAND_1! walk straight ahead
	["lln00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! allez tout droit",
	-- 670: and then after !DIST! !UNIT! !NG_COMMAND_1! turn slightly right
	["llq00000"] = "puis, dans !DIST! !UNIT! !NG_COMMAND_1! tournez légèrement à droite",
	-- 671: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the lift
	["bln000s0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et prenez l'ascenseur",
	-- 672: Now turn slightly right onto the footpath
	["a0q00g00"] = "Maintenant, tournez légèrement à droite dans le chemin",
	-- 673: Now turn right !NG_COMMAND_1! onto the footpath
	["a0r00g00"] = "Maintenant, tournez à droite !NG_COMMAND_1! dans le chemin",
	-- 674: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the stairs
	["bln000r0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et prenez les escaliers",
	-- 675: Now walk right around the roundabout and turn onto !STREET!
	["a0a00h00"] = "Maintenant, prenez le rond-point par la droite et tournez dans !STREET!",
	-- 676: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the park
	["blr00q00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, traversez le parc",
	-- 677: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the stairs
	["bln00r00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez les escaliers",
	-- 678: Now turn left !NG_COMMAND_1! and take the escalator
	["a0v000t0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 679: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the lift
	["blo000s0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et prenez l'ascenseur",
	-- 680: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , go through the building
	["bls00o00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 681: Now take the street in the middle !NG_COMMAND_1! , cross the park
	["a0o00q00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, traversez le parc",
	-- 682: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the escalator
	["blw00t00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 683: Now turn slightly left !NG_COMMAND_1! and take the escalator
	["a0w000t0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 684: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the lift
	["blw000s0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 685: Now walk left around the roundabout !PED_TURN_NO!
	["a0b00j00"] = "Maintenant, prenez le rond-point par la gauche !PED_TURN_NO!",
	-- 686: Now walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["a0b00h00"] = "Maintenant, prenez le rond-point par la gauche !NG_COMMAND_1! et tournez dans !STREET!",
	-- 687: Now turn slightly right !NG_COMMAND_1! , cross the square
	["a0q00p00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, traversez la place",
	-- 688: Head !ORIENTATION!
	["f0000000"] = "Dirigez vous vers !ORIENTATION!",
	-- 689: Now turn slightly right !NG_COMMAND_1! , cross the park
	["a0q00q00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, traversez le parc",
	-- 690: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the park
	["blq000q0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et traversez le parc",
	-- 691: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and go through the building
	["blw000o0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 692: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the lift
	["blw00s00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 693: Now turn sharply left !NG_COMMAND_1! and take the escalator
	["a0u000t0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 694: Now walk straight ahead !NG_COMMAND_1! and cross the square
	["a0n000p0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et traversez la place",
	-- 695: Now take the street on the right !NG_COMMAND_1! and go through the building
	["a0p000o0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 696: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the escalator
	["blw000t0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 697: Now turn left !NG_COMMAND_1! take the stairs
	["a0v00r00"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 698: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the park
	["blo000q0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et traversez le parc",
	-- 699: Now take the street in the middle !NG_COMMAND_1! and cross the square
	["a0o000p0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et traversez la place",
	-- 700: Now turn slightly right !NG_COMMAND_1! and go through the building
	["a0q000o0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 701: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the park
	["bln00q00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, traversez le parc",
	-- 702: Now walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["a0a00j00"] = "Maintenant, prenez le rond-point par la droite !PED_TURN_NO! !NG_COMMAND_1!",
	-- 703: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the escalator
	["blq000t0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 704: Now turn sharply right !NG_COMMAND_1! and take the escalator
	["a0s000t0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 705: Now take the street in the middle !NG_COMMAND_1! and go through the building
	["a0o000o0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et traversez le bâtiment",
	-- 706: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and go through the building
	["bln000o0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et traversez le bâtiment",
	-- 707: Now walk straight ahead !NG_COMMAND_1! , cross the square
	["a0n00p00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, traversez la place",
	-- 708: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the park
	["bln000q0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et traversez le parc",
	-- 709: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the lift
	["blx000s0"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 710: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the escalator
	["blx00t00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 711: Now turn slightly right !NG_COMMAND_1! , take the escalator
	["a0q00t00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, prenez l'escalator",
	-- 712: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the lift
	["blr000s0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 713: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the park
	["blw000q0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et traversez le parc",
	-- 714: Now turn slightly right !NG_COMMAND_1! , take the stairs
	["a0q00r00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 715: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the stairs
	["blq000r0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 716: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the stairs
	["blq00r00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 717: Now turn !NG_COMMAND_1! onto the footpath
	["a0y00g00"] = "Maintenant, tournez !NG_COMMAND_1! dans le chemin",
	-- 718: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the park
	["blu000q0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et traversez le parc",
	-- 719: Now turn right !NG_COMMAND_1! and go through the building
	["a0r000o0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 720: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and go through the building
	["blu000o0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 721: Now turn sharply right !NG_COMMAND_1! , go through the building
	["a0s00o00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 722: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the escalator
	["blu000t0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 723: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the stairs
	["blo000r0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et prenez les escaliers",
	-- 724: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the stairs
	["bls000r0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 725: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the square
	["blv000p0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et traversez la place",
	-- 726: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the park
	["blr000q0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et traversez le parc",
	-- 727: Now turn left !NG_COMMAND_1! and take the stairs
	["a0v000r0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 728: Now take the street on the left !NG_COMMAND_1! , take the escalator
	["a0x00t00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 729: Now turn slightly left !NG_COMMAND_1! , cross the square
	["a0w00p00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, traversez la place",
	-- 730: Now turn sharply right !NG_COMMAND_1! and cross the park
	["a0s000q0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et traversez le parc",
	-- 731: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the escalator
	["blr000t0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 732: After !DIST! !UNIT! turn right !NG_COMMAND_1! and go through the building
	["blr000o0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 733: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the park
	["blp000q0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et traversez le parc",
	-- 734: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1!
	["bla00000"] = "Dans !DIST! !UNIT!, prenez le rond-point par la droite !NG_COMMAND_1!",
	-- 735: Now take the street on the right !NG_COMMAND_1! and cross the square
	["a0p000p0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et traversez la place",
	-- 736: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and go through the building
	["bls000o0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 737: Now walk straight ahead !NG_COMMAND_1! and take the stairs
	["a0n000r0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez les escaliers",
	-- 738: Now turn sharply right !NG_COMMAND_1! and go through the building
	["a0s000o0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 739: Now turn right !NG_COMMAND_1! and take the lift
	["a0r000s0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 740: Now turn slightly right !NG_COMMAND_1! and take the lift
	["a0q000s0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 741: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the lift
	["blo00s00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, prenez l'ascenseur",
	-- 742: Now walk straight ahead !NG_COMMAND_1! , take the stairs
	["a0n00r00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, prenez les escaliers",
	-- 743: After !DIST! !UNIT! turn right !NG_COMMAND_1! and take the stairs
	["blr000r0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 744: Now take the street on the left !NG_COMMAND_1! and take the escalator
	["a0x000t0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 745: After !DIST! !UNIT! turn left !NG_COMMAND_1! and cross the park
	["blv000q0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et traversez le parc",
	-- 746: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the escalator
	["bln00t00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez l'escalator",
	-- 747: Now turn sharply left !NG_COMMAND_1! and take the stairs
	["a0u000r0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 748: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! cross the park
	["blp00q00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et traversez le parc",
	-- 749: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , cross the square
	["blp00p00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, traversez la place",
	-- 750: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! onto !STREET!
	["bln00d00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! dans !STREET!",
	-- 751: Now take the street on the right !NG_COMMAND_1! , take the stairs
	["a0p00r00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, prenez les escaliers",
	-- 752: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the square
	["blq00p00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, traversez la place",
	-- 753: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , cross the park
	["blq00q00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, traversez le parc",
	-- 754: Now turn sharply right !NG_COMMAND_1! , take the stairs
	["a0s00r00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 755: Now turn !NG_COMMAND_1!
	["a0y00000"] = "Maintenant, tournez !NG_COMMAND_1!",
	-- 756: Now turn left !NG_COMMAND_1! , cross the square
	["a0v00p00"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, traversez la place",
	-- 757: After !DIST! !UNIT! turn left !NG_COMMAND_1! and go through the building
	["blv000o0"] = "Dans !DIST! !UNIT!, tournez à gauche et traversez le bâtiment !NG_COMMAND_1!",
	-- 758: Now turn sharply right !NG_COMMAND_1! and take the lift
	["a0s000s0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 759: Now take the street on the left !NG_COMMAND_1! , take the stairs
	["a0x00r00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 760: Now turn slightly right !NG_COMMAND_1! and cross the square
	["a0q000p0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et traversez la place",
	-- 761: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1!
	["bln00000"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!",
	-- 762: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the square
	["blx000p0"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1! et traversez la place",
	-- 763: Now turn left !NG_COMMAND_1! and cross the park
	["a0v000q0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et traversez le parc",
	-- 764: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the stairs
	["blu00r00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 765: Now take the street in the middle !NG_COMMAND_1! and take the escalator
	["a0o000t0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et prenez l'escalator",
	-- 766: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! onto the footpath
	["blu00g00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! dans le chemin",
	-- 767: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , cross the square
	["bln00p00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, traversez la place",
	-- 768: Now turn right !NG_COMMAND_1! and take the escalator
	["a0r000t0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 769: Now take the street on the left !NG_COMMAND_1! , cross the square
	["a0x00p00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, traversez la place",
	-- 770: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and cross the park
	["blx000q0"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1! et traversez le parc",
	-- 771: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the stairs
	["blr00r00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 772: Now turn sharply right !NG_COMMAND_1! , cross the park
	["a0s00q00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, traversez le parc",
	-- 773: Now take the street in the middle !NG_COMMAND_1! and cross the park
	["a0o000q0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et traversez le parc",
	-- 774: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the escalator
	["bls000t0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 775: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the square
	["bls00p00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, traversez la place",
	-- 776: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and take the lift
	["bls000s0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 777: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and take the escalator
	["bln000t0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et prenez l'escalator",
	-- 778: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and go through the building
	["blx000o0"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 779: Now take the street on the right !NG_COMMAND_1! , cross the square
	["a0p00p00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, traversez la place",
	-- 780: Now take the street on the right !NG_COMMAND_1! , take the lift
	["a0p00s00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 781: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the square
	["blv00p00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, traversez la place",
	-- 782: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the stairs
	["blp00r00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, prenez les escaliers",
	-- 783: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and continue on !STREET!
	["bln00f00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et continuez dans !STREET!",
	-- 784: Now turn slightly left !NG_COMMAND_1! , take the stairs
	["a0w00r00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 785: Now turn left !NG_COMMAND_1! , go through the building
	["a0v00o00"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 786: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the escalator
	["blo00t00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, prenez l'escalator",
	-- 787: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the square
	["blo00p00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, traversez la place",
	-- 788: Now walk straight ahead !NG_COMMAND_1! and take the lift
	["a0n000s0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez l'ascenseur",
	-- 789: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the stairs
	["bls00r00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 790: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and cross the square
	["blu000p0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et traversez la place",
	-- 791: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the park
	["blx00q00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, traversez le parc",
	-- 792: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , cross the park
	["bls00q00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, traversez le parc",
	-- 793: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the park
	["blu00q00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, traversez le parc",
	-- 794: Now turn sharply left !NG_COMMAND_1! and cross the park
	["a0u000q0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et traversez le parc",
	-- 795: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the escalator
	["blp000t0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et prenez l'escalator",
	-- 796: Now turn slightly left !NG_COMMAND_1! , cross the park
	["a0w00q00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, traversez le parc",
	-- 797: Now take the street in the middle !NG_COMMAND_1! , take the escalator
	["a0o00t00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, prenez l'escalator",
	-- 798: Now turn slightly right !NG_COMMAND_1! and cross the park
	["a0q000q0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et traversez le parc",
	-- 799: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , cross the park
	["blo00q00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, traversez le parc",
	-- 800: Now turn slightly left !NG_COMMAND_1! and cross the square
	["a0w000p0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et traversez la place",
	-- 801: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the stairs
	["blx00r00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 802: Now take the street in the middle !NG_COMMAND_1! , cross the square
	["a0o00p00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, traversez la place",
	-- 803: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the stairs
	["blv00r00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 804: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , take the stairs
	["blo00r00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, prenez les escaliers",
	-- 805: Head !ORIENTATION! towards !SIGNPOST!
	["f00000c0"] = "Dirigez vous vers !ORIENTATION! en direction de !SIGNPOST!",
	-- 806: Now turn slightly left !NG_COMMAND_1! , go through the building
	["a0w00o00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 807: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the escalator
	["blv00t00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 808: Now turn left !NG_COMMAND_1! and cross the square
	["a0v000p0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et traversez la place",
	-- 809: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! take the lift
	["blq00s00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 810: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the square
	["bls000p0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et traversez la place",
	-- 811: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! onto the footpath
	["blq00g00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! dans le chemin",
	-- 812: Now turn sharply left !NG_COMMAND_1! and go through the building
	["a0u000o0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 813: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , take the lift
	["blx00s00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 814: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the lift
	["blr00s00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 815: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! , take the lift
	["bls00s00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 816: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the lift
	["blu00s00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 817: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the escalator
	["blp00t00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, prenez l'escalator",
	-- 818: Now turn left !NG_COMMAND_1! , take the lift
	["a0v00s00"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 819: Now take the street on the left !NG_COMMAND_1! and go through the building
	["a0x000o0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 820: Now take the street on the right !NG_COMMAND_1! and cross the park
	["a0p000q0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et traversez le parc",
	-- 821: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , take the escalator
	["blu00t00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 822: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , go through the building
	["blq00o00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 823: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , go through the building
	["blp00o00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 824: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and take the escalator
	["blo000t0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et prenez l'escalator",
	-- 825: Now turn sharply left !NG_COMMAND_1! , take the lift
	["a0u00s00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 826: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , go through the building
	["blx00o00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 827: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , go through the building
	["blu00o00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 828: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , go through the building
	["blw00o00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 829: After !DIST! !UNIT! turn left !NG_COMMAND_1! , go through the building
	["blv00o00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 830: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! , go through the building
	["blo00o00"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1!, traversez le bâtiment",
	-- 831: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! , cross the square
	["blu00p00"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1!, traversez la place",
	-- 832: Now turn sharply right !NG_COMMAND_1! and take the stairs
	["a0s000r0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 833: Now turn right !NG_COMMAND_1! , cross the square
	["a0r00p00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, traversez la place",
	-- 834: Now take the street in the middle !NG_COMMAND_1! and take the stairs
	["a0o000r0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et prenez les escaliers",
	-- 835: Now turn sharply right !NG_COMMAND_1! , cross the square
	["a0s00p00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, traversez la place",
	-- 836: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the stairs
	["blv000r0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 837: Now turn right !NG_COMMAND_1! and cross the park
	["a0r000q0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et traversez le parc",
	-- 838: Now turn right !NG_COMMAND_1! and take the stairs
	["a0r000r0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 839: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! and cross the park
	["bls000q0"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! et traversez le parc",
	-- 840: Now turn sharply left !NG_COMMAND_1! , cross the square
	["a0u00p00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, traversez la place",
	-- 841: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , take the stairs
	["blw00r00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 842: Now walk straight ahead !NG_COMMAND_1! , cross the park
	["a0n00q00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, traversez le parc",
	-- 843: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and take the stairs
	["blw000r0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 844: Now take the street on the right !NG_COMMAND_1! , cross the park
	["a0p00q00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, traversez le parc",
	-- 845: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and cross the square
	["blp000p0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et traversez la place",
	-- 846: Now turn slightly right !NG_COMMAND_1! and take the escalator
	["a0q000t0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et prenez l'escalator",
	-- 847: Now turn left !NG_COMMAND_1! and take the lift
	["a0v000s0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 848: Now take the street on the left !NG_COMMAND_1! , cross the park
	["a0x00q00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, traversez le parc",
	-- 849: Now turn right !NG_COMMAND_1! , cross the park
	["a0r00q00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, traversez le parc",
	-- 850: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and cross the square
	["blq000p0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et traversez la place",
	-- 851: Now turn sharply left !NG_COMMAND_1! , cross the park
	["a0u00q00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, traversez le parc",
	-- 852: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the park
	["blw00q00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, traversez le parc",
	-- 853: Now turn left !NG_COMMAND_1! , cross the park
	["a0v00q00"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, traversez le parc",
	-- 854: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and go through the building
	["blp000o0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 855: Now turn right !NG_COMMAND_1! , take the stairs
	["a0r00r00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, prenez les escaliers",
	-- 856: Now turn left !NG_COMMAND_1! onto the footpath
	["a0v00g00"] = "Maintenant, tournez à gauche !NG_COMMAND_1! dans le chemin",
	-- 857: Now turn sharply left !NG_COMMAND_1! , take the stairs
	["a0u00r00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, prenez les escaliers",
	-- 858: Now walk straight ahead !NG_COMMAND_1! and take the escalator
	["a0n000t0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et prenez l'escalator",
	-- 859: Now take the street on the left !NG_COMMAND_1! and take the stairs
	["a0x000r0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 860: After !DIST! !UNIT! turn right !NG_COMMAND_1! and cross the square
	["blr000p0"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! et traversez la place",
	-- 861: Now take the street in the middle !NG_COMMAND_1! , take the stairs
	["a0o00r00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, prenez les escaliers",
	-- 862: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and go through the building
	["blq000o0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et traversez le bâtiment",
	-- 863: Now turn slightly right !NG_COMMAND_1! , take the lift
	["a0q00s00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 864: Now turn right !NG_COMMAND_1! , take the lift
	["a0r00s00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 865: Now turn slightly right !NG_COMMAND_1! and take the stairs
	["a0q000r0"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1! et prenez les escaliers",
	-- 866: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and cross the square
	["blo000p0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et traversez la place",
	-- 867: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! , cross the square
	["blw00p00"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1!, traversez la place",
	-- 868: Now take the street on the left !NG_COMMAND_1! , take the lift
	["a0x00s00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 869: Now walk straight ahead !NG_COMMAND_1! onto !STREET!
	["a0n00d00"] = "Maintenant, allez tout droit !NG_COMMAND_1! dans !STREET!",
	-- 870: Now turn sharply right !NG_COMMAND_1! , take the lift
	["a0s00s00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 871: Now turn slightly left !NG_COMMAND_1! , take the lift
	["a0w00s00"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 872: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! , take the escalator
	["blq00t00"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1!, prenez l'escalator",
	-- 873: Now take the street in the middle !NG_COMMAND_1! , take the lift
	["a0o00s00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, prenez l'ascenseur",
	-- 874: Now walk straight ahead !NG_COMMAND_1! , take the escalator
	["a0n00t00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, prenez l'escalator",
	-- 875: After !DIST! !UNIT! turn sharply right !NG_COMMAND_1! onto the footpath
	["bls00g00"] = "Dans !DIST! !UNIT!, tournez complètement à droite !NG_COMMAND_1! dans le chemin",
	-- 876: After !DIST! !UNIT! take the street in the middle !NG_COMMAND_1! and go through the building
	["blo000o0"] = "Dans !DIST! !UNIT!, prenez la rue du milieu !NG_COMMAND_1! et traversez le bâtiment",
	-- 877: Now turn right !NG_COMMAND_1! , go through the building
	["a0r00o00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 878: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the escalator
	["blv000t0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et prenez l'escalator",
	-- 879: Now turn slightly left !NG_COMMAND_1! and cross the park
	["a0w000q0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et traversez le parc",
	-- 880: Now turn right !NG_COMMAND_1! , take the escalator
	["a0r00t00"] = "Maintenant, tournez à droite !NG_COMMAND_1!, prenez l'escalator",
	-- 881: Now turn sharply right !NG_COMMAND_1! , take the escalator
	["a0s00t00"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1!, prenez l'escalator",
	-- 882: Now turn sharply left !NG_COMMAND_1! , take the escalator
	["a0u00t00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 883: Now turn left !NG_COMMAND_1! , take the escalator
	["a0v00t00"] = "Maintenant, tournez à gauche !NG_COMMAND_1!, prenez l'escalator",
	-- 884: Now turn slightly right !NG_COMMAND_1! , go through the building
	["a0q00o00"] = "Maintenant, tournez légèrement à droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 885: Now walk straight ahead !NG_COMMAND_1! , go through the building
	["a0n00o00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, traversez le bâtiment",
	-- 886: Now take the street on the right !NG_COMMAND_1! , go through the building
	["a0p00o00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, traversez le bâtiment",
	-- 887: After !DIST! !UNIT! turn slightly right !NG_COMMAND_1! and take the lift
	["blq000s0"] = "Dans !DIST! !UNIT!, tournez légèrement à droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 888: Now take the street on the right !NG_COMMAND_1! and take the lift
	["a0p000s0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 889: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the lift
	["blu000s0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 890: Now take the street on the left !NG_COMMAND_1! , go through the building
	["a0x00o00"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 891: Now take the street on the right !NG_COMMAND_1! , take the escalator
	["a0p00t00"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1!, prenez l'escalator",
	-- 892: Head !ORIENTATION! on !STREET! towards !SIGNPOST!
	["f0000bc0"] = "Dirigez vous vers !ORIENTATION! dans !STREET! en direction de !SIGNPOST!",
	-- 893: Now take the street in the middle !NG_COMMAND_1! , go through the building
	["a0o00o00"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1!, traversez le bâtiment",
	-- 894: Now take the street on the left !NG_COMMAND_1! and cross the square
	["a0x000p0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et traversez la place",
	-- 895: Now turn right !NG_COMMAND_1! and cross the square
	["a0r000p0"] = "Maintenant, tournez à droite !NG_COMMAND_1! et traversez la place",
	-- 896: Now turn sharply right !NG_COMMAND_1! and cross the square
	["a0s000p0"] = "Maintenant, tournez complètement à droite !NG_COMMAND_1! et traversez la place",
	-- 897: Now turn sharply left !NG_COMMAND_1! and cross the square
	["a0u000p0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et traversez la place",
	-- 898: After !DIST! !UNIT! turn left !NG_COMMAND_1! , cross the park
	["blv00q00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, traversez le parc",
	-- 899: Now walk straight ahead !NG_COMMAND_1! and cross the park
	["a0n000q0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et traversez le parc",
	-- 900: Now turn sharply left onto the footpath
	["a0u00g00"] = "Maintenant, tournez complètement à gauche dans le chemin",
	-- 901: Now turn slightly left !NG_COMMAND_1! and go through the building
	["a0w000o0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 902: After !DIST! !UNIT! turn right !NG_COMMAND_1! , take the escalator
	["blr00t00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, prenez l'escalator",
	-- 903: Now turn sharply left !NG_COMMAND_1! and take the lift
	["a0u000s0"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 904: Now take the street on the right !NG_COMMAND_1! and take the stairs
	["a0p000r0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et prenez les escaliers",
	-- 905: Now turn left !NG_COMMAND_1! and go through the building
	["a0v000o0"] = "Maintenant, tournez à gauche !NG_COMMAND_1! et traversez le bâtiment",
	-- 906: After !DIST! !UNIT! turn right !NG_COMMAND_1! , cross the square
	["blr00p00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1!, traversez la place",
	-- 907: Now walk straight ahead !NG_COMMAND_1! , take the lift
	["a0n00s00"] = "Maintenant, allez tout droit !NG_COMMAND_1!, prenez l'ascenseur",
	-- 908: Now turn slightly left !NG_COMMAND_1! and take the stairs
	["a0w000r0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 909: Now take the street on the left !NG_COMMAND_1! and take the lift
	["a0x000s0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 910: Now turn slightly left onto the footpath
	["a0w00g00"] = "Maintenant, tournez légèrement à gauche dans le chemin",
	-- 911: Now take the street in the middle !NG_COMMAND_1! and take the lift
	["a0o000s0"] = "Maintenant, prenez la rue du milieu !NG_COMMAND_1! et prenez l'ascenseur",
	-- 912: After !DIST! !UNIT! turn left !NG_COMMAND_1! and take the lift
	["blv000s0"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 913: After !DIST! !UNIT! turn right !NG_COMMAND_1! onto the footpath
	["blr00g00"] = "Dans !DIST! !UNIT!, tournez à droite !NG_COMMAND_1! dans le chemin",
	-- 914: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the stairs
	["blp000r0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et prenez les escaliers",
	-- 915: Head !ORIENTATION! on !STREET!
	["f0000b00"] = "Dirigez vous vers !ORIENTATION! dans !STREET!",
	-- 916: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the stairs
	["blx000r0"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 917: After !DIST! !UNIT! !NG_COMMAND_1! turn slightly left onto the footpath
	["blw00g00"] = "Dans !DIST! !UNIT! !NG_COMMAND_1! tournez légèrement à gauche dans le chemin",
	-- 918: Now walk straight ahead !NG_COMMAND_1! and go through the building
	["a0n000o0"] = "Maintenant, allez tout droit !NG_COMMAND_1! et traversez le bâtiment",
	-- 919: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! and cross the square
	["bln000p0"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1! et traversez la place",
	-- 920: After !DIST! !UNIT! walk around the roundabout !NG_COMMAND_1!
	["blc00000"] = "Dans !DIST! !UNIT!, prenez le rond-point !NG_COMMAND_1!",
	-- 921: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , take the lift
	["bln00s00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, prenez l'ascenseur",
	-- 922: After !DIST! !UNIT! turn slightly left !NG_COMMAND_1! and cross the square
	["blw000p0"] = "Dans !DIST! !UNIT!, tournez légèrement à gauche !NG_COMMAND_1! et traversez la place",
	-- 923: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! , cross the square
	["blx00p00"] = "Dans !DIST! !UNIT!, prenez la rue de gauche !NG_COMMAND_1!, traversez la place",
	-- 924: Now take the street on the right !NG_COMMAND_1! and take the escalator
	["a0p000t0"] = "Maintenant, prenez la rue de droite !NG_COMMAND_1! et prenez l'escalator",
	-- 925: After !DIST! !UNIT! turn left !NG_COMMAND_1! , take the lift
	["blv00s00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1!, prenez l'ascenseur",
	-- 926: After !DIST! !UNIT! turn sharply left !NG_COMMAND_1! and take the stairs
	["blu000r0"] = "Dans !DIST! !UNIT!, tournez complètement à gauche !NG_COMMAND_1! et prenez les escaliers",
	-- 927: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! and take the lift
	["blp000s0"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1! et prenez l'ascenseur",
	-- 928: After !DIST! !UNIT! walk straight ahead !NG_COMMAND_1! , go through the building
	["bln00o00"] = "Dans !DIST! !UNIT!, allez tout droit !NG_COMMAND_1!, traversez le bâtiment",
	-- 929: Now take the street on the left !NG_COMMAND_1! and cross the park
	["a0x000q0"] = "Maintenant, prenez la rue de gauche !NG_COMMAND_1! et traversez le parc",
	-- 930: After !DIST! !UNIT! take the street on the right !NG_COMMAND_1! , take the lift
	["blp00s00"] = "Dans !DIST! !UNIT!, prenez la rue de droite !NG_COMMAND_1!, prenez l'ascenseur",
	-- 931: After !DIST! !UNIT! turn left !NG_COMMAND_1! onto the footpath
	["blv00g00"] = "Dans !DIST! !UNIT!, tournez à gauche !NG_COMMAND_1! dans le chemin",
	-- 932: Now turn slightly left !NG_COMMAND_1! and take the lift
	["a0w000s0"] = "Maintenant, tournez légèrement à gauche !NG_COMMAND_1! et prenez l'ascenseur",
	-- 933: Now walk straight ahead !NG_COMMAND_1!
	["a0n00000"] = "Maintenant, allez tout droit !NG_COMMAND_1!",
	-- 934: Now turn sharply right onto the footpath
	["a0s00g00"] = "Maintenant, tournez complètement à droite dans le chemin",
	-- 935: Now turn !NG_COMMAND_1! onto !STREET!
	["a0y00d00"] = "Maintenant, tournez !NG_COMMAND_1! dans !STREET!",
	-- 936: Now turn sharply left !NG_COMMAND_1! , go through the building
	["a0u00o00"] = "Maintenant, tournez complètement à gauche !NG_COMMAND_1!, traversez le bâtiment",
	-- 951: After !DIST! !UNIT! !NG_COMMAND_1! go through the building
	["bl000o00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  traversez le bâtiment",
	-- 952: After !DIST! !UNIT! !NG_COMMAND_1! cross the square
	["bl000p00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  traversez la place",
	-- 953: After !DIST! !UNIT! !NG_COMMAND_1! cross the park
	["bl000q00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  traversez le parc",
	-- 954: After !DIST! !UNIT! !NG_COMMAND_1! take the stairs
	["bl000r00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  prenez les escaliers",
	-- 955: After !DIST! !UNIT! !NG_COMMAND_1! take the lift
	["bl000s00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  prenez l'ascenseur",
	-- 956: After !DIST! !UNIT! !NG_COMMAND_1! take the escalator
	["bl000t00"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  prenez l'escalator",
	-- 957: After !DIST! !UNIT! walk right around the roundabout and turn onto !STREET!
	["bla00h00"] = "Après !DIST! !UNIT! prenez le rond-point par la droite et tournez dans !STREET!",
	-- 958: After !DIST! !UNIT! walk right around the roundabout !NG_COMMAND_1! !PED_TURN_NO!
	["bla00j00"] = "Après !DIST! !UNIT! prenez le rond-point par la droite !NG_COMMAND_1! !PED_TURN_NO!",
	-- 959: After !DIST! !UNIT! walk left around the roundabout !NG_COMMAND_1! and turn onto !STREET!
	["blb00h00"] = "Après !DIST! !UNIT! prenez le rond-point par la gauche !NG_COMMAND_1! et tournez dans !STREET!",
	-- 960: After !DIST! !UNIT! walk left around the roundabout !PED_TURN_NO!
	["blb00j00"] = "Après !DIST! !UNIT! prenez le rond-point par la gauche !PED_TURN_NO!",
	-- 961: After !DIST! !UNIT! walk around the roundabout and turn onto !STREET!
	["blc00h00"] = "Après !DIST! !UNIT! prenez le rond-point !NG_COMMAND_1! et tournez dans !STREET!",
	-- 962: After !DIST! !UNIT! walk around the roundabout !PED_TURN_NO!
	["blc00j00"] = "Après !DIST! !UNIT! prenez le rond-point !PED_TURN_NO!",
	-- 963: After !DIST! !UNIT! take the street on the left !NG_COMMAND_1! and take the escalator
	["blx000t0"] = "Après !DIST! !UNIT! !NG_COMMAND_1!  prenez la rue sur la gauche !NG_COMMAND_1! et prenez l'escalateur",
}
