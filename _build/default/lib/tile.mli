(* open Grass *)

(** A tile on the playing area *)
module type Tile = sig
  
    (** Representation type for tile *)
    type t 

    (** Image of the tile *)
    type image
    (** [has_sf] returns true if tile doesn't have a special 
      feature. Otherwise, returns false. *)
    val has_sf : t -> bool

    (** [add_sf] adds a special feature to a tile *)
    val add_sf : t -> t

    (** [get_coordx] returns the x-coordinate of tile*)
    val get_coordx : t -> int

    (** [get_coordy] returns the y-coordinate of tile*)
    val get_coordy : t -> int

    (** [set_pos] sets the x- and y-coordinatees of the tile*)
    val set_pos : int * int -> t -> t
end

(** A tile with grass that may randomly contain Pokemon balls 
    avaiblable for catching. *)
module GrassTile : Tile

(** A tile with lava on it. If the player stands on this tile 
    for too long, it will decrease their health. *)
module LavaTile : Tile 

(** A tile with a wall on it that represents boundaries for the 
    map. The player cannot run past the boundaries.*)
module WallTile : Tile

(** An empty tile that has no special effect *)
module EmptyTile : Tile