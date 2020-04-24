/// @description Insert description here
// You can write your code in this editor
if global.DEBUG{
	draw_text(20,20,active_pawn)
	draw_text(20,40,"FPS = " + string(fps));
}
var i;
for (i = 0; i < ds_list_size(teamlist); i += 1){
	draw_text(10,20 * i,teamlist[|i]);
}
draw_sprite_ext(sRadar,0,960,900,2,2,0,c_white,1);