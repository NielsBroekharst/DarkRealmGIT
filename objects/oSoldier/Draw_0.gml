/// @description Insert description here
// You can write your code in this editor

if global.DEBUG {
	if selected{
		var i;
		for (i = 0; i < sight_angle/2; i += 1){
			draw_line(x,y,x + lengthdir_x(sight_len,image_angle - (sight_angle /2) + (i*2)), y + lengthdir_y(sight_len,image_angle - (sight_angle /2)+ (i*2)));
	}
	
}
draw_path(path,x,y,true);
draw_text(x,y,targ);
draw_text(x,y +30,id);

}
		

if shooting {
var xscale = random_range(0.8,1.5);
var yscale = random_range(0.8,1.5);
var alpha = random_range(0.8,1);
draw_sprite_ext(sMuzzle,0,x + lengthdir_x(32,image_angle),y + lengthdir_y(32,image_angle),xscale,yscale,image_angle,c_white,alpha);
}	
	


event_inherited()
