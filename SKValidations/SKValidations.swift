//
//  SKValidations.swift
//  SKValidations
//
//  Created by sanju on 15/01/23.
//

import Foundation

private let __PHONE_REGEX = "^[0-9+]{0,1}+[0-9]{5,16}$"
private let __firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
private let __serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
private let __emailRegex = __firstpart + "@" + __serverpart + "[A-Za-z]{2,8}"
private let __emailPredicate = NSPredicate(format: "SELF MATCHES %@", __emailRegex)
private let __phoneTest = NSPredicate(format: "SELF MATCHES %@", __PHONE_REGEX)

public struct SKValidations{
    
    public static func isValidEmail(_ email:String) -> Bool {
        return __emailPredicate.evaluate(with: email)
    }
    
    public static func isValidMobile(_ mobile: String) -> Bool {
        return __phoneTest.evaluate(with: mobile)
    }
    
}


