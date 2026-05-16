// Create
cam = view_camera[0];

view_w = 360;
view_h = 240;

// Set to perfect 3x scale!
port_w = 1080; // (360 * 3)
port_h = 720;  // (240 * 3)

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(cam, view_w, view_h);
camera_set_view_pos(cam, 0, 0);

view_set_wport(0, port_w);
view_set_hport(0, port_h);

window_set_size(port_w, port_h);
display_set_gui_size(port_w, port_h);