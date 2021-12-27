//
//  PreferencesManager.h
//  background_locator
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PreferencesManager : NSObject

+ (int64_t)getCallbackDispatcherHandle;
+ (void)setCallbackDispatcherHandle:(int64_t)handle;
+ (int64_t)getCallbackHandle:(NSString *)key;
+ (void)setCallbackHandle:(int64_t)handle key:(NSString *)key;
+ (void)saveDistanceFilter:(double) distance;
+ (double)getDistanceFilter;
+ (void)setObservingRegion:(BOOL) observing;
+ (BOOL)isObservingRegion;
+ (void)setServiceRunning:(BOOL) running;
+ (BOOL)isServiceRunning;

@end

NS_ASSUME_NONNULL_END
