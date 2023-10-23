(** To execute graphics for welcome_screen *)  
open Graphics

(** Presents the welcome screen at beginning of application
    Requires user to press Spacebar to continue. *)
let rec loading_menu () =
  set_window_title "POCAMLmon";
  set_font "camel-chat";
  set_color red;
  moveto 640 360;
  draw_string "Press Spacebar to continue";

let start () = failwith "Unimplemented";

let execute () =
  open_graph " 1280x720" in
  loading_menu () in
  close_graph ();