tag: user.code_comment_block
-
block comment: user.code_comment_block()
block comment line:
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    edit.line_start()
    user.code_comment_block_prefix()
    key(space)
    edit.line_end()
    key(space)
    user.code_comment_block_suffix()
inline block comment:
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    edit.line_end()
    user.code_comment_block_prefix()
    key(space space)
    user.code_comment_block_suffix()
    key(left left left)
open block comment: user.code_comment_block_prefix()
close block comment: user.code_comment_block_suffix()
