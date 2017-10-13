//
//  TableViewController.swift
//  QuizTempatRestoran
//
//  Created by Gw on 13/10/17.
//  Copyright © 2017 Gw. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //deklarasi tableData sebagai array
    var tableData = [String]()
    //deklarasi indexOfNumber sebagai array dengan tip string
    var indexOfNumber = [String]()
    let tra = ["BellaItalia", "CaffeinCafe", "DeBottle", "Golden Prawn", "Ikan", "MieTarempa", "Sederhana", "SushiTei", "TaWan", "TerasCafe"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //deklarasi allNumbers
        let allNumbers = "Bella_Italia Caffein_Cafe De_Bottle Golden_Prawn Ikan_Acia Mie_Tarempa Sederhana Sushi_Tei Ta_Wan Teras_Cafe"
        //menambahkan allNumbers ke table data
        tableData = allNumbers.components(separatedBy: " ")
        
        //deklarasi index number
        let indexNumber = "A B C D E F G H I J"
        
        //menambahkan indexNumbers kedalam array indexNumbers
        indexOfNumber = indexNumber.components(separatedBy: " ")
        
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return indexOfNumber.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tm", for: indexPath)
        
        // Menampilkan tra
        cell.textLabel?.text = tra[indexPath.row]
        
        //menampilkan gambar
        let imageName = UIImage(named: tra[indexPath.row])
        cell.imageView?.image = imageName
        
        // Configure the cell...
        //menampilkan Text
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexOfNumber
    }
    
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        
        //deklarasi var temp sebagai penyimpanan data dari indexOfNumber
        let temp = indexOfNumber as NSArray
        return temp.index(of: title)
    }
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


