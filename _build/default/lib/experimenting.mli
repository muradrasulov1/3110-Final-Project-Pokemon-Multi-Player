(**The main game function that utlizes the Pokemon module.*)

val p_list : string list
(**List of Pokemon names*)

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

type game_state = {
  mutable x : int;
  mutable y : int;
  mutable map : tile array array;
  mutable starter_pokemon : string option * Pokemon.t option;
      (* Comment: Option type to represent the possibility of no starter
         Pokemon *)
  mutable just_moved : bool;
}
(** type representing game state (x,y) as current position of player map as
    current map of tiles being played on starter_pokemon as player's choice of
    pokemon*)

val string_of_tile : tile -> string
(**String representation of tile*)

val print_game_state : game_state -> unit
(**Prints out layout of map and player position in Terminal*)

val prob_of : tile -> int
(** Assigns probability of tile*)

val initialize_map_with_probabilities : int -> int -> tile array array
(** Initializes the array of tiles *)

val move_pokemon : game_state -> command -> move
(** Determines if move is valid based on current position and command chosen. A
    move in a certain direction is valid if it moves to another tile that is not
    a wall tile. Otherwise, the move is invalid.*)

val decide_fate : game_state -> string
(** Determines if player will battle another Pokemon when standing on grass
    tile. If player is standing on a grass tile and a random function evaluates
    to true, returns true. Otherwise, returns false*)

val encounter : Pokemon.t -> int
(** Conducts battle between two Pokemon*)

val choose_starter_pokemon : unit -> string
(** Presents starter screen and allows player to choose Pokemon sprite at
    beginning of game to play as*)

val initialize_starter_pokemon : string -> Pokemon.t
(** Initializes player choice of Pokemon as their avatar*)

val game_loop : game_state -> unit
(** Keeps game running until the player selects 'quit' command*)
