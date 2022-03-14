//
//  ImageName.swift
//  PhotoFrame_SwiftUI
//
//  Created by juntaek.oh on 2022/03/14.
//

import Foundation

enum ImageName: String, CaseIterable{
    case noneImage = "쿠쿠루삥뽕"
    case firstImage = "슈슈슈슉"
    case secondImage = "그만이야"
    
    func showName() -> String{
        return self.rawValue
    }
    
    mutating func changeCase(nowIndex: inout Int){
        if nowIndex == ImageName.allCases.count - 1{
            nowIndex = 1
        } else{
            nowIndex += 1
        }

        self = ImageName.allCases[nowIndex]
    }
}
