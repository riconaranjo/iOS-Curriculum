# Workshop 3. Mastering the Basics

_In this workshop, we will learn how to add a splash screen and how to create apps with more than one View in the Storyboard; we will also learn more about colour schemes, why they're important, and how to apply one to your app. We will learn how to add app icons, and then we will use all the knowledge we've learn so far to make our very own TicTacToe app._

| Topics                           | Details                                    |
| -------------------------------- | ------------------------------------------ |
| Creating a launch screen         | what it is + how to set one up             |
| Multiple Scenes + Segues         | how to set up in-app transitions           |
| Applying a basic colour scheme   | what is a colour scheme + how to apply one |
| Adding an app icon               | how to give your app a unique icon         |
| Create your own Tic Tac Toe app  | how to create a proper app in Xcode        |

`// todo: add links to headers (+ playground pages?)`

# 3.1 The Setup

In this workshop we are going to create a simple Tic Tac Toe app with three scenes:

1. Main menu
2. Game board
3. Game end screen

To get started, let's create a **Project** by opening Xcode and selecting the open the _Create a new Xcode project_ option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

Select **Single View App** under the iOS tab and press next.

## Launch Screens

A launch screen is what appears as soon as your app is launched, quickly replaced by your app's first screen. It allows your app to seem to lead faster. According to Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/), the launch screen should have placeholder UI elements that appear identical to your app's first screen, without any text — _since it won't be localized_.

_Localized text means that it changes based on the user's device language settings._

A launch screen is static — unlike a splash screen — which means it cannot have any animations or otherwise have dynamic elements.

To create a launch screen we have to navigate to `LaunchScreen.storyboard`. You can find it in the navigation area on left side of Xcode; if the navigation area isn't visible press <kbd>cmd</kbd> + <kbd>1</kbd> to bring it up.

The launch screen storyboard acts much like the main storyboard, but it doesn't have a view controller or any back-end logic.

_We'll return to the launchscreen later once we have main screen UI done._

## App Transitions

In our last workshop [2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md), we built a simple one view app. All it did was give a personalized greeting when you put your name in a text field and pressed a button. You can take those concepts and build a much more complex UI, but you would still be stuck on the same screen.

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

`// todo: add image of object libary view controller`

Drag and drop the view controller to the right of our inital view controller. You can use the guidelines both view controller in-line with each other.

`// todo: add image of two view controllers with guidelines`

Use the object library again to add a button to first view controller. Place it in the centre of the first view controller and change the text to **Segue** and increase the font size to 28. I'm going to add horizontal and vertical constraints so it's always in the centre at least for now.

To add a segue when we press our button, click and drag from button to our second view controller, while holding down <kbd>ctrl</kbd>. A small pop up menu will appear, select the **Show** option; all this option does is move us from one view controller to another, the other options are beyond the scope of this workshop.

_For more information on the other types of segues, read [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)._

`// todo: add image of two view controllers adding segue`

_Congrats you have created your first segue!_

Let's add a text label to the second view controller so it's easier to see when we transitioned from one view to another. Add this to the centre of the second view controller, add constraints, change it's text to **Second Screen** and change the font size to 28.

Now let's test our segue; press the **Run** button or use the shortcut <kbd>cmd</kbd> + <kbd>r</kbd> to run our app either in the iOs simulator or on a connected iPhone — _for steps on how to set up Xcode to run apps on your iPhone see [2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md)_.

Once you have your app running, press the button and make sure it transitions to the second screen.

## Colours

Now let's learn a bit about colours, because they are an integral part of designing any user interface. The colours you use will impact how your app is perceived and how it is used.

### Why are colours important in your app?

The colours you use in your app impact how your app is both perceived and how it is used. Choosing a good colour scheme will allow your users to navigate through your app effortlessly, and will allow you to differentiate UI elements easily.

Colour draws your attention to things and pays a vital role in how your perceive your surroundings. Your app's colour scheme can have dramatic positive or negative effect on potential users. Colours can be jarring and make you want to leave the app, or can be pleasant and welcoming to the user.

Different colours provoke certain emotions. You can decide to use this to create a certain feel or mood for you app. Generally:

- **Blue:** calming
- **Red:** love, passion, war, health
- **Black:** elegance
- **Purple:** royalty, wisdom
- **White:** purity

_For more information read Apple's own Human Interface Guidelines:[HIG: Color](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/)._

_For more about colour theory read [The Importance of Color Theory](https://www.webdesign.org/web-design-basics/color-theory/the-importance-of-color-in-web-designing.12437.html) and [How Important is Colour In Design](https://simplygraphic.co.za/2016/05/06/important-colour-design/)._

### Colour Scheme

**What is a colour scheme?** A colour scheme is a collection of colours that you will use to guide your app's visual design. Using a colour scheme helps you ensure your app appears balanced and that certain UI elements don't feel out of place due to their colours.

When choosing a colour scheme you also want to make sure that it'll give your app contrast and allows different elements to be distinguished from each other. You should keep in mind that some forms of colour-blindness are unable to distinguish colours such as red, green, and grey. If you use these colours, you might want to provide an alternate colour scheme for distinguishing these colours.

_For more information read: [HIG: Color and Contrast](https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/color-and-contrast/)._

### Coolors

Let's take a quick break from Xcode and visit [Coolors](https://coolors.co). This is an online tool that really helps with coming up with a colour scheme that works and isn't just a bunch of random colours put together.

Coolors is really good because you can just go through tons of potential colour schemes really easily, Just by pressing <kbd>space</kbd> you get a whole new colour scheme.

If you like some of the colours in a colour scheme but you want to change some of the others, you can lock certain colours or select alternate shades, as well as many other features.

Here is a colour scheme I generated using Coolors: [Colour Scheme](https://coolors.co/56e39f-465775-2cabd8-e3f4ff-ef6f6c)

3. Medium Aquamarine _(#56E39F)_
4. Independence _(#465775)_
3. Bright Cerulean _(#2CABD8)_
4. Light Cyan _(#E3F4FF)_
5. Light Carmine Pink _(#EF6F6C)_

`// todo: add image of colour scheme`

Coolors gives us colour schemes with five colours, but it doesn't tell us how to use them; this part is up to us. A good rule of thumb is to use the 60-30-10 rule.

- You should select one colour to be your primary colour — _use this one about 60% of the time_.
- Select a second colour to be your secondary colour — _use this 10% of the time_.
- select a third colour to be your accent colour — _use this 10% of the time_.
- select a colour for your background — _this can often simply be white or black_.
- select a second accent colour — _use this one an additional 10% of the time_.

_Read more about this: [60-30-10 Color Rule: How to Use It, and How to Break It](https://www.thespruce.com/timeless-color-rule-797859)._

Using the colour scheme from above, this is how I decided to use the colours.

`// todo: finalize these colours`

- **Primary:** #2CABD8
- **Secondary:** #E3F4FF
- **Accent:** #56E39F
- **Second Accent:** #EF6F6C
- **Background:** #465775

### Stories with Colour

In your storyboard you may have noticed that you could change the colour of certain views such as buttons and font text. You can also change the background and tint colours of the view controllers themselves. You can find the options to do so in the **Utility Area** by selecting on the UI element, in the **Attributes Inspector**.

#### Changing the Background Colour

Let's change our **background** to a dark blueish grey (hex: #465775).

Select our initial view controller and open up our attributes inspector. In the **Background** pop up menu select the **Custom** option; this will bring up Apple's colour window.

Click on the **Colour Sliders** tab and select **RGB Sliders**. This will allows us to put our colours in using the hex codes from [Coolers.co](Coolers.co). In the **Hex Color** field enter **465775** and press <kbd>enter</kbd>.

#### Changing the Tint Colour

The **Tint** colour for a `UIView` is it's "default" colour for interactive elements. It will be the colour of new views — _such as buttons_ — added to your view controller. We will be using our primary colour as our tint colour.

Change the **Tint** colour of our view controller to **#2CABD8**; this should change the colour of our button automatically.

This should change the background colour and tint of our initial view. Repeat this for the second view controller.

- **Background:** #465775
- **Tint:** #2CABD8

`// todo: add image of view controller with simple colour scheme`

#### Global Tint

You can set the default tint colour globally for your view controllers for each storyboard. This saves you from having to do what we just did, which is manually set the tint colour of each scene — _although you cannot set a global background colour_.

To set a global tint colour for a storyboard, click on the **File Inspector** in the utility area — _it's two icons to the left of the attributes inspector_. You can change the global tint now the same was as you did for any individual view controller in the **Global Tint** field.

## App Icons

`// how to add an app icon`

We've learned how to create in-app transitions. We've learned about colour schemes and why they're an important part of designing your app. Now let's learn about iOS app icons and how to add one to your app.

- [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)


# 3.2 The Fun Part (Coding)

## Tic Tac Toe

`// create a tic tac toe game in xcode`

## Launch Screen

# References

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [HIG: Launch Screen](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/)
- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)
- [HIG: Color](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/)
- [HIG: Color and Contrast](https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/color-and-contrast/)
- [The Importance of Color Theory](https://www.webdesign.org/web-design-basics/color-theory/the-importance-of-color-in-web-designing.12437.html)
- [How Important is Colour In Design](https://simplygraphic.co.za/2016/05/06/important-colour-design/)
- [Coolors](https://coolors.co)
- [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)

`// todo finish adding references`

- [Google](https://google.ca)
- [Stack Overflow](https://stackoverflow.com)
