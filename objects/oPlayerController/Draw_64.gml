/// @description Insert description here
// You can write your code in this editor
if global.DEBUG{
	draw_text(20,20,active_pawn)
	draw_text(20,40,"FPS = " + string(fps));
}

draw_sprite_ext(sRadar,0,960,900,2,2,0,c_white,1);