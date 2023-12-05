(** A tile on the playing area *)
module type Tile = sig
  type t
  (** Representation type for tile *)

  val tile_to_string : t -> string
  (** [id] returns a string of the type of tile*)
end
