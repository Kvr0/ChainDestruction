#> chaindestruction:start/check/dig
# @within function chaindestruction:start/check/**

## IDチェック
    function moreloot:getid/_
    data modify storage calculation: compare.a set from storage moreloot: result.id
    scoreboard players set $chaindestruction:start/check/dig.result temporary 1
    execute store success score $chaindestruction:start/check/dig.result temporary run data modify storage calculation: compare.a set from storage calculation: input.item
    execute if score $chaindestruction:start/_.ignoreid temporary matches 1 run scoreboard players set $chaindestruction:start/check/dig.result temporary 0
    execute if data storage moreloot: result{id:""} run scoreboard players set $chaindestruction:start/check/dig.result temporary 1

## アイテム
    execute unless score $chaindestruction:start/check/dig.result temporary matches 1 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

## ブロック
    execute unless score $chaindestruction:start/check/dig.result temporary matches 1 run setblock ~ ~ ~ air replace
