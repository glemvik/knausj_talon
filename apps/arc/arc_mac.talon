app: arc
os: mac
-
tag(): browser
tag(): user.tabs

tab search [<user.text>]: user.arc_tab_search(text or "")

please [<user.text>]:
    key("cmd-l")
    sleep(200ms)
    insert(user.text or "")
