array = [1, 2, 3]
x = 4

array.instance_eval "self[1] = x"

p array

