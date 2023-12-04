(** A special feature that a tile can have. 
  Tiles can randomly have Pokemon balls to collect*)
  module type Grass = sig
    
    (** Representation type for pokemon*)
    type pk
        
    (** Representation type for grass *)
    type t
  
    (** Grass that contains no ball*)
    val empty_grass : t

    (**list of pokemon available*)
    val pokelist : pk list

    (** [has_ball] returns true if grass contains a ball. Otherwise,
        returns false. *)
    val has_ball : t -> bool

    (** [add_ball] adds a random Pokemon ball to the grass based on random 
    number generator. If number generated is greater than 60, then 
    Some ball is added to the grass. Else, grass remains empty.  
    Otherwise, no ball is added *)
    val add_ball : unit -> t
  end


module GSprite (Pokeball : Pokemon.PokemonSprite) : Grass = struct

  type pk = unit -> Pokeball.t 
  type t = pk option

  let empty_grass : t = None

  let pokelist = 
    [
    Pokeball.abra;
    Pokeball.geodude;
    Pokeball.diglett;
    Pokeball.meowth;
    Pokeball.nidoran;
    Pokeball.jigglypuff;
    Pokeball.spearow;
    ]

  let has_ball (x : t) : bool = match x with
  | None -> false
  | _ -> true

  let rec index (n : int) (lst : (unit -> Pokeball.t) list) = 
    match lst with 
  | [] -> empty_grass
  | h::t -> if n=0 then Some h else index (n-1) t
  let add_ball () = let randindex=(Random.int (List.length pokelist))in
  let c=(index randindex pokelist) in c
end