(** A special feature that a tile can have.
    These tiles are boundaries for the map*)
    module type Wall = sig
      (** Representation type for wall*)
      type t 

      (** An instance of the wall feature*)
      val wall : t
    end
  
module WSprite : Wall = struct
  type t = unit 
  let wall = ()
end