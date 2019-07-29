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

## Launch Screens

`// how to create your own launch screen`

A launch screen is what appears as soon as your app is launched, quickly replaced by your app's first screen. It allows your app to seem to lead faster. According to Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/), the launch screen should have placeholder UI elements that appear identical to your app's first screen, without any text — _since it won't be localized_.

_Localized text means that it changes based on the user's device language settings._

A launch screen is static — unlike a splash screen — which means it cannot have any animations or otherwise have dynamic elements.

To create a launch screen we have to navigate to `LaunchScreen.storyboard`. You can find it in the navigation area on left side of Xcode; if the navigation area isn't visible press <kbd>cmd</kbd> + <kbd>1</kbd> to bring it up.

The launch screen storyboard acts much like the main storyboard, but it doesn't have a view controller or any back-end logic.

## App Transitions

`// how to create multiple scenes and trigger segues`

In our last [workshop](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md), we built a simple one view app. All it did was give a personalized greeting when you put your name in a text field and pressed a button. You can take those concepts and build a much more complex UI, but you would still be stuck on the same screen.

How do we move between screens (in-app transitions) within our app? **Segues**.

### Segues

- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

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
