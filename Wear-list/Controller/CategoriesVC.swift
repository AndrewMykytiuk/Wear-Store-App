//
//  ViewController.swift
//  Wear-list
//
//  Created by User on 13.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
//#pragma mark - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell") as? CategoriesCell {
            let category =  DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            //categoryTable.rowHeight = 140
            return cell
        } else {
            return 	CategoriesCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let BarButtonItem = UIBarButtonItem()
            BarButtonItem.title = ""
            navigationItem.backBarButtonItem = BarButtonItem
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }
 

}

