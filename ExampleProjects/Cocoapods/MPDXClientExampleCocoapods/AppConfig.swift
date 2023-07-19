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
        return "set-your-api-base-url"
    }
    
    var authenticationConfiguration: AuthenticationConfiguration {
             
        return AuthenticationConfiguration(
            authentication: MPDXOktaAuthentication<NoDecodableOktaUserData>(
                clientId: "set-your-okta-client-id",
                logoutRedirectUri: "set-your-okta-logout-redirect-uri",
                issuer: "set-your-okta-issuer",
                redirectUri: "set-your-okta-redirect-uri"
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
