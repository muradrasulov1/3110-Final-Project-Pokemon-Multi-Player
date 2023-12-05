type pokemon =
  | Charizard
  | Squirtle
  | Beedrill
  | Raticate
  | Spearow
  | Pikachu
  | Nidoran
  | Jigglypuff
  | Golbat
  | Parasect
  | Diglett
  | Meowth
  | Poliwhirl
  | Abra
  | Geodude
  | Mewtwo
  | Haunter
  | Eevee
  | Pyroar
  | Oshawott

type poke_tp =
  | Normal
  | Electric
  | Steel
  | Flying
  | Water
  | Ice
  | Fighting
  | Poison
  | Ghost
  | Psychic
  | Ground
  | Grass
  | Fire
  | Dark
  | None
  | Bug
  | Dragon

type moves = {
  fighter : pokemon;
  name : string;
  tp : poke_tp;
  basep : int;
  descr : string;
}

type t = {
  (* Pokemon name *)
  pokemon_name : string;
  (* Health of the Pokemon *)
  health : int;
  (* Attack of the Pokemon *)
  attack : int;
  (* Defense of the Pokemon *)
  defense : int;
  (* Speed of the Pokemon *)
  speed : int;
  (* List of moves a Pokemon can do; specific to a Pokemon *)
  move_list : moves list;
  (* Type of the pokemon *)
  poke_typ : poke_tp * poke_tp;
  (* Image of Pokemon in battle *)
  battle_image : string;
  (* Image of Pokemon for profile picture *)
  search_image : string;
  (* Description of Pokemon *)
  descr : string;
}

(**Representation for whether player wins or loses*)
type outcome =
  | Win
  | Loss

let name = function
  | Charizard -> "Charizard"
  | Squirtle -> "Squirtle"
  | Beedrill -> "Beedrill"
  | Raticate -> "Raticate"
  | Spearow -> "Spearow"
  | Pikachu -> "Pikachu"
  | Nidoran -> "Nidoran"
  | Jigglypuff -> "Jigglypuff"
  | Golbat -> "Golbat"
  | Parasect -> "Parasect"
  | Diglett -> "Diglett"
  | Meowth -> "Meowth"
  | Poliwhirl -> "Poliwhirl"
  | Abra -> "Abra"
  | Geodude -> "Geodude"
  | Mewtwo -> "Mewtwo"
  | Haunter -> "Haunter"
  | Eevee -> "Eevee"
  | Pyroar -> "Pyroar"
  | Oshawott -> "Oshawott"

let typ = function
  | Normal -> "Normal"
  | Electric -> "Electric"
  | Steel -> "Steel"
  | Flying -> "Flying"
  | Water -> "Water"
  | Ice -> "Ice"
  | Fighting -> "Fighting"
  | Poison -> "Poison"
  | Ghost -> "Ghost"
  | Psychic -> "Psychic"
  | Ground -> "Ground"
  | Grass -> "Grass"
  | Fire -> "Fire"
  | Dark -> "Dark"
  | Dragon -> "Dragon"
  | Bug -> "Bug"
  | None -> "None"

let typ_indx = function
  | Normal -> 0
  | Electric -> 1
  | Steel -> 2
  | Flying -> 3
  | Water -> 4
  | Ice -> 5
  | Fighting -> 6
  | Poison -> 7
  | Ghost -> 8
  | Psychic -> 9
  | Ground -> 10
  | Grass -> 11
  | Fire -> 12
  | Dark -> 13
  | None -> 14
  | Dragon -> 15
  | Bug -> 16

let battle_images = function
  | Charizard ->
      "https://img.pokemondb.net/sprites/black-white/normal/charizard.png"
  | Squirtle ->
      "https://img.pokemondb.net/sprites/black-white/shiny/squirtle.png"
  | Beedrill ->
      "https://img.pokemondb.net/sprites/black-white/normal/beedrill.png"
  | Raticate ->
      "https://img.pokemondb.net/sprites/black-white/normal/raticate-f.png"
  | Spearow ->
      "https://img.pokemondb.net/sprites/black-white/normal/spearow.png"
  | Pikachu ->
      "https://img.pokemondb.net/sprites/black-white/normal/pikachu-f.png"
  | Nidoran ->
      "https://img.pokemondb.net/sprites/black-white/normal/nidoran-f.png"
  | Jigglypuff -> "https://img.pokemondb.net/sprites/x-y/normal/jigglypuff.png"
  | Golbat ->
      "https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png"
  | Parasect ->
      "https://img.pokemondb.net/sprites/black-white/normal/parasect.png"
  | Diglett ->
      "https://img.pokemondb.net/sprites/black-white/normal/diglett.png"
  | Meowth -> "https://img.pokemondb.net/sprites/black-white/normal/meowth.png"
  | Poliwhirl ->
      "https://img.pokemondb.net/sprites/black-white/normal/poliwhirl.png"
  | Abra -> "https://img.pokemondb.net/sprites/black-white/normal/abra.png"
  | Geodude ->
      "https://img.pokemondb.net/sprites/black-white/normal/geodude.png"
  | Mewtwo -> "https://img.pokemondb.net/sprites/black-white/normal/mewtwo.png"
  | Haunter ->
      "https://img.pokemondb.net/sprites/black-white/normal/haunter.png"
  | Eevee -> "https://img.pokemondb.net/sprites/black-white/normal/eevee.png"
  | Pyroar -> "https://img.pokemondb.net/sprites/x-y/normal/pyroar-f.png"
  | Oshawott ->
      "https://img.pokemondb.net/sprites/black-white/normal/oshawott.png"

let search_images = function
  | Charizard -> "https://img.pokemondb.net/artwork/large/charizard.jpg"
  | Squirtle -> "https://img.pokemondb.net/artwork/large/squirtle.jpg"
  | Beedrill -> "https://img.pokemondb.net/artwork/large/beedrill.jpg"
  | Raticate -> "https://img.pokemondb.net/artwork/large/raticate.jpg"
  | Spearow -> "https://img.pokemondb.net/artwork/large/spearow.jpg"
  | Pikachu -> "https://img.pokemondb.net/artwork/large/pikachu.jpg"
  | Nidoran -> "https://img.pokemondb.net/artwork/large/nidoran-f.jpg"
  | Jigglypuff -> "https://img.pokemondb.net/artwork/large/jigglypuff.jpg"
  | Golbat -> "https://img.pokemondb.net/artwork/large/golbat.jpg"
  | Parasect -> "https://img.pokemondb.net/artwork/large/parasect.jpg"
  | Diglett -> "https://img.pokemondb.net/artwork/large/diglett.jpg"
  | Meowth -> "https://img.pokemondb.net/artwork/large/meowth.jpg"
  | Poliwhirl -> "https://img.pokemondb.net/artwork/large/poliwhirl.jpg"
  | Abra -> "https://img.pokemondb.net/artwork/large/abra.jpg"
  | Geodude -> "https://img.pokemondb.net/artwork/large/geodude.jpg"
  | Mewtwo -> "https://img.pokemondb.net/artwork/large/mewtwo.jpg"
  | Haunter -> "https://img.pokemondb.net/artwork/large/haunter.jpg"
  | Eevee -> "https://img.pokemondb.net/artwork/large/eevee.jpg"
  | Pyroar -> "https://img.pokemondb.net/artwork/large/pyroar.jpg"
  | Oshawott -> "https://img.pokemondb.net/artwork/large/oshawott.jpg"

let create_move p n d t de =
  { fighter = p; name = n; tp = d; basep = t; descr = de }

let effectivity_list =
  [
    (* Normal *)
    ( Normal,
      [
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        0.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
      ] );
    (* Electric *)
    ( Electric,
      [
        1.0;
        0.5;
        1.0;
        2.0;
        2.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        0.0;
        0.5;
        1.0;
        1.0;
        1.0;
        0.5;
      ] );
    (* Steel *)
    ( Steel,
      [
        1.0;
        0.5;
        0.5;
        1.0;
        0.5;
        2.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
      ] );
    (* Flying *)
    ( Flying,
      [
        1.0;
        0.5;
        0.5;
        1.0;
        1.0;
        1.0;
        2.0;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
        1.0;
        1.0;
        2.0;
        1.0;
      ] );
    (* Water *)
    ( Water,
      [
        1.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
        0.5;
        2.0;
        1.0;
        1.0;
        0.5;
      ] );
    (* Ice *)
    ( Ice,
      [
        1.0;
        1.0;
        0.5;
        2.0;
        0.5;
        0.5;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
        2.0;
        0.5;
        1.0;
        1.0;
        2.0;
      ] );
    (* Fighting *)
    ( Fighting,
      [
        2.0;
        1.0;
        2.0;
        0.5;
        1.0;
        2.0;
        1.0;
        0.5;
        0.0;
        0.5;
        1.0;
        1.0;
        1.0;
        2.0;
        0.5;
        1.0;
      ] );
    (* Poison *)
    ( Poison,
      [
        1.0;
        1.0;
        0.0;
        1.0;
        1.0;
        1.0;
        1.0;
        0.5;
        0.5;
        1.0;
        0.5;
        2.0;
        1.0;
        1.0;
        1.0;
        1.0;
      ] );
    (* Ghost *)
    ( Ghost,
      [
        0.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
        2.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
      ] );
    (* Psychic *)
    ( Psychic,
      [
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
        2.0;
        2.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
        0.0;
        1.0;
        1.0;
      ] );
    (* Ground *)
    ( Ground,
      [
        1.0;
        2.0;
        2.0;
        0.0;
        1.0;
        1.0;
        1.0;
        2.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        0.5;
        1.0;
      ] );
    (* Grass *)
    ( Grass,
      [
        1.0;
        1.0;
        0.5;
        0.5;
        2.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        2.0;
        0.5;
        0.5;
        1.0;
        0.5;
        0.5;
      ] );
    (* Fire *)
    ( Fire,
      [
        1.0;
        1.0;
        2.0;
        1.0;
        0.5;
        2.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
        0.5;
        1.0;
        2.0;
        0.5;
      ] );
    (* Dark *)
    ( Dark,
      [
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        2.0;
        2.0;
        1.0;
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
      ] );
    (* None *)
    ( None,
      [
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
      ] );
    (* Bug *)
    ( Bug,
      [
        1.0;
        1.0;
        0.5;
        0.5;
        1.0;
        1.0;
        0.5;
        0.5;
        0.5;
        2.0;
        1.0;
        2.0;
        0.5;
        2.0;
        1.0;
        1.0;
      ] );
    (* Dragon *)
    ( Dragon,
      [
        1.0;
        1.0;
        0.5;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        1.0;
        2.0;
      ] );
  ]

let get_health a = a.health
let random_float_in_range min max = min +. Random.float (max -. min)
let random_dmg_modifier = random_float_in_range 0.9 1.1

let rec find_typ_chart used_move_typ eff_lst =
  match eff_lst with
  | [] -> failwith "TYPE NOT FOUND"
  | (move_typ, modifier_lst) :: t ->
      if used_move_typ == move_typ then modifier_lst
      else find_typ_chart used_move_typ t

let type_dmg_modifier move_info enemy_poke =
  match enemy_poke.poke_typ with
  | type1, type2 ->
      List.nth (find_typ_chart move_info.tp effectivity_list) (typ_indx type1)
      *. List.nth
           (find_typ_chart move_info.tp effectivity_list)
           (typ_indx type2)

let stab_dmg_modifier move_info ally_poke =
  match ally_poke.poke_typ with
  | type1, type2 ->
      if move_info.tp == type1 || move_info.tp == type2 then 1.5 else 1.0

let complete_modifier move_info ally_poke enemy_poke =
  type_dmg_modifier move_info enemy_poke
  *. stab_dmg_modifier move_info ally_poke
  *. random_dmg_modifier

let dmg_done move_info ally_poke enemy_poke =
  float_of_int (ally_poke.attack * move_info.basep)
  /. float_of_int enemy_poke.defense
  *. complete_modifier move_info ally_poke enemy_poke

let rec print_moves (m : moves list) : string =
  match m with
  | [] -> ""
  | [ h1; h2 ] -> h1.name ^ ", " ^ h2.name
  | h :: t -> h.name ^ ", " ^ print_moves t

let rec get_valid_input max =
  let index = read_int () - 1 in
  if index < 0 || index >= max then begin
    Printf.printf "Invalid move. Please choose a move between 1 and %d.\n" max;
    get_valid_input max
  end
  else index

let rec ally_move ally_hp enemy_hp ally enemy =
  if !ally_hp <= 0 then begin
    Printf.printf "%s fainted! Enemy wins.\n" ally.pokemon_name;
    Loss
  end
  else if !enemy_hp <= 0 then begin
    Printf.printf "%s fainted! Ally wins.\n" enemy.pokemon_name;
    Win
  end
  else begin
    Printf.printf "Ally %s's turn. Choose a move:\n" ally.pokemon_name;
    Printf.printf "Your moves are: %s\n" (print_moves ally.move_list);
    let index = get_valid_input (List.length ally.move_list) in
    (* Printf.printf "You entered: %s\n" (print_moves ally.move_list); *)
    Printf.printf "You entered: %s\n" (string_of_int index);
    let move = List.nth ally.move_list index in
    Printf.printf "Ally used %s.\n" move.name;
    let dmg = dmg_done move ally enemy in
    enemy_hp := !enemy_hp - int_of_float dmg;
    Printf.printf "Enemy %s now has %d health.\n" enemy.pokemon_name !enemy_hp;
    enemy_move ally_hp enemy_hp ally enemy
  end

and enemy_move ally_hp enemy_hp ally enemy =
  if !enemy_hp <= 0 then begin
    Printf.printf "%s fainted! Ally wins.\n" enemy.pokemon_name;
    Win
  end
  else if !ally_hp <= 0 then begin
    Printf.printf "%s fainted! Enemy wins.\n" ally.pokemon_name;
    Loss
  end
  else begin
    Printf.printf "Enemy %s's turn.\n" enemy.pokemon_name;
    let move =
      List.nth enemy.move_list (Random.int (List.length enemy.move_list))
    in
    Printf.printf "Enemy used %s.\n" move.name;
    let dmg = dmg_done move enemy ally in
    ally_hp := !ally_hp - int_of_float dmg;
    Printf.printf "Ally %s now has %d health.\n" ally.pokemon_name !ally_hp;
    ally_move ally_hp enemy_hp ally enemy
  end

let battle (ally : t) (enemy : t) : outcome =
  let ally_hp = ref (get_health ally) in
  let enemy_hp = ref (get_health enemy) in
  Printf.printf "Battle Start! %s vs %s\n" ally.pokemon_name enemy.pokemon_name;
  if ally.speed >= enemy.speed then ally_move ally_hp enemy_hp ally enemy
  else enemy_move ally_hp enemy_hp ally enemy

let charizard_moves =
  [
    create_move Charizard "Flamethrower" Fire 90
      "Emits a strong flame that may also burn the target";
    create_move Charizard "Air Slash" Flying 75
      "Attacks with a blade of air that may cause flinching";
    create_move Charizard "Earthquake" Ground 100
      "A powerful quake that hits all adjacent Pokémon";
    create_move Charizard "Slash" Normal 70 "A slashing attack";
  ]

let squirtle_moves =
  [
    create_move Squirtle "Water Gun" Water 40
      "Shoots a jet of water at the target";
    create_move Squirtle "Bubble Beam" Water 65
      "Strikes with a burst of bubbles. May lower speed";
    create_move Squirtle "Bite" Dark 60
      "Bites with vicious fangs. May cause flinching";
    create_move Squirtle "Rapid Spin" Normal 50
      "Spins rapidly to remove hazards and hit the target";
  ]

let beedrill_moves =
  [
    create_move Beedrill "Poison Jab" Poison 80
      "Stabs the target with a poisonous stinger. May poison";
    create_move Beedrill "X-Scissor" Bug 80
      "Slashes the target with crossed scythes or claws";
    create_move Beedrill "Drill Run" Ground 80
      "Spins rapidly to drill into the target. High critical-hit ratio";
    create_move Beedrill "U-turn" Bug 70 "User switches out after attacking";
  ]

let raticate_moves =
  [
    create_move Raticate "Hyper Fang" Normal 80 "Bites fiercely with huge fangs";
    create_move Raticate "Super Fang" Normal 1
      "Cuts the target's HP in half with sharp fangs";
    create_move Raticate "Sucker Punch" Dark 70
      "Strikes first if the target is readying an attack";
    create_move Raticate "Double-Edge" Normal 120
      "A reckless, life-risking tackle that also hurts the user";
  ]

let spearow_moves =
  [
    create_move Spearow "Drill Peck" Flying 80
      "A corkscrew attack with the beak acting like a drill";
    create_move Spearow "Aerial Ace" Flying 60
      "An extremely fast attack that can't be evaded";
    create_move Spearow "Fury Attack" Normal 15
      "Jabs the target repeatedly with a horn or beak";
    create_move Spearow "Pursuit" Dark 40
      "Deals double damage if used on a opponent's switching out";
  ]

let pikachu_moves =
  [
    (* for Pikachu *)
    create_move Pikachu "Tail Whip" Normal 30
      "Pikachu hits his enemy with a his tail";
    create_move Pikachu "Spark" Electric 20
      "An electrically-charged Pikachu tackles his oppnent";
    create_move Pikachu "Electro Ball" Electric 10
      "Pikachu throws an electric ball at opponent";
    create_move Pikachu "Thunder Shock" Electric 30
      "Pikachu summons a thunderstorm of lightning on his opponent";
  ]

let nidoran_moves =
  [
    create_move Nidoran "Poison Sting" Poison 15
      "The user stabs the target with a poisonous stinger";
    create_move Nidoran "Horn Attack" Normal 65
      "The user stabs the target with a sharply pointed horn";
    create_move Nidoran "Double Kick" Fighting 30
      "The user quickly kicks the target twice";
    create_move Nidoran "Peck" Flying 35
      "The target is jabbed with a sharply pointed beak or horn";
  ]

let jigglypuff_moves =
  [
    create_move Jigglypuff "Sing" Normal 0
      "A soothing lullaby is sung to put opponent to sleep";
    create_move Jigglypuff "Body Slam" Normal 85
      "The user drops onto the target with its full body weight";
    create_move Jigglypuff "Hyper Voice" Normal 90
      "The user lets loose a horribly echoing shout";
  ]

let golbat_moves =
  [
    create_move Golbat "Wing Attack" Flying 60
      "The target is struck with large, imposing wings";
    create_move Golbat "Bite" Dark 60
      "The target is bitten with viciously sharp fangs";
    create_move Golbat "Poison Fang" Poison 50
      "The user bites the target with toxic fangs";
    create_move Golbat "Air Cutter" Flying 60
      "The user launches razor-like wind to slash the opposing Pokemon";
  ]

let parasect_moves =
  [
    create_move Parasect "Spore" Grass 0
      "The user scatters bursts of spores that induce sleep";
    create_move Parasect "X-Scissor" Bug 80 "The user slashes at opponent";
    create_move Parasect "Giga Drain" Grass 75 "A nutrient-draining attack";
    create_move Parasect "Brick Break" Fighting 75
      "The user attacks with a swift chop";
  ]

let diglett_moves =
  [
    create_move Diglett "Dig" Ground 80
      "The user burrows into the ground, then attacks on\n   the next turn";
    create_move Diglett "Earthquake" Ground 100
      "A powerful quake affecting all Pokémon around the user";
    create_move Diglett "Sucker Punch" Dark 70
      "Strikes first if the target is readying an attack";
    create_move Diglett "Mud-Slap" Ground 20 "Hurls mud in opponent's face";
  ]

let meowth_moves =
  [
    create_move Meowth "Pay Day" Normal 40
      "Numerous coins are hurled at the target to inflict damage";
    create_move Meowth "Bite" Dark 60
      "Bites opponent with viciously sharp fangs";
    create_move Meowth "Fury Swipes" Normal 18
      "The target is raked with sharp claws or scythes\n\
      \    quickly two to five times in a row.";
    create_move Meowth "Slash" Normal 70
      "The target is attacked with a slash of claws or blades";
  ]

let poliwhirl_moves =
  [
    create_move Poliwhirl "Bubble Beam" Water 65
      "A spray of bubbles is forcefully ejected at the target";
    create_move Poliwhirl "Body Slam" Normal 85
      "The user drops onto the target with its full body weight";
    create_move Poliwhirl "Hypnosis" Psychic 0
      "The user employs hypnotic suggestion to make the \n\
      \  target fall into a deep sleep.";
    create_move Poliwhirl "Water Gun" Water 40
      "The user shoots a stream of water at the target";
  ]

let abra_moves =
  [
    create_move Abra "Teleport" Psychic 0 "Use it to flee from any wild Pokémon";
    create_move Abra "Psychic" Psychic 90
      "The target is hit by a strong telekinetic force";
    create_move Abra "Shadow Ball" Ghost 80
      "The user hurls a shadowy blob at the target";
    create_move Abra "Energy Ball" Grass 90
      "The user draws power from nature and fires it at the target";
  ]

let geodude_moves =
  [
    create_move Geodude "Magnitude" Ground 70
      "A ground-shaking attack with variable power";
    create_move Geodude "Earthquake" Ground 100
      "A powerful quake affecting all Pokemon around the user";
    create_move Geodude "Mudslap" Ground 20 "Hurls mud into opponent's face";
    create_move Geodude "Take Down" Normal 90 "Charges and slams into opponent";
  ]

let mewtwo_moves =
  [
    create_move Mewtwo "Psychic" Psychic 90 "A strong telekinetic attack. ";
    create_move Mewtwo "Aura Sphere" Fighting 80
      "A blast of aura power fired from the hands. It never misses.";
    create_move Mewtwo "Shadow Ball" Ghost 80 "A shadowy blob attack";
    create_move Mewtwo "Recover" Normal 0
      "Restores the user's HP by half of its max HP";
  ]

let haunter_moves =
  [
    create_move Haunter "Shadow Ball" Ghost 80
      "The user hurls a shadowy blob at the target";
    create_move Haunter "Sludge Bomb" Poison 90
      "Unsanitary sludge is hurled at the target";
    create_move Haunter "Hypnosis" Psychic 0
      "The user employs hypnotic suggestion to make \n\
      \  the target fall into a deep sleep";
    create_move Haunter "Dream Eater" Psychic 100
      "Absorbs the dreams of a sleeping target. \n\
      \  The user's HP is restored by half the damage taken by the target";
  ]

let eevee_moves =
  [
    create_move Eevee "Quick Attack" Normal 40
      "The user lunges at the target at a speed that makes it almost invisible";
    create_move Eevee "Bite" Dark 60
      "The target is bitten with viciously sharp fangs";
    create_move Eevee "Swift" Normal 60
      "Star-shaped rays are shot at the target. This attack never misses.";
    create_move Eevee "Double-Edge" Normal 120
      "A reckless, life-risking tackle that also hurts the user";
  ]

let pyroar_moves =
  [
    create_move Pyroar "Flamethrower" Fire 90
      "The target is scorched with an intense blast of fire";
    create_move Pyroar "Hyper Voice" Normal 90
      "The user lets loose a horribly echoing shout";
    create_move Pyroar "Fire Blast" Fire 110
      "The target is attacked with an intense blast of all-consuming fire";
    create_move Pyroar "Noble Roar" Normal 0 "Lets out a noble roar";
  ]

let oshawott_moves =
  [
    create_move Oshawott "Water Gun" Water 40
      "The user squirts water to attack the target.";
    create_move Oshawott "Razor Shell" Water 75
      "The user cuts its target with sharp shells";
    create_move Oshawott "Aqua Jet" Water 40
      "The user lunges at the target at a speed that makes it almost invisible";
    create_move Oshawott "Water Pulse" Water 60
      "The user attacks the target with a pulsing blast of water";
  ]

let charizard () =
  {
    pokemon_name = name Charizard;
    health = 111;
    move_list = charizard_moves;
    attack = 84;
    defense = 78;
    speed = 100;
    poke_typ = (Fire, Flying);
    battle_image = battle_images Charizard;
    search_image = search_images Charizard;
    descr =
      "Charizard flies around the sky in search of powerful opponents.\n\
      \   It breathes fire of such great heat that it melts anything. \n\
      \   However, it never turns its fiery breath on any opponent weaker than \
       itself.";
  }

let squirtle () =
  {
    pokemon_name = name Squirtle;
    health = 98;
    move_list = squirtle_moves;
    attack = 48;
    defense = 65;
    speed = 43;
    poke_typ = (Water, None);
    battle_image = battle_images Squirtle;
    search_image = search_images Squirtle;
    descr =
      "Squirtle's shell is not merely used for protection.\n\
      \   The shell's rounded shape and the grooves on its surface help \
       minimize \n\
      \   resistance in water, enabling this Pokémon to swim at high speeds.";
  }

let beedrill () =
  {
    pokemon_name = name Beedrill;
    health = 106;
    move_list = beedrill_moves;
    attack = 90;
    defense = 40;
    speed = 75;
    poke_typ = (Bug, Poison);
    battle_image = battle_images Beedrill;
    search_image = search_images Beedrill;
    descr =
      "Beedrill is extremely territorial. For safety reasons, \n\
      \    no one should ever approach its nest. \n\
      \    If angered, they will attack in a furious swarm.";
  }

let raticate () =
  {
    pokemon_name = name Raticate;
    health = 102;
    move_list = raticate_moves;
    attack = 81;
    defense = 60;
    speed = 97;
    poke_typ = (Normal, None);
    battle_image = battle_images Raticate;
    search_image = search_images Raticate;
    descr =
      "Raticate's sturdy fangs grow steadily.\n\
      \   To keep them ground down, it gnaws on rocks and logs.\n\
      \   It may even chew on the walls of houses.";
  }

let spearow () =
  {
    pokemon_name = name Spearow;
    health = 96;
    move_list = spearow_moves;
    attack = 60;
    defense = 30;
    speed = 70;
    poke_typ = (Normal, Flying);
    battle_image = battle_images Spearow;
    search_image = search_images Spearow;
    descr =
      "Spearow has a very loud cry that can be heard over\n\
      \   half a mile away. If its high, keening cry is heard echoing all \
       around,\n\
      \   it is a sign that they are warning each other of danger.";
  }

let pikachu () =
  {
    pokemon_name = name Pikachu;
    health = 94;
    move_list = pikachu_moves;
    attack = 55;
    defense = 40;
    speed = 90;
    poke_typ = (Electric, None);
    battle_image = battle_images Pikachu;
    search_image = search_images Pikachu;
    descr =
      "Pikachu, which can generate powerful electricity,\n\
      \   has cheek sacs that are extra soft and super stretchy.";
  }

let nidoran () =
  {
    pokemon_name = name Nidoran;
    health = 98;
    move_list = nidoran_moves;
    attack = 57;
    defense = 40;
    speed = 50;
    poke_typ = (Poison, None);
    battle_image = battle_images Nidoran;
    search_image = search_images Nidoran;
    descr =
      "Nidoran has developed muscles for moving its ears.\n\
      \   Thanks to them, the ears can be freely moved in any direction.\n\
      \   Even the slightest sound does not escape this Pokémon's notice.";
  }

let jigglypuff () =
  {
    pokemon_name = name Jigglypuff;
    health = 126;
    move_list = jigglypuff_moves;
    attack = 45;
    defense = 20;
    speed = 20;
    poke_typ = (Normal, Normal);
    battle_image = battle_images Jigglypuff;
    search_image = search_images Jigglypuff;
    descr =
      "Jigglypuff's vocal cords can freely adjust the\n\
      \  wavelength of its voice. This Pokémon uses this ability to\n\
      \  sing at precisely the right wavelength to make its foes most drowsy.";
  }

let golbat () =
  {
    pokemon_name = name Golbat;
    health = 110;
    move_list = golbat_moves;
    attack = 80;
    defense = 70;
    speed = 90;
    poke_typ = (Poison, Flying);
    battle_image = battle_images Golbat;
    search_image = search_images Golbat;
    descr =
      "Golbat loves to drink the blood of living things.\n\
      \   It is particularly active in the pitch black of night.\n\
      \   This Pokémon flits around in the night skies, seeking fresh blood.";
  }

let parasect () =
  {
    pokemon_name = name Parasect;
    health = 104;
    move_list = parasect_moves;
    attack = 95;
    defense = 80;
    speed = 30;
    poke_typ = (Bug, Grass);
    battle_image = battle_images Parasect;
    search_image = search_images Parasect;
    descr =
      "Parasect is known to infest large trees en masse and drain\n\
      \   nutrients from the lower trunk and roots. When an infested tree dies,\n\
      \    they move onto another tree all at once.";
  }

let diglett () =
  {
    pokemon_name = name Diglett;
    health = 84;
    move_list = diglett_moves;
    attack = 55;
    defense = 25;
    speed = 95;
    poke_typ = (Ground, None);
    battle_image = battle_images Diglett;
    search_image = search_images Diglett;
    descr =
      "Diglett are raised in most farms. The reason is simple—wherever\n\
      \   this Pokémon burrows, the soil is left perfectly tilled for planting\n\
      \   crops. This soil is made ideal for growing delicious vegetables.";
  }

let meowth () =
  {
    pokemon_name = name Meowth;
    health = 96;
    move_list = meowth_moves;
    attack = 45;
    defense = 35;
    speed = 90;
    poke_typ = (Normal, None);
    battle_image = battle_images Meowth;
    search_image = search_images Meowth;
    descr =
      "Meowth withdraws its sharp claws into its paws to silently\n\
      \   sneak about without making any incriminating footsteps. For some \n\
      \   reason, this Pokémon loves shiny coins that glitter with light.";
  }

let poliwhirl () =
  {
    pokemon_name = name Poliwhirl;
    health = 106;
    move_list = poliwhirl_moves;
    attack = 65;
    defense = 65;
    speed = 90;
    poke_typ = (Water, None);
    battle_image = battle_images Poliwhirl;
    search_image = search_images Poliwhirl;
    descr =
      "Poliwhirl's skin is always moist. This slimy film helps\n\
      \   reduce the Pokémon's resistance in water. Its skin is also very\n\
      \    flexible, reducing the impact of attacks.";
  }

let abra () =
  {
    pokemon_name = name Abra;
    health = 90;
    move_list = abra_moves;
    attack = 20;
    defense = 15;
    speed = 90;
    poke_typ = (Psychic, Psychic);
    battle_image = battle_images Abra;
    search_image = search_images Abra;
    descr =
      "Abra sleeps for 18 hours a day. However, it can sense \n\
      \  the presence of danger and quickly use its extrasensory abilities\n\
      \  to escape danger. Sometimes, it can even do this while not opening \
       its eyes";
  }

let geodude () =
  {
    pokemon_name = name Geodude;
    health = 96;
    move_list = geodude_moves;
    attack = 80;
    defense = 100;
    speed = 20;
    poke_typ = (Ground, Ground);
    battle_image = battle_images Geodude;
    search_image = search_images Geodude;
    descr =
      "Commonly found near mountain trails and the like. \n\
      \  If you step on Geodude by accident, it gets angry.";
  }

let mewtwo () =
  {
    pokemon_name = name Mewtwo;
    health = 122;
    move_list = mewtwo_moves;
    attack = 110;
    defense = 90;
    speed = 130;
    poke_typ = (Psychic, None);
    battle_image = battle_images Mewtwo;
    search_image = search_images Mewtwo;
    descr =
      "Mewto's DNA is almost the same as Mew's. \n\
      \  However, its size and disposition are vastly different.";
  }

let haunter () =
  {
    pokemon_name = name Haunter;
    health = 98;
    move_list = haunter_moves;
    attack = 50;
    defense = 45;
    speed = 95;
    poke_typ = (Ghost, Poison);
    battle_image = battle_images Haunter;
    search_image = search_images Haunter;
    descr =
      "Because of its ability to slip through block walls,\n\
      \   Haunter is said to be from another dimension.";
  }

let eevee () =
  {
    pokemon_name = name Eevee;
    health = 102;
    move_list = eevee_moves;
    attack = 55;
    defense = 50;
    speed = 55;
    poke_typ = (Normal, None);
    battle_image = battle_images Eevee;
    search_image = search_images Eevee;
    descr =
      "Eevee's genetic code is irregular.\n\
      \   It may mutate if it is exposed to radiation from element stones.";
  }

let pyroar () =
  {
    pokemon_name = name Pyroar;
    health = 114;
    move_list = pyroar_moves;
    attack = 68;
    defense = 72;
    speed = 106;
    poke_typ = (Fire, Normal);
    battle_image = battle_images Pyroar;
    search_image = search_images Pyroar;
    descr =
      "Pyroar has the largest mane of fire. There's a reason why they are\n\
      \  declared is the leader of the pride.";
  }

let oshawott () =
  {
    pokemon_name = name Oshawott;
    health = 102;
    move_list = oshawott_moves;
    attack = 55;
    defense = 45;
    speed = 45;
    poke_typ = (Water, None);
    battle_image = battle_images Oshawott;
    search_image = search_images Oshawott;
    descr =
      "Oshawott fights using the scalchop on its stomach.\n\
      \   In response to an attack, it retaliates immediately by slashing.";
  }

let pokelist =
  [
    pikachu;
    oshawott;
    charizard;
    pyroar;
    eevee;
    haunter;
    mewtwo;
    geodude;
    abra;
    poliwhirl;
    meowth;
    diglett;
    parasect;
    golbat;
    jigglypuff;
    nidoran;
    spearow;
    raticate;
    beedrill;
    squirtle;
  ]
