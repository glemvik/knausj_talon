from talon import Module

mod = Module()


@mod.action_class
class Actions:
    # implements the function from generic_terminal.talon for unix shells

    def terminal_list_directories(path: str):
        """Lists directories"""

    def terminal_list_all_directories():
        """Lists all directories including hidden"""

    def terminal_change_directory(path: str):
        """Changes directory"""

    def terminal_change_directory_up():
        """Parent of current directory"""

    def terminal_change_directory_root():
        """Root of current drive"""

    def terminal_run_last():
        """Repeats the last command"""
