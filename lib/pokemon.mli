(** The Pokemon type and its attributes to be used and displayed *)
module type PokemonSprite = sig

  (** Represents Pokemon type of a sprite *)
  type pokemon

  (** Represents species of a Pokemon *)
  type move_tp

  (** Represents Pokemon move *)
  type moves

  (** Representation type for Pokemon *)
  type t

  (** Returns string representation of the Pokemon*)
  val name : pokemon -> string

  (** Returns string representation of Pokemon type*)
  val typ : move_tp -> string 

  (** A list of Pokemon images for battle*)
  val battle_images : pokemon -> string 

  (** A list of Pokemon images for information tab*)
  val search_images : pokemon -> string 

  (** Creates a Pokemon move with related information*)
  val create_move : pokemon -> string -> int ->
    move_tp -> moves

  (** An association list with keys as a attack types,
    values are lists of attack effecticeness to other 
    Pokemon species *)
    val effectivity_list : (move_tp * float list) list 

  (** Calculate the damage of a move on another type of
    Pokemon*)
    val calculate_damage : move_tp -> move_tp -> moves -> int
   
  (** A list of Pokemon moves and their attributes *)
  val moves_list : (moves list) list

end