//
//  ProfileTabViewController.swift
//  SneakersApplication
//
//  Created by Ahmer Hassan on 11/01/2020.
//  Copyright © 2020 Ahmer Hassan. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let utility = Utilities()
    @IBOutlet weak var tableView: UITableView!
    var cellButon: CellButtons?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

}
extension WishListViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return utility.imagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WishListCell", for: indexPath) as! WishListCell
        cell.nameLabel.text = "Nike Air Jordan"
        cell.priceLabel.text = "$!50"
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 2
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
      //  let borderColor: UIColor = (stock[indexPath.row] == "inStock") ? .red : .green
        cell.layer.borderColor = UIColor.black.cgColor
        cell.showImage.image = UIImage(named: utility.imagesArray[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
