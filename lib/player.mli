(** The Pokemon that the player will use to walk around the map and battle other
    Pokemon*)

type t
(** Representation type for player*)

type pk
(** Representation type for pokemon*)

val get_location : t -> int * int
(** Returns the current location of player*)

val set_location : t -> int * int -> t
(** Set the player pokemon to Pikachu*)

val get_pokemon : t -> pk
(** Returns the Pokemon the player controls*)

val set_pokemon : t -> pk -> t
(** Sets the Pokemon the player controls*)

val l : t -> t
(** Moves the player left *)

val r : t -> t
(** Moves the player left *)

val u : t -> t
(** Moves the player left *)

val d : t -> t
(** Moves the player down*)
