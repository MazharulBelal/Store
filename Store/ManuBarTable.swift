//
//  ManuBarTable.swift
//  Store
//
//  Created by Mazharul Belal on 25/7/18.
//  Copyright © 2018 Mazharul Belal. All rights reserved.
//

import UIKit

class ManuBarTable: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var UserImagesView: UIImageView!
    @IBOutlet weak var TableView: UITableView!
    
    var ManuName = ["Sale","Tops","Bottoms","Outwear","Clothing","Dresses","Shoes","Accessories","Sale","Tops","Bottoms","Outwear","Clothing","Dresses","Shoes","Accessories"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
     
        self.UserImagesView.image =  UIImage(named:"UserImg")
        self.UserImagesView.layer.cornerRadius = 43
        self.UserImagesView.clipsToBounds = true
        self.TableView.backgroundColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1)
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        
  
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ManuName.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CatagotyTableCell

        cell.CatagoryNameLabel.text! = ManuName[indexPath.row]
        cell.backgroundColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1)
        


        return cell
    }
    
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
