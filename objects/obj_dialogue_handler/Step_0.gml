// Step Event

if (input_lock > 0) {
    input_lock -= 1;
}

if (is_visible) {
    if (input_lock <= 0 && keyboard_check_pressed(vk_space)) {
        if (ChatterboxIsStopped(chatterbox)) {
            is_visible = false;
            portrait_sprite = -1;
        } else {
            ChatterboxContinue(chatterbox);

            if (ChatterboxIsStopped(chatterbox)) {
                is_visible = false;
                portrait_sprite = -1;
            } else {
                current_text = ChatterboxGetContent(chatterbox, 0);
            }
        }
    }
}