(** To execute graphics for welcome_screen *)  
open Graphics

let font = "camel-chat"

let loading_menu () =
  set_window_title "POCAMLmon";
  set_font font;
  set_color red;
  moveto 640 360;
  draw_string "Press Spacebar to continue";

let start () = 


let main_menu () =
  open_graph " 1280x720";
  loading_menu ();
  close_graph ();
  start ();
  close_graph ();
