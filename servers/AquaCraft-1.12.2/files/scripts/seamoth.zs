val iron = <ore:ingotIron>;
val gold = <ore:ingotGold>;
val gunpowder = <ore:gunpowder>;

val ironblock = <ore:blockIron>;
val coalblock = <minecraft:coal_block>;
val diamondblock = <ore:blockDiamond>;
val wood = <ore:plankWood>;
val wool = <ore:wool>;

val battery = <better_diving:battery>.withTag({"better_diving:energy_storage": 1000000});
val powercell = <better_diving:power_cell>.withTag({"better_diving:energy_storage": 2000000});
val engine = <davincisvessels:engine>;
val seaglide = <better_diving:seaglide>.withTag({"better_diving:item_stack_handler": {Size: 1, Items: [{Slot: 0, id: "better_diving:battery", Count: 1 as byte, tag: {"better_diving:energy_storage": 1000000}, Damage: 0 as short}]}});
val seamoth = <better_diving:seamoth>.withTag({"better_diving:item_stack_handler": {Size: 5, Items: [{Slot: 0, id: "better_diving:power_cell", Count: 1 as byte, tag: {"better_diving:energy_storage": 2000000}, Damage: 0 as short}]}});

recipes.addShapeless("battery", battery, [coalblock, coalblock, iron]);
recipes.addShapeless("powercell", powercell, [battery, battery, ironblock]);

recipes.addShaped("seaglide", seaglide,
 [
  [null, engine, battery],
  [wool, gold, wool],
  [iron, ironblock, iron]
 ]);
recipes.addShaped("seamoth", seamoth,
 [
  [engine, powercell, engine],
  [ironblock, seaglide, ironblock],
  [ironblock, diamondblock, ironblock]
 ]);
