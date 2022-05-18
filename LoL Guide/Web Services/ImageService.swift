////
////  ImageService.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 25.04.2022.
////
//
//
//#if canImport(UIKit)
//    import UIKit
//#endif
//
//public class ImageWithUrl {
//
//    public private(set) var url: String
//    internal var image: LAPIImage?
//
//    public init(url: String, image: LAPIImage?) {
//        self.url = url
//        self.image = image
//    }
//
//    public func getImage(handler: @escaping (LAPIImage?, String?) -> Void) {
//        if let image = self.image {
//            handler(image, nil)
//        }
//        else {
//            downloadImage(completion: handler)
//        }
//    }
//
//    private func downloadImage(completion: @escaping (LAPIImage?, String?) -> Void) {
//        RESTRequester().requestImage(.GET, url: self.url) { (image, _, _, error) in
//            if self.image == nil {
//                self.image = image
//            }
//            completion(image, error)
//        }
//    }
//}
