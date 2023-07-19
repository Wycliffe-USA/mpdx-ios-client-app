//
//  AppConfig.swift
//  MPDXClientExampleCocoapods
//
//  Created by Levi Eggert on 7/19/23.
//  Copyright © 2023 Cru. All rights reserved.
//

import Foundation
import MPDXiOSLib

class AppConfig: AppConfigInterface {
    
    init() {
        
    }
    
    var apiBaseUrl: String {
        return "https://api.stage.mpdx.org"
    }
    
    var authenticationConfiguration: AuthenticationConfiguration {
             
        return AuthenticationConfiguration(
            authentication: MPDXOktaAuthentication<OktaUser>(
                clientId: "0oa1lhhexumq8ueTU0h8",
                logoutRedirectUri: "org.cru.mpdx:/logout",
                issuer: "https://signon.okta.com",
                redirectUri: "org.cru.mpdx:/login"
            ),
            mpdxApiAuthenticationProvider: .okta
        )
    }
    
    var coreDatabaseConfiguration: CoreDatabaseConfiguration {
        return CoreDatabaseConfiguration(
            loadFromPodResourceBundleName: "MPDXiOSLib_CoreDataModel",
            dataModelFilename: "mpdxDataModel",
            appGroupId: nil,
            storeSqliteFilename: "mpdxDataModel"
        )
    }
    
    var deepLinkingConfiguration: DeepLinkingConfiguration? {
        return nil
    }
    
    var firebaseConfiguration: FirebaseConfiguration? {
        return nil
    }
    
    var googleAnalyticsConfiguration: GoogleAnalyticsConfiguration? {
        return nil
    }
    
    var impersonateConfiguration: MPDXApiImpersonateConfiguration? {
        return nil
    }
}

