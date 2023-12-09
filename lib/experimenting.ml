let p_list =
  [
    "pikachu";
    "oshawott";
    "charizard";
    "pyroar";
    "eevee";
    "haunter";
    "mewtwo";
    "geodude";
    "abra";
    "poliwhirl";
    "meowth";
    "diglett";
    "parasect";
    "golbat";
    "jigglypuff";
    "nidoran";
    "spearow";
    "raticate";
    "beedrill";
    "squirtle";
  ]

type command =
  | Up
  | Left
  | Right
  | Down
  | Quit

type move =
  | Valid
  | Invalid

type tile =
  | Empty
  | Grass
  | Path
  | Lava
  | FirstAid
  (*boundary*)
  | Wall

type game_state = {
  mutable x : int;
  mutable y : int;
  mutable map : tile array array;
  mutable starter_pokemon : string option * Pokemon.t option;
      (* mutable starter_pokemon : Pokemon.t option; *)
      (* Option type to represent the possibility of no starter Pokemon *)
}

let string_of_tile = function
  | Wall -> "W"
  | Grass -> "X"
  | Path -> "."
  | Lava -> "!"
  | FirstAid -> "+"
  | Empty -> "."

let print_game_state game =
  let width = Array.length game.map in
  let height = Array.length game.map.(0) in

  for y = 0 to height - 1 do
    for x = 0 to width - 1 do
      let symbol =
        if x = game.x && y = game.y then "0"
        else string_of_tile game.map.(x).(y)
      in
      print_string (symbol ^ "   ")
    done;
    print_endline "";
    for _ = 1 to 2 do
      print_endline ""
    done
  done

let prob_of = function
  | Grass -> 20
  | Path -> 40
  | Lava | FirstAid -> 20
  | _ -> 0

let initialize_map_with_probabilities width height =
  Random.init 42;
  let grass_prob = prob_of Grass in
  let path_prob = prob_of Path in
  let lava_prob = prob_of Lava in

  Array.init width (fun x ->
      Array.init height (fun y ->
          let rand_value = Random.int 100 in
          match rand_value with
          | _ when x = 0 || x = width - 1 || y = 0 || y = height - 1 -> Wall
          | _ when rand_value < grass_prob -> Grass
          | _ when rand_value < grass_prob + path_prob -> Path
          | _ when rand_value < grass_prob + path_prob + lava_prob -> Lava
          | _ -> FirstAid))

let move_pokemon game direction =
  let new_x, new_y =
    match direction with
    | Up -> (game.x, max 1 (game.y - 1))
    | Down -> (game.x, min (Array.length game.map.(0) - 2) (game.y + 1))
    | Left -> (max 1 (game.x - 1), game.y)
    | Right -> (min (Array.length game.map - 2) (game.x + 1), game.y)
    | Quit -> exit 0
  in
  if game.map.(new_x).(new_y) != Wall then begin
    game.x <- new_x;
    game.y <- new_y;
    Valid
  end
  else Invalid

let rec end_game () =
  print_string "GAME OVER!!!\n";
  print_string
    ("Don't give up yet\n"
   ^ "Click 'r' to pick up from where you've left off or 'q' to quit:");
  match read_line () with
  | "r" | "R" -> ()
  | "q" | "Q" -> exit 0
  | _ ->
      print_string "Enter command to quit the game or continue:\n";
      end_game ()

let decide_fate g =
  let x, y = (g.x, g.y) in
  match string_of_tile g.map.(x).(y) with
  | "X" -> "battle"
  | "+" -> "firstaid"
  | "!" -> "lava"
  | _ -> "no tile event"

let encounter poke : int =
  match
    Pokemon.battle poke
      (List.nth Pokemon.pokelist
         (Random.int (List.length Pokemon.pokelist) - 1)
         ())
  with
  | Win, new_hp -> new_hp
  | Loss, new_hp ->
      end_game ();
      new_hp

let print_list_with_spacing lst =
  let rec print_elements = function
    | [] -> ()
    | hd :: tl ->
        Printf.printf "%s\n" hd;
        print_elements tl
  in
  print_elements lst
  
let choose_starter_pokemon () =
  print_endline "Welcome to POCaml";
  print_endline "Please choose the Pokemon you want to start as!";
  print_endline "";
  print_endline "List: ";
  print_list_with_spacing p_list;
  print_endline "Enter the name of the Pokemon you want to start as:";
  let rec get_user_input () =
    let user_input = String.lowercase_ascii (read_line ()) in
    if List.mem user_input p_list then user_input
    else begin
      print_endline
        "Invalid choice. Please choose a valid Pokemon from the list.";
      get_user_input ()
    end
  in
  get_user_input ()

let initialize_starter_pokemon name =
  match name with
  | "pikachu" -> Pokemon.pikachu ()
  | "oshawott" -> Pokemon.oshawott ()
  | "charizard" -> Pokemon.charizard ()
  | "pyroar" -> Pokemon.pyroar ()
  | "eevee" -> Pokemon.eevee ()
  | "haunter" -> Pokemon.haunter ()
  | "mewtwo" -> Pokemon.mewtwo ()
  | "geodude" -> Pokemon.geodude ()
  | "abra" -> Pokemon.abra ()
  | "poliwhirl" -> Pokemon.poliwhirl ()
  | "meowth" -> Pokemon.meowth ()
  | "diglett" -> Pokemon.diglett ()
  | "parasect" -> Pokemon.parasect ()
  | "golbat" -> Pokemon.golbat ()
  | "jigglypuff" -> Pokemon.jigglypuff ()
  | "nidoran" -> Pokemon.nidoran ()
  | "spearow" -> Pokemon.spearow ()
  | "raticate" -> Pokemon.raticate ()
  | "beedrill" -> Pokemon.beedrill ()
  | "squirtle" -> Pokemon.squirtle ()
  | _ -> failwith "Invalid Pokemon choice"

let rec game_loop game_state =
  match game_state.starter_pokemon with
  | Some name, Some pokemon -> (
      if Pokemon.get_health pokemon<=0 then match end_game () with 
      | () -> game_loop {game_state with starter_pokemon=Some name,
       Some (Pokemon.set_health pokemon 100)}
      else
      print_newline ();
      Printf.printf "You chose %s as your starter Pokemon!\n" name;
      print_newline ();
      print_newline ();
      print_string pokemon.descr;
      print_newline ();
      Printf.printf "Your little fellas health: %i \n"
        (Pokemon.get_health pokemon);
      print_newline ();
      print_game_state game_state;
      (match decide_fate game_state with
      | "battle" ->
          if Random.int 4 = 1 then
            let new_poke = Pokemon.set_health pokemon (encounter pokemon) in
            game_state.starter_pokemon <-
              (Some pokemon.pokemon_name, Some new_poke)
          else game_loop game_state
      | "firstaid" ->
          print_string "Stay safe fella. Health increased.";
          print_newline ();

          let new_poke = Pokemon.pokemon_heal pokemon in
          game_state.starter_pokemon <-
            (Some pokemon.pokemon_name, Some new_poke)
      | "lava" ->
          print_string "You really thought you were cooking? Health reduced.";
          print_newline ();

          let new_poke = Pokemon.pokemon_burn pokemon in
          game_state.starter_pokemon <-
            (Some pokemon.pokemon_name, Some new_poke)
      | _ -> ());
      (* if decide_fate game_state then encounter pokemon else *)
      print_string "Enter a direction (WASD), or 'q' to quit: ";
      match read_line () with
      | "w" | "W" ->
          if move_pokemon game_state Up = Valid then game_loop game_state
          else game_loop game_state
      | "a" | "A" ->
          if move_pokemon game_state Left = Valid then game_loop game_state
          else game_loop game_state
      | "s" | "S" ->
          if move_pokemon game_state Down = Valid then game_loop game_state
          else game_loop game_state
      | "d" | "D" ->
          if move_pokemon game_state Right = Valid then game_loop game_state
          else game_loop game_state
      | "q" | "Q" -> exit 0
      | _ -> game_loop game_state)
  | None, None ->
      let starter_pokemon_name = choose_starter_pokemon () in
      let starter_pokemon = initialize_starter_pokemon starter_pokemon_name in
      game_state.starter_pokemon <-
        (Some starter_pokemon_name, Some starter_pokemon);
      game_loop game_state
  | _ -> failwith "Not_found"

let () =
  let width = 20 in
  let height = 6 in
  let init_x = width / 2 in
  let init_y = height / 2 in
  let game_state =
    {
      x = init_x;
      y = init_y;
      map = initialize_map_with_probabilities width height;
      starter_pokemon = (None, None);
    }
  in

  (* Manually change the starting location to type Path to avoid being spawn
     killed*)
  let updated_map =
    Array.mapi
      (fun x row ->
        Array.mapi
          (fun y tile -> if x = init_x && y = init_y then Path else tile)
          row)
      game_state.map
  in

  let updated_game_state = { game_state with map = updated_map } in
  game_loop updated_game_state
