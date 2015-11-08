//
//  ViewController.swift
//  tablecontroller
//
//  Created by paolo leo on 04/11/15.
//  Copyright © 2015 paolo leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchDisplayDelegate {
    
    @IBOutlet weak var tableView: UITableView!

        
    var items: [Item] = itemsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.registerNib(UINib(nibName: "ItemViewCell", bundle: nil), forCellReuseIdentifier: "ItemViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCell{
    
        let cell = self.tableView.dequeueReusableCellWithIdentifier("ItemViewCell")! as! ItemViewCell
        cell.item = self.items[indexPath.row]
        return cell
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("detail", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detail" {
            let vc = segue.destinationViewController as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow
            if let index = indexPath {
                vc.item = items[index.row]
            }
        }
    }
}

