//
//  TypeOfActivity.swift
//  PortoSudeste
//
//  Created by Gabriel Vinagre on 09/08/18.
//  Copyright © 2018 gabrielVinagre. All rights reserved.
//

import UIKit

class TypeOfActivity: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfBackgroundImages = ["", "", ""]
    var arrayOfTypesOfActivities = ["preventiva", "sensitiva", "corretiva"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        navigationBar()
    }
    
    func navigationBar() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.56, green:0.25, blue:0.60, alpha:1.0)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.title = "ATIVIDADES"
        
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityTypeID", for: indexPath) as! TypeOfActivityCell
        cell.backgroundImageView.image = UIImage(named: arrayOfTypesOfActivities[indexPath.row])
        cell.titleLabel.text = arrayOfTypesOfActivities[indexPath.row].uppercased()
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfTypesOfActivities.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0, 1:
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "listOfAllToDoID")
            self.navigationController?.pushViewController(vc, animated: true)
//        case 1:
//
//        case 2:
            
        default:
            print("error")
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height / 3
    }
    


}
