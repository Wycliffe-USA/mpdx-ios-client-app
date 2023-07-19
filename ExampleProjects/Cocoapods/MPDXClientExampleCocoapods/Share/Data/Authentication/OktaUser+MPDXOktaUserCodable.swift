//
//  OktaUser+MPDXOktaUserCodable.swift
//  MPDXClientExampleCocoapods
//
//  Created by Levi Eggert on 7/19/23.
//  Copyright © 2023 Cru. All rights reserved.
//

import Foundation
import MPDXiOSLib

extension OktaUser: MPDXOktaUserCodable {
    
    public func getAnalyticsGRMasterPersonId() -> String? {
        return nil
    }
    
    public func getAnalyticsSSOguid() -> String? {
        return nil
    }
    
    public func getName() -> String {
        return fullName
    }
}
