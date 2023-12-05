  type pk = unit -> Pokemon.t
  type t = pk option

  let empty_grass : t = None

  let pokelist =
    [
      Pokemon.abra;
      Pokemon.geodude;
      Pokemon.diglett;
      Pokemon.meowth;
      Pokemon.nidoran;
      Pokemon.jigglypuff;
      Pokemon.spearow;
    ]

  let has_ball (x : t) : bool =
    match x with
    | None -> false
    | _ -> true

  let rec index (n : int) (lst : (unit -> Pokemon.t) list) =
    match lst with
    | [] -> empty_grass
    | h :: t -> if n = 0 then Some h else index (n - 1) t

  let add_ball () =
    let randindex = Random.int (List.length pokelist) in
    let c = index randindex pokelist in
    c