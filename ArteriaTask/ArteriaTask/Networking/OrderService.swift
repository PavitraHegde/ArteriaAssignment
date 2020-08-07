//
//  OrderService.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import Foundation

class OrderService {
    
    private let session = URLSession(configuration: .default, delegate: nil, delegateQueue: .main)
    private let baseURL = "https://mobile-ab64db6e6.hana.ondemand.com/com.arteriatech.mDealerConnect/SOs"
    
    var dataTask: URLSessionTask?
    
    func fetchListScreenItems(topValue: Int,completionHandler: @escaping (_ errorMessage: String?, _ response: OrderDetails?) -> Void) {
        
        let userName: String = "P2000107764"
        let password: String = "Welcome@12345"
        
        let authStr = "\(userName):\(password)"
               let authData = authStr.data(using: .utf8)
        
        let authValue = "Basic \(authData?.base64EncodedString() ?? "")"
        if let urlComponents = URLComponents(string: "\(baseURL)topValue") {
            
            guard let url = urlComponents.url else {
                return
            }
            
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "GET"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            urlRequest.addValue("com.arteriatech.mDealerConnect", forHTTPHeaderField: "x-smp-appid")
            urlRequest.addValue("Basic \(authValue)", forHTTPHeaderField: "Authorization")

            dataTask = session.dataTask(with: url, completionHandler: { (data, response, error) in
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
                    return
                }
            })
        }
        dataTask?.resume()
    }
}
