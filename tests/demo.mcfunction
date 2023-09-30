#> Block Comment Header
# Normal comment - Example of some commands
# @returns $my.variable at #resource:location

# However, we don't get @returns highlighting here

setblock ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{id: "minecraft:diamond", Count: 1}]}
$data modify storage $(id) $(path) set value "with random $(string1) stuff $(string2)"
tellraw @a [{"text": "hello", "color": "blue"}, {"text": "world", "color": "blue"}]
random roll 2..45  # neat command they added
give @a #minecraft:log  # plenty of wood to capture

# multiline
execute                           \
    as @a                         \
    at @s                         \
    if entity @s[distance=..0.6]  \
    say bar

# bolt
infinite_invisibility = {
    Id: 14,
    Duration: 999999,
    Amplifier: 1,
    ShowParticles: false,
}

def summon_chicken_army(n):
    for i in range(n):
        summon chicken ~i ~ ~ {
            Tags: [f"quack{i}"],
            IsChickenJockey: true,
            Passengers: [{
                id: zombie,
                IsBaby: true,
                ActiveEffects: [infinite_invisibility]
            }]
        }

say Go forth, my minions!
summon_chicken_army(16)

# mcbuild
LOOP(1000,i){
   execute summon marker run mud:register {command:"function tests:a/target",setup:""}
    summon marker 0 0 0 {Tags:["a.i"]}
}
