////
////  JSONService.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 25.04.2022.
////
//
//import Foundation
//
//internal class JsonRequester: DataRequester {
//    
//    public func request<DataType: Decodable>(accessMethod: RESTRequester.AccessMethod, methodUrl: String, headers: [String : String], body: Data?, handler: @escaping (DataType?, HttpResponses, RESTRequester.Headers?, String?) -> Void) {
//        RiotAPIRESTRequester().requestObject(accessMethod, url: methodUrl, headers: headers, body: body, asType: DataType.self, handler: handler)
//    }
//}
