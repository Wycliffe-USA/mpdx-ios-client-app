MPDX Client Example App
=======================

The purpose of this project is to facilitate in the creation of your templated MPDX iOS app.  For reference you can view MPDXClientExample.xcworkspace when setting up your own Xcode project.  We've also provided some documentation below that will be necessary for creating your Xcode project, configuring your Xcode project, and configuring your app to run the MPDXiOSLib code-base.

Follow these outlined steps to get your Xcode project setup and running against the MPDXiOSLib code-base.

- [Create A New Xcode Project](#create-a-new-xcode-project)
- [Add The MPDXiOSLib Dependency](#add-the-mpdxioslib-dependency)
- [Configure Your New Xcode Project](#configure-your-new-xcode-project)
- [Configure Your App](#configure-your-app)

### Create A New Xcode Project

Start by creating a new Xcode project which will walk you through some preconfiguration steps.  Make sure to choose the following when creating your new Xcode project.

- For the project template choose App.
- For Interface choose Storyboard, for Language choose Swift, and ensure Use Core Data is not checked.

### Add The MPDXiOSLib Dependency

- Install the cocoapods dependency manager.  Install instructions are here https://cocoapods.org/.
- Add a Podfile to your project directory.  You can review the MPDXClientExample Podfile for reference on setting that up here https://github.com/CruGlobal/mpdx-ios-client-example-app/blob/main/Podfile.  NOTE that your target name or names(if including tests) will be different than the MPDXClientExample and MPDXClientExampleTests target names.  The main target name will match the Xcode project name.
- Open the Terminal app to your Xcode project directory and run command pod install.  Once completed you will have a .xcworkspace file which you can now open to configure and build your app.
    
### Configure Your New Xcode Project
- Open the .xcworkspace file that was created from the pod install command in the previous step.
- Locate the Info.plist file (Located in the same directory as AppDelegate.swift) and delete the node named (Application Scene Manifest).

![alt text](ReadMeAssets/xcode-info-plist-delete-scene-manifest.png)

- Delete these 3 files SceneDelegate.swift, Main.storyboard, and ViewController.swift.

- Select your main target then select the general tab.  In the Deployment Info section remove Main as the Main Inteface.  This box should be empty.  Set your deployment target to iOS 13 and check mark the devices and orientations.

![alt text](ReadMeAssets/xcode-target-general-deployment-info.png)
    
### Configure Your App

App configuration is done at run-time and requires that you initialize an App instance with a configuration that conforms to ConfigType. You can view the example’s AppDelegate.swift and AppConfig.swift to see how this is setup.
