x=battle_soul.x
y=battle_soul.y
image_angle=battle_soul.image_angle

aa = (image_alpha > 0.9 ? 1 : (image_alpha / 0.9))
image_blend = make_color_rgb((255 - ((1 - aa) * 127)), (255 - ((1 - aa) * 255)), (255 - ((1 - aa) * 255)))