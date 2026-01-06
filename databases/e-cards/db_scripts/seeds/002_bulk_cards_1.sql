dBEGIN;

INSERT INTO tbl_cards (
  id, hp, name, info, attack, damage, weak, resis, retreat,
  cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
  (13, 60, 'Pichu', 'Baby electric Pokémon', 'Spark;Charm', '10;0', 'Fighting', 'Metal -20', '1', 15, 1, 1, 1),
  (14, 80, 'Raichu', 'Evolved electric mouse', 'Thunderbolt', '90', 'Fighting', 'Metal -30', '2', 59, 1, 1, 2),
  (15, 50, 'Ivysaur', 'Seed Pokémon evolution', 'Razor Leaf', '30', 'Fire', 'Water -20', '1', 45, 1, 3, 2),
  (16, 70, 'Charmeleon', 'Flame Pokémon evolution', 'Flame Tail', '40', 'Water', 'Fighting -20', '1', 5, 1, 2, 2),
  (17, 90, 'Blastoise', 'Shellfish Pokémon final', 'Hydro Cannon', '110', 'Grass', 'Lightning -30', '3', 2, 1, 4, 3),
  (18, 60, 'Jigglypuff', 'Balloon Pokémon', 'Sing;Pound', '0;20', 'Steel', 'None', '1', 34, 2, 7, 1),
  (19, 100, 'Snorlax', 'Sleeping giant', 'Body Slam', '80', 'Fighting', 'Psychic -30', '4', 3, 2, 6, 3),
  (20, 70, 'Machop', 'Superpower trainee', 'Karate Chop', '30', 'Psychic', 'None', '1', 12, 2, 6, 1),
  (21, 120, 'Machamp', 'Four-armed fighter', 'Seismic Toss', '100', 'Psychic', 'None', '3', 45, 2, 6, 3),
  (22, 80, 'Oddish', 'Weed Pokémon', 'Absorb', '20', 'Fire', 'None', '1', 9, 3, 3, 1),
  (23, 90, 'Gloom', 'Stinky evolution', 'Poison Powder', '30', 'Psychic', 'None', '2', 18, 3, 3, 2),
  (24, 140, 'Venusaur', 'Seed Pokémon final', 'Solar Beam', '120', 'Fire', 'Water -30', '3', 15, 3, 3, 3),
  (25, 60, 'Magikarp', 'Weak fish', 'Splash', '0', 'Electric', 'None', '1', 7, 3, 4, 1),
  (26, 130, 'Gengar', 'Shadow Pokémon', 'Shadow Ball', '110', 'Psychic', 'Dark -30', '2', 14, 3, 5, 3),
  (27, 90, 'Lapras', 'Transport Pokémon', 'Ice Beam', '80', 'Metal', 'None', '2', 21, 4, 4, 2),
  (28, 80, 'Sobble (Holo)', 'Shy water starter holo', 'Aqua Splash', '40', 'Grass', 'None', '1', 13, 4, 4, 1),
  (29, 100, 'Scorbunny', 'Fiery rabbit', 'Ember', '30', 'Water', 'None', '1', 8, 4, 2, 1),
  (30, 150, 'Zacian V', 'Sword Pokémon V', 'Brave Blade', '220', 'Fire', 'Metal -30', '3', 27, 4, 7, 3),
  (31, 110, 'Eternatus VMAX', 'Gigantic dark dragon', 'Dread End', '250', 'Fighting', 'None', '4', 210, 4, 8, 3),
  (32, 70, 'Perrserker', 'Iron cat', 'Iron Head', '60', 'Fighting', 'None', '2', 11, 4, 6, 2
);

COMMIT;
