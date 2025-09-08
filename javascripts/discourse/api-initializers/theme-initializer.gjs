import { apiInitializer } from "discourse/lib/api";
import icon from "discourse/helpers/d-icon";

export default apiInitializer((api) => {
	const currentLocale = I18n.currentLocale();

  // Localization setup - keep only the button titles in translations
  I18n.translations[currentLocale].js.barrer_button_title = settings.barrer_button;
  I18n.translations[currentLocale].js.couleur_button_title = settings.couleur_button;
  I18n.translations[currentLocale].js.surligner_button_title = settings.surligner_button;
  I18n.translations[currentLocale].js.composer.barrer_text = settings.barrer_text;
  I18n.translations[currentLocale].js.composer.couleur_text = settings.couleur_text;
  I18n.translations[currentLocale].js.composer.surligner_text = settings.surligner_text;

  // Toolbar
  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) => {
      toolbarEvent.applySurround("<s>", "</s>", "barrer_text");
    },
    icon: "strikethrough",
    label: "barrer_button_title",
  });

  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) =>
      toolbarEvent.applySurround("[color=#000000]", "[/color]", "couleur_text"),
    icon: "palette",
    label: "couleur_button_title",
  });

  api.addComposerToolbarPopupMenuOption({
    action: (toolbarEvent) => {
      toolbarEvent.applySurround("[su]", "[/su]", "surligner_text");
    },
    icon: "highlighter",
    label: "surligner_button_title",
  });
});