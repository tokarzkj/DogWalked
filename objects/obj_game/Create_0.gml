/// @description Set up core game items

window_set_size(1680, 945)

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 480;
view_hport[0] = 270;

view_camera[0] = camera_create_view(0, 810, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 50, 50)