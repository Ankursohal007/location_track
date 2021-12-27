//
//  InitPluggable.m
//  uc_location
//

#import "InitPluggable.h"
#import "PreferencesManager.h"
#import "Globals.h"
#import "UCLocationPlugin.h"

@implementation InitPluggable {
    BOOL isInitCallbackCalled;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        isInitCallbackCalled = NO;
    }
    return self;
}

- (void)onServiceDispose {
    isInitCallbackCalled = NO;
}

- (void)onServiceStart:(NSDictionary*) initialDataDictionary {
    if (!isInitCallbackCalled) {
        NSDictionary *map = @{
                         kArgInitCallback : @([PreferencesManager getCallbackHandle:kInitCallbackKey]),
                         kArgInitDataCallback: initialDataDictionary
                         };
        [[UCLocationPlugin getInstance] invokeMethod:kBCMInit arguments:map];
    }
    isInitCallbackCalled = YES;
}

- (void)setCallback:(int64_t)callbackHandle {
    [PreferencesManager setCallbackHandle:callbackHandle key:kInitCallbackKey];
}

@end
