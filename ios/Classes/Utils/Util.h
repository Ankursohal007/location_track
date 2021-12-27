//
//  Util.h
//  uc_location
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Util : NSObject

+ (CLLocationAccuracy) getAccuracy:(long)key;
+ (NSDictionary<NSString*,NSNumber*>*) getLocationMap:(CLLocation *)location;

@end

NS_ASSUME_NONNULL_END
