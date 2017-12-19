//
//  PortfolioCollectionViewController.swift
//  BusinessApplication
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imageList = ["Portfolio1", "Portfolio2", "Portfolio3", "Portfolio4", "Portfolio5", "Portfolio6", "Portfolio7", "Portfolio8"]
    
    var label = ["Team Houston", "Nord Steady", "Nord Integrity", "Team Oslo", "Anhout Swan", "Lillo Swan", "Endelo Swan", "Westbank HM 424"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        collectionView?.backgroundView = UIImageView(image: UIImage(named: "Background"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCollectionViewCell
    
        // Configure the cell
        
        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
        cell.cellLabel.text = label[indexPath.row]
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize : CGRect = UIScreen.main.bounds
        
        var widthCell = 0
        var heightCell = 0
        
        if screenSize.width == 320 {
            
            widthCell = 130
            heightCell = 130
            
        }
        
        if screenSize.width == 375 {
            
            widthCell = 160
            heightCell = 160
            
        }
        
        if screenSize.width == 414 {
            
            widthCell = 180
            heightCell = 180
            
        }
        
        if screenSize.width == 768 {
            
            widthCell = 230
            heightCell = 230
            
        }
        
        if screenSize.width == 834 {
            
            widthCell = 250
            heightCell = 250
            
        }
        
        if screenSize.width == 1024 {
            
            widthCell = 310
            heightCell = 310
            
        }
        
        return CGSize(width: widthCell, height: heightCell)
        
    }
}
