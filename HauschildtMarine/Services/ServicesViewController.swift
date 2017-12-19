//
//  ServicesViewController.swift
//  BusinessApplication
//


import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var  sentData:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        self.navigationItem.title = sentData
        
        if self.navigationItem.title == "Naval Architecture" {
            
            detailImage.image = UIImage(named: "Image1")
            detailDescription.text = """
                                        • Ship Design
                                        Hauschildt Marine A/S provides consultancy within the various stages of the design process. The company ensures the quality in between the stages and  provides technical support to achieve the desired product.
                                            • Concept Design
                                            • Contract Design
                                            • Class/Basic Design
                                            • Detailed Design
                                            Over the years, the company carried out the design of various ship types within different construction materials, such as steel, aluminium and composites.
                                        \n
                                        • Stability
                                        Hauschildt Marine A/S performs stability calculations and delivers documentation for all kind of ships, barges and floating offshore installations:
                                            • Intact stability
                                            • Deterministic damage stability
                                            • Probabilistic damage stability
                                        \n
                                        • Machinery And Ship Systems
                                        Our services relative to machinery and ship systems include:
                                            • Machinery and equipment arrangements, including 3D modelling
                                            • Foundation drawings
                                            • Design of all ship systems
                                        \n
                                        • Power Prediction And Hull Form Optimization
                                        During the different stages of the ship design, the use of CFD tools allows to determine the resistance of the ship, in still water or any sea state, for bare hull or a complete hull with appendages. The optimization process of the hull form considers the ship resistance in the different ship operational conditions.
                                        """
        }
        
        if self.navigationItem.title == "Design & Engineering" {
            
            detailImage.image = UIImage(named: "Image2")
            detailDescription.text = """
                                        • Structural Analysis
                                        We do static and dynamic structural calculations for load bearing constructions, crane foundations, engine foundation, etc, either for Class approval or for ensuring the quality of the design and the long-term reliability of the equipment.
                                        \n
                                        When required, we perform finite element method (FEM) analysis to calculate the global stresses and forces in an existing or in a new structure. In addition, we provide calculations for the assessment of reinforcements and conversions in marine constructions. When analyzing the results, we provide solutions and/or recommendations.
                                        \n
                                        • Ship Operation Optimization
                                        Hauschildt Marine A/S has developed tools to improve the vessel´s operation. These tools are based in the ship knowlage and experience gained along the years. Trim optimization and the propeller pitch are examples on what can be improved to save fuel when the ship is sailing.
                                        """
            
        }
        
        if self.navigationItem.title == "Retrofits & Convertions" {
            
            detailImage.image = UIImage(named: "Image3")
            detailDescription.text = """
                                        • Conversions
                                        Vessel conversions are becoming a normal solution when the ship owner needs cargo/volume capacity increase. Conversions like ship lengthening or sponsons installations can be a more economic, fast and simple solution than a new building. Hauschildt Marine A/S provides the consultancy to evaluate and optimize the necessary increase of volume and develops the required documentation for the Class approval and for the shipyard.
                                        \n
                                        • Retrofits
                                        Over the years, environmental questions have been one of the major focus of the international maritime organization (IMO) conventions. Systems to reduce the gas emissions from burn of fossil fuels and the contamination of waters from non-native microorganisms will soon be mandatory for existing fleets.
                                        \n
                                        Hauschildt Marine A/S has a large experience with these issues and on the right way to solve them. We are/have working/worked with top class ship-owners, to provide consultancy for the installation of scrubbers and ballast water treatment systems (BWTS).
                                            • Scrubber installations: To reduce the amount of SO2 from the exhaust gases, this solution shows as very reliable, resulting in small changes on the existing ship structure and arrangement.
                                            • Ballast Water Treatment Systems (BWTS): We are familiar with the present BWTS technologies and we have worked with different treatment systems from different market leading manufacturers.
                                        \n
                                        Our services include feasibility studies, project management, equipment / system selection, pre-project survey, 3D scanning & modelling, engineering (Stability, strength calculations etc.), class approval, shipyard selection and survey during and after installation phase to ensure that all the work is carried according to the owner´s and our expectations.
                                        """
        }
        
        if self.navigationItem.title == "3D Scan & Modelling" {
            
            detailImage.image = UIImage(named: "Image4")
            detailDescription.text = """
                                        • 3D Modeling
                                        3D modeling is a helpful tool when designing complex and detailed drawings, also it gives a very good 3D perspective of how the design will look in real life. With our experienced team, we can design piping systems, structure arrangements, hull models and its compartments, engine room or pump room arrangements, accommodation arrangemetns etc. We use powerful softwares, which work with most of the 3D files provided by manufacturers.
                                        \n
                                        • 3D Scan
                                        Hauschildt Marine A/S possesses a 3D scanner, making our 3D models much more accurate and efficient uppon onboard inspection. We can scan from a small area of a pumproom, to an entire engine room or other very crowded space. The 3D laser scanner that Hauschildt Marine A/S works with, is a FARO product, known by its accuracy and reliability. The scanner can be used indoors or outdoors, depending on which area is needed to scan.
                                        """
        }
        
        if self.navigationItem.title == "Inspections & Surveys" {
            
            detailImage.image = UIImage(named: "Image5")
            detailDescription.text = """
                                            • Inspections & Surveys
                                            \n
                                            • Thickness measurements
                                            We have performed a vast number of ultrasonic thickness measurements in all kind of ships. The company has level 1 and level 2 certificated employees.
                                            \n
                                            • Noise & Vibrations
                                            Hauschildt Marine performs noise measurements since 1996 and has gained a large amount of experience over the years. Our experience ranges from small fishing vessels to large vessels and passenger ferries. The company performs measurements of the vibrations, caused by the propeller blades, machinery and sea, analyzing the results and providing solutions to avoid undesired results.
                                            \n
                                            • Inspection on the outside ships bottom
                                            Inspection of the underwater part of the ship to ensure a satisfactory condition for the intended purpose of the ship.
                                            \n
                                            • Measuring of ships
                                            Hauschildt Marine A/S performs Tonnage calculations for all kind of ships and is authorized to write Tonnage certificates for class approval.
                                            \n
                                            • General installation inspections
                                            \n
                                            • Stability & light weigth calculations
                                            Hauschildt Marine A/S is certified and has more than 20 years of experience to perform inclining experiments and light weight surveys in all kind of ships. We supply all required documentation for the Classification Society and authorities' approval.
                                            """ 
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        detailDescription.setContentOffset(CGPoint.zero, animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
