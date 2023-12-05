(** A tile on the playing area *)
module type Tile = sig
  type t
  (** Representation type for tile *)

  val tile_to_string : t -> string
  (** [id] returns a string of the type of tile*)
end

type tile =
  | Empty
  | EasyGrass
  | HardGrass
  | Path
  | Lava
  | FirstAid
  | Wall

(** A tile with grass that may randomly contain Pokemon balls avaiblable for
    catching. *)
module type GrassTileTemplate = sig
  include Tile

  val poke_list : string list
end

module type HealthTileTemplate = sig
  include Tile

  val tile_effect : int
end

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

module FirstAidTile (TT : Tile) : HealthTileTemplate = struct
  include TT

  (**75% chance to raise health by 40, 25% chance to raise health by 10*)
  let tile_effect =
    match Random.int 4 + 1 with
    | 1 -> 40
    | _ -> 10
end

module LavaTile (TT : Tile) : HealthTileTemplate = struct
  include TT

  (**75% chance to reduce health by 10, 25% chance to reduce health by 20*)
  let tile_effect =
    match Random.int 4 + 1 with
    | 1 -> -20
    | _ -> -10
end
