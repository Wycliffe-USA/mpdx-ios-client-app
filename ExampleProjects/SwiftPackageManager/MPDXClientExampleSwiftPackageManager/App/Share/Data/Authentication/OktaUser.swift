//
//  OktaUser.swift
//  MPDXClientExampleSwiftPackageManager
//
//  Created by Levi Eggert on 7/19/23.
//  Copyright © 2023 Cru. All rights reserved.
//

import Foundation

public struct OktaUser: Codable {
    
    public let email: String
    public let fullName: String
    
    enum CodingKeys: String, CodingKey {
        
        case email = "email"
        case fullName = "name"
    }
}
