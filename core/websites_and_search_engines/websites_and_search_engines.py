import webbrowser
from urllib.parse import quote_plus

from talon import Context, Module

from ..user_settings import get_list_from_csv

mod = Module()
mod.list("website", desc="A website.")
mod.list(
    "search_engine",
    desc="A search engine.  Any instance of %s will be replaced by query text",
)

# Add new links to file instead of here
website_defaults = {
    "talon home page": "http://talonvoice.com",
    "talon slack": "http://talonvoice.slack.com/messages/help",
    "talon wiki": "https://talon.wiki/",
    "talon practice": "https://chaosparrot.github.io/talon_practice/",
    "talon repository search": "https://search.talonvoice.com/search/",
    "calendar": "https://calendar.google.com",
    "maps": "https://maps.google.com/",
    "mail": "https://mail.google.com/",
    "github": "https://github.com/",
    "youtube": "https://www.youtube.com/",
    "news": "https://www.nrk.no/",
}

_search_engine_defaults = {
    "google": "https://www.google.com/search?q=%s",
    "map": "https://maps.google.com/maps?q=%s",
}

ctx = Context()
ctx.lists["self.website"] = get_list_from_csv(
    "websites.csv",
    headers=("URL", "Spoken name"),
    default=website_defaults,
)
ctx.lists["self.search_engine"] = get_list_from_csv(
    "search_engines.csv",
    headers=("URL Template", "Name"),
    default=_search_engine_defaults,
)


@mod.action_class
class Actions:
    def open_url(url: str):
        """Visit the given URL."""
        webbrowser.open(url)

    def search_with_search_engine(search_template: str, search_text: str):
        """Search a search engine for given text"""
        url = search_template.replace("%s", quote_plus(search_text))
        webbrowser.open(url)
