$SAFE = 1

user_input = "User input: #{gets()}"
eval user_input # Raise a SecurityError
