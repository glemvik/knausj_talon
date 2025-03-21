tag: browser
-
go address: browser.focus_address()
copy address:
    browser.focus_address()
    sleep(50ms)
    edit.copy()
go home: browser.go_home()
go forward: browser.go_forward()
go back: browser.go_back()
go to {user.website}: browser.go(website)
go private: browser.open_private_window()

bookmark it: browser.bookmark()
refresh it: browser.reload()
refresh it hard: browser.reload_hard()

bookmark show: browser.bookmarks()
downloads show: browser.show_downloads()
history show: browser.show_history()
dev tools [show]: browser.toggle_dev_tools()

#todo - port to apps
# navigating current page
# help: key(?)
# scroll tiny down: key(j)
# scroll tiny up: key(k)
# scroll left: key(h)
# scroll right: key(l)
# scroll (pop | spring): key(z H)
# scroll push: key(z L)
# scroll top: key(gg)
# scroll (bottom | end): key(G)
# (scroll half down | mini page): key(d)
# scroll half up: key(u)
# [open] link: key(f)
# [open] link new: key(F)
# copy link: key(y f)
# copy (address | url): key(escape y y)
# (refresh | reload): browser.reload()
# view source: key(g s)
# insert mode: key(i)
# next frame: key(g f)
# main frame: key(g F)
# navigating to new pages
# (open | go) (url | history): key(o)
# (open | go) (url | history) new: key(O)
# (open | go) bookmark: key(b)
# (open | go) bookmark new: key(B)
# using find
# find mode: key(/)
# next match: key(n)
# previous match: key(N)
# navigating history
# history back: key(H)
# history forward: key(L)
# manipulating tabs
# last visited: key(^)
# dupe tab: key(y t)
# restore: key(X)
# search tabs: key(T)
# move to window: key(W)
