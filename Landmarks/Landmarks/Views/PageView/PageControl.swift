//
//  PageControl.swift
//  Landmarks
//
//  Created by 최은주 on 2022/10/20.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(context.coordinator,
                          action: #selector(Coordinator.updateCurrentPage(sender:)),
                          for: .valueChanged)
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        // selector에 사용되기 때문에 objc 어노테이션을 추가했다.
        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
