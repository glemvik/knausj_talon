from talon import Context, Module, actions, app

ctx = Context()
mod = Module()

mod.apps.chrome = "app.name: Google Chrome"
mod.apps.chrome = """
os: windows
and app.exe: chrome.exe
"""
mod.apps.chrome = """
os: mac
and app.bundle: com.google.Chrome
"""
mod.apps.chrome = """
os: mac
and app.bundle: org.chromium.Chromium
"""
mod.apps.chrome = """
os: linux
app.exe: chrome
app.exe: chromium-browser
"""
mod.apps.chrome = """
os: linux
and app.name: Google-chrome
"""
ctx.matches = r"""
app: chrome
"""


@mod.action_class
class Actions:
    def chrome_mod(key: str):
        """Press the specified key with the correct modifier key for the OS"""
        if app.platform == "mac":
            actions.key(f"cmd-{key}")
        else:
            actions.key(f"ctrl-{key}")

    def chrome_tab_search(text: str):
        """Search title of all open tabs and recently closed tabs""" 
        if app.platform == "mac":
            actions.key("cmd-shift-a")
            if text:
                actions.sleep("50ms")
                actions.insert(text)

    def chrome_extension_dashlane():
        """Open dashlane extension"""
        actions.key("cmd-shift-l")

@ctx.action_class("user")
class user_actions:
    def tab_jump(number: int):
        if number < 9:
            if app.platform == "mac":
                actions.key(f"cmd-{number}")
            else:
                actions.key(f"ctrl-{number}")

    def tab_final():
        if app.platform == "mac":
            actions.key("cmd-9")
        else:
            actions.key("ctrl-9")

    def tab_close_wrapper():
        actions.sleep("180ms")
        actions.app.tab_close()

    def tab_duplicate():
        """Limitation: this will not work if the text in your address bar has been manually edited.
        Long-term we want a better shortcut from browsers.
        """
        actions.browser.focus_address()
        actions.sleep("180ms")
        actions.key("alt-enter")


@ctx.action_class("browser")
class browser_actions:
    def go(url: str):
        actions.browser.focus_address()
        actions.sleep("50ms")
        actions.insert(url)
        actions.key("enter")
