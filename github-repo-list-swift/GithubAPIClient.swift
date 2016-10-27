//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient {
    class func getRepositories(with completeion: @escaping ([[String: Any]]) -> Void) {
        
        
        let urlString = "https://api.github.com/repositories?client_id=51dbbd91a15364b51da1&client_secret=3812ddea2711a30c6ac793501ab5ef154808cbff"
        let url = URL(string: urlString)
  
        
        if let unwrappedUrl = url{
            let session = URLSession.shared
            let task = session.dataTask(with: unwrappedUrl) { (data, response, error) in
                if let unwrappeddata = data {
                    do {
                        let jsonArray = try JSONSerialization.jsonObject(with: unwrappeddata, options: []) as! [[String:Any]]
                        
                       
                        completeion(jsonArray)
                        
                        
                    }catch{
                        
                        print("JSON error")
                        
                    }

                }
                
            }
            
            task.resume()
            
        }
        
        
        
        
        
    }
}



