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
  map : tile array array;
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

let rec game_loop game =
  print_game_state game;
  print_string "Enter a direction (WASD), or 'q' to quit: ";
  match read_line () with
  | "w" | "W" ->
      if move_pokemon game Up = Valid then game_loop game else game_loop game
  | "a" | "A" ->
      if move_pokemon game Left = Valid then game_loop game else game_loop game
  | "s" | "S" ->
      if move_pokemon game Down = Valid then game_loop game else game_loop game
  | "d" | "D" ->
      if move_pokemon game Right = Valid then game_loop game else game_loop game
  | "q" | "Q" -> exit 0
  | _ -> game_loop game

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
    }
  in
  game_loop game_state
