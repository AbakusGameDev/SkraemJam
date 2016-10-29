/// add_blood(x, y, type)

var instance = instance_create(argument0, argument1, obj_blood);

with (instance) {
    image_speed = 0;
    if (argument2 == 0) {
        sprite_index = spr_blood;
        image_index = irandom(sprite_get_number(spr_blood) - 1);
    } else {
        sprite_index = spr_bodypart;
        image_index = argument2 - 1;
    }
}

if (surface_exists(obj_main.sf_blood)) {
surface_set_target(obj_main.sf_blood);
    with (instance) {
        event_perform(ev_draw, 0);
    }
surface_reset_target();
}

instance_deactivate_object(instance);
