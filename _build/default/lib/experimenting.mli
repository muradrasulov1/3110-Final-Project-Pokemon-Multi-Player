(* pokemon_game.mli *)

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
  mutable starter_pokemon : string option;
      (* Comment: Option type to represent the possibility of no starter
         Pokemon *)
}

val string_of_tile : tile -> string
val print_game_state : game_state -> unit
val prob_of : tile -> int
val initialize_map_with_probabilities : int -> int -> tile array array
val move_pokemon : game_state -> command -> move
val game_loop : game_state -> unit
