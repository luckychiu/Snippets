//
//  SnippetData.swift
//  Snippets
//
//  Created by Lucky Chiu on 28/11/2016.
//  Copyright © 2016 ASOKA. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}

class SnippetData {
    let type: SnippetType
    init(snippetType: SnippetType) {
        type = snippetType
        print("\(type.rawValue) snippet created")
    }
}

class TextData: SnippetData {
    let textData: String
    init(text: String) {
        textData = text
        super.init(snippetType: .text)
        print("Text snippet data: \(textData)")
    }
}
