#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>
#import <React/RCTLinkingManager.h>
#import <RNPhotoEditorSDK/RNPhotoEditorSDK.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"main";
  [PESDK setLocalizationDictionary: @{
    @"fr": @{
      @"pesdk_editor_title_name": @"Editeur",
      @"pesdk_editor_title_closeEditorAlert": @"Fermer l\'éditeur ?",
      @"pesdk_editor_text_closeImageEditorAlert": @"Voulez vous vraiment ne pas conserver l\'image ?",
      @"pesdk_editor_text_closeVideoEditorAlert": @"Voulez vous vraiment ne pas conserver la vidéo ?",
      @"pesdk_editor_button_closeEditorAlertConfirmation": @"Oui",
      @"pesdk_editor_button_closeEditorAlertCancelation": @"Non",
      @"pesdk_editor_title_somethingWentWrongAlert": @"Quelque chose s\'est mal passé.",
      @"pesdk_editor_text_somethingWentWrongAlert": @"Impossible de charger le fichier.",
      @"pesdk_editor_title_videoTooShortAlert": @"La vidéo est trop courte",
      @"pesdk_editor_text_videoTooShortAlert": @"Choisissez une vidéo d\'au moins %s secondes.",
      @"pesdk_editor_title_compositionTooShort": @"La vidéo est trop courte",
      @"pesdk_editor_text_compositionTooShort": @"Coupez la à au moins %s, ou ajoutez des clips supplémentaires.",
      @"pesdk_editor_compositionToShort_ok": @"OK",
      @"pesdk_editor_compositionToShort_cancel": @"Annuler",
      @"pesdk_editor_button_somethingWentWrongCloseEditor": @"Fermer",
    @"pesdk_editor_cancel": @"Annuler",
    @"pesdk_editor_accept": @"Accepter",
    @"pesdk_editor_save": @"Sauver",

    @"pesdk_editor_write_permission_denied": @"Impossible d\'exporter sans avoir la permission de stockage.",
    @"pesdk_editor_goto_settings_message": @"Il semble que vous n\'ayez pas accordée la permission de stockage. Vous pouvez l\'activer dans les Paramètres.",
    @"pesdk_editor_goto_settings_title": @"Permission de stockage nécessaire",
    @"pesdk_editor_goto_settings_cancel": @"Annuler",
    @"pesdk_editor_goto_settings_ok": @"OK",

    @"pesdk_editor_text_exportProgressUnknown": @"Export…",
    @"pesdk_editor_text_exportProgress": @"Export %s.",

    @"pesdk_editor_text_loadProgressUnknown": @"Chargement…",
    @"pesdk_editor_text_loadProgress": @"Chargement %s.",
    @"pesdk_common_button_undo": @"Défaire",
    @"pesdk_common_button_redo": @"Refaire",
    @"pesdk_common_remove_bg": @"Supprimer fond",

    @"pesdk_adjustments_title_name": @"Ajuster",
    @"pesdk_adjust_title_name": @"Ajuster",

    @"pesdk_transform_button_freeCrop": @"Personnalisé",
    @"pesdk_transform_button_resetCrop": @"Rétablir",
    @"pesdk_transform_button_squareCrop": @"Square",
    @"pesdk_transform_button_circleCropMask": @"Circle",
    @"pesdk_transform_title_name": @"Recadrer",
    @"pesdk_adjustments_button_shadowTool": @"Ombre",
    @"pesdk_adjustments_button_exposureTool": @"Exposition",
    @"pesdk_adjustments_button_highlightTool": @"Brillance",
    @"pesdk_adjustments_button_brightnessTool": @"Luminosité",
    @"pesdk_adjustments_button_contrastTool": @"Contraste",
    @"pesdk_adjustments_button_saturationTool": @"Saturation",
    @"pesdk_adjustments_button_clarityTool": @"Tons clairs",
    @"pesdk_adjustments_button_gammaTool": @"Gamma",
    @"pesdk_adjustments_button_blacksTool": @"Noirs",
    @"pesdk_adjustments_button_whitesTool": @"Blancs",
    @"pesdk_adjustments_button_temperatureTool": @"Température",
    @"pesdk_adjustments_button_sharpnessTool": @"Définition",
    @"pesdk_adjustments_button_reset": @"Rétablir",

    @"pesdk_text_title_name": @"Texte",
    @"pesdk_text_title_options": @"Options de texte",
    @"pesdk_text_title_input": @"Ajout de texte",
    @"pesdk_text_title_textColor": @"Couleur de texte",
    @"pesdk_text_title_font": @"Police",

    @"pesdk_text_button_add": @"Ajouter",
    @"pesdk_text_button_edit": @"Modifier",
    @"pesdk_text_button_straighten": @"Renforcer",
    @"pesdk_text_button_duration": @"Durée",

    @"pesdk_text_button_font": @"Police",
    @"pesdk_text_button_color": @"Couleur",
    @"pesdk_text_button_backgroundColor": @"Couleur de fond",
    @"pesdk_text_button_alignment": @"Alignement",

    @"pesdk_text_button_bringToFront": @"Devant",
    @"pesdk_text_button_delete": @"Supprimer",

    @"pesdk_text_text_editTextPlaceholder": @"Votre texte",

    @"pesdk_text_button_fontPreview": @"Ag",

    @"pesdk_textDesign_title_name": @"Text Design",
    @"pesdk_textDesign_title_options": @"Options Text Design",
    @"pesdk_textDesign_title_input": @"Ajouter Texte",
    @"pesdk_textDesign_button_color": @"Couleur",
    @"pesdk_textDesign_button_layout": @"Forme",

    @"pesdk_textDesign_button_bringToFront": @"Devant",
    @"pesdk_textDesign_button_add": @"Ajouter",
    @"pesdk_textDesign_button_delete": @"Supprimer",
    @"pesdk_textDesign_button_invert": @"Inverser",

    @"pesdk_textDesign_text_editTextPlaceholder": @"Votre texte",

    @"pesdk_textDesign_asset_none": @"Aucun"
    }
  }];
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@".expo/.virtual-metro-entry"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

// Linking API
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
  return [super application:application openURL:url options:options] || [RCTLinkingManager application:application openURL:url options:options];
}

// Universal Links
- (BOOL)application:(UIApplication *)application continueUserActivity:(nonnull NSUserActivity *)userActivity restorationHandler:(nonnull void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler {
  BOOL result = [RCTLinkingManager application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
  return [super application:application continueUserActivity:userActivity restorationHandler:restorationHandler] || result;
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
  return [super application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
  return [super application:application didFailToRegisterForRemoteNotificationsWithError:error];
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
  return [super application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
}

@end
