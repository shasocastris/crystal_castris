# Pokemon Crystal Gym Segments Dictionary
# Each segment contains all trainers encountered between gym leaders
# Format: (pokemon_species_lowercase, level)

gym_segments = {
    'start_to_falkner': [
        # Cherrygrove City: RIVAL1 (3) ?
        ('totodile', 5), ('zubat', 7),

        # Route 29: COOLTRAINERM (14) ANDY
        ('spinarak', 4), ('sentret', 4), ('marill', 5),

        # Route 29: TEACHER (1) TUSCANY
        ('mr__mime', 6), ('clefairy', 8),

        # Route 30: YOUNGSTER (1) JOEY
        ('rattata', 5),

        # Route 30: YOUNGSTER (2) MIKEY
        ('pidgey', 3), ('rattata', 5),

        # Route 30: BUG_CATCHER (1) DON
        ('ledyba', 4), ('spinarak', 4),

        # Route 31: COOLTRAINERM (13) ERICK
        ('hoppip', 5), ('poliwag', 5), ('gastly', 6),

        # Route 31: BUG_CATCHER (4) WADE
        ('caterpie', 3), ('caterpie', 3), ('caterpie', 3), ('weedle', 4),

        # Sprout Tower: SAGE (1) CHOW
        ('bellsprout', 4), ('natu', 4), ('gastly', 4),

        # Sprout Tower: SAGE (2) NICO
        ('gastly', 4), ('hoothoot', 4), ('bellsprout', 4),

        # Sprout Tower: SAGE (3) JIN
        ('bellsprout', 8),

        # Sprout Tower: SAGE (4) TROY
        ('bellsprout', 9), ('hoothoot', 9),

        # Sprout Tower: SAGE (7) EDMOND
        ('bellsprout', 4), ('gastly', 4), ('natu', 4),

        # Sprout Tower: SAGE (8) NEAL
        ('bellsprout', 8),

        # Sprout Tower: SAGE (9) LI
        ('gastly', 9), ('bellsprout', 9), ('hoothoot', 12),

        # Route 36: YOUNGSTER (14) ARTHUR
        ('rhyhorn', 12), ('onix', 14),

        # Route 36: LASS (12) NONI
        ('vulpix', 8), ('mareep', 9), ('hoothoot', 10),

        # Violet Gym: BIRD_KEEPER (1) ROD
        ('hoothoot', 9), ('spearow', 9),

        # Violet Gym: BIRD_KEEPER (2) ABE
        ('natu', 11),

        # Violet Gym: FALKNER (1) FALKNER
        ('doduo', 10), ('zubat', 12), ('pidgeotto', 13),
    ],

    'falkner_to_bugsy': [
        # Route 32: YOUNGSTER (3) ALBERT
        ('rattata', 8), ('zubat', 10),

        # Route 32: YOUNGSTER (4) GORDON
        ('wooper', 12),

        # Route 32: YOUNGSTER (5) SAMUEL
        ('rattata', 9), ('spearow', 10), ('pichu', 10), ('sandshrew', 12),

        # Route 32: BIRD_KEEPER (13) PETER
        ('hoothoot', 8), ('pidgey', 8), ('spearow', 10),

        # Route 32: LASS (13) FRIEDA
        ('zubat', 12), ('ekans', 14), ('nidorina', 16),

        # Route 32: COOLTRAINERM (15) TYLER
        ('stantler', 12), ('tangela', 13), ('corsola', 14),

        # Route 32: FISHER (1) JUSTIN
        ('shellder', 6), ('krabby', 6), ('poliwag', 6), ('magikarp', 18),

        # Route 32: FISHER (2) RALPH
        ('goldeen', 12),

        # Route 32: FISHER (5) HENRY
        ('horsea', 10), ('poliwag', 10),

        # Route 32: PICNICKER (1) LIZ
        ('nidoranf', 11),

        # Route 32: CAMPER (1) ROLAND
        ('nidoranm', 11),

        # Union Cave: POKEMANIAC (1) LARRY
        ('slowpoke', 12),

        # Union Cave: HIKER (18) DANIEL
        ('onix', 14),

        # Union Cave: FIREBREATHER (5) BILL
        ('koffing', 8), ('slugma', 8),

        # Union Cave: FIREBREATHER (7) RAY
        ('vulpix', 11),

        # Union Cave: HIKER (2) RUSSELL
        ('diglett', 5), ('onix', 8), ('geodude', 10),

        # Union Cave: HIKER (2) RUSSELL
        ('diglett', 5), ('onix', 8), ('geodude', 10),

        # Route 33: HIKER (1) ANTHONY
        ('geodude', 14), ('machop', 14),

        # Slowpoke Well: GRUNTM (1) GRUNT
        ('koffing', 17),

        # Slowpoke Well: GRUNTM (2) GRUNT
        ('rattata', 9), ('zubat', 11), ('drowzee', 11),

        # Slowpoke Well: GRUNTM (29) GRUNT
        ('rattata', 11), ('zubat', 11),

        # Slowpoke Well: GRUNTF (1) GRUNT
        ('zubat', 11), ('ekans', 14),

        # Azalea Town: RIVAL1 (6) ?
        ('gastly', 15), ('croconaw', 18), ('zubat', 20),

        # Azalea Gym: BUGSY (1) BUGSY
        ('kakuna', 15), ('ariados', 17), ('scyther', 20),

        # Azalea Gym: BUG_CATCHER (5) BENNY
        ('metapod', 9), ('venonat', 11), ('beedrill', 15),

        # Azalea Gym: BUG_CATCHER (6) AL
        ('pineco', 15), ('yanma', 15),

        # Azalea Gym: BUG_CATCHER (7) JOSH
        ('paras', 16),

        # Azalea Gym: TWINS (4) AMY & MAY
        ('ledyba', 12), ('spinarak', 12),
    ],

    'bugsy_to_whitney': [
        # Ilex Forest: BUG_CATCHER (19) WAYNE
        ('ledyba', 10), ('paras', 12),

        # Ilex Forest: CAMPER (9) HARVEY
        ('oddish', 11), ('bellsprout', 11), ('hoothoot', 13),

        # Ilex Forest: CAMPER (10) DALE
        ('furret', 15),

        # Route 34: YOUNGSTER (6) IAN
        ('mankey', 12), ('diglett', 15),

        # Route 34: PICNICKER (2) GINA
        ('oddish', 11), ('hoppip', 11), ('bulbasaur', 15),

        # Route 34: CAMPER (2) TODD
        ('psyduck', 17),

        # Route 34: POKEFANM (7) BRANDON
        ('snubbull', 16),

        # Route 34: OFFICER (1) KEITH
        ('growlithe', 21),

        # Goldenrod Tunnel: POKEMANIAC (11) ISSAC
        ('lickitung', 15),

        # Goldenrod Tunnel: POKEMANIAC (12) DONALD
        ('slowpoke', 12), ('starmie', 12),

        # Goldenrod Tunnel: SUPER_NERD (2) ERIC
        ('grimer', 14), ('magnemite', 14),

        # Goldenrod Tunnel: SUPER_NERD (10) TERU
        ('magnemite', 9), ('magnemite', 9), ('vulpix', 11), ('voltorb', 14),

        # Glitter & Grace: BEAUTY (3) JULIE
        ('wigglytuff', 23),

        # Glitter & Grace: BEAUTY (4) JACLYN
        ('granbull', 23),

        # Glitter & Grace: BEAUTY (7) CAROLINE
        ('azumarill', 23),

        # Glitter & Grace: BEAUTY (8) CARLENE
        ('skiploom', 21), ('psyduck', 21),

        # Glitter & Grace: BEAUTY (9) JESSICA
        ('furret', 21), ('meowth', 21),

        # Glitter & Grace: BEAUTY (10) RACHAEL
        ('clefairy', 21), ('machop', 21),

        # Glitter & Grace: BEAUTY (11) ANGELICA
        ('mr__mime', 26),

        # Glitter & Grace: BEAUTY (12) KENDRA
        ('bellossom', 23),

        # Goldenrod Gym: WHITNEY (1) WHITNEY
        ('teddiursa', 20), ('clefairy', 22), ('lickitung', 22), ('miltank', 24),

        # Goldenrod Gym: LASS (1) CARRIE
        ('snubbull', 22),

        # Goldenrod Gym: LASS (2) BRIDGET
        ('snubbull', 18), ('clefairy', 18), ('wigglytuff', 18),

        # Goldenrod Gym: BEAUTY (1) VICTORIA
        ('teddiursa', 11), ('aipom', 16), ('furret', 21),

        # Goldenrod Gym: BEAUTY (2) SAMANTHA
        ('meowth', 20), ('aipom', 20),
    ],

    'whitney_to_morty': [
        # Route 35: BIRD_KEEPER (3) BRYAN
        ('pidgey', 15), ('pidgeotto', 17),

        # Route 35: BUG_CATCHER (8) ARNIE
        ('venonat', 18),

        # Route 35: FIREBREATHER (6) WALT
        ('koffing', 14), ('magmar', 16),

        # Route 35: JUGGLER (1) IRWIN
        ('voltorb', 3), ('voltorb', 8), ('voltorb', 12), ('voltorb', 17),

        # Route 35: PICNICKER (3) BROOKE
        ('pikachu', 20),

        # Route 35: PICNICKER (4) KIM
        ('vulpix', 18),

        # Route 35: CAMPER (3) IVAN
        ('sandshrew', 12), ('zubat', 12), ('diglett', 17),

        # Route 35: CAMPER (4) ELLIOT
        ('sandshrew', 16), ('marill', 18),

        # Route 35: OFFICER (2) DIRK
        ('growlithe', 23), ('growlithe', 23),

        # National Park: SCHOOLBOY (1) JACK
        ('oddish', 15), ('voltorb', 18),

        # National Park: LASS (4) KRISE
        ('oddish', 15), ('cubone', 18),

        # National Park: CAMPER (14) THOMAS
        ('geodude', 15), ('geodude', 15), ('psyduck', 16), ('zubat', 18),

        # National Park: POKEFANM (1) WILLIAM
        ('raichu', 17),

        # National Park: TWINS (10) SAM & PAM
        ('cubone', 16), ('phanpy', 16),

        # National Park: POKEFANF (1) BEVERLY
        ('snubbull', 17),

        # National Park: POKEFANF (3) JACKIE
        ('butterfree', 17),

        # Route 36: SCHOOLBOY (3) ALAN
        ('tangela', 20),

        # Route 36: PSYCHIC_T (7) MARK
        ('slowpoke', 16), ('drowzee', 16), ('kadabra', 18),

        # Route 37: BUG_CATCHER (20) SUNNY
        ('chinchou', 24), ('flaaffy', 24), ('raichu', 24),

        # Route 37: PSYCHIC_T (5) GREG
        ('drowzee', 21),

        # Route 37: TWINS (2) ANN & ANNE
        ('clefairy', 20), ('jigglypuff', 20),

        # Dark Cave, Violet: LASS (5) MARGE
        ('azumarill', 20), ('flaaffy', 20),

        # Dark Cave, Violet: SUPER_NERD (4) JAY
        ('koffing', 18), ('magnemite', 22),

        # Dark Cave, Violet: CAMPER (15) LEROY
        ('slugma', 19), ('psyduck', 21),

        # Route 46: HIKER (11) BAILEY
        ('diglett', 16), ('geodude', 16), ('larvitar', 16), ('omanyte', 16), ('geodude', 16),

        # Route 46: PICNICKER (10) ERIN
        ('vulpix', 20), ('ponyta', 20),

        # Route 46: CAMPER (11) TED
        ('mankey', 21),

        # Burned Tower: RIVAL1 (9) ?
        ('magnemite', 22), ('croconaw', 24), ('haunter', 25), ('golbat', 27),

        # Ecruteak City: KIMONO_GIRL (2) NAOKO
        ('flareon', 25),

        # Ecruteak City: KIMONO_GIRL (3) SAYO
        ('espeon', 25),

        # Ecruteak City: KIMONO_GIRL (4) ZUKI
        ('umbreon', 25),

        # Ecruteak City: KIMONO_GIRL (5) KUNI
        ('vaporeon', 25),

        # Ecruteak City: KIMONO_GIRL (6) MIKI
        ('jolteon', 25),

        # Ecruteak Gym: MORTY (1) MORTY
        ('gastly', 26), ('haunter', 26), ('misdreavus', 28), ('gengar', 30),

        # Ecruteak Gym: SAGE (5) JEFFREY
        ('haunter', 27),

        # Ecruteak Gym: SAGE (6) PING
        ('gastly', 20), ('gastly', 20), ('gastly', 20), ('houndour', 20), ('gastly', 20),

        # Ecruteak Gym: MEDIUM (1) MARTHA
        ('gastly', 22), ('haunter', 24), ('paras', 25),

        # Ecruteak Gym: MEDIUM (2) GRACE
        ('misdreavus', 24), ('haunter', 24),
    ],

    'morty_to_chuck': [
        # Route 38: SCHOOLBOY (10) CHAD
        ('mr__mime', 23),

        # Route 38: BIRD_KEEPER (5) TOBY
        ('doduo', 18), ('doduo', 20), ('doduo', 21),

        # Route 38: LASS (10) DANA
        ('flaaffy', 22), ('psyduck', 22),

        # Route 38: BEAUTY (16) VALERIE
        ('psyduck', 21), ('skiploom', 21),

        # Route 38: BEAUTY (17) OLIVIA
        ('corsola', 23),

        # Route 38: SAILOR (10) HARRY
        ('wooper', 23),

        # Route 39: SAILOR (1) EUGENE
        ('poliwhirl', 21), ('raticate', 21), ('krabby', 23),

        # Route 39: PSYCHIC_T (6) NORMAN
        ('kadabra', 21), ('slowpoke', 24),

        # Route 39: POKEFANM (2) DEREK
        ('pikachu', 21),

        # Route 39: POKEFANF (2) RUTH
        ('pikachu', 21),

        # Route 39: POKEFANF (6) JAIME
        ('meowth', 21), ('tauros', 24),

        # Olivine Lighthouse: BIRD_KEEPER (4) THEO
        ('spearow', 18), ('hoothoot', 18), ('doduo', 18), ('pidgeotto', 21), ('farfetch_d', 23),

        # Olivine Lighthouse: BIRD_KEEPER (6) DENIS
        ('noctowl', 22), ('fearow', 22), ('xatu', 24),

        # Olivine Lighthouse: LASS (5) CONNIE
        ('marill', 26),

        # Olivine Lighthouse: GENTLEMAN (1) PRESTON
        ('growlithe', 22), ('meowth', 22),

        # Olivine Lighthouse: GENTLEMAN (5) ALFRED
        ('noctowl', 24),

        # Olivine Lighthouse: SAILOR (2) HUEY
        ('poliwag', 22), ('poliwhirl', 22),

        # Olivine Lighthouse: SAILOR (3) TERRELL
        ('poliwhirl', 24),

        # Olivine Lighthouse: SAILOR (4) KENT
        ('krabby', 22), ('wartortle', 24),

        # Olivine Lighthouse: SAILOR (5) ERNEST
        ('machop', 22), ('mankey', 22), ('poliwhirl', 22),

        # Route 40: BEAUTY (18) MONICA
        ('noctowl', 34), ('farfetch_d', 37), ('dodrio', 38), ('togetic', 38),

        # Route 40: SWIMMERM (2) SIMON
        ('tentacool', 24), ('chinchou', 24),

        # Route 40: SWIMMERM (3) RANDALL
        ('shellder', 22), ('cloyster', 22), ('wartortle', 24),

        # Route 40: SWIMMERF (1) ELAINE
        ('staryu', 26),

        # Route 40: SWIMMERF (2) PAULA
        ('staryu', 23), ('shellder', 23),

        # Route 41: SWIMMERM (4) CHARLIE
        ('quagsire', 23), ('tentacruel', 23), ('shellder', 26),

        # Route 41: SWIMMERM (5) GEORGE
        ('tentacool', 20), ('tentacool', 20), ('horsea', 21), ('tentacool', 21), ('staryu', 23), ('remoraid', 23),

        # Route 41: SWIMMERM (6) BERKE
        ('qwilfish', 28),

        # Route 41: SWIMMERM (7) KIRK
        ('gyarados', 24), ('quagsire', 24),

        # Route 41: SWIMMERM (8) MATHEW
        ('krabby', 28),

        # Route 41: SWIMMERM (9) HAL
        ('seel', 24), ('croconaw', 24), ('goldeen', 35),

        # Route 41: SWIMMERF (3) KAYLEE
        ('chinchou', 22), ('slowpoke', 24), ('seaking', 24),

        # Route 41: SWIMMERF (4) SUSIE
        ('psyduck', 24), ('goldeen', 27),

        # Route 41: SWIMMERF (5) DENISE
        ('seel', 27),

        # Route 41: SWIMMERF (6) KARA
        ('shellder', 24), ('starmie', 24),

        # Route 41: SWIMMERF (7) WENDY
        ('horsea', 26), ('horsea', 26),

        # Route 41: SWIMMERF (9) JILL
        ('lapras', 28),

        # Route 41: SWIMMERF (10) MARY
        ('starmie', 24), ('azumarill', 24),

        # Cianwood Gym: CHUCK (1) CHUCK
        ('primeape', 33), ('machamp', 34), ('poliwrath', 36), ('hitmontop', 36),

        # Cianwood Gym: BLACKBELT_T (2) YOSHI
        ('hitmonlee', 33),

        # Cianwood Gym: BLACKBELT_T (4) LAO
        ('hitmonchan', 33),

        # Cianwood Gym: BLACKBELT_T (5) NOB
        ('primeape', 30), ('machoke', 30),

        # Cianwood Gym: BLACKBELT_T (7) LUNG
        ('tyrogue', 28), ('machoke', 28), ('primeape', 30),
    ],

    'chuck_to_jasmine': [
        # Cianwood City: SWIMMERM (10) PATON
        ('lanturn', 27),

        # Cianwood City: SWIMMERF (11) KATIE
        ('quagsire', 25), ('politoed', 25),

        # Cianwood City: MEDIUM (3) BETHANY
        ('misdreavus', 28), ('crobat', 30),

        # Cianwood City: MEDIUM (4) MARGRET
        ('misdreavus', 28), ('jynx', 30),

        # Cianwood City: MEDIUM (5) ETHEL
        ('haunter', 28), ('parasect', 30),

        # Cianwood City: MYSTICALMAN (1) EUSINE
        ('hypno', 28), ('haunter', 28), ('electrode', 30),

        # Union Cave: COOLTRAINERM (1) NICK
        ('charmeleon', 32), ('wartortle', 32), ('venusaur', 32),

        # Union Cave: COOLTRAINERF (1) GWEN
        ('flareon', 27), ('vaporeon', 27), ('jolteon', 27), ('eevee', 32),

        # Union Cave: COOLTRAINERF (15) EMMA
        ('poliwhirl', 34),

        # Union Cave: POKEMANIAC (2) ANDREW
        ('marowak', 29), ('dugtrio', 29),

        # Union Cave: POKEMANIAC (3) CALVIN
        ('kangaskhan', 32),

        # Union Cave: SWIMMERM (19) JAMES
        ('tentacruel', 34), ('seadra', 35), ('starmie', 37),

        # Union Cave: SWIMMERM (20) LEWIS
        ('golduck', 33), ('kingler', 34), ('octillery', 34),

        # Union Cave: SWIMMERF (8) LISA
        ('jynx', 34), ('qwilfish', 34), ('quagsire', 34),

        # Union Cave: SUPER_NERD (3) GREGG
        ('magnemite', 24), ('quagsire', 24), ('gloom', 24),

        # Union Cave: HIKER (3) PHILLIP
        ('sandslash', 28), ('rhyhorn', 28), ('graveler', 28),

        # Union Cave: HIKER (4) LEONARD
        ('graveler', 28), ('machoke', 30),

        # Route 34: COOLTRAINERF (5) KATE
        ('meganium', 32), ('cloyster', 34),

        # Route 34: COOLTRAINERF (6) IRENE
        ('starmie', 27), ('seaking', 29),

        # Route 34: COOLTRAINERF (17) JENN
        ('staryu', 29), ('starmie', 32),
    ],

    'jasmine_to_pryce': [
        # Route 42: POKEMANIAC (4) SHANE
        ('nidorina', 38), ('nidorino', 38),

        # Route 42: FISHER (7) TULLY
        ('seaking', 39), ('qwilfish', 39),

        # Route 42: HIKER (6) BENJAMIN
        ('onix', 37), ('golem', 37), ('dugtrio', 40),

        # Route 43: POKEMANIAC (5) BEN
        ('slowbro', 40),

        # Route 43: POKEMANIAC (6) BRENT
        ('lickitung', 37), ('porygon', 37), ('kangaskhan', 38), ('chansey', 39),

        # Route 43: POKEMANIAC (7) RON
        ('nidoking', 43),

        # Route 43: FISHER (6) MARVIN
        ('octillery', 36), ('octillery', 36), ('gyarados', 38), ('gyarados', 38),

        # Route 43: PICNICKER (16) TIFFANY
        ('clefable', 40), ('butterfree', 40),

        # Route 43: CAMPER (19) SPENCER
        ('noctowl', 37), ('sandslash', 37), ('crobat', 39),

        # Team Rocket Hideout: GRUNTM (16) GRUNT
        ('raticate', 32), ('tauros', 32), ('raticate', 32), ('tauros', 32),

        # Team Rocket Hideout: GRUNTM (17) GRUNT
        ('golbat', 34),

        # Team Rocket Hideout: GRUNTM (18) GRUNT
        ('raticate', 33), ('golbat', 33), ('raticate', 33),

        # Team Rocket Hideout: GRUNTM (19) GRUNT
        ('venomoth', 34), ('golbat', 34),

        # Team Rocket Hideout: GRUNTM (28) GRUNT
        ('raticate', 35), ('weezing', 36),

        # Team Rocket Hideout, security: GRUNTM (20) GRUNT
        ('hypno', 33), ('golbat', 35),

        # Team Rocket Hideout, security: GRUNTM (21) GRUNT
        ('golbat', 32), ('venomoth', 33), ('raticate', 34),

        # Team Rocket's Hideout: SCIENTIST (1) ROSS
        ('magneton', 39), ('weezing', 39),

        # Team Rocket's Hideout: SCIENTIST (2) MITCH
        ('ditto', 41), ('magneton', 41),

        # Team Rocket's Hideout: SCIENTIST (3) JED
        ('weezing', 36), ('porygon', 36), ('magneton', 36),

        # Team Rocket's Hideout: EXECUTIVEM (4) EXECUTIVE
        ('golbat', 37), ('raticate', 37), ('weezing', 38),

        # Team Rocket's Hideout: EXECUTIVEF (2) EXECUTIVE
        ('arbok', 40), ('vileplume', 40), ('hypno', 41), ('muk', 41), ('murkrow', 42),

        # Team Rocket's Hideout: GRUNTF (5) GRUNT
        ('arbok', 32), ('gloom', 33),

        # Mahogany Gym: PRYCE (1) PRYCE
        ('dewgong', 43), ('delibird', 43), ('cloyster', 44), ('jynx', 44), ('piloswine', 45),

        # Mahogany Gym: SKIER (1) ROXANNE
        ('jynx', 44), ('dewgong', 44),

        # Mahogany Gym: SKIER (2) CLARISSA
        ('lapras', 44), ('delibird', 44),

        # Mahogany Gym: BOARDER (1) RONALD
        ('cloyster', 39), ('dewgong', 40), ('tentacruel', 49),

        # Mahogany Gym: BOARDER (2) BRAD
        ('sneasel', 42), ('delibird', 42),

        # Mahogany Gym: BOARDER (3) DOUGLAS
        ('dewgong', 39), ('corsola', 39), ('cloyster', 40),
    ],

    'pryce_to_clair': [
        # Goldenrod Radio Tower: SCIENTIST (4) MARC
        ('dugtrio', 45), ('magneton', 45), ('ditto', 45),

        # Goldenrod Radio Tower: SCIENTIST (5) RICH
        ('porygon', 48),

        # Goldenrod Radio Tower: GRUNTM (3) GRUNT
        ('muk', 41), ('raticate', 41),

        # Goldenrod Radio Tower: GRUNTM (4) GRUNT
        ('muk', 40), ('raticate', 40), ('muk', 42),

        # Goldenrod Radio Tower: GRUNTM (5) GRUNT
        ('raticate', 38), ('muk', 38), ('raticate', 40), ('raticate', 40), ('muk', 40),

        # Goldenrod Radio Tower: GRUNTM (6) GRUNT
        ('arbok', 44), ('golbat', 44),

        # Goldenrod Radio Tower: GRUNTM (7) GRUNT
        ('weezing', 40), ('muk', 40), ('golbat', 40), ('raticate', 40),

        # Goldenrod Radio Tower: GRUNTM (8) GRUNT
        ('weezing', 44),

        # Goldenrod Radio Tower: GRUNTM (9) GRUNT
        ('raticate', 41), ('weezing', 44),

        # Goldenrod Radio Tower: GRUNTM (10) GRUNT
        ('raticate', 39), ('muk', 39), ('golbat', 41),

        # Goldenrod Radio Tower: GRUNTM (13) GRUNT
        ('raticate', 45),

        # Goldenrod Radio Tower: GRUNTM (14) GRUNT
        ('raticate', 41), ('golbat', 41),

        # Goldenrod Radio Tower: GRUNTM (15) GRUNT
        ('weezing', 40), ('muk', 44),

        # Goldenrod Radio Tower: EXECUTIVEM (1) EXECUTIVE
        ('porygon', 44), ('magneton', 44), ('slowbro', 44), ('clefable', 44), ('weezing', 45), ('houndoom', 45),

        # Goldenrod Radio Tower: EXECUTIVEM (2) EXECUTIVE
        ('golbat', 44), ('kangaskhan', 44), ('electrode', 44), ('rhydon', 44),

        # Goldenrod Radio Tower: EXECUTIVEM (3) EXECUTIVE
        ('weezing', 36), ('weezing', 36), ('weezing', 36), ('weezing', 36), ('weezing', 36), ('weezing', 39),

        # Goldenrod Radio Tower: EXECUTIVEF (1) EXECUTIVE
        ('arbok', 44), ('vileplume', 44), ('hypno', 45), ('muk', 45), ('murkrow', 46),

        # Goldenrod Radio Tower: GRUNTF (2) GRUNT
        ('arbok', 44), ('muk', 44), ('weezing', 44),

        # Goldenrod Radio Tower: GRUNTF (4) GRUNT
        ('arbok', 38), ('muk', 38), ('golbat', 40), ('vileplume', 41),

        # Goldenrod Underground: RIVAL1 (12) ?
        ('magnemite', 34), ('sneasel', 36), ('haunter', 36), ('golbat', 39), ('feraligatr', 39),

        # Goldenrod Underground: GRUNTM (11) GRUNT
        ('muk', 28), ('koffing', 28), ('raticate', 30),

        # Goldenrod Underground: GRUNTM (24) GRUNT
        ('grimer', 30), ('koffing', 30),

        # Goldenrod Underground: GRUNTM (25) GRUNT
        ('koffing', 29), ('grimer', 29),

        # Goldenrod Underground: BURGLAR (1) DUNCAN
        ('koffing', 28), ('charmeleon', 28), ('magmar', 30),

        # Goldenrod Underground: BURGLAR (2) EDDIE
        ('arcanine', 32), ('weezing', 36),

        # Goldenrod Underground: GRUNTF (3) GRUNT
        ('gloom', 30), ('weepinbell', 30),

        # Route 44: BIRD_KEEPER (7) VANCE
        ('dodrio', 42), ('pidgeot', 42),

        # Route 44: COOLTRAINERM (19) ALLEN
        ('charizard', 45), ('meganium', 45), ('gyarados', 45),

        # Route 44: COOLTRAINERF (16) CYBIL
        ('butterfree', 42), ('bellossom', 42),

        # Route 44: POKEMANIAC (13) ZACH
        ('rhydon', 45), ('blissey', 45), ('magmar', 45),

        # Route 44: FISHER (10) WILTON
        ('golduck', 40), ('seadra', 40), ('seaking', 42),

        # Route 44: FISHER (11) EDGAR
        ('octillery', 42), ('octillery', 42),

        # Route 44: PSYCHIC_T (8) PHIL
        ('xatu', 41), ('alakazam', 44),

        # Route 45: COOLTRAINERM (8) RYAN
        ('pidgeot', 42), ('electabuzz', 45),

        # Route 45: COOLTRAINERF (7) KELLY
        ('blastoise', 41), ('feraligatr', 41), ('azumarill', 45),

        # Route 45: HIKER (7) ERIK
        ('machamp', 41), ('steelix', 41), ('golem', 45),

        # Route 45: HIKER (8) MICHAEL
        ('quagsire', 42), ('rhydon', 42), ('golem', 42),

        # Route 45: HIKER (9) PARRY
        ('steelix', 47),

        # Route 45: HIKER (10) TIMOTHY
        ('marowak', 45), ('dugtrio', 45),

        # Route 45: CAMPER (22) QUENTIN
        ('fearow', 48), ('primeape', 48), ('tauros', 48),

        # Dark Cave, Blackthorn Entrance: SUPER_NERD (5) DAVE
        ('crobat', 27), ('ditto', 29), ('alakazam', 31),

        # Dark Cave, Blackthorn Entrance: BLACKBELT_T (3) DOMUN
        ('onix', 40), ('steelix', 40), ('hitmonlee', 44), ('machamp', 46),

        # Blackthorn City: POKEMANIAC (16) SANTOS
        ('misdreavus', 46), ('ninetales', 46), ('parasect', 46), ('marowak', 46), ('gengar', 48),

        # Blackthorn Gym: CLAIR (1) CLAIR
        ('dunsparce', 44), ('dragonair', 45), ('dragonair', 45), ('dragonair', 45), ('lapras', 47), ('kingdra', 48),

        # Blackthorn Gym: COOLTRAINERM (3) PAUL
        ('dragonair', 41), ('seadra', 41), ('dragonair', 41),

        # Blackthorn Gym: COOLTRAINERM (4) CODY
        ('seadra', 41), ('dragonair', 44),

        # Blackthorn Gym: COOLTRAINERM (5) MIKE
        ('seadra', 45), ('dragonair', 45),

        # Blackthorn Gym: COOLTRAINERF (3) FRAN
        ('seadra', 45), ('dunsparce', 45),

        # Blackthorn Gym: COOLTRAINERF (4) LOLA
        ('dragonair', 41), ('gyarados', 44),
    ],

    'clair_to_elite_four': [
        # Dragon's Den: COOLTRAINERM (20) DARIN
        ('dragonair', 45), ('seadra', 45),

        # Dragon's Den: COOLTRAINERF (21) CARA
        ('charizard', 44), ('seadra', 44), ('seadra', 46),

        # Dragon's Den: TWINS (9) LEA & PIA
        ('dragonair', 46), ('dragonair', 46),

        # Mt Mortar: POKEMANIAC (15) MILLER
        ('nidoking', 45), ('umbreon', 45), ('nidoqueen', 45),

        # Mt Mortar: SWIMMERM (11) DARYL
        ('poliwrath', 45), ('gyarados', 47), ('kingler', 48),

        # Mt Mortar: SWIMMERF (13) TARA
        ('dewgong', 45), ('lapras', 46), ('starmie', 47),

        # Mt Mortar: SWIMMERF (16) JODY
        ('golduck', 44), ('quagsire', 46), ('slowking', 48),

        # Mt Mortar: SUPER_NERD (11) RUSS
        ('magneton', 45), ('crobat', 46), ('alakazam', 48),

        # Mt Mortar: SUPER_NERD (12) NORTON
        ('porygon', 45), ('xatu', 47), ('electrode', 48),

        # Mt Mortar: SUPER_NERD (13) HUGH
        ('ampharos', 47), ('sandslash', 47), ('seadra', 47),

        # Mt Mortar: SUPER_NERD (14) MARKUS
        ('bellossom', 45), ('slowbro', 45), ('slowking', 45),

        # Mt Mortar: BLACKBELT_T (6) KIYO
        ('hitmonlee', 50), ('hitmonchan', 50), ('hitmontop', 50),

        # Mt Mortar: BLACKBELT_T (8) TAKESHI
        ('sudowoodo', 45), ('machoke', 46), ('typhlosion', 47),

        # Route 27: BIRD_KEEPER (12) JOSE
        ('farfetch_d', 49), ('dodrio', 49), ('skarmory', 49),

        # Route 27: COOLTRAINERM (11) BLAKE
        ('quagsire', 46), ('exeggutor', 46), ('magneton', 48),

        # Route 27: COOLTRAINERM (12) BRIAN
        ('sandslash', 48), ('bellossom', 48), ('stantler', 48),

        # Route 27: COOLTRAINERF (10) REENA
        ('starmie', 46), ('electabuzz', 46), ('nidoqueen', 48),

        # Route 27: COOLTRAINERF (11) MEGAN
        ('bulbasaur', 39), ('ivysaur', 39), ('venusaur', 39),

        # Route 27: PSYCHIC_T (10) GILBERT
        ('starmie', 44), ('exeggutor', 44), ('girafarig', 49),

        # Route 26: COOLTRAINERM (9) JAKE
        ('parasect', 46), ('golduck', 48),

        # Route 26: COOLTRAINERM (10) GAVEN
        ('victreebel', 45), ('kingler', 45), ('flareon', 45),

        # Route 26: COOLTRAINERF (8) JOYCE
        ('blastoise', 45), ('raichu', 50),

        # Route 26: COOLTRAINERF (9) BETH
        ('rapidash', 50),

        # Route 26: GENTLEMAN (4) VIRGIL
        ('machamp', 44), ('farfetch_d', 45), ('rapidash', 47),

        # Route 26: FISHER (21)) SCOTT
        ('quagsire', 44), ('qwilfish', 44), ('seaking', 47),

        # Route 26: PSYCHIC_T (9) RICHARD
        ('jynx', 48), ('xatu', 48), ('espeon', 50),

        # Route 26: POKEFANF (4) SONIA
        ('granbull', 46), ('skarmory', 46), ('blissey', 47),

        # Victory Road: RIVAL1 (15) ?
        ('sneasel', 41), ('magneton', 41), ('gengar', 42), ('kadabra', 42), ('feraligatr', 44), ('crobat', 46),

        # Victory Road: COOLTRAINERM (18) STEVE
        ('gengar', 43), ('machamp', 44), ('kingdra', 45),

        # Victory Road: COOLTRAINERF GALEN GALEN
        ('lapras', 42), ('crobat', 43), ('alakazam', 44), ('golem', 45),

        # Victory Road: JUGGLER CLIFF CLIFF
        ('electrode', 43), ('electrode', 43), ('mr__mime', 44), ('alakazam', 45),

        # Victory Road: JUGGLER CALEB CALEB
        ('hypno', 43), ('electrode', 44), ('forretress', 44), ('gengar', 45),

        # Indigo Plateau: WILL (1) WILL
        ('xatu', 48), ('jynx', 50), ('exeggutor', 50), ('slowking', 50), ('girafarig', 50), ('xatu', 51),

        # Indigo Plateau: KOGA (1) KOGA
        ('forretress', 50), ('ariados', 51), ('gligar', 51), ('venomoth', 52), ('muk', 52), ('crobat', 53),

        # Indigo Plateau: BRUNO (1) BRUNO
        ('hitmontop', 51), ('hitmonlee', 51), ('hitmonchan', 51), ('onix', 52), ('heracross', 54), ('machamp', 56),

        # Indigo Plateau: KAREN (1) KAREN
        ('umbreon', 51), ('vileplume', 51), ('murkrow', 53), ('gengar', 54), ('tyranitar', 55), ('houndoom', 57),

        # Indigo Plateau: CHAMPION (1) LANCE
        ('gyarados', 53), ('aerodactyl', 56), ('charizard', 56), ('dragonite', 57), ('dragonite', 57), ('dragonite', 60),
    ]
}

# Example usage:
# print("Trainers from Falkner to Bugsy:")
# for pokemon, level in gym_segments['falkner_to_bugsy']:
#     print(f"  {pokemon.title()}: Level {level}")