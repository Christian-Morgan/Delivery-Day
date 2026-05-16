// Draw GUI Event

if (is_visible) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var side_margin = 72;

    var box_w = gui_w - side_margin * 2;
    var box_x = side_margin;
    var box_y = gui_h - box_h + vertical_offset;

    // Draw dialogue textbox
    if (!is_undefined(textbox_sprite) && textbox_sprite != -1 && sprite_exists(textbox_sprite)) {
        draw_set_alpha(1);
        draw_sprite_stretched(
            textbox_sprite,
            0,
            box_x,
            box_y,
            box_w, // Use to adjust width of the dialogue box
            box_h
        );
    } else {
        draw_set_alpha(0.92);
        draw_set_color(make_color_rgb(18, 24, 48));
        draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);

        draw_set_alpha(1);
        draw_set_color(make_color_rgb(235, 225, 190));
        draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);
    }

    // Portrait area inside the textbox
    var portrait_margin = 12;

    var portrait_x = box_x + portrait_margin - 6;
    var portrait_y = box_y + portrait_margin;
    var portrait_w = box_h - portrait_margin * 2;
    var portrait_h = portrait_w;

    // Draw fallback portrait box only if there is no textbox sprite
    if (is_undefined(textbox_sprite) || textbox_sprite == -1 || !sprite_exists(textbox_sprite)) {
        draw_set_color(make_color_rgb(18, 24, 48));
        draw_rectangle(
            portrait_x,
            portrait_y,
            portrait_x + portrait_w,
            portrait_y + portrait_h,
            false
        );

        draw_set_color(make_color_rgb(235, 225, 190));
        draw_rectangle(
            portrait_x,
            portrait_y,
            portrait_x + portrait_w,
            portrait_y + portrait_h,
            true
        );
    }

    // Draw speaker portrait
    if (!is_undefined(portrait_sprite) && portrait_sprite != -1 && sprite_exists(portrait_sprite)) {
        var spr_w = sprite_get_width(portrait_sprite);
        var spr_h = sprite_get_height(portrait_sprite);

        var portrait_padding = 8;

        var available_w = portrait_w - portrait_padding * 2;
        var available_h = portrait_h - portrait_padding * 2;

        var portrait_scale = min(available_w / spr_w, available_h / spr_h);

        var draw_x = portrait_x + portrait_w / 2;
        var draw_y = portrait_y + portrait_h / 2;

        draw_sprite_ext(
            portrait_sprite,
            0,
            draw_x - 65,
            draw_y,
            portrait_scale - 2,
            portrait_scale,
            0,
            c_white,
            1
        );
    }

    // Dialogue text
    draw_set_font(f_dialogue);
    draw_set_color(text_color);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var text_x = portrait_x + portrait_w - 125;
    var text_y = box_y + portrait_margin;
    var text_w = box_x + box_w - border - text_x;

    draw_text_ext(text_x, text_y, current_text, line_sep, text_w);

    // Reset draw settings
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}