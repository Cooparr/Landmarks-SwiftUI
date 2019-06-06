//
//  LandmarkList.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 05/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @State var showFavoritesOnly = true
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach([ "iPhone XR", "iPhone XS", "iPhone SE"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
