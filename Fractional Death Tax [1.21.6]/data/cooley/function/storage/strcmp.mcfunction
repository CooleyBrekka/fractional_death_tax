# compare two storage locations
# output in #strcmp co_math
# 0 if no replacement occurred i.e. same
$data modify storage cooley:storage root.strtemp set from storage $(1)
$execute store success score #strcmp co_math run data modify storage cooley:storage root.strtemp set from storage $(2)

#$tellraw @a "$(1), $(2)"
