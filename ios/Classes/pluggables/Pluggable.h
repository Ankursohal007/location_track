//
//  Pluggable.h
//  Pods
//

#ifndef Pluggable_h
#define Pluggable_h

@protocol Pluggable <NSObject>
- (void) setCallback:(int64_t) callbackHandle;
- (void) onServiceStart: (NSDictionary*)initialDataDictionary;
- (void) onServiceDispose;
@end

#endif /* Pluggable_h */
