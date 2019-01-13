//
//  Group.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 13/01/2019.
//  Copyright © 2019 Ivan Golub. All rights reserved.
//

import Foundation

class Group: NSObject {
    var id: Int
    var name: String
    var nameImageResourceFile: String
    
    override init(){
        self.id = -1
        self.name = ""
        self.nameImageResourceFile = ""
    }
    
    init(_ id:Int, _ name: String, _ nameImageResourceFile: String){
        self.id = id
        self.name = name
        self.nameImageResourceFile = nameImageResourceFile
    }
}
