//
//  playerTableVievController.swift
//  ThunderUp
//
//  Created by User01 on 2019/1/12.
//  Copyright © 2019 chen. All rights reserved.
//

import UIKit

class PlayerTableViewController: UITableViewController {
    // https://gis.taiwan.net.tw/XMLReleaseALL_public/scenic_spot_C_f.json
    
    var players = [player]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let urlStr = "https://api.myjson.com/bins/72sc8".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlStr) {
            
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                if let data = data, let playerResults = try? decoder.decode(playerResults.self, from: data)  {
                    print("enter")
                    self.players = playerResults.results
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
                else{
                    print("error")
                }
            }
            task.resume()
            
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return players.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Player Table View Cell", for: indexPath)as! PlayerTableViewCell
        
        
        let player = players[indexPath.row]
        cell.nameLabel.text = player.name
        /*
        let urlStr = player.pic
        if let url = URL(string: urlStr) {
            let task = URLSession.shared.dataTask(with: url) {
                (data, response, error) in
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.pic.image = image
                    }
                }
            }
            task.resume()
        }*/
        
        return cell
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as? PlayerDetailViewController
        if let row = tableView.indexPathForSelectedRow?.row {
            let player = players[row]
            controller?.player=player
        }
        
    }
    
}
