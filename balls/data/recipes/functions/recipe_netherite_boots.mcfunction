clear @s minecraft:knowledge_book
give @s netherite_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;143275328,-486849371,-1540337309,-279144501],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;936736844,1524516832,-1403948078,-657932014],Slot:"chest"}]} 1
advancement revoke @s only recipes:netherite_boots_smithing
recipe take @s recipes:netherite_boots_smithing
