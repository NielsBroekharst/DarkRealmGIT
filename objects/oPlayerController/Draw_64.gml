/// @description Insert description here
// You can write your code in this editor
if global.DEBUG{
	draw_text(20,20,active_pawn)
	draw_text(20,40,"FPS = " + string(fps));
}

var i;
var Yoffset = 350;
for (i = 0; i < ds_grid_height(teaminfo); i += 1){
	draw_sprite((teaminfo[# 1,i]),0,10,Yoffset + (100 * i)+ 10 );
	draw_text(10,Yoffset + (100 * i) + 90,(teaminfo[# 2,i]))
	
}
draw_sprite_ext(sRadar,0,960,900,2,2,0,c_white,1);