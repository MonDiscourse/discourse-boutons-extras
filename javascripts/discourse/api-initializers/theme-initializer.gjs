import { apiInitializer } from "discourse/lib/api";
import icon from "discourse/helpers/d-icon";
import I18n from "discourse-i18n";

export default apiInitializer((api) => {
  api.addComposerToolbarPopupMenuOption({
  action: (toolbarEvent) => {
    toolbarEvent.applySurround('<s>', '</s>', "barrer_button");
  },
  icon: 'strikethrough',
  label: 'barrer_button',
});
api.addComposerToolbarPopupMenuOption({
  action: (toolbarEvent) => {
    toolbarEvent.applySurround('[color=#000000]', '</s>', "couleur_button");
  },
  icon: 'palette',
  label: 'couleur_button',
});
api.addComposerToolbarPopupMenuOption({
  action: (toolbarEvent) => {
    toolbarEvent.applySurround('[su]', '[/su]', "surligner_button");
  },
  icon: 'eraser',
  label: 'surligner_button',
});

// TRADUCTIONS
let translations = I18n.translations[I18n.currentLocale()].js;
if (!translations) {
  translations = {};
}
if (!translations.composer) {
  translations.composer = {};
}
translations.barrer_button = settings.barrer_button_text;
translations.composer.barrer_prompt =
  settings.barrer_prompt;
translations.couleur_button = settings.couleur_button_text;
translations.composer.couleur_prompt =
  settings.couleur_prompt;
translations.surligner_button = settings.surligner_button_text;
translations.composer.surligner_prompt =
  settings.surligner_prompt;
});
