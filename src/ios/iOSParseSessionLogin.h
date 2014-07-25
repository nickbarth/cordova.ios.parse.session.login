#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>

@interface iOSParseSessionLogin: CDVPlugin{
  NSString* callbackId;
}

@property (nonatomic, retain) NSString* callbackId;
- (void)iOSParseSessionLogin:(CDVInvokedUrlCommand *)command;
@end
