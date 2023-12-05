(* open Tile let width = 5 let height = 5 let init_x = width / 2 let init_y =
   height / 2

   type command = | Up | Left | Right | Down

   type move = | Valid | Invalid

   type tile = | Empty | Grass | Path | Lava | FirstAid | Wall

   let string_of_tile = function | Wall -> "W" | Grass -> "X" | Path -> "." |
   Lava -> "." | FirstAid -> "+" | Empty -> "."

   let print_map map = let width = Array.length map in let height = Array.length
   map.(0) in

   for y = 0 to height - 1 do for x = 0 to width - 1 do print_string
   (string_of_tile map.(x).(y) ^ " ") (* Add more spaces here *) done;
   print_endline ""; for _ = 1 to 2 do print_endline "" (* Add vertical spacing
   *) done done

   let prob_of = function | Grass -> 24 | Path -> 50 | Lava | FirstAid -> 13 | _
   -> 0

   let initialize_map_with_probabilities width height = (* Initialize the Random
   module with a seed (can be any integer) *) Random.init 42; let grass_prob =
   prob_of Grass in let path_prob = prob_of Path in let lava_prob = prob_of Lava
   in

   let map = Array.init width (fun x -> Array.init height (fun y -> let
   rand_value = Random.int 100 in match rand_value with | _ when x = 0 || x =
   width - 1 || y = 0 || y = height - 1 -> Wall | _ when rand_value < grass_prob
   -> Grass | _ when rand_value < grass_prob + path_prob -> Path | _ when
   rand_value < grass_prob + path_prob + lava_prob -> Lava | _ -> FirstAid)) in
   map *)

(* pokemon_game.ml *)

open Pokemon

let p_list =
  [
    "Pikachu";
    "Oshawott";
    "Charizard";
    "Pyroar";
    "Eevee";
    "Haunter";
    "Mewtwo";
    "Geodude";
    "Abra";
    "Poliwhirl";
    "Meowth";
    "Diglett";
    "Parasect";
    "Golbat";
    "Jigglypuff";
    "Nidoran";
    "Spearow";
    "Raticate";
    "Beedrill";
    "Squirtle";
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
  | Wall

type game_state = {
  mutable x : int;
  mutable y : int;
  mutable map : tile array array;
  mutable starter_pokemon : (string option * Pokemon.t option);
      (* mutable starter_pokemon : Pokemon.t option; *)
      (* Option type to represent the possibility of no starter Pokemon *)
}

let string_of_tile = function
  | Wall -> "W"
  | Grass -> "X"
  | Path -> "."
  | Lava -> "."
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
  | Grass -> 24
  | Path -> 50
  | Lava | FirstAid -> 13
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

let decide_fate g =
  print_endline "in decide fate";
  let x, y = (g.x, g.y) in
  if string_of_tile g.map.(x).(y) = "X" then begin
    print_endline "in decide fate";
    true
  end
  else begin
    print_endline "in decide fate";
    false
  end
  
let encounter poke =
  if Pokemon.battle (poke) (Pokemon.oshawott ()) = Win then ()
  else print_string "GAME OVER"

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
    let user_input = read_line () in
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
  | "Pikachu" ->
      Pokemon.pikachu ()
  | _ -> failwith "Invalid Pokemon choice"

let rec game_loop game_state =
  match game_state.starter_pokemon with
  | Some name, Some pokemon -> (
      Printf.printf "You chose %s as your starter Pokemon!\n"
        (* starter_pokemon.pokemon_name; *)
        name;
      if decide_fate game_state then encounter pokemon
      else print_game_state game_state;
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
  | (None, None) ->
      let starter_pokemon_name = choose_starter_pokemon () in
      let starter_pokemon = initialize_starter_pokemon starter_pokemon_name in
      game_state.starter_pokemon <- (Some starter_pokemon_name, Some starter_pokemon) ;
      game_loop game_state
    | _ -> failwith "Not_found"

let () =
  let width = 5 in
  let height = 5 in
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
  game_loop game_state
