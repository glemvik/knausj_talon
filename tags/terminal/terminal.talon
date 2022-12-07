tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa [<user.text>]: user.terminal_list_directories(text or "")
lisa all: user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie up: user.terminal_change_directory_up()
katie root: user.terminal_change_directory_root()
#go <user.system_path>: insert('cd "{system_path}"\n')
run last: user.terminal_run_last()
grip [<user.text>]: user.terminal_grep_recursive(text or "")
grip single [<user.text>]: user.terminal_grep_single(text or "")
vim: user.terminal_vim()
remove [<user.text>]: user.terminal_remove_recursive(text or "")
remove single [<user.text>]: user.terminal_remove_single(text or "")

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
