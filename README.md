# ChainDestruction
 
 一括破壊

## 依存機能
- `InstallManager`
- `TickManager`
- `MoreLoot`

## 使い方
- 例：範囲3のピッケルを手に入れる
```mcfunction
    give @s iron_pickaxe{ChainDestruction:{Enable:1b,Limit:3}}
```
- 例：範囲3、下方向を採掘しないピッケルを手に入れる
```mcfunction
    give @s iron_pickaxe{ChainDestruction:{Enable:1b,IgnoreUnder:1b,Limit:3}}
```

