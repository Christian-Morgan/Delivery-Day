// Collision with o_player

if (can_talk && keyboard_check_pressed(ord("E"))) {
    obj_dialogue_handler.start_dialogue(
        dialogue_node,
        portrait_sprite,
        textbox_sprite,
        text_color
    );
}