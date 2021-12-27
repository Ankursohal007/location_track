#import <Flutter/Flutter.h>
#import <CoreLocation/CoreLocation.h>
#import "MethodCallHelper.h"

@interface UCLocationPlugin : NSObject<FlutterPlugin, CLLocationManagerDelegate, MethodCallHelperDelegate>

+ (UCLocationPlugin*_Nullable) getInstance;
- (void)invokeMethod:(NSString*_Nonnull)method arguments:(id _Nullable)arguments;

@end
