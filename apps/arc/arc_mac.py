from talon import Context, Module, actions, app

ctx = Context()
mod = Module()

mod.apps.arc = "app.name: Arc"
mod.apps.arc = """
os: mac
app.bundle: company.thebrowser.Browser

"""
ctx.matches = r"""
app: arc
"""
ctx.tags = ["browser", "user.tabs"]


@ctx.action_class("user")
class UserActions:
    def tab_close_wrapper():
        actions.sleep("180ms")
        actions.app.tab_close()

@mod.action_class
class Actions:
    def arc_tab_search(text: str):
        """Search title of all open tabs and recently closed tabs"""
        if app.platform == "mac":
            actions.key("cmd-t")
            if text:
                actions.sleep("50ms")
                actions.insert(text)


@ctx.action_class("browser")
class BrowserActions:
    def show_extensions():
        actions.app.tab_open()
        actions.browser.go("arc://extensions")

    def bookmark():
        actions.key("cmd-d")

    def bookmark_tabs():
        actions.key("cmd-shift-d")

    def bookmarks():
        actions.key("cmd-alt-b")

    def bookmarks_bar():
        actions.key("cmd-shift-b")

    def focus_address():
        actions.key("cmd-l")
        # action(browser.focus_page):

    def focus_search():
        actions.browser.focus_address()

    def go_blank():
        actions.key("cmd-n")

    def go_back():
        actions.key("cmd-left")

    def go_forward():
        actions.key("cmd-right")

    def go_home():
        actions.key("cmd-shift-h")

    def open_private_window():
        actions.key("cmd-shift-n")

    def reload():
        actions.key("cmd-r")

    def reload_hard():
        actions.key("cmd-shift-r")
        # action(browser.reload_hardest):

    def show_clear_cache():
        actions.key("cmd-shift-delete")

    def show_downloads():
        actions.key("cmd-shift-j")
        # action(browser.show_extensions)

    def show_history():
        actions.key("cmd-y")

    def submit_form():
        actions.key("enter")
        # action(browser.title)

    def toggle_dev_tools():
        actions.key("cmd-alt-i")
