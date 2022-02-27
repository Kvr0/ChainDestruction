#> chaindestruction:_/install
# @within tag/function installmanager:install

## InstallManagerへの登録
    data modify storage installmanager: installed append value ChainDestruction
    data modify storage installmanager: relation append value {id:ChainDestruction,dep:[InstallManager,TickManager,MoreLoot]}
