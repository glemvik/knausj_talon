from talon import Context, Module

mod = Module()
mod.tag("npm", desc="tag for enabling npm commands in your terminal")
npm = "npm"

ctx = Context()
ctx.matches = r"""
tag: user.npm
"""
