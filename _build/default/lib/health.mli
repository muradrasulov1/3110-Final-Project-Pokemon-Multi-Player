(** A special feature that a tile can have.
    When player stands on tile, they heal*)
    module type Health = sig
      (** Representation type for health block*)
      type t 

      (** Regular instance of health block feature*)
      val hb : t
    end