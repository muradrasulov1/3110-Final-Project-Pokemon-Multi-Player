let width = 5
let height = 5

let init_x = width / 2
let init_y = height / 2

type command =
  | Up
  | Left
  | Right
  | Down

type move =
  | Valid
  | Invalid


type tile =
  | Empty
  | Grass
  | Path
  | Lava
  | FirstAid
  | Wall

let prob_of = function
| Grass -> 60
| Path -> 20
| Lava | FirstAid -> 10
| _ -> 0

let initialize_map_with_probabilities width height =
  (* Initialize the Random module with a seed (can be any integer) *)
  Random.init 42;
  let grass_prob = prob_of Grass in
  let path_prob = prob_of Path in
  let lava_prob = prob_of Lava in

  let map =
    Array.init width (fun x ->
      Array.init height (fun y ->
        let rand_value = Random.int 100 in
        match rand_value with
        | _ when x = 0 || x = width - 1 || y = 0 || y = height - 1 -> Wall
        | _ when rand_value < grass_prob -> Grass
        | _ when rand_value < grass_prob + path_prob -> Path
        | _ when rand_value < grass_prob + path_prob + lava_prob -> Lava
        | _ -> FirstAid
      )
    )
  in
  map


