//
//  PageViewController.swift
//  Landmarks-SwiftUI
//
//  Created by Alex Cooper on 12/06/2019.
//  Copyright © 2019 Alexander Cooper. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController : UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController( transitionStyle: .scroll, navigationOrientation: .horizontal)
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true)
    }
    
}

