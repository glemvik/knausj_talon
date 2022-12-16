from pathlib import Path

from talon import Context, Module

# --- Tag definition ---
mod = Module()
mod.tag("emoji", desc="Emoji")

# Context matching
ctx = Context()
ctx.matches = """
tag: user.emoji
"""

# --- Define and implement lists ---
path = Path(__file__).parents[0]

mod.list("emoji", desc="Emoji (unicode)")
with open(path / "emoji.csv") as f:
    ctx.lists["user.emoji"] = {
        k.strip(): v.strip() for k, v in [line.split(",", 1) for line in f]
    }
