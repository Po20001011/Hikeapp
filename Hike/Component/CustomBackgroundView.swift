//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Wang Po on 20/7/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            
            // MARK: - 2. LIGHT
            
            // MARK: - 1. SURFACE
            
            LinearGradient(colors: [
                Color("ColorGreenLight"),
                Color("ColorGreenMedium")],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
