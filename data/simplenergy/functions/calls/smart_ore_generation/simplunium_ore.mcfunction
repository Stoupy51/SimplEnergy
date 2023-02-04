
#> simplenergy:calls/smart_ore_generation/simplunium_ore
#
# @author Stoupy51
#
# @TIP: The random position is not flat, is has a digit.
# You can use the digit to generate ore on a specific way like below
# It will try to place the ore patch depending on the digit
# so on every line below, somes can fail making it more realistic
# resulting in an ore patch containing between 2 and 6 ore blocks (in this example)

## Try to find a random position adjacent to air in the region to generate the ore
function #smart_ore_generation:v1/slots/random_position

# Placing Simplunium Ore Patch
execute at @s if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type
execute at @s positioned ~0.8 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type
execute at @s positioned ~0.0 ~0.8 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type
execute at @s positioned ~0.8 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type
execute at @s positioned ~0.8 ~0.0 ~0.8 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type
execute at @s positioned ~0.0 ~0.8 ~0.0 if block ~ ~ ~ #simplenergy:for_simplunium_ore run function simplenergy:calls/smart_ore_generation/simplunium_type

