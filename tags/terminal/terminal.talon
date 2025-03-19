tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa [<user.text>]: user.terminal_list_directories(text or "")
lisa all: user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie up: user.terminal_change_directory_up()
katie root: user.terminal_change_directory_root()
go <user.system_path>: insert('cd "{system_path}"\n')
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
grip [<user.text>]: user.terminal_grep_recursive(text or "")
grip single [<user.text>]: user.terminal_grep_single(text or "")
edit [<user.text>]: user.terminal_vim(text or "")
remove [<user.text>]: user.terminal_remove_recursive(text or "")
remove single [<user.text>]: user.terminal_remove_single(text or "")
cancel: user.terminal_cancel()
pipe: user.terminal_pipe()
tree <number>: user.terminal_tree_level(number or "two")

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()

# TODO: temporary command for searching for talon tags
grip tag: 
    insert("grep -r \'tag[()]*: [user.]*\'")
    key("left")
