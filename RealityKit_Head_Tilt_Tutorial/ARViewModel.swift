//
//  ARViewModel.swift
//  RealityKit_Head_Tilt_Tutorial
//
//  Created by Cole Dennis on 10/1/22.
//

import Foundation
import RealityKit


class ARViewModel: ObservableObject {
    @Published private var model : ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
    
}
