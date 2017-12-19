//
//  ServicesTableViewController.swift
//  BusinessApplication
//


import UIKit

class ServicesTableViewController: UITableViewController {
    
    var titleList = ["Naval Architecture","Design & Engineering","Retrofits & Convertions","3D Scan & Modelling","Inspections & Surveys"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
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
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ServicesTableViewCell

        // Configure the cell...
        
        cell.cellTitle.text = titleList[indexPath.row]

        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showDetail") {
            
            let dvc = segue.destination as! ServicesViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                dvc.sentData = titleList[indexPath.row] as String
                
            }
            
        }
 
    }
    
}
