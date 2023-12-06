(* pokemon_game.mli *)

(**List of Pokemon names*)
val p_list : string list 

(** type for controls of the game*)
type command =
  | Up
  | Left
  | Right
  | Down
  | Quit

(** type declaring if a control is fair or unfair in game *)
type move =
  | Valid
  | Invalid

(** type for the tiles that make up map*)
type tile =
  | Empty
  | Grass
  | Path
  | Lava
  | FirstAid
  | Wall

(** type representing game state
    (x,y) as current position of player
    map as current map of tiles being played on
    starter_pokemon as player's choice of pokemon*)
type game_state = {
  mutable x : int;
  mutable y : int;
  mutable map : tile array array;
  mutable starter_pokemon : string option * Pokemon.t option;
      (* Comment: Option type to represent the possibility of no starter
         Pokemon *)
}

(**String representation of tile*)
val string_of_tile : tile -> string

(**Prints out layout of map and player position in Terminal*)
val print_game_state : game_state -> unit

(** Assigns probability of tile*)
val prob_of : tile -> int

(** Initializes the array of tiles *)
val initialize_map_with_probabilities : int -> int -> tile array array

(** Determines if move is valid based on current position and command
    chosen.
    A move in a certain direction is valid if it moves to another tile that
    is not a wall tile.
    Otherwise, the move is invalid.*)
val move_pokemon : game_state -> command -> move

(** Determines if player will battle another Pokemon when standing on 
    grass tile. If player is standing on a grass tile and a random
function evaluates to true, returns true. Otherwise, returns false*)
val decide_fate : game_state -> bool

(** Conducts battle between two Pokemon*)
val encounter : Pokemon.t -> unit

(** Presents starter screen and allows player to choose Pokemon sprite
    at beginning of game to play as*)
val choose_starter_pokemon : unit -> string

(** Initializes player choice of Pokemon as their avatar*)
val initialize_starter_pokemon : string -> Pokemon.t

(** Keeps game running until the player selects 'quit' command*)
val game_loop : game_state -> unit
