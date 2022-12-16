from talon import Context, Module

from ..user_settings import get_list_from_csv

mod = Module()
mod.list("file_extension", desc="A file extension, such as .py")

_file_extensions_defaults = {
    "dot pie": ".py",
    "dot talon": ".talon",
    "dot mark down": ".md",
    "dot shell": ".sh",
    "dot vim": ".vim",
    "dot no": ".no",
    "dot com": ".com",
    "dot net": ".net",
    "dot org": ".org",
    "dot jason": ".json",
    "dot java script": ".js",
    "dot type script": ".ts",
    "dot cassie": ".csv",
    "dot text": ".txt",
}

file_extensions = get_list_from_csv(
    "file_extensions.csv",
    headers=("File extension", "Name"),
    default=_file_extensions_defaults,
)

ctx = Context()
ctx.lists["self.file_extension"] = file_extensions
