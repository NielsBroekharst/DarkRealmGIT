/// @description Insert description here
// You can write your code in this editor

if followtarget != noone {
	targetX = followtarget.x;
	targetY = followtarget.y;

	if round(targetX) != round(x) {
		x = lerp(x,targetX,0.2);	
	}

	if round(targetY) != round(y) {
		y = lerp(y,targetY,0.2);	
	
	}else {
		targetX = x;
		targetY= y;
		followtarget = noone;
	}
}
camera_set_view_pos(view_camera[0],x - (view_wport[0] /2), y - (view_wport[0] /2));