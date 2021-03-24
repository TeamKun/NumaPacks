var augmentFor9a4d5630Check = ingredient.custom(function (i) {
  if (i.id.toString().equals('astralsorcery:itemwand') && i.getNbt()) {
    var s9a4d5630 = i.getNbt().get('astralsorcery').get('AugmentName').asString();
  
    if (s9a4d5630 === '"astralsorcery.constellation.aevitas"'
     || s9a4d5630 === '"astralsorcery.constellation.discidia"'
     || s9a4d5630 === '"astralsorcery.constellation.vicio"'
     || s9a4d5630 === '"astralsorcery.constellation.armara"'
     || s9a4d5630 === '"astralsorcery.constellation.evorsio"') {
      return true;
    }
  }

  return false;
});

events.listen('player.inventory.changed', function (event) {
  if(event.player.inventory.find(augmentFor9a4d5630Check)) {
    event.player.data.ftbquests.addProgress('9a4d5630', 1)
  }
})
 