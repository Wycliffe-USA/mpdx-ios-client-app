MPDX Client Example App
=======================
Example project to facilitate in the creation of your templated MPDX iOS App.

### Requirements

Xcode Version: 14.2 <br>
Swift Version: 5.7 <br>
Minimum iOS Target: iOS 14 <br>
MPDXiOSLib: (Supports both Cocoapods and Swift Package Manager) <br>

Follow these outlined steps to get your Xcode project setup and running against the MPDXiOSLib code-base.

- [Create A New Xcode Project](#create-a-new-xcode-project)
- [Install The MPDXiOSLib Dependency](#install-the-mpdxioslib-dependency)
- [Install MPDXiOSLib With Swift Package Manager](#install-mpdxioslib-with-swift-package-manager)
- [Install MPDXiOSLib With Cocoapods](#install-mpdxioslib-with-cocoapods)
- [Configure Your New Xcode Project](#configure-your-new-xcode-project)
- [Configure Your App](#configure-your-app)

### Create A New Xcode Project

Start by creating a new Xcode project. These instructions have been updated for Xcode 14.2 which was used in this example. Make sure to choose the following when creating your new Xcode project.

- For the project template choose App.
- Ensure Use Core Data is not checked.
- If you wish to include your own tests then check include Tests otherwise you can leave this unchecked.

### Install The MPDXiOSLib Dependency

Choose 1 of the next 2 steps to install the MPDXiOSLib dependency which now supports both Cocoapods and Swift Package Manager.

NOTE: You can view the latest MPDXiOSLib version by viewing the .podspec [here](https://github.com/CruGlobal/mpdx-ios-lib/blob/develop/MPDXiOSLib.podspec#L4) or you can view the latest tag [here](https://github.com/CruGlobal/mpdx-ios-lib/tags).

### Install MPDXiOSLib With Swift Package Manager

### Install MPDXiOSLib With Cocoapods

- Install the cocoapods dependency manager.  Install instructions are [here](https://cocoapods.org/).
- Add a Podfile to your project directory.  You can review the MPDXClientExampleCocoapods Podfile for reference on setting that up [here](https://github.com/CruGlobal/mpdx-ios-client-example-app/blob/update-for-xcode-14.2-and-mpdx-ios-lib/Cocoapods/Podfile).  NOTE that your target name or names(if including tests) will be different than the MPDXClientExampleCocoapods target name.  The main target name will match the Xcode project name.
- Open the Terminal app to your Xcode project directory and run command pod install.  Once completed you will have a .xcworkspace file which you can now open to configure and build your app.

    
### Configure Your New Xcode Project
- Open the .xcworkspace file that was created from the pod install command in the previous step.
- Locate the Info.plist file (Located in the same directory as AppDelegate.swift) and delete the node named (Application Scene Manifest).

![alt text](ReadMeAssets/xcode-info-plist-delete-scene-manifest.png)

- Delete these 3 files SceneDelegate.swift, Main.storyboard, and ViewController.swift.

- Select your main target then select the general tab.  In the Deployment Info section remove Main as the Main Interface.  This box should be empty.  Set your deployment target to iOS 14 and check mark the devices and orientations.

![alt text](ReadMeAssets/xcode-target-general-deployment-info.png)
    
### Configure Your App

App configuration is done at run-time and requires that you initialize an App instance with a configuration that conforms to AppConfigInterface. You can view the example’s AppDelegate.swift and AppConfig.swift to see how this is setup.
