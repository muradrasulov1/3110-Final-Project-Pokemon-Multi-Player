type pokemon = | Charizard 
| Squirtle
| Beedrill
| Ratticate
| Spearow
| Pikachu
| Nidoran
| Jigglypuff
| Golbat
| Parasect
| Diglett
| Meowth
| Poliwhirl
| Abra
| Geodude
| Mewto
| Haunter
| Eevee
| Mewto 
| Oshawott

type tp = 
| Electric
| Water
| Fire
| Grass 
| Ice 
| Fighting
| Poison
| Ground 
| Flying
| Psychic
| Steel

let moves = {fighter : pokemon; name : string; power : int}
let move_attributes f n p = {fighter = f; name = n ; power = n}

let moves_list = [move_attributes Pikachu "Thunder Shock" 5]