var d = point_distance(x, y, other.x, other.y);
var r = d / (move_collision_radius + other.move_collision_radius);
var delta_x = (other.x - x) * (1 - r) * 0.5;
var delta_y = (other.y - y) * (1 - r) * 0.5;

if (!place_meeting(x - delta_x, y - delta_y, obj_collision_static)) {
    x -= delta_x;
    y -= delta_y;
}

with (other) {
    if (!place_meeting(x + delta_x, y + delta_y, obj_collision_static)) {
        x += delta_x;
        y += delta_y;
    }
}
