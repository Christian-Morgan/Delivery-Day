// Create Event

// Initialize Chatterbox
ChatterboxLoadFromFile("test.yarn");
chatterbox = ChatterboxCreate("test.yarn");

current_text = "";
is_visible = false;

// Dialogue box settings
box_h = 340;
border = 12;

// Positioning
vertical_offset = 216;

// Sprites and visuals
portrait_sprite = -1;
textbox_sprite = -1;

// Text settings
line_sep = -1;
text_color = c_white;

// Input control
input_lock = 0;

// Function to start dialogue
start_dialogue = function(_node_name, _portrait_sprite, _textbox_sprite, _text_color) {
    ChatterboxJump(chatterbox, _node_name);

    current_text = ChatterboxGetContent(chatterbox, 0);

    portrait_sprite = _portrait_sprite;
    textbox_sprite = _textbox_sprite;

    if (is_undefined(_text_color)) {
        text_color = c_white;
    } else {
        text_color = _text_color;
    }

    is_visible = true;
    input_lock = 6;
};