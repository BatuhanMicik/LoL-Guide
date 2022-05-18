////
////  BaseRequester.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 25.04.2022.
////
//
//import Foundation
//internal class RawRequester: DataRequester {
//    
//    func request<DataType: Decodable>(accessMethod: RESTRequester.AccessMethod, methodUrl: String, headers: [String : String], body: Data?, handler: @escaping (DataType?, HttpResponses, RESTRequester.Headers?, String?) -> Void) {
//        RiotAPIRESTRequester().request(accessMethod, url: methodUrl, headers: headers, body: body) { (data, responseCode, headers, error) in
//            if let result = PrimitiveTypeCheck.cast(from: data, into: DataType.self) as? DataType {
//                handler(result, responseCode, headers, error)
//            }
//            else if let error = error {
//                handler(nil, responseCode, headers, error)
//            }
//            else {
//                handler(nil, responseCode, headers, "RawRequester: cast into \(DataType.self) failed")
//            }
//        }
//    }
//}
