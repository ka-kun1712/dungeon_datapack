# 
scoreboard objectives add duration dummy
scoreboard objectives add sonic_charge dummy
scoreboard objectives add ice dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard objectives add kakuritu dummy

data modify storage dun: groups set value [{id:"plain",name:"平原"},{id:"mineshaft",name:"廃鉱"},{id:"jungle",name:"ジャングル"},{id:"mansion",name:"森の洋館"},{id:"taiga",name:"タイガ"},{id:"frozen_ocean",name:"凍った海"},{id:"monument",name:"海洋神殿"},{id:"desert",name:"砂漠"},{id:"nether",name:"ネザー"},{id:"end",name:"エンド"},]

function dun:boss/load
function dun:chest/load
function dun:monster/load