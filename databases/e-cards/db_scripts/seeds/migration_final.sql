-- Migration final para Supabase/PostgreSQL
-- Este script é idempotente e sem duplicidade (ON CONFLICT DO NOTHING em cards)

BEGIN;

-- Tipos
INSERT INTO public.tbl_types (id, typeName)
  OVERRIDING SYSTEM VALUE
  VALUES
    (1, 'Electric'),
      (2, 'Fire'),
        (3, 'Grass'),
          (4, 'Water'),
            (5, 'Psychic'),
              (6, 'Fighting'),
                (7, 'Colorless'),
                  (8, 'Dragon')
                  ON CONFLICT (id) DO NOTHING;

                  -- Estágios
                  INSERT INTO public.tbl_stages (id, stageName)
                    OVERRIDING SYSTEM VALUE
                    VALUES
                      (1, 'Basic'),
                        (2, 'Stage 1'),
                          (3, 'Stage 2')
                          ON CONFLICT (id) DO NOTHING;

                          -- Coleções
                          INSERT INTO public.tbl_collections (id, collectionSetName, releaseDate, totalCardsInCollection)
                            OVERRIDING SYSTEM VALUE
                            VALUES
                              (1, 'Base Set',       '1999-01-09', 102),
                                (2, 'Jungle',         '1999-06-16',  64),
                                  (3, 'Fossil',         '1999-10-10',  62),
                                    (4, 'Sword & Shield', '2020-02-07', 202)
                                    ON CONFLICT (id) DO NOTHING;

                                    -- Cartas: 001_initial_seed.sql (Mewtwo corrigido)
                                    INSERT INTO public.tbl_cards (
                                      id, hp, name, info, attack, damage, weak, resis, retreat,
                                        cardNumberInCollection, collection_id, type_id, stage_id
                                        )
                                        OVERRIDING SYSTEM VALUE
                                        VALUES
                                          (1,  60,  'Pikachu',    'Classic electric mouse',             'Thunder Jolt;Quick Attack', '30;10', 'Fighting', 'Metal -30',  '1', 58, 1, 1, 1),
                                            (2,  120, 'Charizard',  'Flame Pokémon;fan favorite',         'Fire Spin',                  '100',   'Water',    'Fighting -30','3', 4,  1, 2, 3),
                                              (3,  40,  'Bulbasaur',  'Seed Pokémon',                        'Vine Whip',                  '20',    'Fire',     'Water -20',  '1', 44, 1, 3, 1),

                                                (4,  80,  'Eevee',      'Evolution candidate',                 'Tail Whap;Quick Attack',     '20;10', 'Fighting', 'Psychic -20','1', 30, 2, 7, 1),
                                                  (5,  90,  'Vaporeon',   'Water evolution of Eevee',            'Aqua Tail',                  '50',    'Grass',    'None',       '2', 31, 2, 4, 2),

                                                    (6,  100, 'Gyarados',   'Fierce sea serpent',                  'Dragon Rage;Hydro Pump',     '50;80', 'Electric', 'Fighting -30','3', 12, 3, 4, 3),
                                                      (7,  70,  'Aerodactyl', 'Ancient flying Pokémon',              'Wing Attack',                '40',    'Electric', 'Fighting -20','2', 7,  3, 7, 2),

                                                        (8,  70,  'Sobble',     'Timid Water lizard',                  'Water Gun',                  '20',    'Grass',    'None',       '1', 12, 4, 4, 1),
                                                          (9,  130, 'Rillaboom',  'Drummer gorilla;Grass starter final', 'Drum Beating',               '120',   'Fire',     'Fighting -30','3', 15, 4, 3, 3),
                                                            (10, 90,  'Lucario',    'Aura fighter',                        'Aura Sphere',                '80',    'Psychic',  'Fighting -30','2', 23, 4, 6, 2),
                                                              (11, 110, 'Mewtwo',     'Powerful psychic',                    'Psystrike',                  '120',   'Psychic',  'Psychic -20','None', 7,  4, 5, 3),
                                                                (12, 140, 'Dragapult',  'Dragon/ghost pseudo',                 'Dragon Darts',               '130',   'Fairy',    'Dragon -30', '2', 101,4, 8, 3)
                                                                ON CONFLICT DO NOTHING;

                                                                -- Cartas: 002_bulk_cards_1.sql (corrigido dBEGIN)
                                                                INSERT INTO public.tbl_cards (
                                                                  id, hp, name, info, attack, damage, weak, resis, retreat,
                                                                    cardNumberInCollection, collection_id, type_id, stage_id
                                                                    )
                                                                    OVERRIDING SYSTEM VALUE
                                                                    VALUES
                                                                      (13, 60,  'Pichu',             'Baby electric Pokémon',     'Spark;Charm',    '10;0',  'Fighting', 'Metal -20',   '1', 15, 1, 1, 1),
                                                                        (14, 80,  'Raichu',            'Evolved electric mouse',    'Thunderbolt',    '90',    'Fighting', 'Metal -30',   '2', 59, 1, 1, 2),
                                                                          (15, 50,  'Ivysaur',           'Seed Pokémon evolution',    'Razor Leaf',     '30',    'Fire',     'Water -20',   '1', 45, 1, 3, 2),
                                                                            (16, 70,  'Charmeleon',        'Flame Pokémon evolution',   'Flame Tail',     '40',    'Water',    'Fighting -20','1', 5,  1, 2, 2),
                                                                              (17, 90,  'Blastoise',         'Shellfish Pokémon final',   'Hydro Cannon',   '110',   'Grass',    'Lightning -30','3', 2,  1, 4, 3),
                                                                                (18, 60,  'Jigglypuff',        'Balloon Pokémon',           'Sing;Pound',     '0;20',  'Steel',    'None',        '1', 34, 2, 7, 1),
                                                                                  (19, 100, 'Snorlax',           'Sleeping giant',            'Body Slam',      '80',    'Fighting', 'Psychic -30', '4', 3,  2, 6, 3),
                                                                                    (20, 70,  'Machop',            'Superpower trainee',        'Karate Chop',    '30',    'Psychic',  'None',        '1', 12, 2, 6, 1),
                                                                                      (21, 120, 'Machamp',           'Four-armed fighter',        'Seismic Toss',   '100',   'Psychic',  'None',        '3', 45, 2, 6, 3),
                                                                                        (22, 80,  'Oddish',            'Weed Pokémon',              'Absorb',         '20',    'Fire',     'None',        '1', 9,  3, 3, 1),
                                                                                          (23, 90,  'Gloom',             'Stinky evolution',          'Poison Powder',  '30',    'Psychic',  'None',        '2', 18, 3, 3, 2),
                                                                                            (24, 140, 'Venusaur',          'Seed Pokémon final',        'Solar Beam',     '120',   'Fire',     'Water -30',   '3', 15, 3, 3, 3),
                                                                                              (25, 60,  'Magikarp',          'Weak fish',                 'Splash',         '0',     'Electric', 'None',        '1', 7,  3, 4, 1),
                                                                                                (26, 130, 'Gengar',            'Shadow Pokémon',            'Shadow Ball',    '110',   'Psychic',  'Dark -30',    '2', 14, 3, 5, 3),
                                                                                                  (27, 90,  'Lapras',            'Transport Pokémon',         'Ice Beam',       '80',    'Metal',    'None',        '2', 21, 4, 4, 2),
                                                                                                    (28, 80,  'Sobble (Holo)',     'Shy water starter holo',    'Aqua Splash',    '40',    'Grass',    'None',        '1', 13, 4, 4, 1),
                                                                                                      (29, 100, 'Scorbunny',         'Fiery rabbit',              'Ember',          '30',    'Water',    'None',        '1', 8,  4, 2, 1),
                                                                                                        (30, 150, 'Zacian V',          'Sword Pokémon V',           'Brave Blade',    '220',   'Fire',     'Metal -30',   '3', 27, 4, 7, 3),
                                                                                                          (31, 110, 'Eternatus VMAX',    'Gigantic dark dragon',      'Dread End',      '250',   'Fighting', 'None',        '4', 210,4, 8, 3),
                                                                                                            (32, 70,  'Perrserker',        'Iron cat',                  'Iron Head',      '60',    'Fighting', 'None',        '2', 11, 4, 6, 2)
                                                                                                            ON CONFLICT DO NOTHING;

                                                                                                            -- Cartas: 003_bulk_cards_2.sql
                                                                                                            INSERT INTO public.tbl_cards (
                                                                                                              id, hp, name, info, attack, damage, weak, resis, retreat,
                                                                                                                cardNumberInCollection, collection_id, type_id, stage_id
                                                                                                                )
                                                                                                                OVERRIDING SYSTEM VALUE
                                                                                                                VALUES
                                                                                                                  (33, 50,  'Caterpie',    'Worm Pokémon',                 'Tackle',        '10',   'Fire',     'None',        '1', 10, 1, 7, 1),
                                                                                                                    (34, 60,  'Metapod',     'Cocoon Pokémon',               'Harden',        '0',    'Fire',     'None',        '2', 11, 1, 7, 2),
                                                                                                                      (35, 90,  'Butterfree',  'Butterfly Pokémon',            'Gust;Psybeam',  '40;30','Lightning','Fighting -20','2', 12, 1, 5, 3),
                                                                                                                        (36, 70,  'Weedle',      'Poisonous larva',              'Poison Sting',  '10',   'Fire',     'None',        '1', 5,  1, 3, 1),
                                                                                                                          (37, 80,  'Beedrill',    'Poison Bee',                   'Twinneedle',    '50',   'Fire',     'None',        '2', 14, 1, 3, 2),
                                                                                                                            (38, 60,  'Pidgey',      'Tiny bird',                    'Gust',          '10',   'Electric', 'None',        '1', 7,  2, 7, 1),
                                                                                                                              (39, 80,  'Pidgeotto',   'Bird Pokémon',                 'Wing Attack',   '40',   'Electric', 'None',        '2', 16, 2, 7, 2),
                                                                                                                                (40, 110, 'Pidgeot',     'Large bird',                   'Hurricane',     '120',  'Electric', 'None',        '3', 17, 2, 7, 3),
                                                                                                                                  (41, 60,  'Rattata',     'Mouse Pokémon',                'Bite',          '10',   'Fighting', 'None',        '1', 3,  1, 6, 1),
                                                                                                                                    (42, 90,  'Alakazam',    'Master of psychic power',      'Psychic',       '90',   'Psychic',  'None',        '2', 5,  1, 5, 3),
                                                                                                                                      (43, 70,  'Abra',        'Sleeps a lot',                 'Teleport',      '0',    'Dark',     'None',        '1', 2,  1, 5, 1),
                                                                                                                                        (44, 80,  'Kadabra',     'Evolves from Abra',            'Confusion',     '40',   'Dark',     'None',        '2', 3,  1, 5, 2),
                                                                                                                                          (45, 100, 'Onix',        'Rock snake',                   'Rock Throw',    '60',   'Water',    'Fighting -20','3', 6,  3, 7, 2),
                                                                                                                                            (46, 120, 'Dragonite',   'Legendary dragon',             'Hyper Beam',    '150',  'Ice',      'None',        '4', 149,1, 8, 3),
                                                                                                                                              (47, 80,  'Psyduck',     'Headache Pokémon',             'Confusion',     '30',   'Grass',    'None',        '2', 23, 2, 5, 1),
                                                                                                                                                (48, 100, 'Golduck',     'Swift swimmer',                'Hydro Pump',    '90',   'Grass',    'None',        '2', 24, 2, 4, 2),
                                                                                                                                                  (49, 60,  'Tentacool',   'Jellyfish Pokémon',            'Poison Sting',  '20',   'Psychic',  'None',        '1', 9,  3, 5, 1),
                                                                                                                                                    (50, 90,  'Tentacruel',  'Poison tentacles',             'Acid',          '60',   'Psychic',  'None',        '2', 10, 3, 5, 2),
                                                                                                                                                      (51, 70,  'Growlithe',   'Loyal puppy',                  'Flame Tail',    '30',   'Water',    'None',        '1', 8,  2, 2, 1),
                                                                                                                                                        (52, 110, 'Arcanine',    'Legendary canine',             'Flare Blitz',   '120',  'Water',    'None',        '3', 9,  2, 2, 3),
                                                                                                                                                          (53, 80,  'Poliwag',     'Tadpole Pokémon',              'Bubble',        '20',   'Electric', 'None',        '1', 6,  3, 4, 1),
                                                                                                                                                            (54, 100, 'Poliwrath',   'Fighting swimmer',             'Body Slam',     '80',   'Psychic',  'None',        '2', 7,  3, 6, 3),
                                                                                                                                                              (55, 60,  'Abra (Promo)','Mysterious teleporter',        'Psyshock',      '20',   'Dark',     'None',        '1', 1,  4, 5, 1),
                                                                                                                                                                (56, 90,  'Togepi',      'Happiness Pokémon',            'Metronome',     '0',    'Steel',    'None',        '1', 4,  4, 7, 1),
                                                                                                                                                                  (57, 120, 'Togekiss',    'Joyful flyer',                 'Air Slash',     '90',   'Electric', 'None',        '2', 5,  4, 7, 3),
                                                                                                                                                                    (58, 70,  'Mareep',      'Woolly sheep',                 'Thunder Wave',  '20',   'Fighting', 'None',        '1', 12, 2, 1, 1),
                                                                                                                                                                      (59, 100, 'Ampharos',    'Electric sheep',               'Thunder',       '90',   'Fighting', 'Metal -30',   '2', 13, 2, 1, 3),
                                                                                                                                                                        (60, 80,  'Houndour',    'Dark fire pup',                'Ember',         '30',   'Water',    'None',        '1', 11, 3, 2, 1),
                                                                                                                                                                          (61, 110, 'Houndoom',    'Fiery hound',                  'Dark Flame',    '90',   'Water',    'None',        '2', 12, 3, 2, 3),
                                                                                                                                                                            (62, 130, 'Salamence',   'Dragon flyer',                 'Dragon Claw',   '140',  'Ice',      'None',        '3', 98, 4, 8, 3)
                                                                                                                                                                            ON CONFLICT DO NOTHING;

                                                                                                                                                                            -- Cartas: 004_bulk_cards_3.sql
                                                                                                                                                                            INSERT INTO public.tbl_cards (
                                                                                                                                                                              id, hp, name, info, attack, damage, weak, resis, retreat,
                                                                                                                                                                                cardNumberInCollection, collection_id, type_id, stage_id
                                                                                                                                                                                )
                                                                                                                                                                                OVERRIDING SYSTEM VALUE
                                                                                                                                                                                VALUES
                                                                                                                                                                                  (63, 50,  'Spearow',       'Tiny aggressive bird',   'Peck',           '10',   'Electric', 'None',        '1', 11, 1, 7, 1),
                                                                                                                                                                                    (64, 90,  'Fearow',        'Long-beaked bird',       'Drill Peck',     '60',   'Electric', 'None',        '2', 12, 1, 7, 2),
                                                                                                                                                                                      (65, 60,  'Ekans',         'Snake Pokémon',          'Poison Tail',    '20',   'Ground',   'None',        '1', 8,  1, 7, 1),
                                                                                                                                                                                        (66, 100, 'Arbok',         'Cobra Pokémon',          'Acid Spray',     '70',   'Ground',   'None',        '2', 9,  1, 7, 2),
                                                                                                                                                                                          (67, 80,  'Clefairy',      'Fairy helper',           'Moonblast',      '40',   'Steel',    'None',        '1', 6,  2, 7, 1),
                                                                                                                                                                                            (68, 110, 'Clefable',      'Lunar Pokémon',          'Metronome',      '80',   'Steel',    'None',        '2', 7,  2, 7, 3),
                                                                                                                                                                                              (69, 70,  'Vulpix',        'Fox with flame tails',   'Ember',          '30',   'Water',    'None',        '1', 9,  2, 2, 1),
                                                                                                                                                                                                (70, 100, 'Ninetales',     'Mystic fox',             'Fire Blast',     '90',   'Water',    'None',        '2', 10, 2, 2, 3),
                                                                                                                                                                                                  (71, 60,  'Oddish (Promo)','Night-blooming weed',    'Sleep Powder',   '0',    'Fire',     'None',        '1', 2,  3, 3, 1),
                                                                                                                                                                                                    (72, 80,  'Bellsprout',    'Sprout Pokémon',         'Vine Whip',      '20',   'Fire',     'None',        '1', 5,  3, 3, 1),
                                                                                                                                                                                                      (73, 110, 'Weepinbell',    'Carnivorous plant',      'Acid',           '70',   'Fire',     'None',        '2', 13, 3, 3, 2),
                                                                                                                                                                                                        (74, 140, 'Victreebel',    'Pitcher plant',          'Razor Leaf',     '120',  'Fire',     'None',        '3', 14, 3, 3, 3),
                                                                                                                                                                                                          (75, 60,  'Geodude',       'Rock boulder',           'Rock Throw',     '20',   'Water',    'None',        '1', 3,  1, 7, 1),
                                                                                                                                                                                                            (76, 90,  'Graveler',      'Rolling rock',           'Rock Slide',     '60',   'Water',    'None',        '2', 4,  1, 7, 2),
                                                                                                                                                                                                              (77, 120, 'Golem',         'Armored boulder',        'Earthquake',     '110',  'Water',    'None',        '3', 5,  1, 7, 3),
                                                                                                                                                                                                                (78, 70,  'Magnemite',     'Magnet Pokémon',         'Thunder Shock',  '20',   'Fighting', 'Metal -20',   '1', 7,  2, 1, 1),
                                                                                                                                                                                                                  (79, 100, 'Magneton',      'Cluster of magnets',     'Magnetic Storm', '80',   'Fighting', 'Metal -30',   '2', 8,  2, 1, 2),
                                                                                                                                                                                                                    (80, 80,  'Farfetch''d',   'Leek-carrying bird',     'Leek Strike',    '40',   'Electric', 'None',        '2', 16, 1, 7, 1),
                                                                                                                                                                                                                      (81, 110, 'Dodrio',        'Three-headed bird',      'Tri Attack',     '90',   'Electric', 'None',        '3', 17, 2, 7, 2),
                                                                                                                                                                                                                        (82, 60,  'Seel',          'Sea lion',               'Headbutt',       '20',   'Grass',    'None',        '1', 6,  3, 4, 1),
                                                                                                                                                                                                                          (83, 100, 'Dewgong',       'Ice sea creature',       'Aurora Beam',    '80',   'Grass',    'None',        '2', 7,  3, 4, 2),
                                                                                                                                                                                                                            (84, 70,  'Grimer',        'Sludge blob',            'Sludge',         '30',   'Psychic',  'None',        '1', 8,  3, 5, 1),
                                                                                                                                                                                                                              (85, 110, 'Muk',           'Toxic sludge',           'Toxic Drain',    '90',   'Psychic',  'None',        '2', 9,  3, 5, 3),
                                                                                                                                                                                                                                (86, 90,  'Shellder',      'Bivalve Pokémon',        'Clamp',          '40',   'Electric', 'None',        '1', 10, 3, 4, 1),
                                                                                                                                                                                                                                  (87, 130, 'Cloyster',      'Armored shell',          'Ice Shard',      '120',  'Electric', 'None',        '2', 11, 3, 4, 2),
                                                                                                                                                                                                                                    (88, 80,  'Gastly',        'Gas Pokémon',            'Lick',           '30',   'Psychic',  'None',        '1', 6,  1, 5, 1),
                                                                                                                                                                                                                                      (89, 110, 'Haunter',       'Spooky spirit',          'Night Shade',    '80',   'Psychic',  'None',        '2', 7,  1, 5, 2),
                                                                                                                                                                                                                                        (90, 150, 'Blaziken',      'Flame kick fighter',     'Blaze Kick',     '140',  'Water',    'None',        '3', 12, 4, 2, 3),
                                                                                                                                                                                                                                          (91, 100, 'Infernape',     'Fiery monkey',           'Flame Punch',    '90',   'Water',    'None',        '2', 13, 4, 2, 3),
                                                                                                                                                                                                                                            (92, 80,  'Turtwig',       'Tiny tree turtle',       'Tackle',         '20',   'Fire',     'None',        '1', 5,  4, 3, 1)
                                                                                                                                                                                                                                            ON CONFLICT DO NOTHING;

                                                                                                                                                                                                                                            COMMIT;