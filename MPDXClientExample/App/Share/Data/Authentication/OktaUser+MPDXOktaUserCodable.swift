//
//  OktaUser+MPDXOktaUserCodable.swift
//  MPDXClientExample
//
//  Created by Levi Eggert on 2/28/23.
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
