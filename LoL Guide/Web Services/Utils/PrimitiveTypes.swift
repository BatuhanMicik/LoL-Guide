////
////  PrimitiveTypes.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 27.04.2022.
////
//
//import Foundation
//
//protocol PrimitiveType {
//    static func cast(from data: Data) -> Any?
//}
//
//extension Int64: PrimitiveType {
//    static func cast(from data: Data) -> Any? {
//        guard let dataStr = String.cast(from: data) as? String else { return nil }
//        return Int64(dataStr)
//    }
//}
//extension String: PrimitiveType {
//    static func cast(from data: Data) -> Any? {
//        return String(data: data, encoding: .utf8)
//    }
//}
//extension Int: PrimitiveType {
//    static func cast(from data: Data) -> Any? {
//        guard let dataStr = String.cast(from: data) as? String else { return nil }
//        return Int(dataStr)
//    }
//}
//
//internal class PrimitiveTypeCheck {
//    
//    public static func isPrimitive(_ type: Any.Type) -> Bool {
//        return type is PrimitiveType.Type
//    }
//    
//    public static func cast(from data: Data?, into type: Any.Type) -> Any? {
//        guard let data = data else { return nil }
//        if let primitiveType = type as? PrimitiveType.Type {
//            return primitiveType.cast(from: data)
//        }
//        else {
//            return data as Any
//        }
//    }
//}
