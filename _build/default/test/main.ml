open OUnit2
open Pokemon
open Experimenting


let test_string_of_tile _ = 
  assert_equal "W" (string_of_tile(Wall));
  assert_equal "X" (string_of_tile(Grass));
  assert_equal "." (string_of_tile(Path));
  assert_equal "!" (string_of_tile(Lava));
  assert_equal "+" (string_of_tile(FirstAid));
  assert_equal "." (string_of_tile(Empty))

;;

let test_prob_of _ = 
  assert_equal 20 (prob_of Grass);
  assert_equal 40 (prob_of Path);
  assert_equal 20 (prob_of Lava);
  assert_equal 20 (prob_of FirstAid);
  assert_equal 0 (prob_of Wall);
  assert_equal 0 (prob_of Empty);

;;

let test_name _ = 
  assert_equal "Charizard" (name Charizard);
  assert_equal "Squirtle" (name Squirtle);
  assert_equal "Beedrill" (name Beedrill);
  assert_equal "Raticate" (name Raticate);
  assert_equal "Spearow" (name Spearow);
  assert_equal "Pikachu" (name Pikachu);
  assert_equal "Nidoran" (name Nidoran);
  assert_equal "Jigglypuff" (name Jigglypuff);
  assert_equal "Golbat" (name Golbat);
  assert_equal "Parasect" (name Parasect);
  assert_equal "Diglett" (name Diglett);
  assert_equal "Meowth" (name Meowth);
  assert_equal "Poliwhirl" (name Poliwhirl);
  assert_equal "Abra" (name Abra);
  assert_equal "Geodude" (name Geodude);
  assert_equal "Mewtwo" (name Mewtwo);
  assert_equal "Haunter" (name Haunter);
  assert_equal "Eevee" (name Eevee);
  assert_equal "Pyroar" (name Pyroar);
  assert_equal "Oshawott" (name Oshawott);

;;
let test_pokemon_health_and_heal _ =
  let original_health_squirtle = get_health (squirtle ()) in
  assert_equal original_health_squirtle (get_health (squirtle ()));
  assert_equal (original_health_squirtle + 50) (get_health (pokemon_heal (squirtle ())));

  let original_health_beedrill = get_health (beedrill ()) in
  assert_equal original_health_beedrill (get_health (beedrill ()));
  assert_equal (original_health_beedrill + 50) (get_health (pokemon_heal (beedrill ())));

  let original_health_raticate = get_health (raticate ()) in
  assert_equal original_health_raticate (get_health (raticate ()));
  assert_equal (original_health_raticate + 50) (get_health (pokemon_heal (raticate ())));

  let original_health_spearow = get_health (spearow ()) in
  assert_equal original_health_spearow (get_health (spearow ()));
  assert_equal (original_health_spearow + 50) (get_health (pokemon_heal (spearow ())));

  let original_health_pikachu = get_health (pikachu ()) in
  assert_equal original_health_pikachu (get_health (pikachu ()));
  assert_equal (original_health_pikachu + 50) (get_health (pokemon_heal (pikachu ())));

  let original_health_nidoran = get_health (nidoran ()) in
  assert_equal original_health_nidoran (get_health (nidoran ()));
  assert_equal (original_health_nidoran + 50) (get_health (pokemon_heal (nidoran ())));

  let original_health_jigglypuff = get_health (jigglypuff ()) in
  assert_equal original_health_jigglypuff (get_health (jigglypuff ()));
  assert_equal (original_health_jigglypuff + 50) (get_health (pokemon_heal (jigglypuff ())));

  let original_health_golbat = get_health (golbat ()) in
  assert_equal original_health_golbat (get_health (golbat ()));
  assert_equal (original_health_golbat + 50) (get_health (pokemon_heal (golbat ())));

;;


let test_initialize_starter_pokemon _ =
  assert_equal "Pikachu" ((initialize_starter_pokemon "pikachu").pokemon_name);
  assert_equal "Oshawott" ((initialize_starter_pokemon "oshawott").pokemon_name);
  assert_equal "Charizard" ((initialize_starter_pokemon "charizard").pokemon_name);
  assert_equal "Pyroar" ((initialize_starter_pokemon "pyroar").pokemon_name);
  assert_equal "Eevee" ((initialize_starter_pokemon "eevee").pokemon_name);
  assert_equal "Haunter" ((initialize_starter_pokemon "haunter").pokemon_name);
  assert_equal "Mewtwo" ((initialize_starter_pokemon "mewtwo").pokemon_name);
  assert_equal "Geodude" ((initialize_starter_pokemon "geodude").pokemon_name);
  assert_equal "Abra" ((initialize_starter_pokemon "abra").pokemon_name);
  assert_equal "Poliwhirl" ((initialize_starter_pokemon "poliwhirl").pokemon_name);
  assert_equal "Meowth" ((initialize_starter_pokemon "meowth").pokemon_name);
  assert_equal "Diglett" ((initialize_starter_pokemon "diglett").pokemon_name);
  assert_equal "Parasect" ((initialize_starter_pokemon "parasect").pokemon_name);
  assert_equal "Golbat" ((initialize_starter_pokemon "golbat").pokemon_name);
  assert_equal "Jigglypuff" ((initialize_starter_pokemon "jigglypuff").pokemon_name);
  assert_equal "Nidoran" ((initialize_starter_pokemon "nidoran").pokemon_name);
  assert_equal "Spearow" ((initialize_starter_pokemon "spearow").pokemon_name);
  assert_equal "Raticate" ((initialize_starter_pokemon "raticate").pokemon_name);
  assert_equal "Beedrill" ((initialize_starter_pokemon "beedrill").pokemon_name);
  assert_equal "Squirtle" ((initialize_starter_pokemon "squirtle").pokemon_name);
  assert_raises (Failure "Invalid Pokemon choice") (fun () -> initialize_starter_pokemon "invalid_name");

;;



let test_charizard_moves _ =
 let charizard = charizard () in
 let moves = charizard.move_list in
 (* Testing each move for Charizard *)
 assert_equal "Flamethrower" (List.nth moves 0).name;
 assert_equal Fire (List.nth moves 0).tp;
 assert_equal 90 (List.nth moves 0).basep;
  assert_equal "Air Slash" (List.nth moves 1).name;
 assert_equal Flying (List.nth moves 1).tp;
 assert_equal 75 (List.nth moves 1).basep;
  assert_equal "Earthquake" (List.nth moves 2).name;
 assert_equal Ground (List.nth moves 2).tp;
 assert_equal 100 (List.nth moves 2).basep;
  assert_equal "Slash" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 70 (List.nth moves 3).basep;
;;


let test_squirtle_moves _ =
 let squirtle = squirtle () in
 let moves = squirtle.move_list in


 assert_equal "Water Gun" (List.nth moves 0).name;
 assert_equal Water (List.nth moves 0).tp;
 assert_equal 40 (List.nth moves 0).basep;
  assert_equal "Bubble Beam" (List.nth moves 1).name;
 assert_equal Water (List.nth moves 1).tp;
 assert_equal 65 (List.nth moves 1).basep;
  assert_equal "Bite" (List.nth moves 2).name;
 assert_equal Dark (List.nth moves 2).tp;
 assert_equal 60 (List.nth moves 2).basep;
  assert_equal "Rapid Spin" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 50 (List.nth moves 3).basep;
;;


let test_beedrill_moves _ =
 let beedrill = beedrill () in
 let moves = beedrill.move_list in
  assert_equal "Poison Jab" (List.nth moves 0).name;
 assert_equal Poison (List.nth moves 0).tp;
 assert_equal 80 (List.nth moves 0).basep;
 assert_equal "Stabs the target with a poisonous stinger. May poison" (List.nth moves 0).descr;


 assert_equal "X-Scissor" (List.nth moves 1).name;
 assert_equal Bug (List.nth moves 1).tp;
 assert_equal 80 (List.nth moves 1).basep;
 assert_equal "Slashes the target with crossed scythes or claws" (List.nth moves 1).descr;


 assert_equal "Drill Run" (List.nth moves 2).name;
 assert_equal Ground (List.nth moves 2).tp;
 assert_equal 80 (List.nth moves 2).basep;
 assert_equal "Spins rapidly to drill into the target. High critical-hit ratio" (List.nth moves 2).descr;


 assert_equal "U-turn" (List.nth moves 3).name;
 assert_equal Bug (List.nth moves 3).tp;
 assert_equal 70 (List.nth moves 3).basep;
 assert_equal "User switches out after attacking" (List.nth moves 3).descr;
;;


let test_raticate_moves _ =
 let raticate = raticate () in
 let moves = raticate.move_list in
  assert_equal "Hyper Fang" (List.nth moves 0).name;
 assert_equal Normal (List.nth moves 0).tp;
 assert_equal 80 (List.nth moves 0).basep;
 assert_equal "Bites fiercely with huge fangs" (List.nth moves 0).descr;


 assert_equal "Super Fang" (List.nth moves 1).name;
 assert_equal Normal (List.nth moves 1).tp;
 assert_equal 1 (List.nth moves 1).basep;
 assert_equal "Cuts the target's HP in half with sharp fangs" (List.nth moves 1).descr;


 assert_equal "Sucker Punch" (List.nth moves 2).name;
 assert_equal Dark (List.nth moves 2).tp;
 assert_equal 70 (List.nth moves 2).basep;
 assert_equal "Strikes first if the target is readying an attack" (List.nth moves 2).descr;


 assert_equal "Double-Edge" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 120 (List.nth moves 3).basep;
 assert_equal "A reckless, life-risking tackle that also hurts the user" (List.nth moves 3).descr;
;;


let test_spearow_moves _ =
 let spearow = spearow () in
 let moves = spearow.move_list in
  assert_equal "Drill Peck" (List.nth moves 0).name;
 assert_equal Flying (List.nth moves 0).tp;
 assert_equal 80 (List.nth moves 0).basep;
 assert_equal "A corkscrew attack with the beak acting like a drill" (List.nth moves 0).descr;


 assert_equal "Aerial Ace" (List.nth moves 1).name;
 assert_equal Flying (List.nth moves 1).tp;
 assert_equal 60 (List.nth moves 1).basep;
 assert_equal "An extremely fast attack that can't be evaded" (List.nth moves 1).descr;


 assert_equal "Fury Attack" (List.nth moves 2).name;
 assert_equal Normal (List.nth moves 2).tp;
 assert_equal 15 (List.nth moves 2).basep;
 assert_equal "Jabs the target repeatedly with a horn or beak" (List.nth moves 2).descr;


 assert_equal "Pursuit" (List.nth moves 3).name;
 assert_equal Dark (List.nth moves 3).tp;
 assert_equal 40 (List.nth moves 3).basep;
 assert_equal "Deals double damage if used on a opponent's switching out" (List.nth moves 3).descr;
 ;;


 let test_pikachu_moves _ =
   let pikachu = pikachu () in
   let moves = pikachu.move_list in
    assert_equal "Tail Whip" (List.nth moves 0).name;
   assert_equal Normal (List.nth moves 0).tp;
   assert_equal 30 (List.nth moves 0).basep;
   assert_equal "Pikachu hits his enemy with a his tail" (List.nth moves 0).descr;
    assert_equal "Spark" (List.nth moves 1).name;
   assert_equal Electric (List.nth moves 1).tp;
   assert_equal 20 (List.nth moves 1).basep;
   assert_equal "An electrically-charged Pikachu tackles his oppnent" (List.nth moves 1).descr;
    assert_equal "Electro Ball" (List.nth moves 2).name;
   assert_equal Electric (List.nth moves 2).tp;
   assert_equal 10 (List.nth moves 2).basep;
   assert_equal "Pikachu throws an electric ball at opponent" (List.nth moves 2).descr;
    assert_equal "Thunder Shock" (List.nth moves 3).name;
   assert_equal Electric (List.nth moves 3).tp;
   assert_equal 30 (List.nth moves 3).basep;
   assert_equal "Pikachu summons a thunderstorm of lightning on his opponent" (List.nth moves 3).descr;
 ;; 


 let test_nidoran_moves _ =
   let nidoran = nidoran () in
   let moves = nidoran.move_list in
    assert_equal "Poison Sting" (List.nth moves 0).name;
   assert_equal Poison (List.nth moves 0).tp;
   assert_equal 15 (List.nth moves 0).basep;
   assert_equal "The user stabs the target with a poisonous stinger" (List.nth moves 0).descr;
    assert_equal "Horn Attack" (List.nth moves 1).name;
   assert_equal Normal (List.nth moves 1).tp;
   assert_equal 65 (List.nth moves 1).basep;
   assert_equal "The user stabs the target with a sharply pointed horn" (List.nth moves 1).descr;
    assert_equal "Double Kick" (List.nth moves 2).name;
   assert_equal Fighting (List.nth moves 2).tp;
   assert_equal 30 (List.nth moves 2).basep;
   assert_equal "The user quickly kicks the target twice" (List.nth moves 2).descr;
    assert_equal "Peck" (List.nth moves 3).name;
   assert_equal Flying (List.nth moves 3).tp;
   assert_equal 35 (List.nth moves 3).basep;
   assert_equal "The target is jabbed with a sharply pointed beak or horn" (List.nth moves 3).descr;
 ;;
  let test_jigglypuff_moves _ =
   let jigglypuff = jigglypuff () in
   let moves = jigglypuff.move_list in
    assert_equal "Sing" (List.nth moves 0).name;
   assert_equal Normal (List.nth moves 0).tp;
   assert_equal 0 (List.nth moves 0).basep;
   assert_equal "A soothing lullaby is sung to put opponent to sleep" (List.nth moves 0).descr;
    assert_equal "Body Slam" (List.nth moves 1).name;
   assert_equal Normal (List.nth moves 1).tp;
   assert_equal 85 (List.nth moves 1).basep;
   assert_equal "The user drops onto the target with its full body weight" (List.nth moves 1).descr;
    assert_equal "Hyper Voice" (List.nth moves 2).name;
   assert_equal Normal (List.nth moves 2).tp;
   assert_equal 90 (List.nth moves 2).basep;
   assert_equal "The user lets loose a horribly echoing shout" (List.nth moves 2).descr;
 ;; 
  let test_golbat_moves _ =
   let golbat = Pokemon.golbat () in
   let moves = golbat.move_list in


   assert_equal "Wing Attack" (List.nth moves 0).name;
   assert_equal Flying (List.nth moves 0).tp;
   assert_equal 60 (List.nth moves 0).basep;
   assert_equal "The target is struck with large, imposing wings" (List.nth moves 0).descr;


   assert_equal "Bite" (List.nth moves 1).name;
   assert_equal Dark (List.nth moves 1).tp;
   assert_equal 60 (List.nth moves 1).basep;
   assert_equal "The target is bitten with viciously sharp fangs" (List.nth moves 1).descr;


   assert_equal "Poison Fang" (List.nth moves 2).name;
   assert_equal Poison (List.nth moves 2).tp;
   assert_equal 50 (List.nth moves 2).basep;
   assert_equal "The user bites the target with toxic fangs" (List.nth moves 2).descr;


   assert_equal "Air Cutter" (List.nth moves 3).name;
   assert_equal Flying (List.nth moves 3).tp;
   assert_equal 60 (List.nth moves 3).basep;
   assert_equal "The user launches razor-like wind to slash the opposing Pokemon" (List.nth moves 3).descr;
 ;;


 let test_parasect_moves _ =
   let parasect = Pokemon.parasect () in
   let moves = parasect.move_list in


   assert_equal "Spore" (List.nth moves 0).name;
   assert_equal (Grass: poke_tp) (List.nth moves 0).tp;
   assert_equal 0 (List.nth moves 0).basep;
   assert_equal "The user scatters bursts of spores that induce sleep" (List.nth moves 0).descr;


   assert_equal "X-Scissor" (List.nth moves 1).name;
   assert_equal Bug (List.nth moves 1).tp;
   assert_equal 80 (List.nth moves 1).basep;
   assert_equal "The user slashes at opponent" (List.nth moves 1).descr;


   assert_equal "Giga Drain" (List.nth moves 2).name;
   assert_equal (Grass: poke_tp)  (List.nth moves 2).tp;
   assert_equal 75 (List.nth moves 2).basep;
   assert_equal "A nutrient-draining attack" (List.nth moves 2).descr;


   assert_equal "Brick Break" (List.nth moves 3).name;
   assert_equal Fighting (List.nth moves 3).tp;
   assert_equal 75 (List.nth moves 3).basep;
   assert_equal "The user attacks with a swift chop" (List.nth moves 3).descr;
 ;;


 let test_diglett_moves _ =
   let diglett = Pokemon.diglett () in
   let moves = diglett.move_list in


   assert_equal "Dig" (List.nth moves 0).name;
   assert_equal Ground (List.nth moves 0).tp;
   assert_equal 80 (List.nth moves 0).basep;
   assert_equal "The user burrows into the ground, then attacks on\n   the next turn" (List.nth moves 0).descr;


   assert_equal "Earthquake" (List.nth moves 1).name;
   assert_equal Ground (List.nth moves 1).tp;
   assert_equal 100 (List.nth moves 1).basep;
   assert_equal "A powerful quake affecting all Pokémon around the user" (List.nth moves 1).descr;


   assert_equal "Sucker Punch" (List.nth moves 2).name;
   assert_equal Dark (List.nth moves 2).tp;
   assert_equal 70 (List.nth moves 2).basep;
   assert_equal "Strikes first if the target is readying an attack" (List.nth moves 2).descr;


   assert_equal "Mud-Slap" (List.nth moves 3).name;
   assert_equal Ground (List.nth moves 3).tp;
   assert_equal 20 (List.nth moves 3).basep;
   assert_equal "Hurls mud in opponent's face" (List.nth moves 3).descr;
;;


let test_meowth_moves _ =
 let meowth = Pokemon.meowth () in
 let moves = meowth.move_list in


 assert_equal "Pay Day" (List.nth moves 0).name;
 assert_equal Normal (List.nth moves 0).tp;
 assert_equal 40 (List.nth moves 0).basep;
 assert_equal "Numerous coins are hurled at the target to inflict damage" (List.nth moves 0).descr;


 assert_equal "Bite" (List.nth moves 1).name;
 assert_equal Dark (List.nth moves 1).tp;
 assert_equal 60 (List.nth moves 1).basep;
 assert_equal "Bites opponent with viciously sharp fangs" (List.nth moves 1).descr;


 assert_equal "Fury Swipes" (List.nth moves 2).name;
 assert_equal Normal (List.nth moves 2).tp;
 assert_equal 18 (List.nth moves 2).basep;
 assert_equal "The target is raked with sharp claws or scythes\n\
 \    quickly two to five times in a row." (List.nth moves 2).descr;


 assert_equal "Slash" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 70 (List.nth moves 3).basep;
 assert_equal "The target is attacked with a slash of claws or blades" (List.nth moves 3).descr;
;;




let test_poliwhirl_moves _ =
 let poliwhirl = Pokemon.poliwhirl () in
 let moves = poliwhirl.move_list in


 assert_equal "Bubble Beam" (List.nth moves 0).name;
 assert_equal Water (List.nth moves 0).tp;
 assert_equal 65 (List.nth moves 0).basep;
 assert_equal "A spray of bubbles is forcefully ejected at the target" (List.nth moves 0).descr;


 assert_equal "Body Slam" (List.nth moves 1).name;
 assert_equal Normal (List.nth moves 1).tp;
 assert_equal 85 (List.nth moves 1).basep;
 assert_equal "The user drops onto the target with its full body weight" (List.nth moves 1).descr;


 assert_equal "Hypnosis" (List.nth moves 2).name;
 assert_equal Psychic (List.nth moves 2).tp;
 assert_equal 0 (List.nth moves 2).basep;
 assert_equal  "The user employs hypnotic suggestion to make the \n\
 \  target fall into a deep sleep." (List.nth moves 2).descr;


 assert_equal "Water Gun" (List.nth moves 3).name;
 assert_equal Water (List.nth moves 3).tp;
 assert_equal 40 (List.nth moves 3).basep;
 assert_equal "The user shoots a stream of water at the target" (List.nth moves 3).descr;
;;
let test_abra_moves _ =
 let abra = Pokemon.abra () in
 let moves = abra.move_list in


 assert_equal "Teleport" (List.nth moves 0).name;
 assert_equal Psychic (List.nth moves 0).tp;
 assert_equal 0 (List.nth moves 0).basep;
 assert_equal "Use it to flee from any wild Pokémon" (List.nth moves 0).descr;


 assert_equal "Psychic" (List.nth moves 1).name;
 assert_equal Psychic (List.nth moves 1).tp;
 assert_equal 90 (List.nth moves 1).basep;
 assert_equal "The target is hit by a strong telekinetic force" (List.nth moves 1).descr;


 assert_equal "Shadow Ball" (List.nth moves 2).name;
 assert_equal Ghost (List.nth moves 2).tp;
 assert_equal 80 (List.nth moves 2).basep;
 assert_equal "The user hurls a shadowy blob at the target" (List.nth moves 2).descr;


 assert_equal "Energy Ball" (List.nth moves 3).name;
 assert_equal (Grass: poke_tp) (List.nth moves 3).tp;
 assert_equal 90 (List.nth moves 3).basep;
 assert_equal "The user draws power from nature and fires it at the target" (List.nth moves 3).descr;
;;
let test_geodude_moves _ =
 let geodude = Pokemon.geodude () in
 let moves = geodude.move_list in


 assert_equal "Magnitude" (List.nth moves 0).name;
 assert_equal Ground (List.nth moves 0).tp;
 assert_equal 70 (List.nth moves 0).basep;
 assert_equal "A ground-shaking attack with variable power" (List.nth moves 0).descr;


 assert_equal "Earthquake" (List.nth moves 1).name;
 assert_equal Ground (List.nth moves 1).tp;
 assert_equal 100 (List.nth moves 1).basep;
 assert_equal "A powerful quake affecting all Pokemon around the user" (List.nth moves 1).descr;


 assert_equal "Mudslap" (List.nth moves 2).name;
 assert_equal Ground (List.nth moves 2).tp;
 assert_equal 20 (List.nth moves 2).basep;
 assert_equal "Hurls mud into opponent's face" (List.nth moves 2).descr;


 assert_equal "Take Down" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 90 (List.nth moves 3).basep;
 assert_equal "Charges and slams into opponent" (List.nth moves 3).descr;
;;
let test_mewtwo_moves _ =
 let mewtwo = Pokemon.mewtwo () in
 let moves = mewtwo.move_list in


 assert_equal "Psychic" (List.nth moves 0).name;
 assert_equal Psychic (List.nth moves 0).tp;
 assert_equal 90 (List.nth moves 0).basep;
 assert_equal "A strong telekinetic attack. " (List.nth moves 0).descr;


 assert_equal "Aura Sphere" (List.nth moves 1).name;
 assert_equal Fighting (List.nth moves 1).tp;
 assert_equal 80 (List.nth moves 1).basep;
 assert_equal "A blast of aura power fired from the hands. It never misses." (List.nth moves 1).descr;


 assert_equal "Shadow Ball" (List.nth moves 2).name;
 assert_equal Ghost (List.nth moves 2).tp;
 assert_equal 80 (List.nth moves 2).basep;
 assert_equal "A shadowy blob attack" (List.nth moves 2).descr;


 assert_equal "Recover" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 0 (List.nth moves 3).basep;
 assert_equal "Restores the user's HP by half of its max HP" (List.nth moves 3).descr;
;;


let test_haunter_moves _ =
 let haunter = Pokemon.haunter () in
 let moves = haunter.move_list in


 assert_equal "Shadow Ball" (List.nth moves 0).name;
 assert_equal Ghost (List.nth moves 0).tp;
 assert_equal 80 (List.nth moves 0).basep;
 assert_equal "The user hurls a shadowy blob at the target" (List.nth moves 0).descr;


 assert_equal "Sludge Bomb" (List.nth moves 1).name;
 assert_equal Poison (List.nth moves 1).tp;
 assert_equal 90 (List.nth moves 1).basep;
 assert_equal "Unsanitary sludge is hurled at the target" (List.nth moves 1).descr;


 assert_equal "Hypnosis" (List.nth moves 2).name;
 assert_equal Psychic (List.nth moves 2).tp;
 assert_equal 0 (List.nth moves 2).basep;
 assert_equal "The user employs hypnotic suggestion to make the \n\
 \  target fall into a deep sleep." (List.nth moves 2).descr;


 assert_equal "Dream Eater" (List.nth moves 3).name;
 assert_equal Psychic (List.nth moves 3).tp;
 assert_equal 100 (List.nth moves 3).basep;
 assert_equal "Absorbs the dreams of a sleeping target. The user's HP is restored by half the damage taken by the target" (List.nth moves 3).descr;
;;


let test_eevee_moves _ =
 let eevee = Pokemon.eevee () in
 let moves = eevee.move_list in


 assert_equal "Quick Attack" (List.nth moves 0).name;
 assert_equal Normal (List.nth moves 0).tp;
 assert_equal 40 (List.nth moves 0).basep;
 assert_equal "The user lunges at the target at a speed that makes it almost invisible" (List.nth moves 0).descr;


 assert_equal "Bite" (List.nth moves 1).name;
 assert_equal Dark (List.nth moves 1).tp;
 assert_equal 60 (List.nth moves 1).basep;
 assert_equal "The target is bitten with viciously sharp fangs" (List.nth moves 1).descr;


 assert_equal "Swift" (List.nth moves 2).name;
 assert_equal Normal (List.nth moves 2).tp;
 assert_equal 60 (List.nth moves 2).basep;
 assert_equal "Star-shaped rays are shot at the target. This attack never misses." (List.nth moves 2).descr;


 assert_equal "Double-Edge" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 120 (List.nth moves 3).basep;
 assert_equal "A reckless, life-risking tackle that also hurts the user" (List.nth moves 3).descr;
;;
let test_pyroar_moves _ =
 let pyroar = Pokemon.pyroar () in
 let moves = pyroar.move_list in


 assert_equal "Flamethrower" (List.nth moves 0).name;
 assert_equal Fire (List.nth moves 0).tp;
 assert_equal 90 (List.nth moves 0).basep;
 assert_equal "The target is scorched with an intense blast of fire" (List.nth moves 0).descr;


 assert_equal "Hyper Voice" (List.nth moves 1).name;
 assert_equal Normal (List.nth moves 1).tp;
 assert_equal 90 (List.nth moves 1).basep;
 assert_equal "The user lets loose a horribly echoing shout" (List.nth moves 1).descr;


 assert_equal "Fire Blast" (List.nth moves 2).name;
 assert_equal Fire (List.nth moves 2).tp;
 assert_equal 110 (List.nth moves 2).basep;
 assert_equal "The target is attacked with an intense blast of all-consuming fire" (List.nth moves 2).descr;


 assert_equal "Noble Roar" (List.nth moves 3).name;
 assert_equal Normal (List.nth moves 3).tp;
 assert_equal 0 (List.nth moves 3).basep;
 assert_equal "Lets out a noble roar" (List.nth moves 3).descr;
;;
let test_oshawott_moves _ =
 let oshawott = Pokemon.oshawott () in
 let moves = oshawott.move_list in


 assert_equal "Water Gun" (List.nth moves 0).name;
 assert_equal Water (List.nth moves 0).tp;
 assert_equal 40 (List.nth moves 0).basep;
 assert_equal "The user squirts water to attack the target." (List.nth moves 0).descr;


 assert_equal "Razor Shell" (List.nth moves 1).name;
 assert_equal Water (List.nth moves 1).tp;
 assert_equal 75 (List.nth moves 1).basep;
 assert_equal "The user cuts its target with sharp shells" (List.nth moves 1).descr;


 assert_equal "Aqua Jet" (List.nth moves 2).name;
 assert_equal Water (List.nth moves 2).tp;
 assert_equal 40 (List.nth moves 2).basep;
 assert_equal "The user lunges at the target at a speed that makes it almost invisible" (List.nth moves 2).descr;


 assert_equal "Water Pulse" (List.nth moves 3).name;
 assert_equal Water (List.nth moves 3).tp;
 assert_equal 60 (List.nth moves 3).basep;
 assert_equal "The user attacks the target with a pulsing blast of water" (List.nth moves 3).descr;
;;


let suite =
 "test_suite_for_pokemon_move_validation" >::: [
   "test_charizard_moves" >:: test_charizard_moves;
   "test_squirtle_moves" >:: test_squirtle_moves;
   "test_beedrill_moves" >:: test_beedrill_moves;
   "test_raticate_moves" >:: test_raticate_moves;
   "test_spearow_moves" >:: test_spearow_moves;
   "test_pikachu_moves" >:: test_pikachu_moves;
   "test_nidoran_moves" >:: test_nidoran_moves;
   "test_jigglypuff_moves" >:: test_jigglypuff_moves;
   "test_parasect_moves" >:: test_parasect_moves;
   "test_diglett_moves" >:: test_diglett_moves;
   "test_meowth_moves" >:: test_meowth_moves;
   "test_poliwhirl_moves" >:: test_poliwhirl_moves;
   "test_abra_moves" >:: test_abra_moves;
   "test_geodude_moves" >:: test_geodude_moves;
   "test_mewtwo_moves" >:: test_mewtwo_moves;
   "test_haunter_moves" >:: test_haunter_moves;
   "test_eevee_moves" >:: test_eevee_moves;
   "test_pyroar_moves" >:: test_pyroar_moves;
   "test_oshawott_moves" >:: test_oshawott_moves;
   "test_golbat_moves" >:: test_golbat_moves








 ]


let _ =
 run_test_tt_main suite



