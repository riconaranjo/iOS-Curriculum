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

To get started, let's create a **Project** by opening Xcode and selecting the _Create a new Xcode project_ option in the **Welcome to Xcode** window (if it doesn't show up, press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>1</kbd> to bring it up).

Select **Single View App** under the iOS tab and press next.

Give your project a name like **SettingUpAnApp**, as this won't be our tic tac toe app. Finish setting up your project, making sure that **Swift** is selected as the project language.

## Launch Screens

A launch screen is what appears as soon as your app is launched, quickly replaced by your app's first screen. It allows your app to seem to load faster. According to Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/), the launch screen should have placeholder UI elements that appear identical to your app's first screen, without any text — _since it won't be localized_.

_Localized text means that it changes based on the user's device language settings._

A launch screen is static — unlike a splash screen — which means it cannot have any animations or otherwise have dynamic elements.

To create a launch screen we have to navigate to `LaunchScreen.storyboard`. You can find it in the navigation area on left side of Xcode; if the navigation area isn't visible press <kbd>cmd</kbd> + <kbd>1</kbd> to bring it up.

The launch screen storyboard acts much like the main storyboard, but it doesn't have a view controller or any back-end logic.

_We'll return to the launchscreen later once we have main screen UI done._

## App Transitions

In our last workshop, [Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md), we built a simple one view app. All it did was give a personalized greeting when you put your name in a text field and pressed a button. You can take those concepts and build a much more complex UI, but you would still be stuck on the same screen.

How do we move between screens (in-app transitions) within our app? **Segues**.

### Segues

According to Apple's documentation, a segue is used to define transitions between two view controllers, and can be triggered by a UI items like buttons or through gestures like an edge swipe.

_"Use segues to define the flow of your app’s interface. A segue defines a transition between two view controllers in your app’s storyboard file. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller."_ - [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

To create a segue we first need a new view controller to segue to. Navigate to the `Main.storyboard` file either by using the navigation area, or using the shortcut <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>o</kbd>, typing the file name, and pressing enter.

### Adding View Controllers

We covered view controllers in our last workshop, ([2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md)), but here's a recap of what a view controller is:

- a view controller object is a subclass of [`UIViewController`](https://developer.apple.com/documentation/uikit/uiviewcontroller)
- a view controller object manages the view hierarchy of a scene in your app
- a view is a UI item

Now that we are in our main story board, you can add a second view controller from the **Object Library** by pressing the button in the toolbar above the utility area. You can also use the shortcut  <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>l</kbd>, and typing view controller.

`// todo: add image of object libary view controller`

Drag and drop the new view controller to the right of our already existing view controller. You can use the guidelines both view controller in-line with each other.

`// todo: add image of two view controllers with guidelines`

Use the object library again to add a button to the first view controller. Place it in the centre of the first view controller and change the text to **Segue** and increase the font size to 28. I'm going to add horizontal and vertical constraints so it's always in the centre at least for now.

To add a segue when we press our button, click and drag from the button to our second view controller, while holding down <kbd>ctrl</kbd>. A small pop up menu will appear, select the **Show** option; all this option does is move us from one view controller to another, the other options are beyond the scope of this workshop.

_For more information on the other types of segues, read [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)._

`// todo: add image of two view controllers adding segue`

_Congrats you have created your first segue!_

Let's add a text label to the second view controller so it's easier to see when we transitioned from one view to another. Add this to the centre of the second view controller, add constraints, change its text to **Second Screen** and change the font size to 28.

Now let's test our segue; press the **Run** button or use the shortcut <kbd>cmd</kbd> + <kbd>r</kbd> to run our app either in the iOs simulator or on a connected iPhone — _for steps on how to set up Xcode to run apps on your iPhone see [2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md)_.

Once you have your app running, press the button and make sure it transitions to the second screen.

## Colours

Now let's learn a bit about colours, because they are an integral part of designing any user interface. The colours you use will impact how your app is perceived and how it is used.

### Why are colours important in your app?

Colours have a disproportionate effect on your how people view and interact with your app. Choosing a good colour scheme will allow your users to navigate through your app effortlessly, and will allow you to differentiate UI elements easily.

Colour draws your attention to things and pays a vital role in how you perceive your surroundings. Your app's colour scheme can have dramatic positive or negative effect on potential users. Colours can be jarring and make you want to leave the app, or can be pleasant and welcoming to the user.

Different colours provoke certain emotions. You can decide to use this to create a certain feel or mood for your app. Generally:

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

Using the colour scheme from above, these are the roles I've decided to use these colours in.

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

Select our Inital View Controller and open up our attributes inspector. In the **Background** pop up menu select the **Custom** option; this will bring up Apple's colour window.

Click on the **Colour Sliders** tab and select **RGB Sliders**. This will allow us to put our colours in using the hex codes from [Coolers.co](Coolers.co). In the **Hex Color** field enter **465775** and press <kbd>enter</kbd>.

### Changing the Tint Colour

The **Tint** colour for a `UIView` is its "default" colour for interactive elements. It will be the colour of new views — _such as buttons_ — added to your view controller. We will be using our primary colour as our tint colour.

Change the **Tint** colour of our view controller to **#2CABD8**; this should change the colour of our button automatically.

This should change the background colour and tint of our initial view. Repeat this for the second view controller.

- **Background:** #465775
- **Tint:** #2CABD8

`// todo: add image of view controller with simple colour scheme`

### Global Tint

You can set the default tint colour globally for your view controllers within each storyboard. This _partially_ saves you from having to do what we just did, which is manually set the tint colour of each scene — _although you cannot set a global background colour_.

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

You do not need to add rounded corners to your icon, the operating system will do so for you.

_For a more through explanation of how to design a proper app icon, read Apple's Human Interface Guidelines on app icons: [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)_

If you want to distribute your app on the app store, you will have to provide various scaled versions of your app icon for different devices, as well as an app store version.

As per the [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes), these are the icon sizes you'll need for your app.

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

_If you wish to save or modify your icons on ([Flaticon](https://www.flaticon.com/)), or save your artwork on ([Figma](https://figma.com)) you will have to create an account for each (free)._

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

Open [Figma](https://figma.com) in a new tab / window. This tool allows us to edit vector graphics online without having to purchase or install programs such as [Adobe Illustrator](https://www.adobe.com/ca/products/illustrator.html), [Affinity Designer](https://affinity.serif.com/en-gb/designer/), or [Gimp](https://www.gimp.org) — _all of these are great options, but come either at a financial cost and / or a steep learning curve_.

- Industry standard: [Adobe Illustrator](https://www.adobe.com/ca/products/illustrator.html).
- I personally use [Affinity Designer](https://affinity.serif.com/en-gb/designer/).
- [Gimp](https://www.gimp.org) is free.

`// todo: add image of figma homepage`

This workshop is not on how to use Figma, or how to use design tools, we won't be going into too much detail about how to use it.

If you don't already have an account create a new one by pressing the **Sign Up** button. Once you have completed this, go to this [link](https://www.figma.com/file/HUboUyk2DsD1u3JYPHPMo7/iPhone-App-Icon-Template) where I have set up a template file that will let you create and design your own app icon.

`// todo: add image of figma app icon template`

In this file you can see the full sized version of your app icon (1024px x 1024px) along side the 180px, 120px, and 80px sizes to compare how your app will look when scaled down.

The template app icon is composed of a square background and an icon modified and download from Flaticon. These can be found in the **App-Icon** layer (_technically a frame_). Double click the layer to expand it.

**Copy this file to your drafts, as you cannot directly modify the template.**

`// todo: verify these instructions are correct`

_It is also configured to export all the app icon sizes you'll need for iPhone plus the versions for Spotlight search._

### Changing the Background Colour

To change our app icon **background colour**, select the square inside the **App-Icon** layer named **Background**. You can change the colour by putting in a new hex colour code in the  **Fill** field.

`// todo: add image of Fill colour field in figma`

Try out different colours and shades from your colour scheme and think about how our icon will look on top of it. You can also go back and change the icon colour on Flaticon, if you think another colour would work better.

I will be using a light shade of my app background colour (#67758E) as my icon background colour, but I could have used my secondary colour instead. I could have also used the secondary colour for my icon and used my primary as the app icon background. Try different combinations and see what works best.

### Adding Images

Now it's time to add the icon we downloaded from Flaticon. Press the options button at the top left corner — _it looks like a stack of three horizontal lines_ — and search for **Place Image**. This will bring up a file selection window.

Alternately, use the shortcut <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>k</kbd>. Upload your icon.

Click and drag your mouse to add your image. You can change it's size manually to something like **668 x 668** so it fills up 2/3 of the area _(so it looks aesthetically pleasing)_.

_Now how do we centre our icon, so it's perfectly in the centre?_

If you move the uploaded image you will see that it snaps into place with guidelines at the centre of the frame.

`// todo: add image of finished app icon here`

Modified icon used in design was created by [Freepik](https://www.flaticon.com/authors/freepik), licensed by [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/).

### Scaled App Icons

_Congrats! You have created your very own app icon design._

Now that we have a design we need to export it. We need 3 different versions for an iPhone app as explained in [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes).

- **App Store:** 1024px × 1024px (1024pt × 1024pt @1x)
- **iPhone:** 180px × 180px (60pt × 60pt @3x)
- **iPhone:** 120px × 120px (60pt × 60pt @2x)

We are also exporting 2 more versions of the app for Spotlight search:

- **iPhone:** 120px × 120px (40pt × 40pt @3x)
- **iPhone:** 80px × 80px (40pt × 40pt @2x)

Let's start with the 1024 x 1024 version first, then the 120 x 120, then the 80 x 80 version.

To export our icon at these different resolutions, click on the actual figma background and press **Export iPhone App Icon Template**. _If you renamed the project it will say your project name instead_.

This will bring up a small window, where you can select what you want to export.

The template is configured to name your files appropriately, but if you use something else in the future make sure your file names are descriptive, especially if you are working on a team.

**Configured Exports:**

- 1024px x 1024px: `AppStore-1024@1x`
- 180px x 180px: `Icon-60@3x`
- 120px x 120px: `Icon-60@2x`
- 120px x 120px: `Icon-40@3x`
- 80px x 80px: `Icon-40@2x`

Once you export the app icon images from Figma, it will download a zip file containing the different files. Unzip this and let's go back to Xcode.

### Adding Icons in Xcode

To add icons to your app in Xcode navigate to `Assets.xcassets`. You can find it in the navigation area or use open quickly using <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>o</kbd>.

`// todo: add image of Assets.xcassets`

Click on the **AppIcon** resource in the editor area. This should show you all the possible icon sizes we might need or use for iPhone and iPad.

If you go to the **Attributes Inspector** you'll notice that we can uncheck iPad which hides all the iPad specific icons.

To add your files simply select them from **Finder** and drag and drop them into `Assets.xcassets`. It's that simple.

Well you might get an error (_warning_) as I did where the app store version is unassigned. Simply drag and drop it from the bottom unassigned position into the App Store icon slot.

`// todo: add image of unassigned icon`

You can now build and run your app and see what you icon actually looks like on iOS.

# 3.2 The Fun Part (Coding)

Now that we have everything all set-up, now we can get started actually coding — well almost, we still need to finish setting up our UI and a few other things. I promise we'll get to the coding soon enough, _and there's a fair amount of coding_.

## Tic Tac Toe

So in case you forgot, we're going to be building a simple tic tac toe game. It's going to have three screens:

1. **Initial / Welcome Screen** (Initial View Controller)
    - _Simple menu with button to start a new game_
2. **Game Screen** (Game Logic View Controller)
    - _Grid of buttons, where the game is played_
3. **Game End Screen** (Game Over View Controller)
    - _Displays game result, options to start a new game or exit_

Start by creating a new Single View App project, you can name it something creative and inventive like **Tic Tac Toe**.

## Icons

Let's start by importing the icons we created earlier again in [Figma](https://www.figma.com). See if you can remember how to do this by yourself. I will be using [this icon](https://www.figma.com/file/bNCiyAC6W5EBeNiNMA5GCx/Tic-Tac-Toe-App-Icon) for my app.

_If you're having difficulties, scroll up to the [Adding Icons in Xcode](#Adding-Icons-in-Xcode) section for a refresher_

### Importing Icons

- Import the images as explained earlier, into `Assets.xcassets`
- Uncheck iPad in the Attributes Inspector
- Make sure you don't have any errors or unassigned icons

## Images

We will be using **three images** for our buttons:

1. Placeholder Icon _(unplayed position)_
2. X Icon
3. O Icon

I have arbitrarily decided to use 128px png images, because they are high resolution enough without large file sizes.

Go to [Flaticon](https://www.flaticon.com) and find images you want to use for Xs and Os, as well as a default placeholder icon. You can then use [Figma](https://www.figma.com) to set to them to correct size, but make sure that the background remains transparent when you export as png — _make sure the **Show in exports** option is unchecked for the background_.

- You can use the icons I will be using, found [here](https://www.figma.com/file/UWmK6SvDEelkZuBTIvH6pA/Tic-Tac-Toe-Icons)
- export them, and extract them from the zip file

### Importing Images

Importing images into Xcode is quite similar to importing app icons except this time we drag and drop them into **below the AppIcon** file. You should see the new files added.

`// todo: add image of added image assets into xcode`

Now we can use these images anywhere in our application.

## Storyboard

Let's go to the storyboard and add our three view controllers. Try and see if you can remember how to do it on your own again. Lay them next to each other in a vertical row.

_If you need a hint, see the [Adding View Controllers](#Adding-View-Controllers) section._

## View Controllers

We will be adding three view controllers to our app:

1. **InitialViewController**
    - _serves as a start menu and launches the game view controller._
2. **GameLogicViewController**
    - _responsible for managing the buttons, player turns, and checking if a player has won yet, launching the Game Over View Controller, and passing the game result to it._
3. **GameOverViewController**
    - _responsible for showing the game result, and giving an option to restart the game or go back to the initial view._

Use <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>l</kbd> to bring up the object library and search for view controller. Drag and drop three view controllers in a row.

Change their background and tint colours according to the colours you defined in your colour scheme in the [Colours](#Colours)section.

- I'll be using #465775 (background) and #2CABD8 (tint)

`// todo: add image of three view controllers with background colour`

## Button Grid

Now we can't have a tic tac toe game without a 3x3 grid, so let's add one to our middle view controller. This will be our Game Logic View Controller. Our grid will be comprised of 9 buttons, with a background image.

Let's start with the first button. Bring up the object library and search for 'button'. Drag and drop it anywhere on the middle view controller.

Delete the text inside the button and in the **Attributes Inspector** select our placeholder icon, it should be named `Icon-Placeholder`.

`// todo: add image of selecting a button image`

- Select the button and copy + paste it so you have horizontal row of three buttons.
- Select the **Embed In** button (left of the constraint buttons) and click on the **Stack View** option
  - This will create a horizontal stack view with the three buttons evenly spaced out

### UIStackView

_"What is this 'stack view' that I've never seen before?"_ — you might be asking yourself right about now.

_Fret not, I will explain._

A stack view is a UI element that allows us to organize a bunch of other UI elements (views) either in a row or column. A stack view allows us to evenly space and align elements, without having to manually do it, while also being adaptive for different screen sizes.

For more information read Apple's developer documentation for [`UIStackView`](https://developer.apple.com/documentation/uikit/uistackview).

For our 3x3 grid we will be using three horizontal stack views — each with three buttons themselves — inside a bigger vertical stack view. We will have a **spacing of 10** between our buttons, we we can define in the **Attributes Inspector**.

`// todo: add image of spacing in attributes inspector`

Click on each button and add a constraint for **Aspect Ratio** so they don't get skewed when they get resized.

### Making a Grid

To complete our 3x3 grid we will need to copy + paste our stack view twice for a total of 9 buttons.

Select all three stack views in the  **Outline View** (left pane of the Storyboard), and press the **Embed In** button and select the _Stack View_ again.

`// todo: add image of stack views selected in outline view`

This will create a vertical stack view encompassing our three horizontal — _a meta stack view_.

Change the spacing to 10, just like we did with the other stack views. We should have a nicely arranged 3x3 grid, but with slightly oversized icons for most iPhone screens. This is because of the default size of our icons.

We need to ensure that our design is adaptive to all iPhone models, luckily Apple provides plenty of tools for us to do this with [Auto Layout](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html).

### Adaptive Interfaces

It's important for your app to adapt to all iPhone screen sizes if we want to publish it on the App Store. Having an adaptive interface allows you to provide the best user experience, regardless of which iPhone your users have.

To learn more about how to build an adaptive user interface for your app, read more about it here: [Building Adaptive User Interfaces](https://developer.apple.com/design/adaptivity/)

Although there are many tools and aspects to building an adaptive interface, we're only going to cover Auto Layout in this workshop.

### Auto Layout

Auto Layout allows us to specify the locations UI elements relative to other UI elements or to the edge of the screen; it also allows us to define the sizes of our buttons, including making sure that certain elements should be the same size. _(hint: our grid buttons)_

**According to Apple's Documentation:**

_"Auto Layout dynamically calculates the size and position of all the views in your view hierarchy, based on constraints placed on those views. For example, you can constrain a button so that it is horizontally centered with an Image view and so that the button’s top edge always remains 8 points below the image’s bottom. If the image view’s size or position changes, the button’s position automatically adjusts to match."_

_"This constraint-based approach to design allows you to build user interfaces that dynamically respond to both internal and external changes."_ — [Understanding Auto Layout](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)

Select each of our grid buttons individually from the **Outline View** and add the **Equal Widths** (or **Equal Heights**) constraint. This will ensure that even if our grid is resized, all the buttons are the same and don't get squished.

`// todo: add image of auto layout constraints`

Now select our meta stack view — _a stack view of stack views_— and add the **Aspect Ratio** constraint as well as **Left** and **Right** constraints of 40. This ensures that our grid will resize dynamically depending on the screen size. Add constraints to centre our grid horizontally and vertically.

`// todo: add image of centred grid`

**Congrats! We have completed our grid!**

Learn more about Auto Layout in this article: [Auto Layout Tutorial in iOS: Getting Started](https://www.raywenderlich.com/811496-auto-layout-tutorial-in-ios-getting-started).

### Player Turn Label

Let's create a label so we can she the players whose turn it is. It's simply going to be a text label saying "X Player's Turn" or "O Player's Turn". We'll also have it say the winner or draw game.

Add a **label** from the object library and drag it above our grid. Give it the following **constraints**:

- 80 on the bottom
- centred horizontally

Change the **font size** to 24 and change the default text to say **X Player's Turn**.

## Initial Screen

Now let's go back to the inital screen and add our game's title and a button to start a new game. We're going to add a label with our app name, a button to start a new game, and an image with our app icon for aesthetic reasons.

`// todo: add image of initial screen with UI`

Let's add a segue so that when you press the **New Game** button it takes you to the second screen so you can actually play a game.

- give it a segue identifier of **StartGame**

To add a segue identifier select the arrow going from the Inital View Controller to the Game Logic View Controller, and add a unique name in the **Attributes Inspector** _Segue_ field.

## End Game Screen

We want to display the match result in our end game screen, which means we need to know who won the game, or whether the game was a draw. This means we need to pass data between view controllers.

_How can we do this?_

There are actually a few  ways of doing this, but we can actually use the segue to pass whatever data we want, we just need to create a function to prepare everything for the segue. _We'll get back to this in a bit._

But first let's add the text labels we're going to use to display the information, as well as the buttons to either start a new game or exit.

**Add two text labels:**

- larger one: _Game Over_ (font size: 32)
- smaller one: _Winner_ (font size: 24)

**Add two buttons:**

- New Game (segue to: game logic view)
- Exit (segue to: initial view)

You can add the segue from new game to the Game Logic View Controller, but for the exit view we're going to do an unwind segue which is slightly different. _We'll go over this in a bit._

`// todo: add image of end game view controller`

## Encapsulation

For each of our view controllers, we will be defining the background logic characterizing what happens in that specific screen; this is called encapsulation. [Encapsulation](https://en.wikipedia.org/wiki/Encapsulation_(computer_programming)) ensures that your code is easy to debug and maintain, as well as facilitates adding new features to your app without having to do a full rewrite of the entire code base.

### View Controller Swift Files

We've created our view controllers, and added some of our UI but we are still missing the underlying logic, most notably our game logic. If you press on the buttons in our button grid, they buttons won't do anything at all. Let's add the swift files for each of our view controllers.

The files and their classes must have the same name as our view controllers:

1. InitialViewController
2. GameLogicViewController
3. GameOverViewController

Let's start with the first view controller: InitialViewController.

## Initial View Controller

In the **Project Navigator** right click and add select **New File...**, choose **Swift File**, and name this first file **InitialViewController**; the _.swift_ will automatically be appended.

Open the file and add the following code, to define our custom view controller:

``` swift
import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("\n# initial view loaded\n")
    }

}
```

Repeat this for the other two view controllers but change their **file** and **class** names to their respective view controllers: **GameLogicViewController** and **GameOverViewController**.

`// todo add image of navigation area with view controller files`

## GameLogicViewController

The `GameLogicViewController.swift` file will contain our actual game logic. You'll find that it's very similar to how we created our tic tac toe game in our first workshop: [1. Getting Started with Swift](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%201/Workshop%201.md).

**Game Logic Summary:**

- We want a common action, triggered by every button in the grid
  - _which changes the button image to an X or an O_
  - _and checks if that was a winning move, or if draw game_
- If the game is over, transistion to the end game screen

Before we start on the actual logic though, let's create that manual segue we talked about before.

### Manual Segue

_What happens once a player wins a game of tic tac toe?_

We want our app to move to the end game screen as soon as a winning move is played, how do we do this? Every time we've used a segue so far, it's been triggered by pressing a button.

This is where manual segues come in handy. We can define a segue differently than clicking and dragging a button in the storyboard.

You can create a manual segue either by clicking and dragging from the view controller name in the **Outline View**, or by doing the same from the left-most button on the top of the view controller.

`// todo: add images of creating manual segue`

To trigger this segue, we will need to call it programmatically, and thus we will need to assign it a segue identifier. Try and see if you can remember how to do this, if you need a refresher go back to [Main Initial Screen](#Main-Initial-Screen). Give it the segue identifier **endGame**.

Click on the Game Logic View Controller in the storyboard with the **Assistant Editor**, so that you have the swift file open next to the canvas. Now let's add our game logic.

### Class Properties

Let's start by defining some class properties. These are the data members of our class, or basically anything we want to store while the game is going on; this includes things like plays made, and by which players, whose turn it is, etc.

Add these class properties (class variables) below the class defintion.

The board is an integer array that represents the pieces on the board; the first three numbers are the buttons on the first row, the second three numbers are the second row, and so on. This will help us quickly analyze the state of the game without having to check the buttons each time. _(0 is the default value, 1 for player X, and -1 for player O)_

``` swift
class GameLogicViewController: UIViewController {

    var board: [Int]! = [0,0,0, 0,0,0, 0,0,0]
    var turnCount: Int!
    var xTurn: Bool!
```

We are going to add a reference to our player turn label we created back in [Player Turn Label](#Player-Turn-Label) after we created our button grid. This will let us change the text each turn.

We will also need a reference to each button so that we can change its image when its pressed, and make sure it's not enabled anymore. Name the button references `buttonA1`, with the letter denoting the rows (A, B, C) and the number denoting the column (1, 2, 3). This will make it easier to keep track of which button is which.

See if you can remember how to create an `@IBOutlet`; if you need a refresher you may want to see **Outlets** in our last workshop: [Workshop 2. Getting All Set-up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md/#Outlets).

``` swift
@IBOutlet weak var turnLabel: UILabel!

@IBOutlet weak var buttonA1: UIButton!
@IBOutlet weak var buttonA2: UIButton!
@IBOutlet weak var buttonA3: UIButton!
@IBOutlet weak var buttonB1: UIButton!
@IBOutlet weak var buttonB2: UIButton!
@IBOutlet weak var buttonB3: UIButton!
@IBOutlet weak var buttonC1: UIButton!
@IBOutlet weak var buttonC2: UIButton!
@IBOutlet weak var buttonC3: UIButton!
```

### Setting up the View

The first method already in our view controller is the `viewDidLoad()` function; it is responsible for setting up everything as soon as the view is loaded into memory. It is called by the system, so we don't have to worry about calling it.

Inside our `viewDidLoad()` we're only going to have one function call, to `setUpBoard()`. This will ensure that our code is clean, and if our game was more complex we might have more function calls here too.

In this second `setUpBoard()` function, let's give our class properties their initial values, so that our game starts properly. All the board pieces are set to 0, the turn count is set to 1, and the initial player is player X.

We will also give each button a tag, this allows us to quickly check which button was pressed later on.

``` swift
override func viewDidLoad() {
    super.viewDidLoad()

    setUpBoard()
}

/**
  Gets everything ready for the board to start a new game.
  */
func setUpBoard() {
    board = [0,0,0, 0,0,0, 0,0,0]
    turnCount = 1
    xTurn = true

    buttonA1.tag = 1
    buttonA2.tag = 2
    buttonA3.tag = 3
    buttonB1.tag = 4
    buttonB2.tag = 5
    buttonB3.tag = 6
    buttonC1.tag = 7
    buttonC2.tag = 8
    buttonC3.tag = 9
}
```

### Play Turn

Next up is our common action function. This function is triggered every time a move is made in our tic tac toe game, that means each button needs to be linked to it.

Create an `@IBAction` from one of the buttons in our grid, and name it **playTurn**, leaving the default options as is.

Now <kbd>ctrl</kbd> + mouse click and drag all the other buttons in the grid to the same action, you should see the function get highlighted.

`// todo: add image of adding linking to existing action`

_Refresher: [Workshop 2. Getting All Set-up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md/#Actions)_

In our `playTurn()` method, we're going to first update our board array with the current play; this is done by calling another function: `updateBoard()`, which we will define in a bit.

We are then going to update the button image, with another function-to-be-defined: `updateButton()`.

The third step is to check for a winner, which we will use the aptly-named function `winner()`, also to be defined in a bit. We then use the result in an `If` statement to either:

- display a winning message and segue to end screen
- display a draw game message and segue to end screen
- or do nothing

If the game isn't over _— i.e. no winner and not a draw —_ then we change the current player's turn to the other player, increment the turn counter, and display whose turn it is now.

The `performSegue()` method triggers the segue to the end game screen, the manual segue we added earlier.

You may have noticed that we can change the function parameter type from `Any` to `UIButton`. This makes it easier to then use the sender reference — _since it will ways be a `UIButton`_.

``` swift
@IBAction func playTurn(_ sender: UIButton) {
    print("\n# button pressed with ID: \(sender.tag)\n")

    // update board data structure
    updateBoard(button: sender.tag)

    // update button image
    updateButton(button: button)

    // exit game if winner found or draw game
    if winner() {
        turnLabel.text = xTurn ? "X Wins!" : "O Wins!"

        performSegue(withIdentifier: "endGame", sender: nil)
        return
    } else if turnCount == 9 {
        turnLabel.text = "Draw!"

        performSegue(withIdentifier: "endGame", sender: nil)
        return
    }

    xTurn = !xTurn
    turnCount += 1

    turnLabel.text = xTurn ? "X Player's Turn" : "O Player's Turn"
}
```

Let's start defining the methods we called in our `playTurn()` function.

The `updateBoard()` function is simply responsible for updating the board array with all the current plays. So it's a simple one-liner.

``` swift
/**
 Updates the board data structure.
 */
func updateBoard(button: Int) {
    board[button-1] = xTurn ? 1 : -1
}
```

To update our button we  will first change the image of the triggering button, depending on whose turn it is. We then set the image for the disabled button state, and disable the button, so it's can't be pressed anymore.

If we didn't pass down the reference from `playTurn()`, this would have been a bit more complex.

``` swift
/**
 Updates the button that was pressed and disables it.
 */
func updateButton(button: UIButton) {
    let image = xTurn ? UIImage(named: "Icon-X") : UIImage(named: "Icon-O")

    button.setImage(image, for: .disabled)
    button.isEnabled = false
}
```

Finally — _for our methods called in `playTurn()`_ — let's go over the `winner()` function. This one is responsible for checking if either player has one. It will return a true `Bool` if it finds a winner.

There are 8 possible winning combinations if you break it down.

- 3 row victories
- 3 column victories
- 2 diagonal victories

If none of these are satisfied, then no player has won and the function returns false.

``` swift
/**
 Checks if a winning move was played. True if the current player won.
 - returns: True if a winning combination is detected.
 */
func winner() -> Bool {
    if board[0] == board[1]
        && board[0] == board[2]
        && board[0] != 0 {
        // row 1 //
        return true
    } else if board[3] == board[4]
        && board[3] == board[5]
        && board[3] != 0 {
        // row 2 //
        return true
    } else if board[6] == board[7]
        && board[6] == board[8]
        && board[6] != 0 {
        // row 3 //
        return true
    } else if board[0] == board[3]
        && board[0] == board[6]
        && board[0] != 0 {
        // col 1 //
        return true
    } else if board[1] == board[4]
        && board[1] == board[7]
        && board[1] != 0 {
        // col 2 //
        return true
    } else if board[2] == board[5]
        && board[2] == board[8]
        && board[2] != 0 {
        // col 1 //
        return true
    } else if board[0] == board[4]
        && board[0] == board[8]
        && board[0] != 0 {
        // diagonal 1 //
        return true
    } else if board[2] == board[4]
        && board[2] == board[6]
        && board[2] != 0 {
        // diagonal 2 //
        return true
    }
    return false
}
```

### Passing Data with Segues

Now we want to be able to show who won the game, or if the game was a draw, in our Game Over View Controller. To do this, we need to pass some data to from one view controller to the other.

_How do we pass data between view controllers?_

Fortunately, this is actually quite simple in iOS, especially since we can use the segue we already have to pass the information for us.

All we need to do is add a method which will automatically be called by the system once we trigger a segue: `prepare()`.

This function simply checks if the turn count is 9, as this would mean a draw game, and then puts a string describing the game resolution in the Game Over View Controller `winner` class property — _not to be confused with the `winner()` function in this view controller_.

_You might get an error that `vc.winner` does not exist, which is not false, but we will add it shortly so ignore this for now._

- [How To: Pass Data Between View Controllers In Swift (Extended)](https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/)

- use `prepareForSegue()`...
- we will be using class properties to pass data

``` swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
    if let vc = segue.destination as? GameOverViewController
    {
        if turnCount != 9 {
            vc.winner = xTurn ? "X Player Wins!" : "O Player Wins!"
        } else {
            vc.winner = "No winner..."
        }
    }
}
```

## GameOverViewController

Now let's finish up and define our Game Over View Controller. This screen is relatively simple with a label and two buttons which we set up in the [End Game Screen](#End-Game-Screen) section.

Let's set up the logic for this screen.

### Data Passing with Class Properties

First let's add the add the **winner** `String` property used to pass game result from the Game Logic View Controller.

``` swift
class GameOverViewController: UIViewController {

    var winner: String!
```

Next we'll add the reference for our text label that shows the game outcome. This will allows us to change its text to the appropriate result from the `winner` property.

``` swift
@IBOutlet weak var winnerLabel: UILabel!
```

We also need to make sure that the label text is updated with the `winner` text — _if it's present_ — in the `viewDidLoad()` function.

``` swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    if let winnerText = winner {
        winnerLabel.text = winnerText
    }
}
```

## Unwinding Segues

The last thing we need to set up is the unwind segue from the Game Over View Controller to the Initial View Controller. If you you've noticed, regular **Show** segues adds a view controller on top of the current view. This is often useful, and in our app it shows the continuation of a series of rematches. But what if we want to start a new series of games?

`// todo: add image of stacked view controllers after segues`

We don't want our new games to go on top of our old games, we want to start with a fresh stack of games. Using an unwind segue, we can get rid of all the segues we pushed to the top.

Let's start first by adding this code to the Inital View Controller class to set up the unwind segue. This is different from other segues where we usually write the code in the view controller we segue **from** — _instead here we're adding code to the destination view controller_.

You can add it yourself by writing `unwind` and Xcode will suggest the **Swift Unwind Segue Method**. You can press <kbd>tab</kbd> to autocomplete. Rename the function to `unwindToInitalView()`.

``` swift
@IBAction func unwindToInitialView(_ unwindSegue: UIStoryboardSegue) {
    _ = unwindSegue.source
    // Use data from the view controller which initiated the unwind segue
}
```

Let's head back over to the Game Over View Controller and <kbd>ctrl</kbd> + click and drag our exit button to **Exit** component _(right most button above view controller)_ of the view controller in the storyboard.
- select our function we just added (it should be the only option)

`// todo: add image of exti component`

More info: [Unwind Segues Step-by-Step (and 4 Reasons to Use Them)](https://matteomanferdini.com/unwind-segue/)

## Play a Game

Congrats! Hopefully you followed all the steps correctly and everything works as expected. You should now have a fully functioning Tic Tac Toe game.

_Try playing it against your friends, see who is the master tic tac toe player._

I encourage you to add to this game, see if you can add new features like and an AI to play against, game saving, or perhaps even online play.

# References / Resources

This are some of the resources I used to make this workshop, all of them are worth reading / watching.

- [Apple's Human Interface Guidelines (HIG)](https://developer.apple.com/design/human-interface-guidelines/)
- [iOS Human Interface Guidelines I](https://medium.com/nona-web/ios-human-interface-guideline-f012a5ba962e)
- [HIG: Launch Screen](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/launch-screen/)
- [Workshop 2. Getting All Set Up](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%202/Workshop%202.md)
- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)
- [UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)
- [HIG: Color](https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/)
- [The Importance of Color Theory](https://www.webdesign.org/web-design-basics/color-theory/the-importance-of-color-in-web-designing.12437.html)
- [How Important is Colour In Design](https://simplygraphic.co.za/2016/05/06/important-colour-design/)
- [HIG: Color and Contrast](https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/color-and-contrast/)
- [Coolors](https://coolors.co)
- [60-30-10 Color Rule: How to Use It, and How to Break It](https://www.thespruce.com/timeless-color-rule-797859)
- [HIG: App Icon](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/)
- [HIG: App Icon Sizes](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/#app-icon-sizes)
- [HIG: Image Size and Resolution](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/)
- [Flaticon](https://www.flaticon.com/)
- [Figma](https://www.figma.com)
- [Adobe Illustrator](https://www.adobe.com/ca/products/illustrator.html)
- [Affinity Designer](https://affinity.serif.com/en-gb/designer/)
- [Gimp](https://www.gimp.org)
- [iPhone App Icon Template](https://www.figma.com/file/HUboUyk2DsD1u3JYPHPMo7/iPhone-App-Icon-Template)
- [Tic Tac Toe App Icon](https://www.figma.com/file/bNCiyAC6W5EBeNiNMA5GCx/Tic-Tac-Toe-App-Icon)
- [UIStackView](https://developer.apple.com/documentation/uikit/uistackview)
- [Understanding Auto Layout](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)
- [Building Adaptive User Interfaces](https://developer.apple.com/design/adaptivity/)
- [Auto Layout Tutorial in iOS: Getting Started](https://www.raywenderlich.com/811496-auto-layout-tutorial-in-ios-getting-started)
- [Encapsulation](https://en.wikipedia.org/wiki/Encapsulation_(computer_programming))
[Workshop 1. Getting Started with Swift](https://github.com/riconaranjo/iOS-Curriculum/blob/master/Workshop%201/Workshop%201.md)
- [How To: Pass Data Between View Controllers In Swift (Extended)](https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/)
More info: [Unwind Segues Step-by-Step (and 4 Reasons to Use Them)](https://matteomanferdini.com/unwind-segue/)

_And of course..._

- [Google](https://google.ca)
- [Stack Overflow](https://stackoverflow.com)
- [Xcode Help](https://help.apple.com/xcode/mac/current/)
