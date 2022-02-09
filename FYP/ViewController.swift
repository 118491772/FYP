//
//  ViewController.swift
//  FYP
//
//  Created by Ben Roberts on 09/11/2021.
//
//
//showing the live location
import CoreLocation

 //imports Google Maps
import GoogleMaps
import UIKit





         //Setting class                           //Conforming to the Delegate
class ViewController: UIViewController, CLLocationManagerDelegate {

    

    
    
    //Creating a Location manager
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //* giving search bar name
        title = "SafeCity"
        
        
                //Request permisson and setup manager
   
        //Setting the delegate so we can recieve the event calls
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        //Will start Location Updates
        manager.startUpdatingLocation()
        
        // Do any additional setup after loading the view.
  
        
        
        
        //Provides API key
        GMSServices.provideAPIKey("AIzaSyDvpIZIz-EYhvveTpz-pHqonNermAlFV8Y")
        
        
   
       
        
        //Showing that I am using googles Software for legal purposes
        print("License: \n\n\(GMSServices.openSourceLicenseInfo())")
        
        
    }
    

     //Updates Location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       //We want to get location out of this above^
        guard let location = locations.first else {
            return
        }
         
        //Declaring coordinates
        let coordinate = location.coordinate
        
        //Sets Up Camera View Point
        let camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 6.0)
             let mapView = GMSMapView.map(withFrame: view.frame, camera: camera)
             view.addSubview(mapView)
             
             // Creates a marker on the map
            //A marker is an google map adaptation
             let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
             marker.title = "Cork"
             marker.snippet = "Ireland"
             marker.map = mapView
        
    }
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
 //  @IBAction func UIButton(_ sender: UIButton) {
   //  guard let number = URL(string: "tel://" + "0894323619") else {return}
   //    UIApplication.shared.open(number)
  //  }
    
    
    
    
    
    
    

    
    
    
    
    
    //
    
    //Setting class                           //Conforming to the Delegate
   // class SOSViewController: UIViewController {

   // @IBAction func clicked(_ sender: Any){
    //    guard let number = URL(string: "tel://" + "0894323619") else {return}
      //  UIApplication.shared.open(number)
//    }
    
    
    //
    
    

    
//}


}
