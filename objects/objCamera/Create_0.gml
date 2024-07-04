camera = view_camera[0];
x = room_width/2;
y = 0;
xTemp = x;
camera_set_view_pos(camera, x, y);
x = lerp(x, x + 50, 0.08);
xDelta = x - xTemp;