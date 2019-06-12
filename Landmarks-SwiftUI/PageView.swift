//
//  PageView.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 12/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

#if DEBUG
struct PageView_Previews : PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
#endif
