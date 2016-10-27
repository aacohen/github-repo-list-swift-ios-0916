//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {
    
    let fullName: String
    let htmlURL: URL
    let repositoryID: String
    
    init(dictionary: [String: Any]) {
        fullName = dictionary["full_name"] as! String
        let url = dictionary["html_url"] as! String
        htmlURL = URL(string: url)
        repositoryID = dictionary["id"] as! String
    }
    
}
