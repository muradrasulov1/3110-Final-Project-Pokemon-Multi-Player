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
  | Bug
  | Dragon
  
  type moves = {
    fighter : pokemon;
    name : string;
    tp : move_tp;
    basep: int;
    descr : string;
  } 
  
  type t = {

    (* Pokemon name *)
    pokemon_name : string;

    (* Health of the Pokemon *)
    health : int;

    (* List of moves a Pokemon can do;
      specific to a Pokemon *)
    move_list : moves list;

    (* Type of an attack *)
    sp: move_tp;

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
  | Bug -> "Bug"
  | Dragon -> "Dragon"

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

  let int_of_pokemon = function
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
  | Bug -> 14
  | Dragon -> 15

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
        1.0;
        1.0
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
      1.0;
      1.0;
      0.5
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
      1.0;
      1.0;
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
      1.0;
      2.0;
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
      1.0;
      1.0;
      0.5
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
      1.0;
      1.0;
      2.0
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
      2.0;
      0.5;
      1.0
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
      1.0;
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
      0.5;
      1.0;
      1.0
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
      0.0;
      1.0;
      1.0
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
      0.5;
      1.0
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
      1.0;
      0.5;
      0.5
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
      1.0;
      2.0;
      0.5
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
      0.5;
      1.0;
      1.0
    ]
    );

    (* Bug *)
    (Bug, 
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
      1.0
    ]
    );

    (* Dragon *)
    (Dragon,
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
      2.0
    ]
    )
    ]

  let move_list = 
    [
      (* for Pikachu *)
      (create_move Pikachu "Tail Whip" Normal 30 
      "Pikachu hits his enemy with a his tail");
      (create_move Pikachu "Spark" Electric 20 
      "An electrically-charged Pikachu tackles his oppnent");
      (create_move Pikachu "Electro Ball" Electric 10
      "Pikachu throws an electric ball at opponent");
      (create_move Pikachu "Thunder Shock" Electric 30
      "Pikachu summons a thunderstorm of lightning on his opponent");
      ]


end
