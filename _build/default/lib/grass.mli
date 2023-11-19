(*(** A speial feature that a tile can have. 
    Tiles can randomly have Pokemon balls to collect*)
    module type Grass = sig
      
        (** Representation type for grass *)
        type t

        (** [has_ball] returns true if grass contains a ball. Otherwise,
            returns false. *)
        val has_ball : t -> bool

        (***)

    end*)