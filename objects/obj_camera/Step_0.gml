// Step
if (instance_exists(o_player)) {
    var cam_x = o_player.x - view_w / 2;
    var cam_y = o_player.y - view_h / 2;

    cam_x = clamp(cam_x, 0, room_width - view_w);
    cam_y = clamp(cam_y, 0, room_height - view_h);

    camera_set_view_pos(cam, round(cam_x), round(cam_y));
}