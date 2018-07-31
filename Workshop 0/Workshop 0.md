# **0. Prelude: Installing Xcode on a macOS VM**

The purpose of this workshop is to **teach you how to create a macOS Virtual Machine [VM]** because you want **to learn iOS / macOS app development** using Xcode, but have no easy access to a mac.

Steps:

- Get a copy of macOS
- Creating a Virtual Machine
- Minor tweaks

I recommend if you plan on attending this workshop, you should preinstall VirtualBox; you can download it from virtualbox.org.

---

## Getting a copy of macOS

It may come as no surprise that you need a macOS installer in order to create a macOS VM, **but where does one go about getting this macOS installer, if one does not own a mac?** (Sounds like a catch-22...)

The **only method I recommend** is by borrowing a friend's mac and downloading macOS to create an ISO file you can then use for your VM. The steps for how to do this can be found in this tutorial on [how to geek](https://www.howtogeek.com/289594/how-to-install-macos-sierra-in-virtualbox-on-windows-10/).

If you are attending this workshop: since I own a mac, I have already downloaded macOS high sierra and created the ISO files for you to use to create a VM.

---

## Creating a Virtual Machine

There are a few ways to create a macOS VM:

- you can install macOS on a blank VM disk image
- you can use an VM disk image provided from someone else

The quicker of these two methods is the latter, therefore I have gone through the hassle of downloading

---

## Minor Tweaks

After creating your virtual machine and changing some settings, there are still a few more settings that need to modified but unfortunately VirtualBox doesn't let us do this through a GUI.

In order to change these settings we will have to use the command line. Open the Command Prompt with administrator permissions.

First close VirtualBox, otherwise booting up the VM will not work properly.

You can do this by pressing <kbd>windows key</kbd>+<kbd>s</kbd> and typing `cmd`. Next right-click on Command Prompt and select _Run as Adminstrator_.

Next you will have to run the following commands, but make sure you have changed the VM name [here I used `macOS VM`] if your VM is named differently.

    cd "C:\Program Files\Oracle\VirtualBox\"

    VBoxManage.exe modifyvm "macOS VM" --cpuidset 00000001 000306a9 04100800 7fbae3ff bfebfbff

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "MacBookPro11,3"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-2BD1B31983FE1663"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

---

### Changing Resolution + Scaling

By default, the VM will open in a small window of 1024x768 px. In order to fix this, we will first change the resolution to something appropriate for whatever device you are working on, and then change the window size with VirtualBox's Scale mode.

---

#### Resolution

Unfortunately the only way to change the resolution of the VM is by once again using the command line. There are three methods, of which the first two are very similar.

First navigate to the correct directory:

    cd "C:\Program Files\Oracle\VirtualBox\"

**Method 1:**

    VBoxManage setextradata “macOS VM” VBoxInternal2/EfiGraphicsResolution 1920x1080

**Method 2:**

    VBoxManage setextradata "macOS VM" "VBoxInternal2/EfiGraphicsResolution" 1920x1080

Resolutions with methods 1 and 2:

- 1280x720 — [HD]
- 1920x1080 — [FHD]
- 2560x1440 — [QHD]
- 2048x1080 — [2K]
- 3840x2160 — [4K]
- 5120x2880 — [5K]
- 1280x800
- 1280x1024
- 1600x900
- 1440x900

---

**Method 3:**

    VBoxManage setextradata "VM Name" VBoxInternal2/EfiGopMode 5

With this method you can chose the following resolutions, replace the 5 above with the index of the desired resolution.

- 0 : 640x480
- 1 : 800x600
- 2 : 1024x768
- 3 : 1280x1024
- 4 : 1440x900
- 5 : 1900x1200

---

#### Scaling

In order to enter scaling mode...

---

## References

- main reference: [howtogeek.com](https://www.howtogeek.com/289594/how-to-install-macos-sierra-in-virtualbox-on-windows-10/)
- resolution changes methods 1 + 2: [wikigain.com](http://www.wikigain.com/fix-virtualbox-macos-high-sierra-screen-resolution-1920x1080-4k-5k/)
- reolutions changes method 3: [wikigain.com](http://www.wikigain.com/fix-macos-high-sierra-screen-resolution-virtualbox/)
- alternate method: [makeuseof.com](https://www.makeuseof.com/tag/macos-windows-10-virtual-machine/)