open Grass
open Lava
open Wall
open Empty
open Health

module type Tile = sig

  (** Representation type for tile *)
  type t

  (** Returns the string representation of image of tile*)
  val image : unit -> string

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
module GrassTile (GT : Grass): Tile = struct
  module GT : Grass = GT 

  type t = 
  {
    pos : int * int;
    sf : GT.t option 
  }

  let image () = 
  "https://2dgameartguru.com/wp-content/uploads/2015/11/tutorial_sample59h.png"
  let has_sf x = 
    x.sf != None 

  (** Adds grass feature *)
  let add_sf x ={x with sf= Some
  (GT.add_ball ())}
  let get_coordx x = match x.pos with
  (w, _) -> w
  let get_coordy x = match x.pos with
  (_, z) -> z
  let set_pos p x = {x with pos = (fst p, snd p)}

end

(** A tile with lava on it. If the player stands on this tile 
  for too long, it will decrease their health. *)
  module LavaTile (LT : Lava): Tile = struct
    type t = 
    {
      pos : int * int;
      sf : LT.t option
    }

    let image () = 
    "https://opengameart.org/sites/default/files/Lava%20%234.png"
    let has_sf x = 
      x.sf != None
    let add_sf x = {x with sf=Some (LT.lava_block)}
    let get_coordx z = match z.pos with
    | (x,_) -> x
    let get_coordy z = match z.pos with
    | (_,y) -> y
    let set_pos z x = {x with pos = (fst z, snd z)}
  end


module WallTile (WT : Wall): Tile = struct
  type t = 
    {
      pos : int * int;
      sf : WT.t option
    }

  let image () =
  "https://clipartart.com/images/bricks-texture-clipart-2.png"
  let has_sf x = 
    x.sf != None 
  let add_sf x = {x with sf=Some WT.wall}
  let get_coordx z = match z.pos with
    | (x,_) -> x
  let get_coordy z = match z.pos with
    | (_,y) -> y
  let set_pos z x = {x with pos = (fst z, snd z)}

end

module EmptyTile (ET : Empty): Tile = struct
  type t = 
    {
      pos : int * int;
      sf : ET.t option
    }

  let image () =
  "https://pluspng.com/img-png/tile-floor-png-cora-beige-floor-tile-300.png"
  let has_sf x= 
    x.sf = None
  let add_sf (x : t) : t = x
  let get_coordx z = match z.pos with
    | (x,_) -> x
  let get_coordy z = match z.pos with
    | (_,y) -> y
  let set_pos z x = {x with pos = (fst z, snd z)}
end

module HealthTile (HBT : Health): Tile = struct
  type t = 
    {
      pos : int * int;
      sf : HBT.t option
    }

  let image () =
    "http://www.clipartbest.com/cliparts/xcg/6xX/xcg6xX9ai.png"
  let has_sf x = 
      x.sf != None
  let add_sf x = {x with sf=Some HBT.hb}
  let get_coordx z = match z.pos with
    | (x,_) -> x
  let get_coordy z = match z.pos with
    | (_,y) -> y
  let set_pos z x = {x with pos = (fst z, snd z)}
end