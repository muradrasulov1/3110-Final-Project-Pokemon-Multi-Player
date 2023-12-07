(** The Pokemon type and its attributes to be used and displayed *)
type pokemon
(** Represents Pokemon type of a sprite *)

type poke_tp
(** Represents species of a Pokemon *)

type moves = {
  fighter : pokemon;
  name : string;
  tp : poke_tp;
  basep : int;
  descr : string;
}
(** Represents Pokemon move *)

type t = {
  pokemon_name : string;
  health : int;
  attack : int;
  defense : int;
  speed : int;
  move_list : moves list;
  poke_typ : poke_tp * poke_tp;
  descr : string;
}
(** Representation type for Pokemon *)

(**Representation for whether player wins or loses*)
type outcome =
  | Win
  | Loss

val name : pokemon -> string
(** Returns string representation of the Pokemon*)

val typ : poke_tp -> string
(** Returns string representation of Pokemon type*)

(** A list of Pokemon images for information tab*)

val create_move : pokemon -> string -> poke_tp -> int -> string -> moves
(** Creates a Pokemon move with related information*)

val effectivity_list : (poke_tp * float list) list
(** An association list with keys as a attack types, values are lists of attack
    effecticeness to other Pokemon species *)

val get_health : t -> int
(** Returns the current health of a Pokemon*)

val pokemon_heal : t -> t
(** [pokemon_heal a] returns a new Pokemon with increased health. *)

val pokemon_burn : t -> t
(** [pokemon_burn a] returns a new Pokemon with reduced health. *)

val battle : t -> t -> outcome
(**Conducts battle between two Pokemon*)

val charizard_moves : moves list
(** Creates list of Charizard moves *)

val squirtle_moves : moves list
(** Creates list of Squirtle moves *)

val beedrill_moves : moves list
(** Creates list of Beedrill moves *)

val raticate_moves : moves list
(** Creates list of Raticate moves*)

val spearow_moves : moves list
(** Creates list of Spearow moves *)

val pikachu_moves : moves list
(** Creates list of Pikachu moves *)

val nidoran_moves : moves list
(** Creates list of Nidoran moves *)

val jigglypuff_moves : moves list
(** Creates list of Jigglypuff moves *)

val golbat_moves : moves list
(** Creates list of Golbat moves *)

val parasect_moves : moves list
(** Creates list of Parasect moves *)

val diglett_moves : moves list
(** Creates list of Diglett moves *)

val meowth_moves : moves list
(** Creates list of Meowth moves *)

val poliwhirl_moves : moves list
(** Creates list of Poliwhirl moves *)

val abra_moves : moves list
(** Creates list of Abra moves *)

val geodude_moves : moves list
(** Creates list of Geodude moves *)

val mewtwo_moves : moves list
(** Creates list of Mewto moves *)

val haunter_moves : moves list
(** Creates list of Haunter moves *)

val eevee_moves : moves list
(** Creates list of Eevee moves *)

val pyroar_moves : moves list
(** Creates list of Pyroar moves *)

val oshawott_moves : moves list
(** Creates list of Oshawott moves *)

val charizard : unit -> t
(** Representation for Charizard*)

val squirtle : unit -> t
(** Representation for Squirtle*)

val beedrill : unit -> t
(** Representation for Bedrill*)

val raticate : unit -> t
(** Representation for Raticate*)

val spearow : unit -> t
(** Representation for Spearow*)

val pikachu : unit -> t
(** Representation for Pikachu*)

val nidoran : unit -> t
(** Representation for Nidoran*)

val jigglypuff : unit -> t
(** Representation for Jigglypuff*)

val golbat : unit -> t
(** Representation for Golbat*)

val parasect : unit -> t
(** Representation for Parasect*)

val diglett : unit -> t
(** Representation for Diglett*)

val meowth : unit -> t
(** Representation for Meowth*)

val poliwhirl : unit -> t
(** Representation for Poliwhirl*)

val abra : unit -> t
(** Representation for Abra*)

val geodude : unit -> t
(** Representation for Geodude*)

val mewtwo : unit -> t
(** Representation for Mewto*)

val haunter : unit -> t
(** Representation for Haunter*)

val eevee : unit -> t
(** Representation for Eevee*)

val pyroar : unit -> t
(** Representation for Pyroar*)

val oshawott : unit -> t
(** Representation for Oshawott*)

val dmg_done : moves -> t -> t -> float
(** Calculates the damage of a certain move from one Pokemon type to another*)

val pokelist : (unit -> t) list
(** List of pokemon sprites*)
