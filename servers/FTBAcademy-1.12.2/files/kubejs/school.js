events.listen("ftbquests.completed.clear", function (event) {
  event.onlineMembers.first.inventory.clear(ingredient.of("ftbquests:book").not());
});

events.listen("ftbquests.completed.ding", function (event) {
  event.onlineMembers.playSound("entity.experience_orb.pickup");
});

events.listen("ftbquests.completed.631a1d68", function (event) {
  event.onlineMembers.tell(text.of("This section has less in-world information, you will have to rely on the quests and using JEI").blue().bold());
});

events.listen("player.chest.closed", function (event) {
  if(event.server && inSchool(event.player) && event.inventory.empty && (event.hasGameStage("a1") || event.hasGameStage("b_petal"))) {
    event.world.getBlock(event.wrappedInventory.func_174877_v()).set("minecraft:air");
  }
});