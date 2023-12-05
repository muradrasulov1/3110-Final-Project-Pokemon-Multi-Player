(** A tile on the playing area *)
module type Tile = sig
  type t
  (** Representation type for tile *)

  val tile_to_string : t -> string
  (** [id] returns a string of the type of tile*)
end

module type GrassTileTemplate = sig
  include Tile

  val poke_list : string list
end

module type HealthTileTemplate = sig
  include Tile

  val tile_effect : int
end