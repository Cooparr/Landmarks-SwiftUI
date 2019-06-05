//
//  ContentView.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 05/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130.0)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
