//
//  LandmarkRow.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 05/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
#endif
