(** Creates a player sprite out of a Pokemon with a given location*)

type pk = Pokemon.t

type t = {
  pokemon : pk;
  pos : int * int;
}

let get_location p = p.pos
let set_location p loc = { p with pos = loc }
let get_pokemon p = p.pokemon
let set_pokemon p pm = { p with pokemon = pm }
let l p = { p with pos = (fst p.pos - 1, snd p.pos) }
let r p = { p with pos = (fst p.pos + 1, snd p.pos) }
let u p = { p with pos = (fst p.pos, snd p.pos + 1) }
let d p = { p with pos = (fst p.pos, snd p.pos - 1) }
