window (new | open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
open <user.running_applications>: user.switcher_focus(running_applications)
open$: user.switcher_menu()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

snap full: user.snap_rectangle_full()
snap left: user.snap_rectangle_left_half()
snap right: user.snap_rectangle_right_half()
snap top: user.snap_rectangle_top_half()
snap bottom: user.snap_rectangle_bottom_half()
snap left top: user.snap_rectangle_left_top()
snap left bottom: user.snap_rectangle_left_bottom()
snap right top: user.snap_rectangle_right_top()
snap right bottom: user.snap_rectangle_right_bottom()

# TODO: Configure this later 
#snap <user.window_snap_position>: user.snap_window(window_snap_position)
#snap next [screen]: user.move_window_next_screen()
#snap last [screen]: user.move_window_previous_screen()
#snap screen <number>: user.move_window_to_screen(number)
#snap <user.running_applications> <user.window_snap_position>:
#    user.snap_app(running_applications, window_snap_position)
#snap <user.running_applications> [screen] <number>:
#    user.move_app_to_screen(running_applications, number)
