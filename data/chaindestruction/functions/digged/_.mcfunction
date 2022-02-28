#> chaindestruction:digged/_
# @within tag/function moreloot:digged

## ツールチェック
#> lumbarAxe
    execute store result score $chaindestruction:digged/_.islumbarAxe temporary if data storage moreloot: result.tool.tag.display{Name:'{"text":"LumbarAxe"}'}
    scoreboard players set $chaindestruction:digged/_.isAxe temporary 0
    execute if data storage moreloot: result.tool{id:"minecraft:wooden_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1
    execute if data storage moreloot: result.tool{id:"minecraft:stone_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1
    execute if data storage moreloot: result.tool{id:"minecraft:iron_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1
    execute if data storage moreloot: result.tool{id:"minecraft:golden_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1
    execute if data storage moreloot: result.tool{id:"minecraft:diamond_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1
    execute if data storage moreloot: result.tool{id:"minecraft:netherite_axe"} run scoreboard players set $chaindestruction:digged/_.isAxe temporary 1

    scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 0
    execute if data storage moreloot: result{item:"minecraft:oak_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:spruce_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:birch_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:jungle_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:acacia_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:dark_oak_log"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:crimson_stem"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:warped_stem"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:oak_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:spruce_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:birch_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:jungle_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:acacia_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1
    execute if data storage moreloot: result{item:"minecraft:dark_oak_leaves"} run scoreboard players set $chaindestruction:digged/_.isLogorLeaves temporary 1

    execute if score $chaindestruction:digged/_.islumbarAxe temporary matches 1 if score $chaindestruction:digged/_.isAxe temporary matches 1 if score $chaindestruction:digged/_.isLogorLeaves temporary matches 1 run scoreboard players set $chaindestruction:start/_.maxcount temporary 50

#> Chain
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain1"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain2"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 2
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain3"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 3
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain4"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 4
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain5"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 5
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain6"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 6
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain7"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 7
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"ド=ヒバホセ ガスゲヅ アノゼヅタケ イグヴジ ナブ"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 100

    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain1I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain2I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 2
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain3I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 3
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain4I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 4
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain5I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 5
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain6I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 6
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain7I"}'} run scoreboard players set $chaindestruction:start/_.maxcount temporary 7

    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain1I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain2I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain3I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain4I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain5I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain6I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1
    execute if data storage moreloot: result.tool.tag.display{Name:'{"text":"Chain7I"}'} run scoreboard players set $chaindestruction:start/_.ignoreunder temporary 1

    execute if score $chaindestruction:start/_.maxcount temporary matches -2147483648..2147483647 run function chaindestruction:start/_

    execute if data storage moreloot: result.tool.tag{ChainDestruction:{Enable:1b}} run function chaindestruction:start/_
