//
//  AppDelegate.swift
//  MPDXClientExample
//
//  Created by Levi Eggert on 3/22/22.
//

import UIKit
import MPDXiOSLib

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // Made this lazy so app isn't allocated on AppDelegate.init().  There has been bug reports about being unable to access Keychain data and UserDefaults before didFinishLaunchingWithOptions is called.
    private lazy var app: App = {
        App(config: AppDelegate.getAppConfig())
    }()
    
    private static func getAppConfig() -> ConfigType {
        return AppConfig()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                
        return app.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [ : ]) -> Bool {
        
        return self.app.application(app, open: url, options: options)
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        return app.application(application, continue: userActivity, restorationHandler: restorationHandler)
    }
    
    func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplication.ExtensionPointIdentifier) -> Bool {
        
        return app.application(application, shouldAllowExtensionPointIdentifier: extensionPointIdentifier)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {

        app.application(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {

        app.application(application, didFailToRegisterForRemoteNotificationsWithError: error)
    }
}
