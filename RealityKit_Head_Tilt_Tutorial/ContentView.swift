//
//  ContentView.swift
//  RealityKit_Head_Tilt_Tutorial
//
//  Created by Cole Dennis on 9/26/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    var body: some View {
        ZStack {
            ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("Pizza")
                            .font(.title)
                            .bold()
                            .foregroundColor(arViewModel.tiltLeft ? .green : .secondary)
                        Spacer()
                        Text("Ice Cream")
                            .font(.title)
                            .bold()
                            .foregroundColor(arViewModel.tiltRight ? .green : .secondary)
                    }
                    Text("What's your favorite food?")
                        .font(.headline)
                        .padding()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(.regularMaterial))
                Spacer()
            }
            .padding()
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    var arViewModel: ARViewModel
    
    func makeUIView(context: Context) -> ARView {
        arViewModel.startSessionDelegate()
        return arViewModel.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
