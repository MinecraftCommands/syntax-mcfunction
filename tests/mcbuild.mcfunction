dir a {
    function test {
        
    }

    function target {
        scoreboard players set #x v 1
    }

    function setup {
        data merge storage a:test {}
        LOOP(1000,i){
           execute summon marker run mud:register {command:"function tests:a/target",setup:""}
            summon marker 0 0 0 {Tags:["a.i"]}
        }
    }

    function cleanup {
        data remove storage a:test {}
        kill @e[type=marker]
    }
}

dir b {

    function test {
        execute @e[tag=b.test] run function tests:b/target
    }

    function target {
        scoreboard players set #x v 1
    }

    function setup {
        LOOP(1000,i) {
            summon marker 0 0 0 {Tags:["b.test"]}
            summon marker 0 0 0 {Tags:["b.i"]}
        } 
    }

    function cleanup {
        data remove storage b:test {}
        kill @e[type=marker]
    }
}