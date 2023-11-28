open Map 
open Pokemon 

(** The Pokemon that the player will use to walk
    around the map and battle other Pokemon*)
    module type PlayerSprite = sig
      
      (** Representation type for player*)
      type t 

      (** Representation type for pokemon*)
      type pk

      (** Returns the current location of player*)
      val get_location : t -> int * int
      
      (** Set the player pokemon to Pikachu*)
      val set_location : t -> int * int -> t

      val get_pokemon : t -> pk

      (** Moves the player left *)
      val l : t -> t 
      
      (** Moves the player left *)
      val r : t -> t 
      
      (** Moves the player left *)
      val u : t -> t 

      (** Moves the player down*)
      val d : t -> t
  end

(** Creates a player sprite out of a Pokemon with
    a given location*)
    module Make : PlayerSprite