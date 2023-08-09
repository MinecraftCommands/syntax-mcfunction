#> Borrowed from slicedlime
# src: https://github.com/slicedlime/examples/

scoreboard players operation @a result \
    += @e[type=marker,limit=1,tag=source] value

# Run the command in $(command) (eval)
$$(command)

# Concatenate $(string1) and $(string2), save that to $(path) in storage $(id)
$data modify storage $(id) $(path) set value "with random $(string1) stuff $(string2)"

# Set the time to $(time)
$time set $(time)

# this doesn't look perfect, but i can't really fix it
$data modify \
    storage $(id) $(path) set \
    value "$(string1)$(string2)"

$data modify
    storage $(id) $(path) set
    value "$(string1)$(string2)"

random value 2..45

scoreboard players set #me not_comment 3  # hello world
give @a #all_diamonds

execute summon marker run mud:register {command: "function a:target", setup: ""}
