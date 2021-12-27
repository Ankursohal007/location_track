//
//  DisposePluggable.m
//  uc_location

#import "DisposePluggable.h"
#import "PreferencesManager.h"
#import "Globals.h"
#import "UCLocationPlugin.h"

@implementation DisposePluggable

- (void)onServiceDispose {
    NSDictionary *map = @{
                     kArgDisposeCallback : @([PreferencesManager getCallbackHandle:kDisposeCallbackKey])
                     };
    [[UCLocationPlugin getInstance] invokeMethod:kBCMDispose arguments:map];
}

- (void)onServiceStart:(NSDictionary *)initialDataDictionary {
    // nop
}

- (void)setCallback:(int64_t)callbackHandle {
    [PreferencesManager setCallbackHandle:callbackHandle key:kDisposeCallbackKey];
}

@end
