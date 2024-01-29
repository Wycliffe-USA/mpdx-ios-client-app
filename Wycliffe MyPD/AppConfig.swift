//
//  AppConfig.swift
//  MPDXClientExampleSwiftPackageManager
//
//  Created by Levi Eggert on 7/19/23.
//  Copyright © 2023 Cru. All rights reserved.
//

import Foundation
import OAuth
import MPDXiOSLib

class AppConfig: AppConfigInterface {
    
    init() {
        
    }
    
    var apiBaseUrl: String {
        return "https://api.mypd.wycliffe.org"
    }
    
    var authenticationConfiguration: AuthenticationConfiguration {
            
        return AuthenticationConfiguration(
            authentication: OAuthWebSession(
                configuration: OAuthWebSessionConfiguration(
                    callbackUrlScheme: "org.mpdx.mobile",
                    clientId: "eJJ_Kt5HM2JLeLEUkn0M075mjVRA6dDhNgR9nRClFyM",
                    oauthAuthorizeUrl: "https://api.mypd.wycliffe.org/oauth/authorize",
                    oauthTokenRequestUrl: "https://api.mypd.wycliffe.org/oauth/token",
                    prefersEphemeralWebBrowserSession: true,
                    redirectUri: "org.wycliffe.mypd:/auth"
                )
            ),
            mpdxApiAuthenticationProvider: .apiOAuth
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
