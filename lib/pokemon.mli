(** The Pokemon type and its attributes to be used and displayed *)
module type PokemonSprite = sig

  (** Represents Pokemon type of a sprite *)
  type pokemon

  (** Represents species of a Pokemon *)
  type poke_tp

  (** Represents Pokemon move *)
  type moves = {

  fighter : pokemon;
  name : string;
  tp : poke_tp;
  basep : int;
  descr : string;
  } 

  (** Representation type for Pokemon *)
  type t = {
    pokemon_name : string;
    health : int;
    attack : int;
    defense : int;
    speed : int;
    move_list : moves list;
    poke_typ : (poke_tp * poke_tp);
    battle_image : string;
    search_image : string;
    descr : string
  }

  (** Returns string representation of the Pokemon*)
  val name : pokemon -> string

  (** Returns string representation of Pokemon type*)
  val typ : poke_tp -> string 

  (** A list of Pokemon images for battle*)
  val battle_images : pokemon -> string 

  (** A list of Pokemon images for information tab*)
  val search_images : pokemon -> string 

  (** Creates a Pokemon move with related information*)
  val create_move : pokemon -> string -> poke_tp ->
  int -> string -> moves

  (** An association list with keys as a attack types,
    values are lists of attack effecticeness to other 
    Pokemon species *)
    val effectivity_list : (poke_tp * float list) list 

  (** Returns the current health of a Pokemon*)
  val get_health : t -> int

  (** Creates list of Charizard moves *)
  val charizard_moves : moves list

  (** Creates list of Squirtle moves *)
  val squirtle_moves : moves list

  (** Creates list of Beedrill moves *)
  val beedrill_moves : moves list

  (** Creates list of Raticate moves*)
  val raticate_moves : moves list

  (** Creates list of Spearow moves *)
  val spearow_moves : moves list

  (** Creates list of Pikachu moves *)
  val pikachu_moves : moves list

  (** Creates list of Nidoran moves *)
  val nidoran_moves : moves list

  (** Creates list of Jigglypuff moves *)
  val jigglypuff_moves : moves list

  (** Creates list of Golbat moves *)
  val golbat_moves : moves list

  (** Creates list of Parasect moves *)
  val parasect_moves : moves list

  (** Creates list of Diglett moves *)
  val diglett_moves : moves list

  (** Creates list of Meowth moves *)
  val meowth_moves : moves list

  (** Creates list of Poliwhirl moves *)
  val poliwhirl_moves : moves list

  (** Creates list of Abra moves *)
  val abra_moves : moves list

  (** Creates list of Geodude moves *)
  val geodude_moves : moves list

  (** Creates list of Mewto moves *)
  val mewtwo_moves : moves list

  (** Creates list of Haunter moves *)
  val haunter_moves : moves list

  (** Creates list of Eevee moves *)
  val eevee_moves : moves list

  (** Creates list of Pyroar moves *)
  val pyroar_moves : moves list

  (** Creates list of Oshawott moves *)
  val oshawott_moves : moves list

  (** Representation for Charizard*)
  val charizard : unit -> t

  (** Representation for Squirtle*)
  val squirtle : unit -> t

  (** Representation for Bedrill*)
  val beedrill : unit -> t

  (** Representation for Raticate*)
  val raticate : unit -> t

  (** Representation for Spearow*)
  val spearow : unit -> t

  (** Representation for Pikachu*)
  val pikachu : unit -> t

  (** Representation for Nidoran*)
  val nidoran : unit -> t

  (** Representation for Jigglypuff*)
  val jigglypuff : unit -> t

  (** Representation for Golbat*)
  val golbat : unit -> t

  (** Representation for Parasect*)
  val parasect : unit -> t

  (** Representation for Diglett*)
  val diglett : unit -> t

  (** Representation for Meowth*)
  val meowth : unit -> t

  (** Representation for Poliwhirl*)
  val poliwhirl : unit -> t

  (** Representation for Abra*)
  val abra : unit -> t 

  (** Representation for Geodude*)
  val geodude : unit -> t

  (** Representation for Mewto*)
  val mewtwo : unit -> t

  (** Representation for Haunter*)
  val haunter : unit -> t

  (** Representation for Eevee*)
  val eevee : unit -> t

  (** Representation for Pyroar*)
  val pyroar : unit -> t

  (** Representation for Oshawott*)
  val oshawott : unit -> t

  (** Calculates the damage of a certain move from
      one Pokemon type to another*)
      val dmg_done : moves -> t -> t -> float

end