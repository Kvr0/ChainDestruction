#> chaindestruction:start/check/mz
# @within function chaindestruction:start/_

## 加算
    scoreboard players add $chaindestruction:start/_.count temporary 1

## 採掘判定
    data modify storage calculation: digresult append value 0b
    execute store result storage calculation: digresult[-1] byte 1 run scoreboard players get $chaindestruction:start/check/dig.result temporary
    function chaindestruction:start/check/dig

## 座標カウンタ
    scoreboard players remove $chaindestruction:start/_.count.z temporary 1

## 次点
    execute if score $chaindestruction:start/_.count.x temporary > $chaindestruction:start/_.mincount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~-1 ~ ~ run function chaindestruction:start/check/mx
    execute if score $chaindestruction:start/_.count.x temporary < $chaindestruction:start/_.maxcount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~1 ~ ~ run function chaindestruction:start/check/px
    execute if score $chaindestruction:start/_.count.y temporary > $chaindestruction:start/_.mincount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 unless score $chaindestruction:start/_.ignoreunder temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~ ~-1 ~ run function chaindestruction:start/check/my
    execute if score $chaindestruction:start/_.count.y temporary < $chaindestruction:start/_.maxcount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~ ~1 ~ run function chaindestruction:start/check/py
    execute if score $chaindestruction:start/_.count.z temporary > $chaindestruction:start/_.mincount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~ ~ ~-1 run function chaindestruction:start/check/mz
    #execute if score $chaindestruction:start/_.count.z temporary < $chaindestruction:start/_.maxcount temporary unless score $chaindestruction:start/check/dig.result temporary matches 1 if score $chaindestruction:start/_.count temporary < $chaindestruction:start/_.max temporary positioned ~ ~ ~1 run function chaindestruction:start/check/pz

## 座標カウンタ
    scoreboard players add $chaindestruction:start/_.count.z temporary 1

## 元に戻す
    execute store result score $chaindestruction:start/check/dig.result temporary run data get storage calculation: digresult[-1]
    data remove storage calculation: digresult[-1]
    scoreboard players remove $chaindestruction:start/_.count temporary 1
