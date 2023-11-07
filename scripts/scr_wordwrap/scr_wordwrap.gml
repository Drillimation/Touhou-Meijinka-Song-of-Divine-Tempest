function scr_wordwrap(_string,_width,_break,_split) {
    var pos_space, pos_current, text_current, text_output;
    pos_space = -1;
    pos_current = 1;
    text_current = _string;
    if (is_real(_break)) _break = "\n";
    text_output = "";
    while (string_length(text_current) >= pos_current) {
        if (string_width(string_copy(text_current,1,pos_current)) > _width) {
            //if there is a space in this line then we can break there
            if (pos_space != -1) {
                text_output += string_copy(text_current,1,pos_space) + string(_break);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
                pos_current = 1;
                pos_space = -1;
            } 
		else if _split == true {
			// Check if the previous character is a comma or period
			var prev_char = string_char_at(text_current, pos_current - 1);
			if (prev_char == "、" || prev_char == "。" ||  prev_char == "？") {
				// If it is, force line breaks before the comma/period
				text_output += string_copy(text_current, 1, pos_current - 1) + string(_break);
				// Remove the text we just looked at from the current text string
				text_current = string_copy(text_current, pos_current, string_length(text_current) - (pos_current - 1));
			}
			else {
				// If not, force line breaks at the current position
				text_output += string_copy(text_current, 1, pos_current) + string(_break);
				// Remove the text we just looked at from the current text string
				text_current = string_copy(text_current, pos_current + 1, string_length(text_current) - pos_current);
			}
                pos_current = 1;
                pos_space = -1;
            }
        }
        pos_current += 1;
        if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
	}
    if (string_length(text_current) > 0) text_output += text_current;
    return text_output;
}

function scr_string_wrap(_text, _width) {
	var _text_wrapped = "";
	var _space = -1;
	var _char_pos = 1;
	while (string_length(_text) >= _char_pos) {
	    if (string_width(string_copy(_text, 1, _char_pos)) > _width) {
	        if (_space != -1) {
	            _text_wrapped += string_copy(_text, 1, _space) + "\n";
	            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));
	            _char_pos = 1;
	            _space = -1;
			}
		}
	    if (string_char_at(_text,_char_pos) == " ") {
	        _space = _char_pos;
		}
	    _char_pos += 1;
	}
	if (string_length(_text) > 0) {
		_text_wrapped += _text;
	}
	return _text_wrapped;
}