//
//  MapViewController.swift
//  Menu
//
//  Created by beehive-iOS on 6/12/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var number = "444602121"
    
    struct Cafe {
        var name: String
        var latitude: CLLocationDegrees
        var longtitude: CLLocationDegrees
    }
    
    let cafes: [Cafe] = [
        Cafe(name: "Moose Cafe", latitude: 38.56868260794275, longtitude: 68.79271452418091),
        Cafe(name: "Moose Cafe", latitude: 38.57245519197302, longtitude: 68.78909131562436),
        Cafe(name: "Moose Cafe", latitude: 38.56337797687899, longtitude: 68.80892146179934)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCafesOnMap(cafes)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 38.56868260794275, longitude: 68.79271452418091)
        annotation.title = "Coffee Moose Душанбе"
        mapView.addAnnotation(annotation)

        

        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
        func fetchCafesOnMap(_ cafes: [Cafe]) {
        for cafe in cafes {
            let annotations = MKPointAnnotation()
            annotations.title = cafe.name
            annotations.coordinate = CLLocationCoordinate2D(latitude: cafe.latitude, longitude: cafe.longtitude)
            mapView.addAnnotation(annotations)
        }
    }
    @IBAction func didTapCallButton(_ sender: Any) {
        if let url = URL(string: "tel://\(number)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

