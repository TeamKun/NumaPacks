val iron = <ore:ingotIron>;
val gold = <ore:ingotGold>;
val diamond = <ore:gemDiamond>;
val gunpowder = <ore:gunpowder>;

val ironblock = <ore:blockIron>;
val flintandsteel = <minecraft:flint_and_steel>;
val wood = <ore:plankWood>;

val revolver = <cqrepoured:revolver>;
val musket = <cqrepoured:musket>;

recipes.addShaped("revolver", revolver,
 [
  [flintandsteel, iron, null],
  [wood, iron, iron],
  [wood, null, null]
 ]);
recipes.addShaped("musket", musket,
 [
  [flintandsteel, iron, iron],
  [wood, ironblock, ironblock],
  [wood, iron, iron]
 ]);

recipes.addShapeless("musket_dagger_iron", <cqrepoured:musket_dagger_iron>, [musket, <minecraft:iron_sword>]);
recipes.addShapeless("musket_dagger_diamond", <cqrepoured:musket_dagger_diamond>, [musket, <minecraft:diamond_sword>]);

recipes.addShapeless("bullet_iron", <cqrepoured:bullet_iron> * 9, [gunpowder, iron]);
recipes.addShapeless("bullet_gold", <cqrepoured:bullet_gold> * 9, [gunpowder, gold]);
recipes.addShapeless("bullet_diamond", <cqrepoured:bullet_diamond> * 9, [gunpowder, diamond]);
