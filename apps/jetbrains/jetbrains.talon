# Requires https://plugins.jetbrains.com/plugin/10504-voice-code-idea
app: jetbrains
-
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
# multiple_cursors.py support end

# Auto complete
done: user.idea("action EditorCompleteStatement")
suggest: key(alt-enter)

# Refactoring
refactor: user.idea("action Refactorings.QuickListPopupAction")
refactor <user.text>:
    user.idea("action Refactorings.QuickListPopupAction")
    insert(text)
refactor in line: user.idea("action Inline")
refactor move: user.idea("action Move")
refactor rename: user.idea("action RenameElement")
extract variable: user.idea("action IntroduceVariable")
extract field: user.idea("action IntroduceField")
extract constant: user.idea("action IntroduceConstant")
extract parameter: user.idea("action IntroduceParameter")
extract interface: user.idea("action ExtractInterface")
extract method: user.idea("action ExtractMethod")
rename file: user.idea("action RenameFile")
fix format: user.idea("action ReformatCode")
fix imports: user.idea("action OptimizeImports")

# Navigation
source: user.idea("action GotoDeclaration")
go implementation: user.idea("action GotoImplementation")
go usage: user.idea("action FindUsages")
go type: user.idea("action GotoTypeDeclaration")
go test: user.idea("action GotoTest")
go back: user.idea("action Back")
go forward: user.idea("action Forward")
structure: user.idea("action FileStructurePopup")
navigate: key(cmd-up) # TODO: For some reason this doesn't work: 'navigate: user.jump_to_navigation()'
recent: user.idea("action RecentFiles")
changed: user.idea("action RecentChangedFiles")

# Search
find all: user.idea("action SearchEverywhere")
find all <user.text> [over]:
    user.idea("action SearchEverywhere")
    sleep(500ms)
    insert(text)
find class: user.idea("action GotoClass")
find file: user.idea("action GotoFile")
find path: user.idea("action FindInPath")
action: user.idea("action GotoAction")
action <user.text>:
    user.idea("action GotoAction")
    insert(text)

# Marks
find mark: user.idea("action ShowBookmarks")
toggle mark: user.idea("action ToggleBookmark")
go next mark: user.idea("action GotoNextBookmark")
go previous mark: user.idea("action GotoPreviousBookmark")
toggle mark <number>: user.idea("action ToggleBookmark{number}")
go mark <number>: user.idea("action GotoBookmark{number}")

# Folding
expand block: user.idea("action ExpandRegionRecursively")
expand all: user.idea("action ExpandAllRegions")
collapse block: user.idea("action CollapseRegionRecursively")
collapse all: user.idea("action CollapseAllRegions")

# Misc
# XXX These might be better than the structural ones depending on language.
go next function: user.idea("action MethodDown")
go last function: user.idea("action MethodUp")
# surround: idea("action SurroundWith") # The action doesn't work for some reason

# Clipboard
clippings: user.idea("action PasteMultiple")
copy reference: user.idea("action CopyReference")
# copy path: user.idea("action CopyPaths") # The action doesn't work for some reason 

# File Creation
create file: user.idea("action NewElement")
create file <user.text> [over]:
    user.idea("action NewElement")
    sleep(500ms)
    insert(text)

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git pull: user.idea("action Vcs.UpdateProject")
git log: user.idea("action Vcs.ShowTabbedFileHistory")
git browse: user.idea("action Github.Open.In.Browser")
git blame: user.idea("action Annotate")
git menu: user.idea("action Vcs.QuickListPopupAction")

# Tool windows:
# Toggling various tool windows
toggle project: user.idea("action ActivateProjectToolWindow")
toggle find: user.idea("action ActivateFindToolWindow")
toggle run: user.idea("action ActivateRunToolWindow")
toggle debug: user.idea("action ActivateDebugToolWindow")
toggle events: user.idea("action ActivateEventLogToolWindow")
toggle terminal: user.idea("action ActivateTerminalToolWindow")
toggle git: user.idea("action ActivateVersionControlToolWindow")
toggle structure: user.idea("action ActivateStructureToolWindow")
toggle database: user.idea("action ActivateDatabaseToolWindow")
toggle database changes: user.idea("action ActivateDatabaseChangesToolWindow")
toggle to do: user.idea("action ActivateTODOToolWindow")
toggle docker: user.idea("action ActivateDockerToolWindow")
toggle favorites: user.idea("action ActivateFavoritesToolWindow")
toggle last: user.idea("action JumpToLastWindow")

# Toggleable views
toggle fullscreen: user.idea("action ToggleFullScreen")
toggle presentation [mode]: user.idea("action TogglePresentationMode")

# Toggle additionals
toggle comment: code.toggle_comment()

# Quick popups
pop doc: user.idea("action QuickJavaDoc")
pop deaf: user.idea("action QuickImplementations")
pop type: user.idea("action ExpressionTypeInfo")
pop parameters: user.idea("action ParameterInfo")

# Breakpoints / debugging
go breakpoints: user.idea("action ViewBreakpoints")
toggle breakpoint: user.idea("action ToggleLineBreakpoint")
toggle method breakpoint: user.idea("action ToggleMethodBreakpoint")
run menu: user.idea("action ChooseRunConfiguration")
run test: user.idea("action RunClass")
run test again: user.idea("action Rerun")
debug test: user.idea("action DebugClass")
step over: user.idea("action StepOver")
step into: user.idea("action StepInto")
step smart: user.idea("action SmartStepInto")
step to line: user.idea("action RunToCursor")
continue: user.idea("action Resume")

# Movement
go next (error | air): user.idea("action GotoNextError")
go previous (error | air): user.idea("action GotoPreviousError")
fix next (error | air):
    user.idea("action GotoNextError")
    user.idea("action ShowIntentionActions")
fix previous (error | air):
    user.idea("action GotoPreviousError")
    user.idea("action ShowIntentionActions")

# Special Selects
select less: user.idea("action EditorUnSelectWord")
select more: user.idea("action EditorSelectWord")
#jet brains-specific line commands. see line_commands.talon for generic ones
expand <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action ExpandRegion")
collapse <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action CollapseRegion")
paste <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action EditorPaste")
refactor <number> until <number>:
    user.select_range(number_1, number_2)
    user.idea("action Refactorings.QuickListPopupAction")
clone <number>: user.line_clone(number)

# Find/replace
select camel left: user.extend_camel_left()
select camel right: user.extend_camel_right()
go camel left: user.camel_left()
go camel right: user.camel_right()
