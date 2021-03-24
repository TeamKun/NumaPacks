function inSchool(player) {
  return !player.creative && ftbacademy.isInSchool(player);
}

var schoolOverlays = utils.newMap();

function addOverlay(id, text) {
  var o = utils.overlay(id, text);
  schoolOverlays[id] = o;
  return o;
}

function addSimpleOverlay(id, titleKey, descKey) {
  return addOverlay(id, [text.translate(titleKey).bold().underlined(), "", text.translate(descKey).aqua()]).color("#0B1544");
}