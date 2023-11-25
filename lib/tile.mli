(** A tile on the playing area *)
module type Tile = sig
  
    (** Representation type for tile *)
    type t

    (** Returns the string representation of image of tile*)
    val image : unit -> string
  
    (** [has_sf] returns true if tile has Some special feature.
        If tile has None, returns false. *)
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