/// @description Insert description here
// You can write your code in this editor


#region //MOUSEBUTTON LEFT (FOR MOVING AND SELECTING)
if mouse_check_button_pressed(mb_left){
	var inst = instance_position(mouse_x,mouse_y,oPlayerParent);
	//click on a playercharacter?
	if inst != noone {
		active_pawn = inst
		with oViewCamera {
			//set followtarget camera
			followtarget = other.active_pawn;
			}
		with oPlayerParent{
			if id = other.active_pawn {
				selected = true;
			}else {
				selected = false;	
			}
			
		}
	}else {
		//click on ground with playercharacter selected?
		if active_pawn !=noone {
			if !instance_position(mouse_x,mouse_y,oSolid){
				with active_pawn{
				targ_x = (mouse_x div Tilesize) * Tilesize + (Tilesize /2);
				targ_y = (mouse_y div Tilesize) * Tilesize + (Tilesize /2);
				mp_potential_path(path, targ_x,targ_y, 2, 8, true);
				path_start(path,spd,0,true)				
				}
		
			}
		
		}
	}
}
#endregion
#region//MOUSE BUTTON RIGHT (FOR AIMING)
if mouse_check_button(mb_right){
	if active_pawn !=noone {
		var xx = mouse_x;
		var yy = mouse_y;
		var angle = point_direction(active_pawn.x,active_pawn.y,xx,yy)
		active_pawn.image_angle = angle;
		with active_pawn {
		path_end();
		path_clear_points(path);
		targ_x = x;
		targ_y = y;
		}
		
		
	}
}
#endregion
//DEBUG KEYS
if keyboard_check_pressed(vk_backspace){
	global.DEBUG = !global.DEBUG;	
}


//MINI MAP

