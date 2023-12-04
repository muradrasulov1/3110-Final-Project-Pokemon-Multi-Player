(** Initialization state that loads display and functional features
    for game *)

module type Initialization = sig
    
    (** Representation type for the player*)
    type p

    (** Representation type for playable moves*)
    type dir  

    (** Representation type for map*)
    type m 

    (** Exception for invalid move.
        Invalid moves are when a player tries to move outside
        of bounds of the map*)
        exception OutOfBounds

    (** Moves the player around a generated movable map*)
    val move_direction : unit

end
