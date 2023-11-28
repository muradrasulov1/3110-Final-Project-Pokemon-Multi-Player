(** A special feature a tile can have.
    These tiles can cause damage to player when
    they are stood on for too long*)
    module type Lava = sig
      (** Representation type for lava *)
      type t

      (** A regular lava feature*)
      val lava_block : t
    end