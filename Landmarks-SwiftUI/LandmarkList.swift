//
//  LandmarkList.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 05/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        NavigationView {
            
            List(landmarkData) { thisLandmark in
                NavigationButton(destination: LandmarkDetail()) {
                    LandmarkRow(landmark: thisLandmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
