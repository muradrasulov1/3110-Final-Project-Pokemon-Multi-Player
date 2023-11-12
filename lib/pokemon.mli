(** The Pokemon type and its attributes to be used and displayed *)
module type Pokemon_Sprite = sig

  (** Representation type for Pokemon *)
  type t

  (** Returns a list of combat moves for a given Pokemon *)
  val combat_moves : t -> 'a HashTbl -> string list

  (***)
end