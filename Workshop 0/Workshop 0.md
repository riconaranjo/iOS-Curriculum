# 0. Prelude: Installing Xcode on a macOS VM

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

After creating your virtual machine, we can change some settings in VirtualBox. There are a few more settings that need to modified but unfortunately VirtualBox doesn't let us do this through a GUI, but we can use the command line for this.

### Virtual Box Tweaks

In the VirtualBox Manager, select your new VM. After doing so, press **Settings**. This will open a pop-up window.

![virtualbox-settings](img/virtualbox-settings.png)

Select **System**. You should be in the **Motherboard** tab.

In the **Boot Order**, unselect **Floppy**, we will be using the Optical option to boot from the installer, and then the Hard Disk to boot from after that.

![virtualbox-motherboard](img/virtualbox-motherboard.png)

Go to the **Processor** tab.

Increase the number of processors, as this will dramatically increase the speed of your VM. We are now done with the System settings.

![virtualbox-processor](img/virtualbox-processor.png)

Select **Display**. You should be in the **Screen** tab.

You want to increase the **Video Memory** to the maximum, as this will also heavily impact performance.

![virtualbox-display](img/virtualbox-display.png)

Select **Storage**.

Click on the empty CD under **Storage Devices**. In the **Attributes*** section, click on the icon next to the dropdown menu, and click choose **Virtual Optical Disk File...**. Find the macOS ISO file on your computer, and select it.

![virtualbox-optical](img/virtualbox-optical.png)

### Command Line Tweaks

In order to change these settings we will have to use the command line. There are many different ways to open **Command Prompt**, I find the quickest way is to press. You can do this by pressing <kbd>windows key</kbd> + <kbd>s</kbd> and typing `cmd`, and pressing <kbd>enter</kbd> after **Command Prompt** appears and is highighted.

_If you're on linux_, you already know how to open the command line terminal.

First **close VirtualBox**, otherwise these changes **will not take effect** and be overwritten without taking effect.

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

Unfortunately the only way to change the resolution of the VM is by once again using the command line. There are three methods, of which the first two are very similar. Choose only one

First navigate to the correct directory:

    cd "C:\Program Files\Oracle\VirtualBox\"

_Method 1:_

    VBoxManage setextradata “macOS VM” VBoxInternal2/EfiGraphicsResolution 1920x1080

_Method 2:_ with this method you can mix and match the veritical and horizontal resolutions, such as 1920x1440.

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

To enter **Scaled Mode**, you can select it from the menubar under **View**. This will allow you to resize the VM window, although this can warp everything in the window.

To exit **Scaled Mode**, press <kbd>right contro/l</kbd> + <kbd>c</kbd>. If your keyboard doesn't have a right control [as many laptops don't]. You can remap this key [**_Host Key_**] in **Preferences** > **Input** > **Virtual Machine**, and find **Host Key Combination**. I decided to use <kbd>right alt</kbd> as my host key.

In order to make sure the VM isn't warped when you re-scale it, you can also use 

you can use a third party application such as [Sizer](http://www.brianapps.net/sizer/). On my Surface Pro, the perfect windows size was 1366x768.

---

## Installing macOS

Now that you have your VM all set up, only one thing remains: actually installing macOS.

The first step is simple. Boot up your VM. You should see a bunch of text scrolling by. This will go on for a few minutes. If this continues for upwards lof 20 min, and you can tell that it is repeatedly looping through the same text, then this is a sign that you did something wrong; probably changing settings with the command line while VirtualBox was open.

![virtualbox-verbose](img/virtualbox-verbose.png)

After some time, you should see a grey screen and shortly after a window with different language options should appear. Select whichever language you are comfortable with, and press the arrow [or press <kbd>enter</kbd>]. This will take you the **macOS utilities** window.

![virtualbox-languages](img/virtualbox-languages.png)

Here you will find a few options: **Restore from Time Machine Backup**, **Reinstall macOS**, **Get Help Online**, and **Disk Utility**. This is macOS's recovery mode and it allows you to restore your mac, reformat the hard drive, install a new oparting system, and several useful features.

![virtualbox-recovery](img/virtualbox-recovery.png)

What we need to do is first reformat our VM's hard drive to HFS+, Apple's own file system [like NTFS on windows]. Do do this select **Disk Utility** and press **Continue**. You then want to select the VM hard drive, which should be named VBOX **_HARDDISK Media_**. If you cannot see it, select **View** > **Show All Devices**; it should appear on the left hand pane.

![virtualbox-disk-utility](img/virtualbox-disk-utility.png)

After selecting the drive, click on the **Erase** button. This will allows us to reformat the hard drive with **HTFS+**.

In the window that appears, change the drive name to `Macintosh HD`, select **Mac OS Extended (Journaled)** or **Mac OS Extended (Case-sensative, Journaled)**. The case sensitive version will differenitate [betweeen folder names](https://support.apple.com/en-ca/guide/disk-utility/erase-a-volume-dskutl14079/mac) based-off upper / lower case [`HOMEWORK` and `Homework` would be the same in the former]. **_Do not select APFS, as this is not supported by VirtualBox, and you will have to restart with a new VM_**.

Keep the Scheme as GUID Partition Map.

![virtualbox-reformat](img/virtualbox-reformat.png)

Press **Erase**.

You should see a small window with a progress bar as the drive is reformattted. Once it is done you should see a green checkmark, press **Done**; if you instead get a red x, re-try reformatting, then try **First Aid** and reformatting after. This should work on the first try though.

Press the **red x** on the upper left hand corner to exit out of **Disk Utility**. This will take you back to the **macOS Utilities** window.

Select **Reinstall macOS** and press **Continue**.

Once the **Install macOS High Sierra** tool loads, press **Continue** again.

![virtualbox-install](img/virtualbox-install.png)

You should see the _software license agreement_, press **Agree**, and again when it asks to confirm that you read it.

![virtualbox-license](img/virtualbox-license.png)

Now you should see a prompt to selec the disk where you want to install macOS. Select the hard drive you reformatted earlier; if you don't see it, you did something wrong, go back and reformat it again.

![virtualbox-select-disk](img/virtualbox-select-disk.png)

Click on `Macintosh HD`, and press **Install**

// start the install
// disconnect the iso file
// log in

## References

These are all the articles I used to created this workshop:

- main reference: [howtogeek.com](https://www.howtogeek.com/289594/how-to-install-macos-sierra-in-virtualbox-on-windows-10/)
- resolution changes methods 1 + 2: [wikigain.com](http://www.wikigain.com/fix-virtualbox-macos-high-sierra-screen-resolution-1920x1080-4k-5k/)
- resolutions changes method 3: [wikigain.com](http://www.wikigain.com/fix-macos-high-sierra-screen-resolution-virtualbox/)
- alternate method: [makeuseof.com](https://www.makeuseof.com/tag/macos-windows-10-virtual-machine/)