import crafttweaker.item.IItemStack;

#Name: 01_remove.zs
#Author: Feed the Beast and Sunekaer

print("Initializing '01_remove.zs'...");

val RemoveArray = [
  <chisel:block_charcoal2:1>,
  <actuallyadditions:item_misc>,
  <xlfoodmod:paper_cup>,
  <actuallyadditions:block_misc:5>
] as IItemStack[];

val RemoveAndhideArray = [
  <thermalfoundation:ore:7>,
  <thermalfoundation:storage:7>,
  <thermalfoundation:glass:7>,
  <thermalfoundation:coin:71>,
  <thermalfoundation:material:71>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:199>,
  <thermalfoundation:material:263>,
  <thermalfoundation:material:327>,
  <forge:bucketfilled>.withTag({FluidName: "iridium", Amount: 1000}),
  <thermalfoundation:ore:8>,
  <thermalfoundation:storage:8>,
  <thermalfoundation:glass:8>,
  <thermalfoundation:coin:72>,
  <thermalfoundation:material:72>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:200>,
  <thermalfoundation:material:264>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:1028>,
  <forge:bucketfilled>.withTag({FluidName: "mana", Amount: 1000}),
  <xlfoodmod:oreo_cake>,
  <xlfoodmod:oreo_cookie>,
  <xlfoodmod:oreo_cupcake>,
  <xlfoodmod:twinkie>
] as IItemStack[];

val RemoveByNameArray = [
  "thermalfoundation:ingredients",
  "thermalfoundation:item_dust",
  "thermalfoundation:item_dust_1",
  "thermalfoundation:item_dust_2",
  "thermalfoundation:item_dust_3",
  "thermalfoundation:item_dust_4",
  "traverse:fir_boat",
  "tconstruct:gadgets/slime_boots_fallback",
  "tconstruct:gadgets/slimesling_fallback"
] as string[];

val HideArray = [
  <thermalexpansion:frame:129>,
  <thermalexpansion:frame:130>,
  <thermalexpansion:frame:131>,
  <thermalexpansion:frame:132>,
  <minecraft:yellow_shulker_box>,
  <minecraft:black_shulker_box>,
  <ironchest:iron_shulker_box_yellow:4>,
  <ironchest:iron_shulker_box_orange:3>,
  <ironchest:iron_shulker_box_yellow:3>,
  <ironchest:iron_shulker_box_orange:4>,
  <ironchest:iron_shulker_box_yellow:2>,
  <ironchest:iron_shulker_box_yellow:1>,
  <ironchest:iron_shulker_box_orange:6>,
  <ironchest:iron_shulker_box_orange:0>,
  <ironchest:iron_shulker_box_yellow:6>,
  <ironchest:iron_shulker_box_orange:1>,
  <ironchest:iron_shulker_box_orange:2>,
  <ironchest:iron_shulker_box_black:2>,
  <ironchest:iron_shulker_box_black:3>,
  <ironchest:iron_shulker_box_black:0>,
  <ironchest:iron_shulker_box_black:1>,
  <ironchest:iron_shulker_box_black:6>,
  <ironchest:iron_shulker_box_yellow:0>,
  <ironchest:iron_shulker_box_black:4>,
  <minecraft:white_shulker_box>,
  <minecraft:cyan_shulker_box>,
  <ironchest:iron_shulker_box_magenta:6>,
  <ironchest:iron_shulker_box_white:6>,
  <ironchest:iron_shulker_box_white:0>,
  <ironchest:iron_shulker_box_white:1>,
  <ironchest:iron_shulker_box_magenta:1>,
  <ironchest:iron_shulker_box_magenta:0>,
  <ironchest:iron_shulker_box_white:4>,
  <ironchest:iron_shulker_box_magenta:3>,
  <ironchest:iron_shulker_box_magenta:2>,
  <ironchest:iron_shulker_box_white:2>,
  <ironchest:iron_shulker_box_white:3>,
  <ironchest:iron_shulker_box_magenta:4>,
  <minecraft:lime_shulker_box>,
  <minecraft:light_blue_shulker_box>,
  <ironchest:iron_shulker_box_cyan:0>,
  <ironchest:iron_shulker_box_cyan:1>,
  <ironchest:iron_shulker_box_cyan:2>,
  <ironchest:iron_shulker_box_pink:2>,
  <ironchest:iron_shulker_box_cyan:3>,
  <ironchest:iron_shulker_box_pink:1>,
  <ironchest:iron_shulker_box_cyan:4>,
  <ironchest:iron_shulker_box_pink:0>,
  <ironchest:iron_shulker_box_cyan:6>,
  <ironchest:iron_shulker_box_pink:6>,
  <ironchest:iron_shulker_box_pink:4>,
  <ironchest:iron_shulker_box_pink:3>,
  <ironchest:iron_shulker_box_light_blue:4>,
  <ironchest:iron_shulker_box_light_blue:2>,
  <ironchest:iron_shulker_box_light_blue:3>,
  <ironchest:iron_shulker_box_light_blue:6>,
  <minecraft:blue_shulker_box>,
  <thermalfoundation:fluid_mana>,
  <ironchest:iron_shulker_box_light_blue:0>,
  <ironchest:iron_shulker_box_light_blue:1>,
  <minecraft:silver_shulker_box>,
  <ironchest:iron_shulker_box_blue:0>,
  <ironchest:iron_shulker_box_brown:0>,
  <ironchest:iron_shulker_box_blue:2>,
  <ironchest:iron_shulker_box_blue:1>,
  <minecraft:green_shulker_box>,
  <ironchest:iron_shulker_box_red:6>,
  <minecraft:orange_shulker_box>,
  <ironchest:iron_shulker_box_silver:6>,
  <ironchest:iron_shulker_box_silver:4>,
  <ironchest:iron_shulker_box_silver:2>,
  <ironchest:iron_shulker_box_silver:3>,
  <ironchest:iron_shulker_box_silver:0>,
  <ironchest:iron_shulker_box_silver:1>,
  <ironchest:iron_shulker_box_brown:6>,
  <ironchest:iron_shulker_box_red:4>,
  <ironchest:iron_shulker_box_red:3>,
  <ironchest:iron_shulker_box_red:2>,
  <ironchest:iron_shulker_box_brown:2>,
  <ironchest:iron_shulker_box_red:1>,
  <ironchest:iron_shulker_box_blue:4>,
  <ironchest:iron_shulker_box_brown:1>,
  <ironchest:iron_shulker_box_red:0>,
  <ironchest:iron_shulker_box_blue:3>,
  <ironchest:iron_shulker_box_brown:4>,
  <ironchest:iron_shulker_box_blue:6>,
  <ironchest:iron_shulker_box_brown:3>,
  <ironchest:iron_shulker_box_lime:6>,
  <ironchest:iron_shulker_box_lime:4>,
  <ironchest:iron_shulker_box_lime:3>,
  <ironchest:iron_shulker_box_lime:2>,
  <ironchest:iron_shulker_box_lime:1>,
  <ironchest:iron_shulker_box_lime:0>,
  <ironchest:iron_shulker_box_gray:1>,
  <ironchest:iron_shulker_box_gray:0>,
  <ironchest:iron_shulker_box_gray:3>,
  <ironchest:iron_shulker_box_gray:2>,
  <ironchest:iron_shulker_box_gray:4>,
  <ironchest:iron_shulker_box_gray:6>,
  <minecraft:gray_shulker_box>,
  <ironchest:iron_shulker_box_green:6>,
  <ironchest:iron_shulker_box_green:4>,
  <minecraft:red_shulker_box>,
  <minecraft:brown_shulker_box>,
  <ironchest:iron_shulker_box_green:3>,
  <ironchest:iron_shulker_box_green:2>,
  <ironchest:iron_shulker_box_green:1>,
  <ironchest:iron_shulker_box_green:0>,
  <minecraft:magenta_shulker_box>,
  <minecraft:pink_shulker_box>,
  <ironchest:iron_shulker_box_white:5>,
  <ironchest:iron_shulker_box_orange:5>,
  <ironchest:iron_shulker_box_magenta:5>,
  <ironchest:iron_shulker_box_light_blue:5>,
  <ironchest:iron_shulker_box_yellow:5>,
  <ironchest:iron_shulker_box_lime:5>,
  <ironchest:iron_shulker_box_pink:5>,
  <ironchest:iron_shulker_box_gray:5>,
  <ironchest:iron_shulker_box_silver:5>,
  <ironchest:iron_shulker_box_cyan:5>,
  <ironchest:iron_shulker_box_blue:5>,
  <ironchest:iron_shulker_box_brown:5>,
  <ironchest:iron_shulker_box_green:5>,
  <ironchest:iron_shulker_box_red:5>,
  <ironchest:iron_shulker_box_black:5>,
  <thermalexpansion:frame:146>,
  <thermalexpansion:frame:147>,
  <thermalexpansion:frame:148>
] as IItemStack[];

################################################################################

for item in RemoveArray {
    recipes.remove(item);
}

for item in RemoveAndhideArray {
    mods.jei.JEI.removeAndHide(item);
}

for item in RemoveByNameArray {
    recipes.removeByRecipeName(item);
}

for item in HideArray {
    mods.jei.JEI.hide(item);
}


print("Initialized '01_remove.zs'");
