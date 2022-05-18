////
////  RiotAPI.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 25.04.2022.
////
//
//import Foundation
//
//internal protocol LeagueMethod {
//    
//    func getAccessMethod() -> RESTRequester.AccessMethod
//    func getMethodSignature() -> String
//    func getMethodUrl() -> String
//    func getMethodBody() -> Data?
//    func getCustomHeaders() -> [String: String]
//    func getWarningMessage() -> String?
//}
//
//
//public class APIs {
//    
//    internal var key: APIKey
//    
//    internal init(apiKey: APIKey) {
//        self.key = apiKey
//    }
//}
//
//internal class APIBusiness {
//    
//    private var key: APIKey
//    private var method: LeagueMethod
//    
//    public init(key: APIKey, method: LeagueMethod) {
//        self.key = key
//        self.method = method
//    }
//    
//    public static func cancelAllDelayedRequests() {
//        LeagueRequester.cancelDelayedRequests()
//    }
//    
//    public static func delayedRequestNumber() -> Int {
//        return LeagueRequester.delayedRequestNumber()
//    }
//    
//    public func request<DataType: Decodable>(handler: @escaping (DataType?, String?) -> Void) {
//        let requester: LeagueRequester = LeagueRequester(key: self.key)
//        requester.request(method: self.method) { (result, error) in
//            handler(result, error)
//        }
//    }
//}
