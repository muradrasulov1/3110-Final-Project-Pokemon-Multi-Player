(** To execute graphics for welcome_screen *)  
open Graphics

(** Presents the welcome screen at beginning of application
    Requires user to press Spacebar to continue. *)


let window_state_change () = 
  let e = wait_next_event [ Key_pressed ] in
  if e.key = 'e' then
   (  set_window_title "POCAMLmon";
   set_font "-misc-fixed-medium-r-normal--20-200-75-75-c-100-iso10646-1";
   set_color red;
   moveto 570 360;
   draw_string "Press [P] to START";
   moveto 570 330;
   draw_string "Press [C] to CUSTOMIZE YOUR POKE";
   moveto 570 300;
   draw_string "Press [S] for SETTINGS";
 
   Graphics.moveto 650 20;
   Graphics.set_color Graphics.black;
   Graphics.draw_string
     "Built by Shakeim, Murad, Omo, Armaan";
 )
let rec loading_menu () =
  set_window_title "POCAMLmon";
  set_font "-misc-fixed-medium-r-normal--20-200-75-75-c-100-iso10646-1";
  set_color red;
  moveto 570 360;
  draw_string "Press [P] to START";
  moveto 570 330;
  draw_string "Press [C] to CUSTOMIZE YOUR POKE";
  moveto 570 300;
  draw_string "Press [S] for SETTINGS";

  Graphics.moveto 700 20;
  Graphics.set_color Graphics.black;
  Graphics.draw_string
    "Built by Shakeim, Murad, Omo, Armaan";
  let e = wait_next_event [ Key_pressed ] in
  if e.key = 'p' then
   (open_graph " 1280x720";
    set_font "-misc-fixed-medium-r-normal--20-200-75-75-c-100-iso10646-1";
    set_color red;
    moveto 570 100;
    draw_string "Game Window Under Construction"; window_state_change ())
  else 
  if e.key = 'c' then
   (open_graph " 1280x720";
    set_font "-misc-fixed-medium-r-normal--20-200-75-75-c-100-iso10646-1";
    set_color red;
    moveto 570 360;
    draw_string "Pokemon Customization Under Construction"; window_state_change ())
    
  else 
    if e.key = 's' then
     (open_graph " 1280x720";
      set_font "-misc-fixed-medium-r-normal--20-200-75-75-c-100-iso10646-1";
      set_color red;
      moveto 570 360;
      draw_string "Settings Window Under Construction"; window_state_change ())

  else loading_menu ()


let start () = failwith "Unimplemented"

let execute () =
  open_graph " 1280x720";
  loading_menu ()