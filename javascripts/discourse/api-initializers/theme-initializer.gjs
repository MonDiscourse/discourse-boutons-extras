import { apiInitializer } from "discourse/lib/api";
import icon from "discourse/helpers/d-icon";

export default apiInitializer((api) => {
  // Toolbar
  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) => {
      toolbarEvent.applySurround('<s>', '</s>', "Texte");
    },
    icon: "strikethrough",
    label: "Barrer",
  });

  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) =>
      toolbarEvent.applySurround('[color=#000000]', "[/color]", "Texte"),
    icon: "palette",
    label: "Couleur",
  });

  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) => {
      toolbarEvent.applySurround('[su]', '[/su]', "Texte");
    },
    icon: 'eraser',
    label: 'Surligner',
  });
});