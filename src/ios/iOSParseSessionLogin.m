#import "iOSParseSessionLogin.h"
#import <Parse/Parse.h>

@implementation iOSParseSessionLogin

@synthesize callbackId;

- (void)iOSParseSessionLogin:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    NSString* session = [command.arguments objectAtIndex:0];

    [PFUser becomeInBackground:session block:^(PFUser *user, NSError *error) {
        if (error) {
          CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"{ \"error\": \"Invalid Session Token\" }"];
          NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
          [self writeJavascript:javaScript];
        } else {
          CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"{ \"error\": false, \"status\": \"success\" }"];
          NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
          [self writeJavascript:javaScript];
        }
    }];
}

@end
