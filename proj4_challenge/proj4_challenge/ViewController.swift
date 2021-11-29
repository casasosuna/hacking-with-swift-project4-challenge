//
//  ViewController.swift
//  proj4_challenge
//
//  Created by Enrique Casas on 9/8/21.
//

import UIKit

class ViewController: UITableViewController {
    
var sites = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
        sites = ["apple.com", "hackingwithswift.com"]
        //pictures.append("apple.com")
        //pictures.append("hackingwithswift.com")
        print(sites)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Link", for: indexPath)
        cell.textLabel?.text = sites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1: try loading the "Detail" view controller and typecasting it to be DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            // 2: success! Set its selectedImage property
            vc.selectedSite = sites[indexPath.row]
            
            // 3. now push it onto the navigation controller
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

