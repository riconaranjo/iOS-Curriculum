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

### Xcode Layout

The **Xcode workspace window** is composed of four main components:

- **Navigator area [left]:** Provides quick access to different parts of your project.
- **Editor area [middle]:** Allows you to edit source code, user interfaces, or other resources.
- **Utility area [right]:** Provides information about selected items and access to ready-made resources.
- **Toolbar [top]:** Used to build and run your app, to display task progress, and to configure your work environment.

We will go over each of these components in greater detail when we need them.

Additionally, if you wish to learn more about Xcode, I recommend watching Apple's WWDC 2016 video  [Introduction to Xcode](https://developer.apple.com/videos/play/wwdc2016/413/).

### iOS Simulator

By downloading and installing Xcode, you automatically get an **iOS simulator** so you can actually test your app running on iOS, even if you don't own an iPhone. It also allows you to test your app on various different iPhone models with different screen sizes and resolutions to make sure it works fine on the smallest and biggest iPhones.

In top left corner in the toolbar, select **iPhone Xs** in the scheme pop-up menu. This menu allows you to select which type of iPhone you would like to simulate your app on.

Press the **Run** button to build and run your app. This will run it on the **iPhone Xs** simulator we configured. You can also press <kbd>cmd</kbd> + <kbd>r</kbd> to do this.

If this is your first time running an app, you should get a prompt to enable Developer Mode; this mode allows Xcode to access certain debugging features without asking for your password every time.

_You can see the build progress in the centre of the toolbar, in the **activity viewer**._

Once your app finishes building, it should automatically run on your iOS simulator. It will show your app's launch screen then transition to it's main interface. In the blank template, these will both appear as blank screens.

You can quit the simulator app using <kbd>cmd</kbd> + <kbd>q</kbd>.

### AppDelegate.swift

[Breaking Down the AppDelegate (swift 3)](https://medium.com/@Dougly/breaking-down-the-appdelegate-swift-3-258e48f907d6)

### ViewController.swift

### Main.storyboard

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
