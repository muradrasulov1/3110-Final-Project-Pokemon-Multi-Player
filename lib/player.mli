(** The Pokemon that the player will use to walk
  around the map and battle other Pokemon*)
      
      (** Representation type for player*)
      type t 

      (** Representation type for pokemon*)
      type pk

      (** Returns the current location of player*)
      val get_location : t -> int * int
      
      (** Set the player pokemon to Pikachu*)
      val set_location : t -> int * int -> t

      (** Returns the Pokemon the player controls*)
      val get_pokemon : t -> pk

      (** Sets the Pokemon the player controls*)
      val set_pokemon : t -> pk -> t

      (** Moves the player left *)
      val l : t -> t 
      
      (** Moves the player left *)
      val r : t -> t 
      
      (** Moves the player left *)
      val u : t -> t 

      (** Moves the player down*)
      val d : t -> t