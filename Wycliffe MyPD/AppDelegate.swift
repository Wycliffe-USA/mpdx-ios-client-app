//
//  AppDelegate.swift
//  MPDXClientExampleSwiftPackageManager
//
//  Created by Levi Eggert on 7/19/23.
//  Copyright © 2023 Cru. All rights reserved.
//

import Foundation
import MPDXiOSLib

@main
class AppDelegate: MPDXAppDelegate {
    
    override func getAppConfig() -> AppConfigInterface {
        return AppConfig()
    }
}
