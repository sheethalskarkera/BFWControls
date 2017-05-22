//
//  DefaultsHandlerType.swift
//  BFWControls
//
//  Created by Tom Brodhurst-Hill on 24/12/16.
//  Copyright © 2016 BareFeetWare.
//  Free to use at your own risk, with acknowledgement to BareFeetWare.
//

import Foundation

public protocol DefaultsHandlerType {
    
    associatedtype Key: RawRepresentable
    
    static var defaults: UserDefaults { get }
    
}

public extension DefaultsHandlerType where Key.RawValue == String {
    
    // MARK: - Get/set value
    
    public static func setValue(_ value: Any?, for key: Key) {
        defaults.setValue(value, forKey: key.rawValue)
    }
    
    public static func value(for key: Key) -> Any? {
        return defaults.value(forKey: key.rawValue) as Any?
    }
    
    // MARK: - Get specific types
    
    static func array(for key: Key) -> [Any]? {
        return defaults.array(forKey: key.rawValue)
    }
    
    public static func bool(for key: Key) -> Bool {
        return defaults.bool(forKey: key.rawValue)
    }
    
    public static func date(for key: Key) -> Date? {
        return defaults.value(forKey: key.rawValue) as? Date
    }
    
    static func data(for key: Key) -> Data? {
        return defaults.data(forKey: key.rawValue)
    }
    
    public static func double(for key: Key) -> Double? {
        return defaults.double(forKey: key.rawValue)
    }
    
    static func int(for key: Key) -> Int? {
        return defaults.value(forKey: key.rawValue) as? Int
    }
    
    public static func string(for key: Key) -> String? {
        return defaults.string(forKey: key.rawValue)
    }
    
}
