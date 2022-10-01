//
//  ARModel.swift
//  RealityKit_Head_Tilt_Tutorial
//
//  Created by Cole Dennis on 10/1/22.
//

import Foundation
import RealityKit

struct ARModel {
    private(set) var arView : ARView
    
    init() {
        arView = ARView(frame: .zero)
    }
    
}
