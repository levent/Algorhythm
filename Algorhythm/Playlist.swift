//
//  Playlist.swift
//  Algorhythm
//
//  Created by Levent Ali on 27/01/2015.
//  Copyright (c) 2015 Purebreeze Ltd. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as String!
        description = playlistDictionary["description"] as String!
        let iconName = playlistDictionary["icon"] as String!
        icon = UIImage(named: iconName)
        let largeIconName = playlistDictionary["largeIcon"] as String!
        largeIcon = UIImage(named: largeIconName)
        artists += playlistDictionary["artists"] as [String]
        backgroundColor = rgbColorFromDictionary(playlistDictionary["backgroundColor"] as [String: CGFloat])
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        let red = colorDictionary["red"] as CGFloat!
        let green = colorDictionary["green"] as CGFloat!
        let blue = colorDictionary["blue"] as CGFloat!
        let alpha = colorDictionary["alpha"] as CGFloat!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}