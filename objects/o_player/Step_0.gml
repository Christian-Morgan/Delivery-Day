// Movement speed
var move_speed = 4;

var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;

if (keyboard_check_pressed(ord("E"))) {
    var npc = instance_nearest(x, y, o_mrs_williams);

    if (npc != noone && point_distance(x, y, npc.x, npc.y) < 48) {
        obj_dialogue_handler.start_dialogue(npc.dialogue_node);
    }
}