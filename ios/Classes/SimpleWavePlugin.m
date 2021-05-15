#import "SimpleWavePlugin.h"
#if __has_include(<simple_wave/simple_wave-Swift.h>)
#import <simple_wave/simple_wave-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simple_wave-Swift.h"
#endif

@implementation SimpleWavePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleWavePlugin registerWithRegistrar:registrar];
}
@end
