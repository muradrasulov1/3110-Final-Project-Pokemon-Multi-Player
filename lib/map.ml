let width = 20
let height = 20

type tile =
  | Empty
  | Grass
  | Path
  | Lava
  | FirstAid
  | Wall

let initialize_map () =
  Array.init width (fun x ->
    Array.init height (fun y ->
      if x = 0 || x = width - 1 || y = 0 || y = height - 1 then Wall
      else Empty
    )
  )
