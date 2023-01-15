tag: user.code_operators_math
-

# math operators
op minus: user.code_operator_subtraction()
op plus: user.code_operator_addition()
op times: user.code_operator_multiplication()
op divide: user.code_operator_division()
op mod: user.code_operator_modulo()
op power: user.code_operator_exponent()

# comparison operators
op equal: user.code_operator_equal()
op not equal: user.code_operator_not_equal()
op greater than: user.code_operator_greater_than()
op less than: user.code_operator_less_than()
op greater equal: user.code_operator_greater_than_or_equal_to()
op less equal: user.code_operator_less_than_or_equal_to()

# logical operators
op and: user.code_operator_and()
op or: user.code_operator_or()

# set operators
op in: user.code_operator_in()
op not in: user.code_operator_not_in()

# TODO: This operator should either be abstracted into a function or removed.
op colon: " : "
