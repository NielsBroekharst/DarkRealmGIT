/// @description Insert description here
// You can write your code in this e
#macro Tilesize 64
global.Roomsize_x = room_width /64;
global.Roomsize_y = room_height / 64;
global.DEBUG = false;
global.map_grid = mp_grid_create(0,0,global.Roomsize_x,global.Roomsize_y,Tilesize,Tilesize)
mp_grid_add_instances(global.map_grid,oSolid,false)

//Lighting system
surf = -1;