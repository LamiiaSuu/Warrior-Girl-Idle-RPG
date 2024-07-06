

layer_background_stretch(layer_background_get_id("OakWoodsBackground_1"), false)
layer_background_stretch(layer_background_get_id("OakWoodsBackground_2"), false)
layer_background_stretch(layer_background_get_id("OakWoodsBackground_3"), false)

layer_background_yscale(layer_background_get_id("OakWoodsBackground_1"), (camera_get_view_height(1)+(layer_get_y(layer_get_id("OakWoodsBackground_1")))) / 180 );
layer_background_yscale(layer_background_get_id("OakWoodsBackground_2"), (camera_get_view_height(1)+(layer_get_y(layer_get_id("OakWoodsBackground_2")))) / 180 );
layer_background_yscale(layer_background_get_id("OakWoodsBackground_3"), (camera_get_view_height(1)+(layer_get_y(layer_get_id("OakWoodsBackground_3")))) / 180 );

layer_y(layer_get_id("OakWoodsBackground_1"), 0);
layer_y(layer_get_id("OakWoodsBackground_2"), 0);
layer_y(layer_get_id("OakWoodsBackground_3"), 0);

layer_background_xscale(layer_background_get_id("OakWoodsBackground_1"), 5);
layer_background_xscale(layer_background_get_id("OakWoodsBackground_2"), 5);
layer_background_xscale(layer_background_get_id("OakWoodsBackground_3"), 5);
