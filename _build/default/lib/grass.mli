(** A special feature that a tile can have. Tiles can randomly have Pokemon
    balls to collect*)
type pk
(** Representation type for pokemon ball*)

type t
(** Representation type for grass *)

val empty_grass : t
(** Grass that contains no ball*)

val pokelist : pk list
(**list of pokemon available*)

val has_ball : t -> bool
(** [has_ball] returns true if grass contains a ball. Otherwise, returns false. *)

val add_ball : unit -> t
(** [add_ball] adds a Pokemon ball to the grass based on random number
    generator. If number generated is greater than 60, then Some ball is added
    to the grass. Else, grass remains empty. Otherwise, no ball is added *)