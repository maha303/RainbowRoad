//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Maha saad on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let colors : [UIColor] = [.red,.orange,.yellow,.green,.blue,.purple]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
       
    }


}
extension ViewController :UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.rowHeight = 120
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
   
}


