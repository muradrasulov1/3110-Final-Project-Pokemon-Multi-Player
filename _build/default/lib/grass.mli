(** A special feature that a tile can have. 
    Tiles can randomly have Pokemon balls to collect*)
    module type Grass = sig
    
    (** Representation type for pokemon ball*)
    type pb
      
    (** Representation type for grass *)
    type t

    (** Grass that contains no ball*)
    val empty_grass : t

    (** [has_ball] returns true if grass contains a ball. Otherwise,
        returns false. *)
    val has_ball : t -> bool

    (** [add_ball] adds a Pokemon ball to the grass based on random 
    number generator. If number generated is greater than 60, then 
    Some ball is added to the grass. Else, grass remains empty.  
    Otherwise, no ball is added *)
    val add_ball : unit -> t
end
