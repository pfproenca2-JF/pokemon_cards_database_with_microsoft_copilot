BEGIN;

INSERT INTO tbl_cards (
  id, hp, name, info, attack, damage, weak, resis, retreat,
  cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
  (63, 50, 'Spearow', 'Tiny aggressive bird', 'Peck', '10', 'Electric', 'None', '1', 11, 1, 7, 1),
  (64, 90, 'Fearow', 'Long-beaked bird', 'Drill Peck', '60', 'Electric', 'None', '2', 12, 1, 7, 2),
  (65, 60, 'Ekans', 'Snake Pokémon', 'Poison Tail', '20', 'Ground', 'None', '1', 8, 1, 7, 1),
  (66, 100, 'Arbok', 'Cobra Pokémon', 'Acid Spray', '70', 'Ground', 'None', '2', 9, 1, 7, 2),
  (67, 80, 'Clefairy', 'Fairy helper', 'Moonblast', '40', 'Steel', 'None', '1', 6, 2, 7, 1),
  (68, 110, 'Clefable', 'Lunar Pokémon', 'Metronome', '80', 'Steel', 'None', '2', 7, 2, 7, 3),
  (69, 70, 'Vulpix', 'Fox with flame tails', 'Ember', '30', 'Water', 'None', '1', 9, 2, 2, 1),
  (70, 100, 'Ninetales', 'Mystic fox', 'Fire Blast', '90', 'Water', 'None', '2', 10, 2, 2, 3),
  (71, 60, 'Oddish (Promo)', 'Night-blooming weed', 'Sleep Powder', '0', 'Fire', 'None', '1', 2, 3, 3, 1),
  (72, 80, 'Bellsprout', 'Sprout Pokémon', 'Vine Whip', '20', 'Fire', 'None', '1', 5, 3, 3, 1),
  (73, 110, 'Weepinbell', 'Carnivorous plant', 'Acid', '70', 'Fire', 'None', '2', 13, 3, 3, 2),
  (74, 140, 'Victreebel', 'Pitcher plant', 'Razor Leaf', '120', 'Fire', 'None', '3', 14, 3, 3, 3),
  (75, 60, 'Geodude', 'Rock boulder', 'Rock Throw', '20', 'Water', 'None', '1', 3, 1, 7, 1),
  (76, 90, 'Graveler', 'Rolling rock', 'Rock Slide', '60', 'Water', 'None', '2', 4, 1, 7, 2),
  (77, 120, 'Golem', 'Armored boulder', 'Earthquake', '110', 'Water', 'None', '3', 5, 1, 7, 3),
  (78, 70, 'Magnemite', 'Magnet Pokémon', 'Thunder Shock', '20', 'Fighting', 'Metal -20', '1', 7, 2, 1, 1),
  (79, 100, 'Magneton', 'Cluster of magnets', 'Magnetic Storm', '80', 'Fighting', 'Metal -30', '2', 8, 2, 1, 2),
  (80, 80, 'Farfetch\'d', 'Leek-carrying bird', 'Leek Strike', '40', 'Electric', 'None', '2', 16, 1, 7, 1),
  (81, 110, 'Dodrio', 'Three-headed bird', 'Tri Attack', '90', 'Electric', 'None', '3', 17, 2, 7, 2),
  (82, 60, 'Seel', 'Sea lion', 'Headbutt', '20', 'Grass', 'None', '1', 6, 3, 4, 1),
  (83, 100, 'Dewgong', 'Ice sea creature', 'Aurora Beam', '80', 'Grass', 'None', '2', 7, 3, 4, 2),
  (84, 70, 'Grimer', 'Sludge blob', 'Sludge', '30', 'Psychic', 'None', '1', 8, 3, 5, 1),
  (85, 110, 'Muk', 'Toxic sludge', 'Toxic Drain', '90', 'Psychic', 'None', '2', 9, 3, 5, 3),
  (86, 90, 'Shellder', 'Bivalve Pokémon', 'Clamp', '40', 'Electric', 'None', '1', 10, 3, 4, 1),
  (87, 130, 'Cloyster', 'Armored shell', 'Ice Shard', '120', 'Electric', 'None', '2', 11, 3, 4, 2),
  (88, 80, 'Gastly', 'Gas Pokémon', 'Lick', '30', 'Psychic', 'None', '1', 6, 1, 5, 1),
  (89, 110, 'Haunter', 'Spooky spirit', 'Night Shade', '80', 'Psychic', 'None', '2', 7, 1, 5, 2),
  (90, 150, 'Blaziken', 'Flame kick fighter', 'Blaze Kick', '140', 'Water', 'None', '3', 12, 4, 2, 3),
  (91, 100, 'Infernape', 'Fiery monkey', 'Flame Punch', '90', 'Water', 'None', '2', 13, 4, 2, 3),
  (92, 80, 'Turtwig', 'Tiny tree turtle', 'Tackle', '20', 'Fire', 'None', '1', 5, 4, 3, 1
);

COMMIT;
