"""
This module gives us the list {user.system_paths} and the capture <user.system_path> that wraps
the list to easily refer to system paths in talon and python files. It reads from a file
system_paths.csv in the settings folder so they user can easily add their own custom paths.
"""
import os

from talon import Context, Module, actions, app

from .user_settings import get_list_from_csv

mod = Module()
ctx = Context()

mod.list("system_paths", desc="List of system paths")

user_path = os.path.expanduser("~")

# We need to wait for ready before we can call "actions.path.talon_home()" and
# "actions.path.talon_user()"
def on_ready():
    default_system_paths = {
        "user": user_path,
    }

    system_paths = get_list_from_csv(
        "system_paths.csv", headers=("Path", "Spoken"), default=default_system_paths
    )

    ctx.lists["user.system_paths"] = system_paths


@mod.capture(rule="{user.system_paths}")
def system_path(m) -> str:
    return m.system_paths


app.register("ready", on_ready)
