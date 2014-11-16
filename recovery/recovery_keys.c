#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    // hold power and press volume-up
    return key_pressed[KEY_POWER] && key_code == KEY_VOLUMEUP;
}


int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_VOLUMEDOWN:
                return HIGHLIGHT_DOWN;

            case KEY_VOLUMEUP:
                return HIGHLIGHT_UP;

// menu key as select item for devices with broken power button
            case KEY_MENU:
                if (ui_get_showing_back_button()) {
                    return SELECT_ITEM;
                }
		break;

            case KEY_POWER:
                if (ui_get_showing_back_button()) {
                    return SELECT_ITEM;
                }
                break;

            case KEY_LEFTBRACE:
            case KEY_ENTER:
            case BTN_MOUSE:
            case KEY_CAMERA:
            case KEY_F21:
            case KEY_SEND:
                return SELECT_ITEM;
            case KEY_END:
            case KEY_BACKSPACE:
            case KEY_SEARCH:
                if (ui_get_showing_back_button()) {
                    return SELECT_ITEM;
                }
            case KEY_BACK:
                return GO_BACK;
        }
    }

    return NO_ACTION;
}
