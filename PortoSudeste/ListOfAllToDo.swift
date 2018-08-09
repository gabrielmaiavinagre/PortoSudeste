//
//  ViewController.swift
//  PortoSudeste
//
//  Created by Gabriel Maia Vinagre Costa on 09/08/18.
//  Copyright © 2018 gabrielVinagre. All rights reserved.
//

import UIKit

class ListOfAllToDo: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var activities = ["manutenção da caixa", "troca do motor", "abastecimento de equipamento"]
    
    var specificActivities = ["Temperatura da caixa", "número de valvúlas", "quantidade de litros"]
    
    var sectionTitles = ["Escavadeira"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewController()
    }

    private func setupViewController() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoListCell", for: indexPath) as! ToDoListCell
        
        cell.titleActivityLabel.text = activities[indexPath.row]
        cell.titleActivityLabel.textColor = UIColor.red
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionListCell") as! SectionListCell
        
        cell.sectionTitleLabel.textColor = UIColor.blue
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SpecificToDoID") as! SpecificToDo
        
        vc.toDoTitle = activities[indexPath.row]
        vc.jogTitle = specificActivities[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}

