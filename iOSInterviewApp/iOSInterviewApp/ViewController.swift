//
//  ViewController.swift
//  iOSInterviewApp
//
//  Created by MD AL MAMUN (LCL) on 10/23/18.
//  Copyright © 2018 Loblaw. All rights reserved.
//

import UIKit
import Moya

class ViewController: UIViewController {

    let apiProvider = MoyaProvider<GoogleNewsEndpoint>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Articles data loaded 
        apiProvider.request(GoogleNewsEndpoint.TopHeadlines) { result in
            if let data = result.value?.data, let response = try? JSONDecoder().decode(ArticleResponse.self, from: data) {
                let allArticle = response.articles
                print(allArticle)
            }
        }
    }


}

