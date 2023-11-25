(** A special feature that a tile can have.
    Has no affect on the player*)
    module type Empty = sig
      (** Representation type for empty*)
      type t

      (** An instance of empty feature*)
      val empty : t
    end

module ESprite : Empty = struct
  type t = unit 
  let empty = ()
end
