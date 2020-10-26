//
//  HeadingView.swift
//  GolfAITH
//
//  Created by Elizabeth Wingate on 10/25/20.
//

import SwiftUI

struct HeadingView: View {
    
    var headingText: String
    
    var body: some View {
        HStack {
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingText: "Details")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
