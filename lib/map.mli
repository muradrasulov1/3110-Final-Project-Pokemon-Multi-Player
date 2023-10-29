(** Module defining a simple game world with tiles. *)

(** The width of the game world. *)
val width : int

(** The height of the game world. *)
val height : int

(** The initial x-coordinate of the player. *)
val init_x : int

(** The initial y-coordinate of the player. *)
val init_y : int

(** Type representing movement commands. *)
type command =
  | Up
  | Left
  | Right
  | Down

(** Type representing the result of a move. *)
type move =
  | Valid
  | Invalid

(** Type representing different types of tiles. *)
type tile =
  | Empty
  | Grass
  | Path
  | Lava
  | FirstAid
  | Wall

(** Function to calculate the probability of a tile type. *)
val prob_of : tile -> int

(** Initialize the game map with given probabilities for tile types.
    @param width The width of the map.
    @param height The height of the map.
    @return An array representing the initialized map.
*)
val initialize_map_with_probabilities : int -> int -> tile array array
