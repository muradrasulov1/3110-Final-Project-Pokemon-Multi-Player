# 3110-Final-Project-Pokemon-Multi-Player
---
# Members of group
group:
  - name: Shakeim Francis 
    netid: ssf62
  - name: Murad Rasulov 
    netid: mr982
  - name: Armaan Tewary 
    netid: akt62
  - name: Omoruwa Agbonile 
    netid: ooa7
# GOTTA CATCH THEM ALL! 
You are about to witness the next level of functional
programming coming to the world of the beloved role-playing: Pokemon. This 
terminal-based application features a range of Pokemon with different abilities
and powers. As the pokemon of your choice, you have the ability to traverse through
maps that effect your journey along the way and put your skills to the test in battle
with other Pokemon. So get your game face on, and see if you got what it takes.

# Run the game
Step-by-step guide on how to BUILD and INSTALL our Pokemon program

1) Through the Terminal (either on your Mac or bash in Windows), clone the following repo to your local machine to some new folder of your choice.
   With created folder, access it through Terminal and use 'git clone LINK-NAME' where LINK-NAME is the URL below.
https://github.com/muradrasulov1/3110-Final-Project-Pokemon-Multi-Player 

2) Once you are in your new cloned project repo in terminal, while in the root directory, cd in 3110-Final-Project-Pokemon-Multi-Player with
'cd 3110-Final-Project-Pokemon-Multi-Player/'
and, once there, do
'dune build'

3) Before proceeding, run the following in your terminal to make sure you have the yojson package installed on your machine.
'opam install yojson' 

4) Enter the lib directory of the project by using
'cd lib'

5) 'ocamlbuild -pkg yojson pokemon.native'

6) 'ocamlbuild -pkg yojson experimenting.native'

7) './experimenting.native'

8) Congrats! You are now in the game!

<<<DISCLAIMER>>>
If you want to try the runnable commands, such as 'make test' or 'make doc' and 'make opendoc', MAKE SURE TO CD OUT OF LIB Folder, because at the time of the game you are in the /lib