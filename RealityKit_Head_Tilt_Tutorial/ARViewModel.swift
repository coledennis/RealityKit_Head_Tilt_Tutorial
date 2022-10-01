//
//  ARViewModel.swift
//  RealityKit_Head_Tilt_Tutorial
//
//  Created by Cole Dennis on 10/1/22.
//

import Foundation
import RealityKit
import ARKit


class ARViewModel: UIViewController, ObservableObject,  ARSessionDelegate {
    @Published private var model : ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
    
    var headTilt: Float {
        model.headTilt
    }

    var tiltLeft: Bool {
        if headTilt > 0.5 {
            return true
        } else {
            return false
        }
    }
    
    var tiltRight: Bool {
        if headTilt < -0.5 {
            return true
        } else {
            return false
        }
    }
    
    func startSessionDelegate() {
        model.arView.session.delegate = self
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        model.updateHeadTilt()
    }
    
}
