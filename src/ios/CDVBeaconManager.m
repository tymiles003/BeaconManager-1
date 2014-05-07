#import "CDVBeaconManager.h"
#import "N_Beacon.h"

@implementation CDVBeaconManager

- (CDVPlugin*) initWithWebView:(UIWebView*)theWebView
{
    self = (CDVBeaconManager*)[super initWithWebView:(UIWebView*)theWebView];
    if (self) {
    // initialization here
    }
    return self;
}

- (void) startMonitoring:(CDVInvokedUrlCommand*)command
{
    [[N_Beacon shared] startMonitoring];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@""];  
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end

