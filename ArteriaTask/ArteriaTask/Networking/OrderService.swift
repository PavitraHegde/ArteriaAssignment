//
//  OrderService.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import Foundation

class OrderService {
    
    private var urlSessionConfig: URLSessionConfiguration {
        
        let userName: String = "P2000107764"
        let password: String = "Welcome@12345"
        
        let urlCredential = URLCredential(user: "P2000107764", password: "Welcome@12345", persistence: .forSession)
        let protectionSpace = URLProtectionSpace(host: "mobile-ab64db6e6.hana.ondemand.com", port: 0, protocol: "https", realm: "Restricted", authenticationMethod: NSURLAuthenticationMethodHTTPBasic)

        URLCredentialStorage.shared.set(urlCredential, for: protectionSpace)
        
        let authStr = "\(userName):\(password)"
        let authData = authStr.data(using: .utf8)
        
        let authValue = "Basic \(authData!.base64EncodedString())"
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = ["Authorization": authValue]
        return config
    }
    
    private var session: URLSession {
         return URLSession(configuration: self.urlSessionConfig, delegate: nil, delegateQueue: .main)
    }
    private let baseURL = "https://mobile-ab64db6e6.hana.ondemand.com/com.arteriatech.mDealerConnect/SOs"
    
    
    func fetchListScreenItems(query: [String: String]?,completionHandler: @escaping (_ errorMessage: String?, _ response: OrderDetails?) -> Void) {
        
        
        var urlComponent = URLComponents(string: baseURL)
        urlComponent?.queryItems = query?.map { URLQueryItem(name: $0.0, value: $0.1) }

        guard let url = urlComponent?.url else {
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("com.arteriatech.mDealerConnect", forHTTPHeaderField: "x-smp-appid")
       // urlRequest.setValue("Basic UDIwMDAxMDc3NjQ6V2VsY29tZUAxMjM0NQ==", forHTTPHeaderField: "Authorization")

       let dataTask = session.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                completionHandler(error.localizedDescription, nil)
                print(error.localizedDescription)
                return
            }
            if let response = response as? HTTPURLResponse, response.statusCode == 200, let responseData = data  {

                let jsonDecoder = JSONDecoder()

                do {
                    let listInfoResponse = try jsonDecoder.decode(OrderDetails.self, from: responseData)
                    completionHandler(nil,listInfoResponse)
                } catch  {                    completionHandler(error.localizedDescription, nil)
                }
            } else {
                completionHandler(error?.localizedDescription, nil)
            }
        })
        dataTask.resume()
  }
}

