BEGIN;

INSERT INTO tbl_types (id, typeName) VALUES
  (1, 'Electric'),
  (2, 'Fire'),
  (3, 'Grass'),
  (4, 'Water'),
  (5, 'Psychic'),
  (6, 'Fighting'),
  (7, 'Colorless'),
  (8, 'Dragon');

INSERT INTO tbl_stages (id, stageName) VALUES
  (1, 'Basic'),
  (2, 'Stage 1'),
  (3, 'Stage 2');

INSERT INTO tbl_collections (id, collectionSetName, releaseDate, totalCardsInCollection) VALUES
  (1, 'Base Set', '1999-01-09', 102),
  (2, 'Jungle', '1999-06-16', 64),
  (3, 'Fossil', '1999-10-10', 62),
  (4, 'Sword & Shield', '2020-02-07', 202);

INSERT INTO tbl_cards (
  id, hp, name, info, attack, damage, weak, resis, retreat,
  cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
 
  (1, 60, 'Pikachu', 'Classic electric mouse', 'Thunder Jolt;Quick Attack', '30;10', 'Fighting', 'Metal -30', '1', 58, 1, 1, 1),
  (2, 120, 'Charizard', 'Flame Pokémon;fan favorite', 'Fire Spin', '100', 'Water', 'Fighting -30', '3', 4, 1, 2, 3),
  (3, 40, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water -20', '1', 44, 1, 3, 1),

  (4, 80, 'Eevee', 'Evolution candidate', 'Tail Whap;Quick Attack', '20;10', 'Fighting', 'Psychic -20', '1', 30, 2, 7, 1),
  (5, 90, 'Vaporeon', 'Water evolution of Eevee', 'Aqua Tail', '50', 'Grass', 'None', '2', 31, 2, 4, 2),

  
  (6, 100, 'Gyarados', 'Fierce sea serpent', 'Dragon Rage;Hydro Pump', '50;80', 'Electric', 'Fighting -30', '3', 12, 3, 4, 3),
  (7, 70, 'Aerodactyl', 'Ancient flying Pokémon', 'Wing Attack', '40', 'Electric', 'Fighting -20', '2', 7, 3, 7, 2),

  (8, 70, 'Sobble', 'Timid Water lizard', 'Water Gun', '20', 'Grass', 'None', '1', 12, 4, 4, 1),
  (9, 130, 'Rillaboom', 'Drummer gorilla;Grass starter final', 'Drum Beating', '120', 'Fire', 'Fighting -30', '3', 15, 4, 3, 3),
  (10, 90, 'Lucario', 'Aura fighter', 'Aura Sphere', '80', 'Psychic', 'Fighting -30', '2', 23, 4, 6, 2),
  (11, 110, 'Mewtwo', 'Powerful psychic', 'Psystrike', '120', 'Psychic', 'Psychic -20', 'None', '4', 7, 4, 5, 3),
  (12, 140, 'Dragapult', 'Dragon/ghost pseudo', 'Dragon Darts', '130', 'Fairy', 'Dragon -30', '2', 101, 4, 8, 3);

COMMIT;
