# lightstep-tracer-objc

[![Version](https://img.shields.io/cocoapods/v/lightstep.svg?style=flat)](http://cocoapods.org/pods/lightstep)
[![License](https://img.shields.io/cocoapods/l/lightstep.svg?style=flat)](http://cocoapods.org/pods/lightstep)
[![Platform](https://img.shields.io/cocoapods/p/lightstep.svg?style=flat)](http://cocoapods.org/pods/lightstep)

The LightStep distributed tracing library for Objective-C and Swift.

## Installation (CocoaPods)

1. Ensure you have [CocoaPods installed](https://guides.cocoapods.org/using/getting-started.html) (TL;DR: `sudo gem install cocoapods`)
2. Create a `Podfile` in your Xcode project and add the following line:

```ruby
pod 'lightstep', '~>3.2'
```

3. Run `pod install` in your project directory. Open the newly created workspace file in Xcode.

## Installation (Carthage)

Add following line to your `Cartfile`:

```
github "lightstep/lightstep-tracer-objc" ~> 3.0
```

## Installation (Swift Package Manager)

 The [Swift Package Manager](https://www.swift.org/package-manager/) is a tool for managing the distribution of Swift code.

 Add the following to your `Package.swift` file:
 ```
 dependencies: [
     .package(url: "https://github.com/lightstep/lightstep-tracer-objc.git", .branch("master"))
 ]
 ```
 And then build your project
 ```
 $ swift build
 ```

## Getting started

```objectivec
#import "LSTracer.h"
#import "OTGlobal.h"

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Initialize the LightStep tracer implementation
    LSTracer* tracer = [[LSTracer alloc] initWithToken:@"{your_access_token}"];
    [OTGlobal initSharedTracer:tracer];

    // <Your normal initialization code here>

    return YES;
}

// Elsewhere:
- (void)someFunction:... {

    id<OTSpan> span = [[OTGlobal sharedTracer] startSpan:@"someFunction:"];

    ...

    [span finish];
}
```

* For more info on OpenTracing, see [opentracing.io](http://opentracing.io).
