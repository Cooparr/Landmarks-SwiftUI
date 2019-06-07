//
//  Home.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 07/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
    
    var categories: [String: [Landmark]] {
        .init(
            grouping: landmarkData,
            by: {
                $0.category.rawValue
        })
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted().identified(by: \.self)) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
