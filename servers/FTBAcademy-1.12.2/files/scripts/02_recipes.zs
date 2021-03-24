#Name: 02_recipes.zs
#Author: Feed the Beast and Sunekaer

print("Initializing '02_recipes.zs'...");

recipes.addShaped(<actuallyadditions:item_misc>, [
  [null, null, null],
  [<minecraft:paper>, null, <minecraft:paper>],
  [null, <minecraft:paper>, null]
]);

recipes.addShaped(<xlfoodmod:paper_cup> * 3, [
  [<minecraft:paper>, null, <minecraft:paper>],
  [null, <minecraft:paper>, null],
  [null, null, null]
]);

print("Initialized '02_recipes.zs'");
