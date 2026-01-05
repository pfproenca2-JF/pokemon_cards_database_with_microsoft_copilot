BEGIN;

INSERT INTO tbl_cards (
  id, hp, name, info, attack, damage, weak, resis, retreat,
  cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
  (33, 50, 'Caterpie', 'Worm Pokémon', 'Tackle', '10', 'Fire', 'None', '1', 10, 1, 7, 1),
  (34, 60, 'Metapod', 'Cocoon Pokémon', 'Harden', '0', 'Fire', 'None', '2', 11, 1, 7, 2),
  (35, 90, 'Butterfree', 'Butterfly Pokémon', 'Gust;Psybeam', '40;30', 'Lightning', 'Fighting -20', '2', 12, 1, 5, 3),
  (36, 70, 'Weedle', 'Poisonous larva', 'Poison Sting', '10', 'Fire', 'None', '1', 5, 1, 3, 1),
  (37, 80, 'Beedrill', 'Poison Bee', 'Twinneedle', '50', 'Fire', 'None', '2', 14, 1, 3, 2),
  (38, 60, 'Pidgey', 'Tiny bird', 'Gust', '10', 'Electric', 'None', '1', 7, 2, 7, 1),
  (39, 80, 'Pidgeotto', 'Bird Pokémon', 'Wing Attack', '40', 'Electric', 'None', '2', 16, 2, 7, 2),
  (40, 110, 'Pidgeot', 'Large bird', 'Hurricane', '120', 'Electric', 'None', '3', 17, 2, 7, 3),
  (41, 60, 'Rattata', 'Mouse Pokémon', 'Bite', '10', 'Fighting', 'None', '1', 3, 1, 6, 1),
  (42, 90, 'Alakazam', 'Master of psychic power', 'Psychic', '90', 'Psychic', 'None', '2', 5, 1, 5, 3),
  (43, 70, 'Abra', 'Sleeps a lot', 'Teleport', '0', 'Dark', 'None', '1', 2, 1, 5, 1),
  (44, 80, 'Kadabra', 'Evolves from Abra', 'Confusion', '40', 'Dark', 'None', '2', 3, 1, 5, 2),
  (45, 100, 'Onix', 'Rock snake', 'Rock Throw', '60', 'Water', 'Fighting -20', '3', 6, 3, 7, 2),
  (46, 120, 'Dragonite', 'Legendary dragon', 'Hyper Beam', '150', 'Ice', 'None', '4', 149, 1, 8, 3),
  (47, 80, 'Psyduck', 'Headache Pokémon', 'Confusion', '30', 'Grass', 'None', '2', 23, 2, 5, 1),
  (48, 100, 'Golduck', 'Swift swimmer', 'Hydro Pump', '90', 'Grass', 'None', '2', 24, 2, 4, 2),
  (49, 60, 'Tentacool', 'Jellyfish Pokémon', 'Poison Sting', '20', 'Psychic', 'None', '1', 9, 3, 5, 1),
  (50, 90, 'Tentacruel', 'Poison tentacles', 'Acid', '60', 'Psychic', 'None', '2', 10, 3, 5, 2),
  (51, 70, 'Growlithe', 'Loyal puppy', 'Flame Tail', '30', 'Water', 'None', '1', 8, 2, 2, 1),
  (52, 110, 'Arcanine', 'Legendary canine', 'Flare Blitz', '120', 'Water', 'None', '3', 9, 2, 2, 3),
  (53, 80, 'Poliwag', 'Tadpole Pokémon', 'Bubble', '20', 'Electric', 'None', '1', 6, 3, 4, 1),
  (54, 100, 'Poliwrath', 'Fighting swimmer', 'Body Slam', '80', 'Psychic', 'None', '2', 7, 3, 6, 3),
  (55, 60, 'Abra (Promo)', 'Mysterious teleporter', 'Psyshock', '20', 'Dark', 'None', '1', 1, 4, 5, 1),
  (56, 90, 'Togepi', 'Happiness Pokémon', 'Metronome', '0', 'Steel', 'None', '1', 4, 4, 7, 1),
  (57, 120, 'Togekiss', 'Joyful flyer', 'Air Slash', '90', 'Electric', 'None', '2', 5, 4, 7, 3),
  (58, 70, 'Mareep', 'Woolly sheep', 'Thunder Wave', '20', 'Fighting', 'None', '1', 12, 2, 1, 1),
  (59, 100, 'Ampharos', 'Electric sheep', 'Thunder', '90', 'Fighting', 'Metal -30', '2', 13, 2, 1, 3),
  (60, 80, 'Houndour', 'Dark fire pup', 'Ember', '30', 'Water', 'None', '1', 11, 3, 2, 1),
  (61, 110, 'Houndoom', 'Fiery hound', 'Dark Flame', '90', 'Water', 'None', '2', 12, 3, 2, 3),
  (62, 130, 'Salamence', 'Dragon flyer', 'Dragon Claw', '140', 'Ice', 'None', '3', 98, 4, 8, 3
);

COMMIT;
