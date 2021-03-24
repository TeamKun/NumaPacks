//Block events
events.listen("item.right_click", function (event) {
  if (event.item.equals("ftbquests:book")) {
    if (event.hasGameStage("ftba_welcome_to_academy")) {
      event.removeGameStage("ftba_welcome_to_academy");
      if (event.player.server) {
        event.player.data.ftbtutorialmod.openTutorial("ftbacademy:quests");
      }
      event.cancel();
    }
  } else if (inSchool(event.player) && (event.item.equals("minecraft:ender_pearl") || event.item.equals("minecraft:water_bucket") || event.item.id.toString().equals("botania:twigwand"))) {
    event.cancel();
  }
});