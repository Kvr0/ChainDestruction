#> chaindestruction:start/_
# @within function chaindestruction:digged/_

## コピー
    data modify storage calculation: input set from storage moreloot: result

## カウンタリセット
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute unless score $chaindestruction:start/_.max temporary matches -2147483648..2147483647 run scoreboard players set $chaindestruction:start/_.max temporary 2147483647
    execute unless score $chaindestruction:start/_.maxcount temporary matches -2147483648..2147483647 store result score $chaindestruction:start/_.maxcount temporary run data get storage calculation: input.tool.tag.ChainDestruction.Limit 1
    execute unless score $chaindestruction:start/_.maxcount temporary matches -2147483648..2147483647 run scoreboard players set $chaindestruction:start/_.maxcount temporary 8
    scoreboard players set $chaindestruction:start/check/dig.result temporary 1

## 座標カウンタ
    scoreboard players set $-1 temporary -1
    scoreboard players operation $chaindestruction:start/_.mincount temporary = $chaindestruction:start/_.maxcount temporary
    scoreboard players operation $chaindestruction:start/_.mincount temporary *= $-1 temporary
    scoreboard players set $chaindestruction:start/_.count.x temporary 0
    scoreboard players set $chaindestruction:start/_.count.y temporary 0
    scoreboard players set $chaindestruction:start/_.count.z temporary 0

## 位置
    summon armor_stand ~ ~ ~ {Tags:[ChainDestruction,new],Marker:1b,Invisible:1b}
    execute store result entity @e[tag=ChainDestruction,tag=new,limit=1] Pos[0] double 1 run data get storage calculation: input.pos[0] 1
    execute store result entity @e[tag=ChainDestruction,tag=new,limit=1] Pos[1] double 1 run data get storage calculation: input.pos[1] 1
    execute store result entity @e[tag=ChainDestruction,tag=new,limit=1] Pos[2] double 1 run data get storage calculation: input.pos[2] 1
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s run tp @s ~0.5 ~0.5 ~0.5

## メインハンド
    data modify entity @e[tag=ChainDestruction,tag=new,limit=1] HandItems[0] set from storage calculation: input.tool
    data modify entity @e[tag=ChainDestruction,tag=new,limit=1] HandItems[0].tag.DisableMoreLoot set value 1b

## X-
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~-1 ~ ~ run function chaindestruction:start/check/mx
## X+
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~1 ~ ~ run function chaindestruction:start/check/px
## Y-
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute unless data storage calculation: input.tool.tag{ChainDestruction:{IgnoreUnder:1b}} as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~ ~-1 ~ run function chaindestruction:start/check/my
## Y+
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~ ~1 ~ run function chaindestruction:start/check/py
## Z-
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~ ~ ~-1 run function chaindestruction:start/check/mz
## Z+
    scoreboard players set $chaindestruction:start/_.count temporary 0
    execute as @e[tag=ChainDestruction,tag=new,limit=1] at @s positioned ~ ~ ~1 run function chaindestruction:start/check/pz

## 削除
    kill @e[tag=ChainDestruction,tag=new]

## リセット
    function calculation:reset/_