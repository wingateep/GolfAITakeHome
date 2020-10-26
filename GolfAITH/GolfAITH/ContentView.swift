//
//  ContentView.swift
//  GolfAITH
//
//  Created by Elizabeth Wingate on 10/25/20.
//

import SwiftUI

struct ContentView: View {
    
    let drills: [DrillsData] = Bundle.main.decode("data.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(drills) { drill in
                    NavigationLink(
                        destination: DrillsDetailListView(drill: drill)) {
                    DrillListItemView(drill: drill)
                }
            }
            .navigationBarTitle("Drills")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
