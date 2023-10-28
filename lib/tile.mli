open Grass

(** A tile on the playing area *)
module type Tile = sig
  
    (** Representation type for tile *)
    type t 

    (** Image of the tile *)
    type image : string

    (** Returns whether tile has grass on it *)
    val has_grass : t -> bool

    (** Add grass to a tile *)
    val add :  Grass.t -> t -> t

end

