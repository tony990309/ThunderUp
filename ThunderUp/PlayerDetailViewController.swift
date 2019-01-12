//
//  playerDetailViewController.swift
//  ThunderUp
//
//  Created by User01 on 2019/1/12.
//  Copyright © 2019 chen. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    var player: player?
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var posLabel: UILabel!
    @IBOutlet weak var ptsLabel: UILabel!
    @IBOutlet weak var fgpLabel: UILabel!
    @IBOutlet weak var tppLabel: UILabel!
    @IBOutlet weak var ftpLabel: UILabel!
    @IBOutlet weak var rebLabel: UILabel!
    @IBOutlet weak var astLabel: UILabel!
    @IBOutlet weak var stlLabel: UILabel!
    @IBOutlet weak var toLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let player = player {
            /*let urlStr = player.pic
            if let url = URL(string: urlStr) {
                let task = URLSession.shared.dataTask(with: url) {
                    (data, response, error) in
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            self.pic.image = image
                        }
                    }
                }
                task.resume()
            }*/
            nameLabel.text = player.name
            numLabel.text = "Number : " + player.number
            posLabel.text = "Position : " + player.position
            ptsLabel.text = player.pts
            fgpLabel.text = player.fgp
            tppLabel.text = player.tpp
            ftpLabel.text = player.ftp
            rebLabel.text = player.reb
            astLabel.text = player.ast
            stlLabel.text = player.stl
            toLabel.text = player.to
        }
        // Do any additional setup after loading the view.
    }
}
