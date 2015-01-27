//
//  ViewController.swift
//  Algorhythm
//
//  Created by Levent Ali on 26/01/2015.
//  Copyright (c) 2015 Purebreeze Ltd. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var playlistImageView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aButton.setTitle("Press me!", forState: .Normal)
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playlistDetailController = segue.destinationViewController as PlaylistDetailViewController
            playlistDetailController.playlist = Playlist(index: 0)
        }
    }
}

