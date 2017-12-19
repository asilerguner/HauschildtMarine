//
//  ContactUsViewController.swift
//  BusinessApplication
//


import UIKit
import MapKit

class ContactUsViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapView2: MKMapView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    var latitude = 55.6776608
    var latitude2 = 57.7199245
    var longitude = 12.5806133
    var longitude2 = 10.5638689

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        button5.layer.cornerRadius = 5
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let span2 = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        let region2 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude2, longitude: longitude2), span: span2)
        
        mapView.setRegion(region, animated: true)
        mapView2.setRegion(region2, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinLocation2: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude2, longitude2)
        
        let pinAnn = MKPointAnnotation()
        let pinAnn2 = MKPointAnnotation()

        pinAnn.coordinate = pinLocation
        pinAnn2.coordinate = pinLocation2

        pinAnn.title = "Hauschildt Marine, Copenhagen"
        pinAnn2.title = "Hauschildt Marine, Skagen"

        pinAnn.subtitle = "Laksegade 26, 1063 Copenhagen, Denmark"
        pinAnn2.subtitle = "Østre strandvej 12, 9990 Skagen, Denmark"

        self.mapView.addAnnotation(pinAnn)
        self.mapView2.addAnnotation(pinAnn2)

        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func directions2(_ sender: Any) {
                UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude2),\(longitude2)")!, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callUs(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "tel://+4570208681")!, options: [:], completionHandler: nil)
        
    }

}
