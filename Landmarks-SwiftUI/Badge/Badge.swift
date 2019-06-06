//
//  Badge.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 06/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        BadgeBackground()
    }
}
#if DEBUG
struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
