//
//  ViewController.swift
//  homework4MVC
//
//  Created by Hy Horng on 9/21/20.
//  Copyright © 2020 Hy Horng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let cellID = "cellID"
    let cellSpacingHeightHeader: CGFloat = 45
    
    let fruitObj = Fruit(name: "", description: "", profile: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellID)
        
        tableView.rowHeight = UITableView.automaticDimension
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        tableView.backgroundColor = UIColor.blue
        
        if section == 0 {
            return "Sweet Fruits"
        }
        else if section == 1 {
            return "Spicy Fruits"
        }
        
        return "Vegetables"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeightHeader
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return fruitObj.sweetFruits().count
        }
        else if section == 1 {
            return fruitObj.spicyFruits().count
        }
        return fruitObj.vegetables().count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //defualt cell
//        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        
//        if indexPath.section == 0 {
//            cell.textLabel?.text = fruitObj.sweetFruits()[indexPath.row].name
//            cell.detailTextLabel?.text = fruitObj.sweetFruits()[indexPath.row].description
//            cell.imageView?.image = UIImage(named: fruitObj.sweetFruits()[indexPath.row].profile)
//
//        } else if indexPath.section == 1 {
//            cell.textLabel?.text = fruitObj.spicyFruits()[indexPath.row].name
//            cell.detailTextLabel?.text = fruitObj.spicyFruits()[indexPath.row].description
//            cell.imageView?.image = UIImage(named: fruitObj.spicyFruits()[indexPath.row].profile)
//        }else {
//            cell.textLabel?.text = fruitObj.vegetables()[indexPath.row].name
//            cell.detailTextLabel?.text = fruitObj.vegetables()[indexPath.row].description
//            cell.imageView?.image = UIImage(named: fruitObj.vegetables()[indexPath.row].profile)
//        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TableViewCell
        
        
        if indexPath.section == 0 {
            cell.labelName.text = fruitObj.sweetFruits()[indexPath.row].name
            cell.txtLabel.text = fruitObj.sweetFruits()[indexPath.row].description
            cell.profileImage.image = UIImage(named: fruitObj.sweetFruits()[indexPath.row].profile)

        } else if indexPath.section == 1 {
            cell.labelName.text = fruitObj.spicyFruits()[indexPath.row].name
            cell.txtLabel.text = fruitObj.spicyFruits()[indexPath.row].description
            cell.profileImage.image = UIImage(named: fruitObj.spicyFruits()[indexPath.row].profile)
        }else {
            cell.labelName.text = fruitObj.vegetables()[indexPath.row].name
            cell.txtLabel.text = fruitObj.vegetables()[indexPath.row].description
            cell.profileImage.image = UIImage(named: fruitObj.vegetables()[indexPath.row].profile)
        }
        
        
        return cell
    }
}

