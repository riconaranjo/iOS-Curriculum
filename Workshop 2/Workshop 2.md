# 2. Getting All Set-up

_This workshop is about learning how to set yourself up with Xcode to create your own iOS apps. We will how to create UI elements, and create actions for when you press a button._

| Topics                             | Details                            |
| ---------------------------------- | ---------------------------------- |
| Creating an Xcode Project          | what is it + what is it used for   |
| Xcode layout + shortcuts           | what are all the important things  |
| Creating buttons + textfields      | creating simple UI elements        |
| Creating outlets + actions         | how to tie logic to your UI        |
| Build + Run app on your own iPhone | how to run your own apps           |

# 2.1 The Setup

This workshop will be a quick introduction on how to use Xcode to create iOS apps.

1. **how to create + use an Xcode project**
2. **how to add UI elements + connect them to logic**
3. **how to run your project on your own iPhone**

_First let's start with how to create an Xcode project._

`// todo: add links to headers (+ playground pages?)`

## Xcode Projects

An [Xcode Project](https://developer.apple.com/library/archive/featuredarticles/XcodeConcepts/Concept-Projects.html) is a repository for all the files, resources, and information required to build a software application.

_You can think of it as the box that holds all the pieces and assembly instructions we need to build our app._

Let's create our first **Project** by opening Xcode and selecting the open _Create a new Xcode project_ option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

In the window that appears, select the **iOS Single View App** and press next.

`// todo: add image of initial xcode project`

This should open your new project in the workspace window. You may have an error that signing for your app requires a development team. This warning means that you haven't set up Xcode for iOS development yet; we will do this later in the workshop.

## Xcode Crash Course

Xcode is a tool used by developers to create and test applications for all of Apple's software platforms; it has everything you need to create your very own app. You can build, run, and debug applications a simulator for iOS devices and integrated debugger.

For a more thorough run-through of Xcode's layout, check out this tutorial created by Apple: [Build a Basic UI](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW1).

## Xcode Layout

The **Xcode workspace window** is composed of four main components:

- **Navigator area [left]:** Provides quick access to different parts of your project.
- **Editor area [middle]:** Allows you to edit source code, user interfaces, or other resources.
- **Utility area [right]:** Provides information about selected items and access to ready-made resources.
- **Toolbar [top]:** Used to build and run your app, to display task progress, and to configure your work environment.

We will go over each of these components in greater detail when we need them.

Additionally, if you wish to learn more about Xcode, I recommend watching Apple's WWDC 2016 video  [Introduction to Xcode](https://developer.apple.com/videos/play/wwdc2016/413/).

## iOS Simulator

By downloading and installing Xcode, you automatically get an **iOS simulator** so you can actually test your app running on iOS, even if you don't own an iPhone. It also allows you to test your app on various different iPhone models with different screen sizes and resolutions to make sure it works fine on the smallest and biggest iPhones.

In top left corner in the toolbar, select **iPhone Xs** in the scheme pop-up menu. This menu allows you to select which type of iPhone you would like to simulate your app on.

Press the **Run** button to build and run your app. This will run it on the **iPhone Xs** simulator we configured. You can also press <kbd>cmd</kbd> + <kbd>r</kbd> to do this.

If this is your first time running an app, you should get a prompt to enable Developer Mode; this mode allows Xcode to access certain debugging features without asking for your password every time.

_You can see the build progress in the centre of the toolbar, in the **activity viewer**._

Once your app finishes building, it should automatically run on your iOS simulator. It will show your app's launch screen then transition to it's main interface. In the blank template, these will both appear as blank screens.

You can quit the simulator app using <kbd>cmd</kbd> + <kbd>q</kbd>.

## Source Code

The single view app template we created comes with a few predefined source code files that help us set up the app environment.

Let's start with the `AppDelegate.swift` file, you can find it in the project navigator (left). If the project navigator is not visible you can open it with <kbd>cmd</kbd> + <kbd>1</kbd>.

If you click on the file in the project navigator it should open it the editor area; if you double click on the file it will open in a new editor window.

## AppDelegate.swift

The `AppDelegate.swift` source file is automatically created by Xcode in any new project, and you should use it to initialize your app and respond to app-level events.

**This file has two primary functions:**

1. Defining the `AppDelegate` class which creates the root window to display all your content, and also serves as the main point for your app to handle state transitions.
    - _such as your app moving from foreground to the background execution._
2. Creating an entry point to your application — _like a `main()` function_ — and a run loop which delivers input events and notifications to your application.
    - this is done by the `@UIApplicationMain` attribute, which can be found at the top of the class definition.
    - this creates an application object which is responsible for the lifecycle of your app, then assigns it to a singleton `AppDelegate` object, and then the system launches your app.

You can see the `AppDelegate` class definition which contains the `@UIApplicationMain` attribute and shows that it implements the `UIResponder` interface and adopts `UIApplicationDelegate` protocol near the top of the file.

- The `UIResponder` interface defines methods for your app for responding and handling events
- The `UIApplicationDelegate` protocol defines the methods you'll need to set up your app, respond to app state changes, and to handle app-level events.

``` swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
```

The `AppDelegate class` has one property for a reference to the root window object of your application. This property is an optional, which means that it may be `nil` at some point.

``` swift
    var window: UIWindow?
```

This class also has six stub implementations of the `UIApplicationDelegate` methods. These methods allow your application object to communicate with the app delegate and handle app state transitions. During these transitions — such as app launch, moving to background, or termination — the application object will call the app delegate, giving it time to respond and prepare for the transition. The state transition calls are handled by the application object, so you don't have to worry about that.

``` swift
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    func applicationWillResignActive(_ application: UIApplication)
    func applicationDidEnterBackground(_ application: UIApplication)
    func applicationWillEnterForeground(_ application: UIApplication)
    func applicationDidBecomeActive(_ application: UIApplication)
    func applicationWillTerminate(_ application: UIApplication)
```

You can leave the stubs with the default behaviour, but once you have a more complex app you might custom behaviour such as saving data to persistent storage before terminating.

In this workshop we won't be defining any custom behaviours here, so there is no need to modify the `AppDelegate.swift` file.

For more information about the `AppDelegate.swift` file, check out this article which breaks it down and explains each section, although it is slightly outdated: [Breaking Down the AppDelegate (swift 3)](https://medium.com/@Dougly/breaking-down-the-appdelegate-swift-3-258e48f907d6)

## ViewController.swift

The `ViewController.swift` source file is also automatically created by Xcode when using the single view application template; this file contains one class and is used to manage a specific screen in your app.

The `ViewController` class is a subclass of `UIViewController` which is used for managing the view hierarchy in your iOS app. A view hierarchy in the context means the hierarchy of UI elements, and how they are displayed; for example a view can have have a background image as well as text and buttons above that, all of these  are considered _views_ since they are displayed to the user.

_A view represents a single item on the user interface._

Our default `ViewController` class has only one method; `viewDidLoad()` is called once the view controller's view hierarchy is loaded into memory — _you can see more info if you <kbd>option</kbd> and click on the function name_.

``` swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // we will be adding additional functions here
}
```

We will be adding more code in here to give our app more functionality than just a blank screen.

You'll also see that this source file, as well as `AppDelegate.swift` imports the [UIKit](https://developer.apple.com/documentation/uikit) which is the UI framework for iOS applications.

## Main.storyboard

The `Main.storyboard` file is the default storyboard for your new app, it is where you define the user interface design for different screens within your app. You can define the content of each screen and transitions between screens here. It allows you to see exactly what the flow — _or story_ — of your app; it allows you to get immediate feedback on how things look, what works, what doesn't work, and allows you to change things quickly and easily.

Select the `Main.storyboard` file in the project navigator. The file will open in the interface builder, which allows you to edit the user interface and see all your app's screens on the canvas. If you had a complicated app you would have several storyboard files that linked to each other, but since our app is simple, we will just stick to this storyboard file.

Our storyboard by default has one screen with an arrow pointing into it, this is our initial screen for our app which is the screen which our app opens to, the **storyboard entry point**.

You can change the size of the screens on the canvas to different iPhone models, which allows you to make sure your UI is adaptive to different screen sizes, not just one model of iPhone.

## LaunchScreen.storyboard

There is a second storyboard file created by Xcode, and that is the `LaunchScreen.storyboard` and this is used to display a static screen when your app is launched, such as a logo or other design.

We won't be modifying this file in this workshop.

# 2.2 Building Your Own App

## Storyboard

`// todo: buttons / labels`

### Storyboard Layout

### Adding Buttons

### Adding Labels

### Outlets

### Actions

## Running Your Own App

`// todo: running app on your own phone`

## Additional Topics

These are some useful topics that I would suggest reading into, and learning how to use them.

- [Google](https://google.ca)

## References

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [Build a Basic UI](https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW1)
- [Introduction to Xcode](https://developer.apple.com/videos/play/wwdc2016/413/)
- [Breaking Down the AppDelegate (swift 3)](https://medium.com/@Dougly/breaking-down-the-appdelegate-swift-3-258e48f907d6)
