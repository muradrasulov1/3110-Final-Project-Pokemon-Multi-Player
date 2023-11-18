open Random

module Pokemon  = struct
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
  
  type move_tp =
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
  
  type moves = {
    fighter : pokemon;
    name : string;
    tp : move_tp;
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

    (* List of moves a Pokemon can do;
      specific to a Pokemon *)
    move_list : moves list;

    (* Type of the pokemon *)
    poke_typ: move_tp * move_tp;

    (* Image of Pokemon in battle *)
    battle_image : string;
     
    (* Image of Pokemon for profile picture *)
    search_image : string;

    (* Description of Pokemon *)
    descr : string
  }

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
  | Mewtwo -> "Mewto"
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
  |None -> "None"

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
  |None -> 14

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
  | Jigglypuff -> 
  "https://img.pokemondb.net/sprites/x-y/normal/jigglypuff.png"
  | Golbat -> 
  "https://img.pokemondb.net/sprites/black-white/normal/golbat-f.png"
  | Parasect -> 
  "https://img.pokemondb.net/sprites/black-white/normal/parasect.png"
  | Diglett ->
  "https://img.pokemondb.net/sprites/black-white/normal/diglett.png"
  | Meowth -> 
  "https://img.pokemondb.net/sprites/black-white/normal/meowth.png"
  | Poliwhirl ->
  "https://img.pokemondb.net/sprites/black-white/normal/poliwhirl.png"
  | Abra -> 
  "https://img.pokemondb.net/sprites/black-white/normal/abra.png"
  | Geodude ->
  "https://img.pokemondb.net/sprites/black-white/normal/geodude.png"
  | Mewtwo -> 
  "https://img.pokemondb.net/sprites/black-white/normal/mewtwo.png"
  | Haunter ->
  "https://img.pokemondb.net/sprites/black-white/normal/haunter.png"
  | Eevee -> 
  "https://img.pokemondb.net/sprites/black-white/normal/eevee.png"
  | Pyroar -> 
  "https://img.pokemondb.net/sprites/x-y/normal/pyroar-f.png"
  | Oshawott -> 
  "https://img.pokemondb.net/sprites/black-white/normal/oshawott.png"

  let search_image = function
  | Charizard ->
  "https://img.pokemondb.net/artwork/large/charizard.jpg"
  | Squirtle ->
  "https://img.pokemondb.net/artwork/large/squirtle.jpg"
  | Beedrill ->
  "https://img.pokemondb.net/artwork/large/beedrill.jpg"
  | Raticate ->
  "https://img.pokemondb.net/artwork/large/raticate.jpg"
  | Spearow ->
  "https://img.pokemondb.net/artwork/large/spearow.jpg"
  | Pikachu -> 
  "https://img.pokemondb.net/artwork/large/pikachu.jpg"
  | Nidoran ->
  "https://img.pokemondb.net/artwork/large/nidoran-f.jpg"
  | Jigglypuff -> 
  "https://img.pokemondb.net/artwork/large/jigglypuff.jpg"
  | Golbat ->
  "https://img.pokemondb.net/artwork/large/golbat.jpg"
  | Parasect ->
  "https://img.pokemondb.net/artwork/large/parasect.jpg"
  | Diglett ->
  "https://img.pokemondb.net/artwork/large/diglett.jpg"
  | Meowth -> 
  "https://img.pokemondb.net/artwork/large/meowth.jpg"
  | Poliwhirl ->
  "https://img.pokemondb.net/artwork/large/poliwhirl.jpg"
  | Abra -> 
  "https://img.pokemondb.net/artwork/large/abra.jpg"
  | Geodude -> 
  "https://img.pokemondb.net/artwork/large/geodude.jpg"
  | Mewtwo ->
  "https://img.pokemondb.net/artwork/large/mewtwo.jpg"
  | Haunter ->
  "https://img.pokemondb.net/artwork/large/haunter.jpg"
  | Eevee -> 
  "https://img.pokemondb.net/artwork/large/eevee.jpg"
  | Pyroar ->
  "https://img.pokemondb.net/artwork/large/pyroar.jpg"
  | Oshawott ->
  "https://img.pokemondb.net/artwork/large/oshawott.jpg"

  let create_move p n d t de=
    {
      fighter = p;
      name = n;
      tp = d;
      basep = t;
      descr = de
    }

  let effectivity_list =
    [
      (* Normal *)
      (Normal, 
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
    ]
    );

    (* Electric *)
    (Electric,
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
      1.0
    ]
    );

    (* Steel *)
    (Steel, 
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
      1.0
    ]
    );

    (* Flying *)
    (Flying, 
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
      1.0
    ]
    );

    (* Water *)
    (Water,
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
      1.0
    ]
    );

    (* Ice *)
    (Ice,
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
      1.0
    ]
    );

    (* Fighting *)
    (Fighting, 
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
      2.0
    ]
    );

    (* Poison *)
    (Poison, 
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
      1.0
    ]
    );

    (* Ghost *)
    (Ghost,
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
      0.5
    ]
    );

    (* Psychic *)
    (Psychic,
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
      0.0
    ]
    );

    (* Ground *)
    (Ground,
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
    ]
    );

    (* Grass *)
    (Grass,
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
      1.0
    ]
    );

    (* Fire *)
    (Fire,
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
      1.0
    ]
    );

    (* Dark *)
    (Dark,
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
      0.5
    ]
    );

    (* None *)
    (None,
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
      1.0
    ]
    );
    ]

    let random_float_in_range min max = min +. (Random.float (max -. min))

    let random_dmg_modifier = random_float_in_range 0.9 1.1

    let rec find_typ_chart used_move_typ eff_lst = 
      match eff_lst with
      |[] -> failwith "TYPE NOT FOUND"
      |(move_typ,modifier_lst)::t -> 
        if (used_move_typ == move_typ) then modifier_lst 
        else find_typ_chart used_move_typ t 
  
    let type_dmg_modifier move_info ally_poke enemy_poke = 
      match (enemy_poke.poke_typ) with
      |(type1,type2) -> (List.nth (find_typ_chart (move_info.tp) (effectivity_list)) (typ_indx type1))
       *. (List.nth (find_typ_chart (move_info.tp) (effectivity_list)) (typ_indx type2))

    let stab_dmg_modifier move_info ally_poke = 
      match (ally_poke.poke_typ) with
      |(type1,type2) -> if (move_info.tp == type1) || (move_info.tp == type2) then 1.5 else 1.0

    let complete_modifier move_info ally_poke enemy_poke = 
      (type_dmg_modifier move_info ally_poke enemy_poke) *. (stab_dmg_modifier move_info ally_poke) *. random_dmg_modifier

    let dmg_done move_info ally_poke enemy_poke = 
      ((float_of_int (ally_poke.attack * move_info.basep))/. (float_of_int enemy_poke.defense)) 
      *. complete_modifier move_info ally_poke enemy_poke
  


end
