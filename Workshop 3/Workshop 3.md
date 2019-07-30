# Workshop 3. Mastering the Basics

_In this workshop, we will learn how to add a splash screen and how to create apps with more than one View in the Storyboard; we will also learn more about colour schemes, why they're important, and how to apply one to your app. We will learn how to add app icons, and then we will use all the knowledge we've learn so far to make our very own TicTacToe app._

| Topics                           | Details                                    |
| -------------------------------- | ------------------------------------------ |
| Creating a launch screen         | what it is + how to set one up             |
| Multiple Scenes + Segues         | how to set up in-app transitions           |
| Applying a basic colour scheme   | what is a colour scheme + how to apply one |
| Adding an app icon               | how to give your app a unique icon         |
| Create your own Tic Tac Toe app  | how to create a proper app in Xcode        |

# 3.1 The Setup

`// create xcode project`

To get started, let's create a **Project** by opening Xcode and selecting the open the _Create a new Xcode project_ option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

Select **Single View App** under the iOS tab and press next.

## Launch Screens

`// how to create your own launch screen`

A launch screen is what appears as soon as your app is launched, quickly replaced by your app's first screen. It allows your app to seem to lead faster. According to Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/), the launch screen should have placeholder UI elements that appear identical to your app's first screen, without any text — _since it won't be localized_.

_Localized text means that it changes based on the user's device language settings._

A launch screen is static — unlike a splash screen — which means it cannot have any animations or otherwise have dynamic elements.

To create a launch screen we have to navigate to `LaunchScreen.storyboard`. You can find it in the navigation area on left side of Xcode; if the navigation area isn't visible press <kbd>cmd</kbd> + <kbd>1</kbd> to bring it up.

The launch screen storyboard acts much like the main storyboard, but it doesn't have a view controller or any back-end logic.

_We'll return to the launchscreen later once we have main screen UI done._

## App Transitions

`// how to create multiple scenes and trigger segues`

In our last [workshop](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md), we built a simple one view app. All it did was give a personalized greeting when you put your name in a text field and pressed a button. You can take those concepts and build a much more complex UI, but you would still be stuck on the same screen.

How do we move between screens (in-app transitions) within our app? **Segues**.

### Segues

According to Apple's documentation, a segue is used to define transitions between two view controllers, and can be triggered by a UI items like buttons or through gestures like an edge swipe.

_"Use segues to define the flow of your app’s interface. A segue defines a transition between two view controllers in your app’s storyboard file. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller."_ - [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

To create a segue we first need a new view controller to segue to. Navigate to the `Main.storyboard` file either by using the navigation area, or using the shortcut <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>o</kbd>, typing the file name, and pressing enter.

### Adding View Controllers

We covered view controllers in our last workshop ([2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md)), but here's a recap of what a view controller is:

- a view controller object is a subclass of [`UIViewController`](https://developer.apple.com/documentation/uikit/uiviewcontroller)
- a view controller object manages the view hierarchy of a scene in your app
- a view is a UI item

Now that we are in our main story board, you can add a second view controller from the **Object Library** by pressing the button in the toolbar above the utility area. You can also use the shortcut  <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>l</kbd>, typing view controller, and pressing enter.

`// add picture of object libary view controller`

Drag and drop the view controller to the right

## Colours

`// how to create a colour scheme and apply it to ui elements`

- [Coolors](https://coolors.co)

## App Icons

`// how to add an app icon`

# 3.2 The Fun Part

## Tic Tac Toe

`// create a tic tac toe game in xcode`

### Launch Screen

# References

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [Launch Screen](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/)
- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

- [Coolors](https://coolors.co)
- [Google](https://google.ca)
- [Stack Overflow](https://stackoverflow.com)
