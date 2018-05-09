//
//  Contact.swift
//  Flash Chat
//
//  Created by Prithviraj Murthy on 09/05/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Contact {
    
    
    private var _name = ""
    private var _id = ""
 
    init(id: String, name: String) {
        _id = id
        _name = id
    }
    
    var name: String {
        get{
            return _name
        }
    }
   
    var id: String {
        get{
            return _id
        }
    }
    
    
}

