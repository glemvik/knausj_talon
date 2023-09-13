from talon import Context, Module

mod = Module()
mod.tag("dotnet", desc="tag for enabling dotnet commands in your terminal")
dotnet = "dotnet"

ctx = Context()
ctx.matches = r"""
tag: user.dotnet
"""
