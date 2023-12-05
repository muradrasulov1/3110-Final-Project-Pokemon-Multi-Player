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

  val tile_effect : string
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
      "Poliwhirl";
      "Charizard";
      "Beedrill";
      "Raticate";
    ]
end

module FirstAidTile (TT:Tile) : HealthTileTemplate = struct
include TT
let tile_effect
end

(** A tile with lava on it. If the player stands on this tile for too long, it
    will decrease their health. *)
module LavaTile (LT : Lava) : Tile = struct
  type t = {
    pos : int * int;
    sf : LT.t option;
  }

  let image () = "https://opengameart.org/sites/default/files/Lava%20%234.png"
  let has_sf x = x.sf != None
  let add_sf x = { x with sf = Some LT.lava_block }

  let get_coordx z =
    match z.pos with
    | x, _ -> x

  let get_coordy z =
    match z.pos with
    | _, y -> y

  let set_pos z x = { x with pos = (fst z, snd z) }
end

module WallTile (WT : Wall) : Tile = struct
  type t = {
    pos : int * int;
    sf : WT.t option;
  }

  let image () = "https://clipartart.com/images/bricks-texture-clipart-2.png"
  let has_sf x = x.sf != None
  let add_sf x = { x with sf = Some WT.wall }

  let get_coordx z =
    match z.pos with
    | x, _ -> x

  let get_coordy z =
    match z.pos with
    | _, y -> y

  let set_pos z x = { x with pos = (fst z, snd z) }
end

module EmptyTile (ET : Empty) : Tile = struct
  type t = {
    pos : int * int;
    sf : ET.t option;
  }

  let image () =
    "https://pluspng.com/img-png/tile-floor-png-cora-beige-floor-tile-300.png"

  let has_sf x = x.sf != None
  let add_sf (x : t) : t = { x with sf = Some ET.empty }

  let get_coordx z =
    match z.pos with
    | x, _ -> x

  let get_coordy z =
    match z.pos with
    | _, y -> y

  let set_pos z x = { x with pos = (fst z, snd z) }
end

module HealthTile (HBT : Health) : Tile = struct
  type t = {
    pos : int * int;
    sf : HBT.t option;
  }

  let image () = "http://www.clipartbest.com/cliparts/xcg/6xX/xcg6xX9ai.png"
  let has_sf x = x.sf != None
  let add_sf x = { x with sf = Some HBT.hb }

  let get_coordx z =
    match z.pos with
    | x, _ -> x

  let get_coordy z =
    match z.pos with
    | _, y -> y

  let set_pos z x = { x with pos = (fst z, snd z) }
end
