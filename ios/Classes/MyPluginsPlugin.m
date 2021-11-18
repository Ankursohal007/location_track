#import "MyPluginsPlugin.h"
#if __has_include(<my_plugins/my_plugins-Swift.h>)
#import <my_plugins/my_plugins-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "my_plugins-Swift.h"
#endif

@implementation MyPluginsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMyPluginsPlugin registerWithRegistrar:registrar];
}
@end
