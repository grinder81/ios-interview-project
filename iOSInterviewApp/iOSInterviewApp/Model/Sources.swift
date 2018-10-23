//
//  Sources.swift
//  iOSInterviewApp
//
//  Created by MD AL MAMUN (LCL) on 10/23/18.
//  Copyright © 2018 Loblaw. All rights reserved.
//

import Foundation


struct Source: Codable {
    let id: String
    let name: String
    let description: String
    let url: String
    let category: String
    let language: String
    let country: String
}
