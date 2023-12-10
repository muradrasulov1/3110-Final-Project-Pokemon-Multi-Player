open OUnit2
open Pokemon
(*open Experimenting

  let test_string_of_tile _ = assert_equal "W" (string_of_tile(Wall));
  assert_equal "X" (string_of_tile(Grass)); assert_equal "."
  (string_of_tile(Path)); assert_equal "!" (string_of_tile(Lava)); assert_equal
  "+" (string_of_tile(FirstAid)); assert_equal "." (string_of_tile(Empty))

  ;;

  let test_prob_of _ = assert_equal 20 (prob_of Grass); assert_equal 40 (prob_of
  Path); assert_equal 20 (prob_of Lava); assert_equal 20 (prob_of FirstAid);
  assert_equal 0 (prob_of Wall); assert_equal 0 (prob_of Empty);

  ;;*)

let test_name _ =
  [
    ("charizard name" >:: fun _ -> assert_equal "Charizard" (name Charizard));
    ("beedrill name" >:: fun _ -> assert_equal "Squirtle" (name Squirtle));
    ("charizard name" >:: fun _ -> assert_equal "Beedrill" (name Beedrill));
    ("raticate name" >:: fun _ -> assert_equal "Raticate" (name Raticate));
    ("spearow name" >:: fun _ -> assert_equal "Spearow" (name Spearow));
    ("pikachu name" >:: fun _ -> assert_equal "Pikachu" (name Pikachu));
    ("nidoran move" >:: fun _ -> assert_equal "Nidoran" (name Nidoran));
    ("jigglypuff name" >:: fun _ -> assert_equal "Jigglypuff" (name Jigglypuff));
    ("golbat name" >:: fun _ -> assert_equal "Golbat" (name Golbat));
    ("parasect name" >:: fun _ -> assert_equal "Parasect" (name Parasect));
    ("diglett name" >:: fun _ -> assert_equal "Diglett" (name Diglett));
    ("meowth name" >:: fun _ -> assert_equal "Meowth" (name Meowth));
    ("poliwhirl name" >:: fun _ -> assert_equal "Poliwhirl" (name Poliwhirl));
    ("abra move" >:: fun _ -> assert_equal "Abra" (name Abra));
    ("geodude move" >:: fun _ -> assert_equal "Geodude" (name Geodude));
    ("mewtwo name" >:: fun _ -> assert_equal "Mewtwo" (name Mewtwo));
    ("haunter name" >:: fun _ -> assert_equal "Haunter" (name Haunter));
    ("eevee name" >:: fun _ -> assert_equal "Eevee" (name Eevee));
    ("pyroar name" >:: fun _ -> assert_equal "Pyroar" (name Pyroar));
    ("oshawott name" >:: fun _ -> assert_equal "Oshawott" (name Oshawott));
  ]

let test_pokemon_health_and_heal _ =
  let original_health_squirtle = get_health (squirtle ()) in
  let original_health_beedrill = get_health (beedrill ()) in
  let original_health_raticate = get_health (raticate ()) in
  let original_health_spearow = get_health (spearow ()) in
  let original_health_pikachu = get_health (pikachu ()) in
  let original_health_nidoran = get_health (nidoran ()) in
  let original_health_jigglypuff = get_health (jigglypuff ()) in
  let original_health_golbat = get_health (golbat ()) in

  [
    ( "original health-squirtle" >:: fun _ ->
      assert_equal original_health_squirtle (get_health (squirtle ())) );
    ( "updated health-squirtle" >:: fun _ ->
      assert_equal
        (original_health_squirtle + 50)
        (get_health (pokemon_heal (squirtle ()))) );
    ( "original health-beedrill" >:: fun _ ->
      assert_equal original_health_beedrill (get_health (beedrill ())) );
    ( "updated health-beedrill" >:: fun _ ->
      assert_equal
        (original_health_beedrill + 50)
        (get_health (pokemon_heal (beedrill ()))) );
    ( "original health-raticate" >:: fun _ ->
      assert_equal original_health_raticate (get_health (raticate ())) );
    ( "updated health-raticate" >:: fun _ ->
      assert_equal
        (original_health_raticate + 50)
        (get_health (pokemon_heal (raticate ()))) );
    ( "original health-spearow" >:: fun _ ->
      assert_equal original_health_spearow (get_health (spearow ())) );
    ( "updated health-spearow" >:: fun _ ->
      assert_equal
        (original_health_spearow + 50)
        (get_health (pokemon_heal (spearow ()))) );
    ( "original health-pikachu" >:: fun _ ->
      assert_equal original_health_pikachu (get_health (pikachu ())) );
    ( "updated health-pikachu" >:: fun _ ->
      assert_equal
        (original_health_pikachu + 50)
        (get_health (pokemon_heal (pikachu ()))) );
    ( "original health-nidoran" >:: fun _ ->
      assert_equal original_health_nidoran (get_health (nidoran ())) );
    ( "updated health-nidoran" >:: fun _ ->
      assert_equal
        (original_health_nidoran + 50)
        (get_health (pokemon_heal (nidoran ()))) );
    ( "original health-jigglypuff" >:: fun _ ->
      assert_equal original_health_jigglypuff (get_health (jigglypuff ())) );
    ( "updated health-jigglypuff" >:: fun _ ->
      assert_equal
        (original_health_jigglypuff + 50)
        (get_health (pokemon_heal (jigglypuff ()))) );
    ( "original health-golbat" >:: fun _ ->
      assert_equal original_health_golbat (get_health (golbat ())) );
    ( "updated health-golbat" >:: fun _ ->
      assert_equal
        (original_health_golbat + 50)
        (get_health (pokemon_heal (golbat ()))) );
  ]

(*let test_initialize_starter_pokemon _ = assert_equal "Pikachu"
  ((initialize_starter_pokemon "pikachu").pokemon_name); assert_equal "Oshawott"
  ((initialize_starter_pokemon "oshawott").pokemon_name); assert_equal
  "Charizard" ((initialize_starter_pokemon "charizard").pokemon_name);
  assert_equal "Pyroar" ((initialize_starter_pokemon "pyroar").pokemon_name);
  assert_equal "Eevee" ((initialize_starter_pokemon "eevee").pokemon_name);
  assert_equal "Haunter" ((initialize_starter_pokemon "haunter").pokemon_name);
  assert_equal "Mewtwo" ((initialize_starter_pokemon "mewtwo").pokemon_name);
  assert_equal "Geodude" ((initialize_starter_pokemon "geodude").pokemon_name);
  assert_equal "Abra" ((initialize_starter_pokemon "abra").pokemon_name);
  assert_equal "Poliwhirl" ((initialize_starter_pokemon
  "poliwhirl").pokemon_name); assert_equal "Meowth" ((initialize_starter_pokemon
  "meowth").pokemon_name); assert_equal "Diglett" ((initialize_starter_pokemon
  "diglett").pokemon_name); assert_equal "Parasect" ((initialize_starter_pokemon
  "parasect").pokemon_name); assert_equal "Golbat" ((initialize_starter_pokemon
  "golbat").pokemon_name); assert_equal "Jigglypuff"
  ((initialize_starter_pokemon "jigglypuff").pokemon_name); assert_equal
  "Nidoran" ((initialize_starter_pokemon "nidoran").pokemon_name); assert_equal
  "Spearow" ((initialize_starter_pokemon "spearow").pokemon_name); assert_equal
  "Raticate" ((initialize_starter_pokemon "raticate").pokemon_name);
  assert_equal "Beedrill" ((initialize_starter_pokemon
  "beedrill").pokemon_name); assert_equal "Squirtle"
  ((initialize_starter_pokemon "squirtle").pokemon_name); assert_raises (Failure
  "Invalid Pokemon choice") (fun () -> initialize_starter_pokemon
  "invalid_name");*)

let test_charizard_moves _ =
  let charizard = charizard () in
  let moves = charizard.move_list in
  (* Testing each move for Charizard *)
  [
    ( "string for Flamethrower" >:: fun _ ->
      assert_equal "Flamethrower" (List.nth moves 0).name );
    ("type of Flamethrower" >:: fun _ -> assert_equal Fire (List.nth moves 0).tp);
    ( "damage of Flamethrower" >:: fun _ ->
      assert_equal 90 (List.nth moves 0).basep );
    ( "string for Air Slash" >:: fun _ ->
      assert_equal "Air Slash" (List.nth moves 1).name );
    ("type of Air SLash" >:: fun _ -> assert_equal Flying (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 75 (List.nth moves 1).basep);
    ("" >:: fun _ -> assert_equal "Earthquake" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 100 (List.nth moves 2).basep);
    ("" >:: fun _ -> assert_equal "Slash" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 70 (List.nth moves 3).basep);
  ]

let test_squirtle_moves _ =
  let squirtle = squirtle () in
  let moves = squirtle.move_list in

  [
    ("" >:: fun _ -> assert_equal "Water Gun" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 0).basep);
    ("" >:: fun _ -> assert_equal "Bubble Beam" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 65 (List.nth moves 1).basep);
    ("" >:: fun _ -> assert_equal "Bite" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 2).basep);
    ("" >:: fun _ -> assert_equal "Rapid Spin" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 50 (List.nth moves 3).basep);
  ]

let test_beedrill_moves _ =
  let beedrill = beedrill () in
  let moves = beedrill.move_list in
  [
    ("" >:: fun _ -> assert_equal "Poison Jab" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Poison (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "Stabs the target with a poisonous stinger. May poison"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "X-Scissor" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Bug (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "Slashes the target with crossed scythes or claws"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Drill Run" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "Spins rapidly to drill into the target. High critical-hit ratio"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "U-turn" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Bug (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 70 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "User switches out after attacking" (List.nth moves 3).descr
    );
  ]

let test_raticate_moves _ =
  let raticate = raticate () in
  let moves = raticate.move_list in
  [
    ("" >:: fun _ -> assert_equal "Hyper Fang" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "Bites fiercely with huge fangs" (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Super Fang" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 1 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "Cuts the target's HP in half with sharp fangs"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Sucker Punch" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 70 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "Strikes first if the target is readying an attack"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Double-Edge" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 120 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "A reckless, life-risking tackle that also hurts the user"
        (List.nth moves 3).descr );
  ]

let test_spearow_moves _ =
  let spearow = spearow () in
  let moves = spearow.move_list in
  [
    ("" >:: fun _ -> assert_equal "Drill Peck" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Flying (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "A corkscrew attack with the beak acting like a drill"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Aerial Ace" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Flying (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "An extremely fast attack that can't be evaded"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Fury Attack" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 15 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "Jabs the target repeatedly with a horn or beak"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Pursuit" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Deals double damage if used on a opponent's switching out"
        (List.nth moves 3).descr );
  ]

let test_pikachu_moves _ =
  let pikachu = pikachu () in
  let moves = pikachu.move_list in
  [
    ("" >:: fun _ -> assert_equal "Tail Whip" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 30 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "Pikachu hits his enemy with a his tail"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Spark" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Electric (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 20 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "An electrically-charged Pikachu tackles his oppnent"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Electro Ball" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Electric (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 10 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "Pikachu throws an electric ball at opponent"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Thunder Shock" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Electric (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 30 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Pikachu summons a thunderstorm of lightning on his opponent"
        (List.nth moves 3).descr );
  ]

let test_nidoran_moves _ =
  let nidoran = nidoran () in
  let moves = nidoran.move_list in
  [
    ("" >:: fun _ -> assert_equal "Poison Sting" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Poison (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 15 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The user stabs the target with a poisonous stinger"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Horn Attack" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 65 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user stabs the target with a sharply pointed horn"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Double Kick" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Fighting (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 30 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "The user quickly kicks the target twice"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Peck" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Flying (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 35 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is jabbed with a sharply pointed beak or horn"
        (List.nth moves 3).descr );
  ]

let test_jigglypuff_moves _ =
  let jigglypuff = jigglypuff () in
  let moves = jigglypuff.move_list in
  [
    ("" >:: fun _ -> assert_equal "Sing" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "A soothing lullaby is sung to put opponent to sleep"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Body Slam" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 85 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user drops onto the target with its full body weight"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Hyper Voice" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "The user lets loose a horribly echoing shout"
        (List.nth moves 2).descr );
  ]

let test_golbat_moves _ =
  let golbat = Pokemon.golbat () in
  let moves = golbat.move_list in

  [
    ("" >:: fun _ -> assert_equal "Wing Attack" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Flying (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is struck with large, imposing wings"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Bite" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is bitten with viciously sharp fangs"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Poison Fang" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Poison (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 50 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "The user bites the target with toxic fangs"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Air Cutter" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Flying (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user launches razor-like wind to slash the opposing Pokemon"
        (List.nth moves 3).descr );
  ]

let test_parasect_moves _ =
  let parasect = Pokemon.parasect () in
  let moves = parasect.move_list in

  [
    ("" >:: fun _ -> assert_equal "Spore" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal (Grass : poke_tp) (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The user scatters bursts of spores that induce sleep"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "X-Scissor" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Bug (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user slashes at opponent" (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Giga Drain" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal (Grass : poke_tp) (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 75 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "A nutrient-draining attack" (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Brick Break" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Fighting (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 75 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "The user attacks with a swift chop" (List.nth moves 3).descr
    );
  ]

let test_diglett_moves _ =
  let diglett = Pokemon.diglett () in
  let moves = diglett.move_list in

  [
    ("" >:: fun _ -> assert_equal "Dig" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user burrows into the ground, then attacks on\n   the next turn"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Earthquake" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 100 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "A powerful quake affecting all Pokémon around the user"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Sucker Punch" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 70 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "Strikes first if the target is readying an attack"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Mud-Slap" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 20 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Hurls mud in opponent's face" (List.nth moves 3).descr );
  ]

let test_meowth_moves _ =
  let meowth = Pokemon.meowth () in
  let moves = meowth.move_list in

  [
    ("" >:: fun _ -> assert_equal "Pay Day" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "Numerous coins are hurled at the target to inflict damage"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Bite" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "Bites opponent with viciously sharp fangs"
        (List.nth moves 1).descr );
    ( "string for Fury Swipes" >:: fun _ ->
      assert_equal "Fury Swipes" (List.nth moves 2).name );
    ( "type of Fury Swipes" >:: fun _ ->
      assert_equal Normal (List.nth moves 2).tp );
    ( "damage of Fury Swipes" >:: fun _ ->
      assert_equal 18 (List.nth moves 2).basep );
    ( "descrp of Fury Swipes" >:: fun _ ->
      assert_equal
        "The target is raked with sharp claws or scythes\n\
        \    quickly two to five times in a row." (List.nth moves 2).descr );
    ( "string for Slash" >:: fun _ ->
      assert_equal "Slash" (List.nth moves 3).name );
    ("type of Slash" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("damage of Slash" >:: fun _ -> assert_equal 70 (List.nth moves 3).basep);
    ( "descrp of Slash" >:: fun _ ->
      assert_equal "The target is attacked with a slash of claws or blades"
        (List.nth moves 3).descr );
  ]

let test_poliwhirl_moves _ =
  let poliwhirl = Pokemon.poliwhirl () in
  let moves = poliwhirl.move_list in

  [
    ("" >:: fun _ -> assert_equal "Bubble Beam" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 65 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "A spray of bubbles is forcefully ejected at the target"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Body Slam" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 85 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user drops onto the target with its full body weight"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Hypnosis" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Psychic (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user employs hypnotic suggestion to make the \n\
        \  target fall into a deep sleep." (List.nth moves 2).descr );
    ( "string for Water Gun" >:: fun _ ->
      assert_equal "Water Gun" (List.nth moves 3).name );
    ("type of Water Gun" >:: fun _ -> assert_equal Water (List.nth moves 3).tp);
    ("damage of Water Gun" >:: fun _ -> assert_equal 40 (List.nth moves 3).basep);
    ( "descrp of Water Gun" >:: fun _ ->
      assert_equal "The user shoots a stream of water at the target"
        (List.nth moves 3).descr );
  ]

let test_abra_moves _ =
  let abra = Pokemon.abra () in
  let moves = abra.move_list in

  [
    ("" >:: fun _ -> assert_equal "Teleport" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Psychic (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "Use it to flee from any wild Pokémon"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Psychic" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Psychic (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is hit by a strong telekinetic force"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Shadow Ball" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Ghost (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "The user hurls a shadowy blob at the target"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Energy Ball" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal (Grass : poke_tp) (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "The user draws power from nature and fires it at the target"
        (List.nth moves 3).descr );
  ]

let test_geodude_moves _ =
  let geodude = Pokemon.geodude () in
  let moves = geodude.move_list in

  [
    ("" >:: fun _ -> assert_equal "Magnitude" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 70 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "A ground-shaking attack with variable power"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Earthquake" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 100 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "A powerful quake affecting all Pokemon around the user"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Mudslap" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Ground (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 20 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "Hurls mud into opponent's face" (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Take Down" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Charges and slams into opponent" (List.nth moves 3).descr );
  ]

let test_mewtwo_moves _ =
  let mewtwo = Pokemon.mewtwo () in
  let moves = mewtwo.move_list in

  [
    ("" >:: fun _ -> assert_equal "Psychic" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Psychic (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "A strong telekinetic attack. " (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Aura Sphere" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Fighting (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal
        "A blast of aura power fired from the hands. It never misses."
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Shadow Ball" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Ghost (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal "A shadowy blob attack" (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Recover" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Restores the user's HP by half of its max HP"
        (List.nth moves 3).descr );
  ]

let test_haunter_moves _ =
  let haunter = Pokemon.haunter () in
  let moves = haunter.move_list in

  [
    ("" >:: fun _ -> assert_equal "Shadow Ball" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Ghost (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 80 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The user hurls a shadowy blob at the target"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Sludge Bomb" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Poison (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "Unsanitary sludge is hurled at the target"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Hypnosis" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Psychic (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user employs hypnotic suggestion to make \n\
        \  the target fall into a deep sleep" (List.nth moves 2).descr );
    ( "string for Dream Eater" >:: fun _ ->
      assert_equal "Dream Eater" (List.nth moves 3).name );
    ( "type of Dream Eater" >:: fun _ ->
      assert_equal Psychic (List.nth moves 3).tp );
    ( "damage of Dream Eater" >:: fun _ ->
      assert_equal 100 (List.nth moves 3).basep );
    ( "descrp of Dream Eater" >:: fun _ ->
      assert_equal
        "Absorbs the dreams of a sleeping target. \n\
        \  The user's HP is restored by half the damage taken by the target"
        (List.nth moves 3).descr );
  ]

let test_eevee_moves _ =
  let eevee = Pokemon.eevee () in
  let moves = eevee.move_list in

  [
    ("" >:: fun _ -> assert_equal "Quick Attack" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user lunges at the target at a speed that makes it almost \
         invisible"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Bite" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Dark (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is bitten with viciously sharp fangs"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Swift" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "Star-shaped rays are shot at the target. This attack never misses."
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Double-Edge" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 120 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "A reckless, life-risking tackle that also hurts the user"
        (List.nth moves 3).descr );
  ]

let test_pyroar_moves _ =
  let pyroar = Pokemon.pyroar () in
  let moves = pyroar.move_list in

  [
    ("" >:: fun _ -> assert_equal "Flamethrower" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Fire (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The target is scorched with an intense blast of fire"
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Hyper Voice" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 90 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user lets loose a horribly echoing shout"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Fire Blast" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Fire (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 110 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The target is attacked with an intense blast of all-consuming fire"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Noble Roar" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Normal (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 0 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "Lets out a noble roar" (List.nth moves 3).descr );
  ]

let test_oshawott_moves _ =
  let oshawott = Pokemon.oshawott () in
  let moves = oshawott.move_list in

  [
    ("" >:: fun _ -> assert_equal "Water Gun" (List.nth moves 0).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 0).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 0).basep);
    ( "" >:: fun _ ->
      assert_equal "The user squirts water to attack the target."
        (List.nth moves 0).descr );
    ("" >:: fun _ -> assert_equal "Razor Shell" (List.nth moves 1).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 1).tp);
    ("" >:: fun _ -> assert_equal 75 (List.nth moves 1).basep);
    ( "" >:: fun _ ->
      assert_equal "The user cuts its target with sharp shells"
        (List.nth moves 1).descr );
    ("" >:: fun _ -> assert_equal "Aqua Jet" (List.nth moves 2).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 2).tp);
    ("" >:: fun _ -> assert_equal 40 (List.nth moves 2).basep);
    ( "" >:: fun _ ->
      assert_equal
        "The user lunges at the target at a speed that makes it almost \
         invisible"
        (List.nth moves 2).descr );
    ("" >:: fun _ -> assert_equal "Water Pulse" (List.nth moves 3).name);
    ("" >:: fun _ -> assert_equal Water (List.nth moves 3).tp);
    ("" >:: fun _ -> assert_equal 60 (List.nth moves 3).basep);
    ( "" >:: fun _ ->
      assert_equal "The user attacks the target with a pulsing blast of water"
        (List.nth moves 3).descr );
  ]

let suite =
  "test_suite_for_pokemon_move_validation"
  >::: List.flatten
         [
           test_charizard_moves ();
           test_squirtle_moves ();
           test_beedrill_moves ();
           test_raticate_moves ();
           test_spearow_moves ();
           test_pikachu_moves ();
           test_nidoran_moves ();
           test_jigglypuff_moves ();
           test_parasect_moves ();
           test_diglett_moves ();
           test_meowth_moves ();
           test_poliwhirl_moves ();
           test_abra_moves ();
           test_geodude_moves ();
           test_mewtwo_moves ();
           test_haunter_moves ();
           test_eevee_moves ();
           test_pyroar_moves ();
           test_oshawott_moves ();
           test_golbat_moves ();
           test_name ();
           test_pokemon_health_and_heal ();
         ]

let _ = run_test_tt_main suite
