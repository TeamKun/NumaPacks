events.listen("gamestage.added", function (event) {
  if (schoolOverlays.containsKey(event.stage)) {
    event.player.openOverlay(schoolOverlays.get(event.stage));
  }
});

events.listen("gamestage.removed", function (event) {
  event.player.closeOverlay(event.stage);
});

events.listen("player.logged_in", function (event) {
  schoolOverlays.forEach(function (overlay) {
    if (event.hasGameStage(overlay.id)) {
      event.player.openOverlay(overlay);
    }
  });
});