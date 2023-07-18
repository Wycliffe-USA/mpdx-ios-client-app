//
//  OktaUser.swift
//  MPDXClientExample
//
//  Created by Levi Eggert on 2/28/23.
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
