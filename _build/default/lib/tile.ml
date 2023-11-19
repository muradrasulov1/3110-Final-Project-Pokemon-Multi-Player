(* open Grass *)
open Random

(** A tile on the playing area *)
module type Tile = sig
  
  (** Representation type for tile *)
  type t 

  (** Image of the tile *)
  type image

  (** [has_sf] returns true if tile has a special feature.
      Otherwise, returns false. *)
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

module GrassTile : Tile = struct

  type t = {pos : int * int; sf : Grass.t option}
  type image = string

  let has_sf x = x.sf != None

  (** Adds grass feature *)
  let add_sf x = x.sf = Some Grass.t
  let get_coordx x = match x.pos with
  (w, _) -> w
  let get_coordy x = match x.pos with
  (_, z) -> z
  let set_pos p x = x.pos = p

end
