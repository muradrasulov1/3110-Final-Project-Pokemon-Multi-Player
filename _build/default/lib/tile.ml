(** type tile = | Empty | Grass | Path | Lava | FirstAid | Wall *)

(** A tile on the playing area *)
module type Tile = sig
  type t
  (** Representation type for tile *)

  val tile_to_string : t -> string
  (** [id] returns a string of the type of tile*)
end

(**grass tile template signature*)
module type GrassTileTemplate = sig
  include Tile

  val poke_list : string list
end

(**health tile template signature*)
module type HealthTileTemplate = sig
  include Tile

  val tile_effect : int
end

(**A functor which creates grass tiles with easy Pokemon encounters*)
module EasyGrassTile (TT : Tile) : GrassTileTemplate = struct
  include TT

  let poke_list =
    [
      "Spearow";
      "Diglett";
      "Geodude";
      "Eevee";
      "Nidoran";
      "Meowth";
      "Pikachu";
      "Jigglypuff";
      "Oshawott";
      "Squirtle";
      "Abra";
      "Pikachu";
    ]
end

(**A functor which creates grass tiles with harder Pokemon encounters*)
module HardGrassTile (TT : Tile) : GrassTileTemplate = struct
  include TT

  let poke_list =
    [
      "Poliwhirl";
      "Golbat";
      "Parasect";
      "Pyroar";
      "Charizard";
      "Beedrill";
      "Raticate";
    ]
end

(**A functor which creates first aid tiles*)
module FirstAidTile (TT : Tile) : HealthTileTemplate = struct
  include TT

  (**75% chance to raise health by 40, 25% chance to raise health by 10*)
  let tile_effect =
    match Random.int 4 + 1 with
    | 1 -> 40
    | _ -> 10
end

(**A functor which creates lava tiles*)
module LavaTile (TT : Tile) : HealthTileTemplate = struct
  include TT

  (**75% chance to reduce health by 10, 25% chance to reduce health by 20*)
  let tile_effect =
    match Random.int 4 + 1 with
    | 1 -> -20
    | _ -> -10
end
