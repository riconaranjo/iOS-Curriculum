# **0. Prelude: Installing Xcode on a macOS VM**

The purpose of this workshop is to **teach you how to create a macOS Virtual Machine [VM]** because you want **to learn iOS / macOS app development** using Xcode, but have no easy access to a mac.

**Steps:**

- Get a copy of macOS
- Creating a Virtual Machine
- Installing macOS

If you want to be able to participate with everything throughout this workshop, you must have a laptop [or desktop] that has enough free space to create a VM large enough to install macOS [about 6 GB] and Xcode [about 10 GB], and some extra wiggle room [5-15 GB].

**Requirements:**

- Windows / Linux laptop
- 20-30 GB free space on hard drive
- Quite a lot of patience [this process can take about 3 hours]

I recommend if you plan on attending this workshop, you should preinstall VirtualBox; you can download it from [virtualbox.org](https://virtualbox.org).

Any resourced used to create this workshop can be found at the bottom of this file.

---

## Getting a copy of macOS

It may come as no surprise that you need a macOS installer in order to create a macOS VM, **but where does one go about getting this macOS installer, if one does not own a mac?** (Sounds like a catch-22...)

The **only method I recommend** is by borrowing a friend's mac for a bit and downloading macOS to create an ISO file you can then use for your VM. The steps for how to do this can be found in this tutorial on [howtogeek.com](https://www.howtogeek.com/289594/how-to-install-macos-sierra-in-virtualbox-on-windows-10/).

If you are attending this workshop: since I own a mac, I have already downloaded macOS high sierra and created the ISO files for you to use to create a VM. This is a large 6 GB file, so be patient.

---

## Creating a Virtual Machine [VirtualBox]

There are two main programs used to create VMs: VirtualBox and VMware. We will be using VirtualBox in this workshop, as VMware requires more steps to create a macOS VM.

_if you rally want to use VMware, follow the steps outlined on [techsviewer.com](https://techsviewer.com/install-macos-high-sierra-virtualbox-windows/)._

### Installing VirtualBox

Now that we have decided to use VirtualBox, we now need to download it from [virtualbox.org](https://www.virtualbox.org/wiki/Downloads).

It should be a download of about 100 MB. Run the installer (this should be straightforward but if you get stuck, [watch this walkthrough](https://youtu.be/63_kPIQUPp8).

### Creating a new VM

After opening VirtualBox, you should see the VirtualBox Manager. Press the _New_ button, which should open a pop-up:

In the **Name** field enter what you want to call your new macOS VM. _I have decided to go with the incredibly descriptive name of **macOS VM**_.

In the **Type** dropdown, select _Mac OS X_ [an older name for macOS].

In the **Version** dropdown, select _macOS 10.13 High Sierra (64-bit)_
  
- if your ISO file is a different version, use the appropriate option

![virtualbox-new](img/virtualbox-new.png)

Press **Continue**.

Next you should see the Memory size pane. Here you want to select around 3+ GB of RAM, as this will directly impact the performance speed of your VM. _This also means you probably shouldn't use chrome while running VMs._

![virtualbox-ram](img/virtualbox-ram.png)

Press **Continue**.

Now you should be at the Hard disk pane, with three options. Select **Create a virtual disk now**.

![virtualbox-disk](img/virtualbox-disk.png)

Press **Continue**.

Hard disk file type: select **VDI (VirtualBox Disk Image)**.

![virtualbox-disk-type](img/virtualbox-disk-type.png)

Press **Continue**.

Now you should be on the Storage on Physical hard disk pane, here you will see two options: **_Dynamically allocated_** and **_Fixed size_**. If you select Dynamically allocated, the disk will take up much less space locally, but at a performance hit.

Since the purpose of this VM is to run Xcode, which is a rather powerful program, I have chosen **Fixed Size**, but this choice is up to your circumstances.

![virtualbox-storage](img/virtualbox-storage.png)

Press **Continue**.

In the File location and size pane, you have the option of setting an upper limit to the dynamically allocated disk, or the actual size of the fixed size disk. I recommend **25-30 GB**, but no less than 20 GB.

![virtualbox-size](img/virtualbox-size.png)

Press **Create**.

You should now see your new VM in the VirtualBox Manager. Success!

![virtualbox-created](img/virtualbox-created.png)

### Minor Tweaks

After creating your virtual machine and changing some settings, there are still a few more settings that need to modified but unfortunately VirtualBox doesn't let us do this through a GUI.

In order to change these settings we will have to use the command line. Open the Command Prompt with administrator permissions. _If you're on linux_, you already know how to open the command line terminal.

First **close VirtualBox**, otherwise these changes **will not take effect** and be overwritten without taking effect.

You can do this by pressing <kbd>windows key</kbd> + <kbd>s</kbd> and typing `cmd`. Next right-click on Command Prompt and select _Run as Adminstrator_.

![virtualbox-terminal](img/virtualbox-terminal.png)

Next you will have to run the following commands, but make sure you have changed the VM name [here I used `macOS VM`] if your VM is named differently.

    cd "C:\Program Files\Oracle\VirtualBox\"

    VBoxManage.exe modifyvm "macOS VM" --cpuidset 00000001 000306a9 04100800 7fbae3ff bfebfbff

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "MacBookPro11,3"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-2BD1B31983FE1663"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"

    VBoxManage setextradata "macOS VM" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

### Changing Resolution + Scaling

By default, the VM will open in a small window of 1024x768 px. In order to fix this, we will first change the resolution to something appropriate for whatever device you are working on, and then change the window size with VirtualBox's Scale mode.

![ui-for-ants](img/ui-for-ants.png)

#### Resolution

Unfortunately the only way to change the resolution of the VM is by once again using the command line. There are three methods, of which the first two are very similar.

First navigate to the correct directory:

    cd "C:\Program Files\Oracle\VirtualBox\"

_Method 1:_

    VBoxManage setextradata “macOS VM” VBoxInternal2/EfiGraphicsResolution 1920x1080

_Method 2:_

    VBoxManage setextradata “macOS VM” VBoxInternal2/EfiHorizontalResolution 1920

    VBoxManage setextradata “macOS VM” VBoxInternal2/EfiVerticalResolution 1080

Resolutions with methods 1 and 2:

| Resolution |     |
|------------|-----|
| 1280x720   | HD  |
| 1920x1080  | FHD |
| 2560x1440  | QHD |
| 2048x1080  | 2K  |
| 3840x2160  | 4K  |
| 5120x2880  | 5K  |
| 1280x800   |     |
| 1280x1024  |     |
| 1600x900   |     |
| 1440x900   |     |

_Method 3:_

    VBoxManage setextradata "macOS VM" VBoxInternal2/EfiGopMode 5

With method 3 you only choose from the following resolutions, replacing the 5 above with the index of the desired resolution.

| Resolution | Index |
|------------|-------|
| 640x480    | 0     |
| 800x600    | 1     |
| 1024x768   | 2     |
| 1280x1024  | 3     |
| 1440x900   | 4     |
| 1900x1200  | 5     |

#### Scaling

VirtualBox has a scaling mode which allows the VM to be displayed at other display scalings other than simply one-to-one pixels. This is especially an issue with high pixel density screens such as on a 13" 4k laptop or Surface Pro, where a 1080p VM will only take up a small portion of the screen with a UI for ants.

To enter **Scaling Mode**, you can select it from the menubar under {something}...

In order to make sure the VM isn't warped when you re-scale it, you can use a third party application such as {something}...

---

## Installing macOS

## References

These are all the articles I used to created this workshop:

- main reference: [howtogeek.com](https://www.howtogeek.com/289594/how-to-install-macos-sierra-in-virtualbox-on-windows-10/)
- resolution changes methods 1 + 2: [wikigain.com](http://www.wikigain.com/fix-virtualbox-macos-high-sierra-screen-resolution-1920x1080-4k-5k/)
- resolutions changes method 3: [wikigain.com](http://www.wikigain.com/fix-macos-high-sierra-screen-resolution-virtualbox/)
- alternate method: [makeuseof.com](https://www.makeuseof.com/tag/macos-windows-10-virtual-machine/)