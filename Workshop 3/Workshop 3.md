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

## Human Interface Guidelines

In this workshop, we will be referring to [Apple's Human Interface Guidelines (HIG)](https://developer.apple.com/design/human-interface-guidelines/) quite frequently. It is highly recommended you read it if you wish to become an iOS developer, but it isn't necessary for these workshops.

If you want a quicker summary of the HIG here is a good Medium article: [iOS Human Interface Guidelines I](https://medium.com/nona-web/ios-human-interface-guideline-f012a5ba962e)

## Getting Started

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

One of Coolors' biggest advantages is that you can just go through tons of potential colour schemes quite effortlessly; simply by pressing <kbd>space</kbd> you get a whole new colour scheme, but if you go too far you can undo and go back to previous options.

If you like some of the colours in a colour scheme but you want to change some of the others, you can lock certain colours or select alternate shades, as well as many other features.

Here is a colour scheme I generated using Coolors: [Colour Scheme](https://coolors.co/56e39f-465775-2cabd8-e3f4ff-ef6f6c)

3. Medium Aquamarine _(#56E39F)_
4. Independence _(#465775)_
3. Bright Cerulean _(#2CABD8)_
4. Light Cyan _(#E3F4FF)_
5. Light Carmine Pink _(#EF6F6C)_

`// todo: add image of colour scheme`

Coolors gives us colour schemes with five colours, but it doesn't tell us how to use them; this part is up to us. A good rule of thumb is to use the 60-30-10 rule.

- *Select one colour to be your **primary** colour*
  - _use this one about **60%** of the time_.
- Select a second colour to be your **secondary** colour
  - _use this **10%** of the time_.
- Select a third colour to be your **accent** colour
  - _use this **10%** of the time_.
- Select a colour for your **background**
  - _this can often simply be white or black, but doesn't have to be_.
- Select a second **accent** colour
  - _use this one an additional **10%** of the time_.

_Read more about this: [60-30-10 Color Rule: How to Use It, and How to Break It](https://www.thespruce.com/timeless-color-rule-797859)._

Using the colour scheme from above, this is how I decided to use the colours.

`// todo: finalize these colours`

- **Primary:** #2CABD8
- **Secondary:** #E3F4FF
- **Accent:** #56E39F
- **Second Accent:** #EF6F6C
- **Background:** #465775

Once you have decided on a colour scheme you can save it either by creating an account and pressing **Save** or by either bookmarking the colour scheme page or saving the link; the colour hex codes are included in the link, which is quite convenient.

### Stories with Colour

In your storyboard you may have noticed that you could change the colour of certain views such as buttons and font text. You can also change the background and tint colours of the view controllers themselves. You can find the options to do so in the **Utility Area** by selecting on the UI element, in the **Attributes Inspector**.

### Changing the Background Colour

Let's change our **background** to a dark blueish grey (hex: #465775).

Select our initial view controller and open up our attributes inspector. In the **Background** pop up menu select the **Custom** option; this will bring up Apple's colour window.

Click on the **Colour Sliders** tab and select **RGB Sliders**. This will allows us to put our colours in using the hex codes from [Coolers.co](Coolers.co). In the **Hex Color** field enter **465775** and press <kbd>enter</kbd>.

### Changing the Tint Colour

The **Tint** colour for a `UIView` is it's "default" colour for interactive elements. It will be the colour of new views — _such as buttons_ — added to your view controller. We will be using our primary colour as our tint colour.

Change the **Tint** colour of our view controller to **#2CABD8**; this should change the colour of our button automatically.

This should change the background colour and tint of our initial view. Repeat this for the second view controller.

- **Background:** #465775
- **Tint:** #2CABD8

`// todo: add image of view controller with simple colour scheme`

### Global Tint

You can set the default tint colour globally for your view controllers within each storyboard. This saves you from having to do what we just did, which is manually set the tint colour of each scene — _although you cannot set a global background colour_.

To set a global tint colour for a storyboard, click on the **File Inspector** in the utility area — _it's two icons to the left of the attributes inspector_. You can change the global tint now the same was as you did for any individual view controller in the **Global Tint** field.

Let's go to the `LaunchScreen.storyboard` file and change it's global tint colour, and while we're at it let's also change the background colour.

- **Background:** #465775
- **Tint:** #2CABD8

## App Icons

We've learned how to create in-app transitions. We've learned about colour schemes and why they're an important part of designing your app. Now let's learn about iOS app icons and how to add one to your app.

Your app icon is important because it symbolizes your app, and is one of the most common ways your users will interact with your app and it's branding.

**A good app icon is:**

- simple and easily recognizable
- matches your colour scheme
- captures attention

It should not take someone more than a few seconds to figure out what your app does from the app icon at all. Keep your design focused on a single point that captures attention and identifies your app.

You do not need to add rounded corner to your icon, the operating system will do so for you.

_For a more through explanation of how to design a proper app icon, read Apple's Human Interface Guidelines on app icons: [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)_

If you want to distribute your app on the app store, you will have to provide various scaled versions of your app icon for different devices, as well as an app store version.

As per the [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes), these are the icon sizes you'll need for you app.

| Device or context | Icon size                             |
| ----------------- | ------------------------------------- |
| iPhone            | 180px × 180px (60pt × 60pt @3x)       |
|                   | 120px × 120px (60pt × 60pt @2x)       |
| iPad Pro          | 167px × 167px (83.5pt × 83.5pt @2x)   |
| iPad, iPad mini   | 152px × 152px (76pt × 76pt @2x)       |
| App Store         | 1024px × 1024px (1024pt × 1024pt @1x) |

_There are other dimensions for icons in notifications and the Settings app, but we don't need those in the workshop. You can find them in the [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes)._

The actual file pixel sizes are without the brackets, and the screen resolution sizes are within the brackets, with the scaling factor (based on the screen resolution) denoted with the **@** sign; higher resolution displays have a greater scaling factor.

_For more information read [HIG: Image Size and Resolution](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/)._

### Creating Your Own App Icon

In this part of the workshop I'm going to show you how to create your own app icon. All the tools you need are available online for free.

- We are going to use [Flaticon](https://www.flaticon.com/) for pre-made icons that we can use for free — _as long as we credit the authors_.
- We are also going to use the vector graphics editing tool [Figma](https://figma.com) to edit our app icon and export it to the various sizes we need.
  - _This tool requires you to create an account._

_If you wish to save your icons ([Flaticon](https://www.flaticon.com/)) or artwork ([Figma](https://figma.com)) you will have to create an account for each (free)._

### Flaticon

Go to [Flaticon](https://www.flaticon.com/). This website has a lot of free icons you can use in your projects as long as you credit the creators, and premium icons you may use if you pay. We will only be using free icons in this workshop.

`// todo add image of flaticon with tic tac toe search results`

Using the **search bar**, look for an icon you might want to use in your app icon / logo. I will be using this **tic tac toe** [icon](https://www.flaticon.com/free-icon/tic-tac-toe_566294) created by Freepik.

### Changing Icon Colours

Flaticon is a particularly useful online tool since it allows you to change the colour of certain icons — _as long as they don't have gradients_ —. **Select an icon** to use for your app icon.

`// todo: add image of selected icon in flaticon`

Next to the **Add to collection** button there is a button with a pencil within a colour wheel. If you press this button it will open a window where you can edit the colour of the icon.

- I will be changing the **icon background** to my background colour #465775.
- The **icon shadow** will be a a darker shade of my background colour #2D384B.
- The **Xs and Os light colour** will be my secondary colour #E3F4FF.
- The **Xs and Os dark colour** will be a darker shade of my secondary colour #BAC8D1.

You don't have to use your app's background as the app icon's background; try using **different** colour combinations and see what feel they give your app.

In **alternate version** I used my primary colour instead of my background colour for the app icon background which gave it a more cheery and playful vibe.

- I will be changing the **icon background** to my primary colour #2CABD8.
- The **icon shadow** will be a a darker shade of my primary colour #217D9E.
_You can do the same or you can choose to use the secondary colour or an accent colour._

`// todo: add image of modifying icon colour in flaticon`

_If you created an account with Flaticon you will be able to save this a collection so if you want to download it again later you don't have to go through all these steps again._

Download your modified icon at the highest resolution possible as a **png**.

### Figma

https://www.figma.com/file/HUboUyk2DsD1u3JYPHPMo7/iPhone-App-Icon-Template

Open [Figma](https://figma.com) in a new tab / window. This website allows us to edit vector graphics online without having to purchase or install programs such as [Adobe Illustrator](https://www.adobe.com/ca/products/illustrator.html), [Affinity Designer](https://affinity.serif.com/en-gb/designer/), or [Gimp](https://www.gimp.org) — _all of these are great options, but come either at a financial cost and a potentially steep learning curve_.

- Industry standard: [Adobe Illustrator](https://www.adobe.com/ca/products/illustrator.html).
- I personally use [Affinity Designer](https://affinity.serif.com/en-gb/designer/).
- [Gimp](https://www.gimp.org) is free.

`// todo: add image of figma homepage`

_I recommend creating an account so you can save your progress, but it is not necessary, including not for this workshop._

Create a new document by pressing **Use Online** or create a new account with the **Log In** button. If you create a new account create a new file using the **Create File** button.

### Creating a Figma File

The first thing we want to do is to change our canvas size to **1024 x 1024** as this is the App Store icon size, which is the largest size we will need. We will use this design and scale it down for the other app icon sizes.

Click on the **Pages** tab in the upper-left-hand-corner and the bottom change the **Page Settings** to **1024 px** for both the width and height; changing one should change the other by default since they are linked. You can unlink them with the button in between the two numbers.

You will probably want to zoom out to see the entire canvas area. You can find the zoom level on the bottom right.

`// todo: add image of blank canvas with 1024 size`

Select the **Layers** tab. We're going to add a background to our canvas. Add a rectangle to the canvas by pressing the **Rectangle** button. You can ensure it is a square by holding the <kbd>shift</kbd> key.

Move one of the corners to the canvas corner, and it should snap into place. Extend the background to cover the entirety of the canvas either by dragging the opposite corner of the rectangle across the canvas or by changing it's dimensions to 1024.

### Changing the Background Colour

Select your rectangle. Now let's change it's colour to one on our colour scheme. Try out different colours and think about how our icon will look on top of it. You can go back and change the icon colour if you think another colour would work better.

I will be using my app background colour (#465775) as my icon background colour, but I could have used my secondary colour, or used the secondary colour for my icon and used my primary as the app icon background. Try different combinations and see what works best.

Click on the coloured box under **Background** and enter the desired colour hex code.

`// todo: add image of changing colour in figma`

### Adding Images

Now it's time to add the icon we downloaded from Flaticon. Press the **Upload Image** button — _it looks like a cloud with an arrow going through it_. Upload your icon.

You can increase it's size to something like **768 x 768** so it fills up 3/4 of the canvas (aesthetically pleasing).

_Now how do we centre our icon, so it's perfectly in the centre?_

Figma allows us to place our icon in the very centre by using the **Snapping & Grid** options in the top right. Select **Grid** from the drop down menu.

`// todo: add image of grid option`

Now when you move around your icon you should see guidelines and you should be able to snap it right into the centre.

### Scaled App Icons

_Congrats! You have created your very own app icon design._

Now that we have a design we need to export it. We need 3 different versions for an iPhone app as explained in [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes).

- **App Store:** 1024px × 1024px (1024pt × 1024pt @1x)
- **iPhone:** 180px × 180px (60pt × 60pt @3x)
- **iPhone:** 120px × 120px (60pt × 60pt @2x)

Let's start with the 1024 x 1024 version first, then the 120 x 120, then the 80 x 80 version.

`// todo: add image of finished app icon here`

Modified icon used in design was created by [Freepik](https://www.flaticon.com/authors/freepik), licensed by [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/).

To export out icon images, click on the **Export** button in the top right. Change the file type to **png** and press **OPEN TAB**; this will open a new tab with your image where you can simply right click to download the image.

**Repeat this but for all three resolutions:**

- 1024px x 1024px
- 180px x 180px
- 120px x 120px

You should have three download images. Rename them to have descriptive names.

- 1024px x 1024px: **AppStore-1024@1x**
- 180px x 180px: **Icon-60@3x**
- 120px x 120px: **Icon-60@2x**

### Adding Icons in Xcode

To add icons to your app in Xcode navigate to **Assets.xcassets**. You can find it in the navigation area or use open quickly using <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>o</kbd>.

Click on the **AppIcon** resource in the editor area. 

# 3.2 The Fun Part (Coding)

## Tic Tac Toe

`// create a tic tac toe game in xcode`

## Launch Screen

# References

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [Apple's Human Interface Guidelines (HIG)](https://developer.apple.com/design/human-interface-guidelines/)
- [iOS Human Interface Guidelines I](https://medium.com/nona-web/ios-human-interface-guideline-f012a5ba962e)
- [HIG: Launch Screen](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/)
- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)
- [HIG: Color](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/)
- [HIG: Color and Contrast](https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/color-and-contrast/)
- [The Importance of Color Theory](https://www.webdesign.org/web-design-basics/color-theory/the-importance-of-color-in-web-designing.12437.html)
- [How Important is Colour In Design](https://simplygraphic.co.za/2016/05/06/important-colour-design/)
- [Coolors](https://coolors.co)
- [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)
- [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes)
- [HIG: Image Size and Resolution](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/)
- [Flaticon](https://www.flaticon.com/)
- [Vectr](https://vectr.com)

`// todo finish adding references`

- [Google](https://google.ca)
- [Stack Overflow](https://stackoverflow.com)
