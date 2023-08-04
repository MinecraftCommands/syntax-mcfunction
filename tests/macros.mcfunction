#> Macro, and other new examples
# src: https://github.com/slicedlime/examples/

scoreboard players operation @a result \
    += @e[type=marker,limit=1,tag=source] value

# Run the command in $(command) (eval)
$$(command)

# Concatenate $(string1) and $(string2), save that to $(path) in storage $(id)
$data modify storage $(id) $(path) set value "$(string1)$(string2)"

# Set the time to $(time)
$time set $(time)

random value 2..45
