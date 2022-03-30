//
//  AppConfig.swift
//  MPDXClientExample
//
//  Created by Levi Eggert on 3/23/22.
//

import Foundation
import MPDXiOSLib
import OktaAuthentication

class AppConfig: ConfigType {
    
    required init() {
        
    }
    
    var apiBaseUrl: String {
        return "https://api.stage.mpdx.org"
    }
    
    var authenticationConfiguration: AuthenticationConfiguration {
                
        return AuthenticationConfiguration(
            authenticateProvider: "okta",
            userAuthentication: CruOktaAuthentication(
                clientId: "0oa1lhhexumq8ueTU0h8",
                logoutRedirectUri: "org.cru.mpdx:/logout",
                issuer: "https://signon.okta.com",
                redirectUri: "org.cru.mpdx:/login"
            )
        )
    }
    
    var coreDatabaseConfiguration: CoreDatabaseConfiguration {
        return CoreDatabaseConfiguration(
            loadFromPodResourceBundleName: "MPDXiOSLib_CoreDataModel",
            dataModelFilename: "mpdxDataModel",
            appGroupId: "group.org.cru.mpdx",
            storeSqliteFilename: "mpdxDataModel"
        )
    }
    
    var deepLinkingConfiguration: DeepLinkingConfiguration? {
        return DeepLinkingConfiguration(
            contactsDeepLinkHost: "www.mpdx.org"
        )
    }
    
    var firebaseConfiguration: FirebaseConfiguration? {
        return nil
        /*return FirebaseConfiguration(
            firebaseGoogleServiceFileName: "GoogleService-Info",
            shouldEnableFirebaseDebugArgumentsForFirebaseAnalyticsDebugView: false
        )*/
    }
    
    var googleAnalyticsConfiguration: GoogleAnalyticsConfiguration? {
        
        return GoogleAnalyticsConfiguration(
            gaiIdentifier: "UA-325725-34",
            debugDispatchIntervalForDebuggingGoogleAnalytics: nil
        )
    }
}

