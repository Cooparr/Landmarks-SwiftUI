//
//  ProfileSummary.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 10/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI


struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On": "Off" )")
            
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormat)")
            
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                ScrollView {
                    HStack {
                        HikeBadge(name: "SwiftUI")
                        
                        HikeBadge(name: "Xcode 11")
                            .hueRotation(Angle(degrees: 90))
                        
                        HikeBadge(name: "Bindables")
                            .hueRotation(Angle(degrees: 270))
                        
                        HikeBadge(name: "Previews")
                            .hueRotation(Angle(degrees: 180))
                        
                        HikeBadge(name: "iOS 13")
                            .grayscale(0.99)
                            .hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
            }
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                
                HikeView(hike: hikeData[0])
            }
        }
    }
}

#if DEBUG
struct ProfileSummary_Previews : PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
#endif