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
        guard let
        unwrappedFullName = dictionary["full_name"] as? String,
        let unwrappedUrl1 = dictionary["html_url"] as? String,
        let unwrappedHtmlURL = URL(string: unwrappedUrl1),
        let unwrappedRepositoryID = dictionary["id"] as? Int
        else { fatalError("error") }
        
        htmlURL = unwrappedHtmlURL
        fullName = unwrappedFullName
        repositoryID = String(unwrappedRepositoryID)
    }
    
}
