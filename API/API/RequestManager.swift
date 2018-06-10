//
//  RequestManager.swift
//  API
//
//  Created by Milko Yanakiev on 6.06.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import Foundation

class RequestManager {
    
    static var requestNumber = 0
    
    class func sendRequest(){
        
        let session = URLSession.init(configuration: URLSessionConfiguration.default)
        guard let URL = URL(string: "https://softuniresttest.firebaseio.com/users/.json")
            else {return}
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { (data, responce, error) in
            guard error == nil else {return}
            let statusCode = (responce as! HTTPURLResponse).statusCode
            print(statusCode)
        }
        task.resume()
    }
}
