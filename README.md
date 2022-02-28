# ChainDestruction
 
 一括破壊

## 前提データパック
- [`s4core`](https://github.com/Kvr0/s4core)

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

## サバイバルでの手に入れ方
以下の名前をアイテムにつけることで入手可能
|名前||
|:-:|:-:|
|__LumbarAxe__|斧のみ可能 原木or葉|
|__Hammer__|3x3 すべてのブロック|
|__Chain1__|3x3|
|__Chain2__|5x5|
|__Chain3__|7x7|
|__Chain4__|9x9|
|__Chain5__|11x11|
|__Chain6__|13x13|
|__Chain7__|15x15|
|__Chain1I__|3x3 下方向を無視|
|__Chain2I__|5x5 下方向を無視|
|__Chain3I__|7x7 下方向を無視|
|__Chain4I__|9x9 下方向を無視|
|__Chain5I__|11x11 下方向を無視|
|__Chain6I__|13x13 下方向を無視|
|__Chain7I__|15x15 下方向を無視|
