# Heap for iOS

*Heap is a modern take on analytics.* There's no need to ship event tracking code, no need to wait days or weeks for data to accumulate, no need to muddle your codebase, and no need to fumble with rigid reports.

For the first time, meaningful product questions can be answered just as soon as they're asked.

See `CHANGELOG.md` for what's new.

# Installation

We recommend using <a href='http://cocoapods.org' target='_blank'>Cocoapods</a> to quickly and easily add Heap:

1. Install Cocoapods by running `sudo gem install cocoapods`.
2. Create a file in your Xcode project directory called `Podfile`.
3. Add the following line to your Podfile:
  ```ruby
     pod 'Heap'
  ```
4. Run `pod install` within your Xcode project directory.
5. Initialize Heap with your app ID. We recommend doing this in `applicationDidFinishLaunching:` or `application:didFinishLaunchingWithOptions:` in your Application delegate as follows:

    ```swift
    import Heap

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Heap.initialize("YOUR_APP_ID")
        
        /* Other launch code goes here */
        
        return true
    }
    ```

    ```objectivec
     #import <Heap/Heap.h>

     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
         [Heap initialize:@"YOUR_APP_ID"];

         /* Other launch code goes here */

         return YES;
     }
    ```
6. Make sure you open the file with the extension .xcworkspace

Or you can install Heap manually:
  1. [Download the Heap iOS library](https://cdn.heapanalytics.com/ios/heap-ios-latest.zip).
  2. Unzip the downloaded file and drag `Heap.xcframework` into your XCode project. Make sure to select *Copy items if needed* and add the framework to your app targets.
  3. Click on the project (blue project icon), and select "General".
  4. Within General, find "Heap.xcframework" in the "Frameworks, Libraries, and Embedded Content" section and change it to from "Do Not Embed" to "Embed & Sign".
  5. Initialize Heap with your app ID, as illustrated in the code snippet above.

## Upgrading from Heap 7.5.1 and earlier

Starting in Heap 8.0.0, the library is now bundled as an XCFramework rather than univeral static library.  When using Cocoapods, updating
the pod will automatically switch to the new format.  When installing manually, you will want to remove `Heap.h` and `libHeap.a` from your project and follow the installation instructions above.

If you were using Heap from Objective-C, you will simply need to replace `#import "Heap.h"` statements with `#import <Heap/Heap.h>`.

If you were using Heap from Swift, you can either replace the `#import "Heap.h"` statement in your bridging header with `#import <Heap/Heap.h>` or remove the statement from your briding header completely and use `import Heap` directly from Swift as shown in the installation instructions.

## Using Heap with iMessage Apps

Heap should work with standalone iMessage apps if you override `didBecomeActive`:

  ```swift
    func didBecomeActive(with conversation: MSConversation) {
        Heap.initialize("YOUR_APP_ID");
    }
  ```

---

Having trouble with iOS installation? [Here are solutions for common problems](https://help.heap.io/heap-administration/data-management/event-visualizer/#troubleshooting).
