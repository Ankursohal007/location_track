
#import "Globals.h"

@implementation Globals

NSString *const kCallbackDispatcherKey = @"callback_dispatcher_handle_key";
NSString *const kCallbackKey = @"callback_handle_key";
NSString *const kInitCallbackKey = @"init_callback_handle_key";
NSString *const kInitDataCallbackKey = @"init_data_callback_key";
NSString *const kDisposeCallbackKey = @"dispose_callback_handle_key";
NSString *const kDistanceFilterKey = @"distance_filter_key";
NSString *const kChannelId = @"locator_plugin";
NSString *const kBackgroundChannelId = @"locator_plugin_background";

NSString *const kMethodServiceInitialized = @"LocatorService.initialized";
NSString *const kMethodPluginInitializeService = @"LocatorPlugin.initializeService";
NSString *const kMethodPluginRegisterLocationUpdate = @"LocatorPlugin.registerLocationUpdate";
NSString *const kMethodPluginUnRegisterLocationUpdate = @"LocatorPlugin.unRegisterLocationUpdate";
NSString *const kMethodPluginIsRegisteredLocationUpdate = @"LocatorPlugin.isRegisterLocationUpdate";
NSString *const kMethodPluginIsServiceRunning = @"LocatorPlugin.isServiceRunning";
NSString *const kMethodPluginUpdateNotification = @"LocatorPlugin.updateNotification";

NSString *const kArgLatitude = @"latitude";
NSString *const kArgLongitude = @"longitude";
NSString *const kArgAccuracy = @"accuracy";
NSString *const kArgAltitude = @"altitude";
NSString *const kArgSpeed = @"speed";
NSString *const kArgSpeedAccuracy = @"speed_accuracy";
NSString *const kArgHeading = @"heading";
NSString *const kArgTime = @"time";
NSString *const kArgCallback = @"callback";
NSString *const kArgInitCallback = @"initCallback";
NSString *const kArgInitDataCallback = @"initDataCallback";
NSString *const kArgDisposeCallback = @"disposeCallback";
NSString *const kArgLocation = @"location";
NSString *const kArgSettings = @"settings";
NSString *const kArgCallbackDispatcher = @"callbackDispatcher";

NSString *const kSettingsAccuracy = @"settings_accuracy";
NSString *const kSettingsDistanceFilter = @"settings_distanceFilter";
NSString *const kSettingsShowsBackgroundLocationIndicator = @"settings_ios_showsBackgroundLocationIndicator";

NSString *const kBCMSendLocation = @"BCM_SEND_LOCATION";
NSString *const kBCMInit = @"BCM_INIT";
NSString *const kBCMDispose = @"BCM_DISPOSE";

NSString *const kPrefObservingRegion = @"pref_observingRegion";
NSString *const kPrefServiceRunning = @"pref_serviceRunning";


@end
