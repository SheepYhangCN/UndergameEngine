if(!surface_exists(surf)){surf = surface_create(surface_width, surface_height)}
if(!surface_exists(final_surface)){final_surface = application_surface}
surface_set_target(final_surface)
shader_set(shd_gaussian_horizontal)
shader_set_uniform_f(uni_resolution_hoz, var_resolution_x, var_resolution_y)
shader_set_uniform_f(uni_blur_amount_hoz, var_blur_amount)
draw_surface(surf, 0, 0)
shader_reset()

surface_reset_target()
shader_set(shd_gaussian_vertical)
shader_set_uniform_f(uni_resolution_vert, var_resolution_x, var_resolution_y)
shader_set_uniform_f(uni_blur_amount_vert, var_blur_amount)
draw_surface(final_surface, 0, 0)
shader_reset()