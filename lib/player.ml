(* (** The Pokemon that the player will use to walk around the map and battle
   other Pokemon*) module type PlayerSprite = sig type t (** Representation type
   for player*)

   type pk (** Representation type for pokemon*)

   val get_location : t -> int * int (** Returns the current location of
   player*)

   val set_location : t -> int * int -> t (** Set the player pokemon to
   Pikachu*)

   val get_pokemon : t -> pk (** Returns the Pokemon the player controls*)

   val set_pokemon : t -> pk -> t (** Sets the Pokemon the player controls*)

   val l : t -> t (** Moves the player left *)

   val r : t -> t (** Moves the player left *)

   val u : t -> t (** Moves the player left *)

   val d : t -> t (** Moves the player down*) end

   (** Creates a player sprite out of a Pokemon with a given location*) module
   Make (PP : Pokemon.PokemonSprite) : PlayerSprite = struct type pk = PP.t

   type t = { pokemon : pk; pos : int * int; }

   let get_location p = p.pos let set_location p loc = { p with pos = loc } let
   get_pokemon p = p.pokemon let set_pokemon p pm = { p with pokemon = pm } let
   l p = { p with pos = (fst p.pos - 1, snd p.pos) } let r p = { p with pos =
   (fst p.pos + 1, snd p.pos) } let u p = { p with pos = (fst p.pos, snd p.pos +
   1) } let d p = { p with pos = (fst p.pos, snd p.pos - 1) } end *)
