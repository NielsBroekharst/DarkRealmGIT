/// @description Insert description here
// You can write your code in this editor
shooting = false;
//lenght of sight
sight_len = 600;
//field of view in degrees:
sight_angle = 50;

//is this object currently selected?
selected = false;
targ = noone;

//rotation
aim_angle = 0;


//movement
targ_x = x;
targ_y = y; 
path = path_add();
spd = 2