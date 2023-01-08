#defines the commands that sleep/wake Talon
mode: all
-
^talon sleep [<phrase>]$: speech.disable()
^talon wake$: speech.enable()
