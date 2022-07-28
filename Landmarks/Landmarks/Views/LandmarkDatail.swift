//
//  LandmarkDatail.swift
//  Landmarks
//
//  Created by 최은주 on 2022/07/28.
//

import SwiftUI

struct LandmarkDatail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            // coordinate 주입
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            // image 주입
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                // landmark의 name을 노출
                Text(landmark.name)
                    .font(.title)
                HStack {
                    // landmark의 park와 state를 노출
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                // landmark의 description을 노출
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)

            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDatail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDatail(landmark: landmarks[0])
    }
}
