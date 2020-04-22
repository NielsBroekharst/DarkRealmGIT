/// @description Insert description here
// You can write your code in this editor
///draw fog shader
shader_set(sh_fog);
shader_set_uniform_f(shader_get_uniform(sh_fog,"time"),current_time/20000);  //note: probably should use your own time variable instead of current_time.
draw_sprite_stretched(sFog,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]) ,camera_get_view_height(view_camera[0]));  //if using GMS2, subsitute view_* with GMS2 equivalents.
shader_reset();