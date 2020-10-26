//
//  DrillsDetailListView.swift
//  GolfAITH
//
//  Created by Elizabeth Wingate on 10/25/20.
//

import SwiftUI
import MediaPlayer

struct DrillsDetailListView: View {
    
    let drill: DrillsData
    
    private func downloadThumbnail(for url: URL?) -> UIImage? {
        guard let imageURL = url else { return nil }
        do {
            let imageData = try Data(contentsOf: imageURL)
            let image = UIImage(data: imageData)
            return image
        } catch {
            print("Error downloading image: \(error)")
            
        }
        return nil
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false ) {
            //IMAGE
            if let image = downloadThumbnail(for: drill.thumbnailURL) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            
            VStack(alignment: .center, spacing: 20) {
                //TITLE
                Text(drill.title.uppercased())
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y:24))
                
                //DESCRIPTION
                Text(drill.description[0].name)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //TARGETS
                Group {
                    HeadingView(headingText: "Targets")
                }
                .padding(.horizontal)

                Text(drill.details[0].name)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
        
                //BENEFITS
                Group {
                    HeadingView(headingText: "Benefits")
                }
                .padding(.horizontal)
                
                Text(drill.benefits[0].name)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //STEPS
                Group {
                    HeadingView(headingText: "Steps")
                }
                .padding(.horizontal)
                
                Text(drill.steps[0].name)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //DETAILS
                Group {
                    HeadingView(headingText: "Details")
                }
                .padding(.horizontal)
                
                Text(drill.details[0].name)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
            }
            .navigationBarTitle("More about \(drill.title)", displayMode: .inline)
        }
    }
}

struct DrillsDetailListView_Previews: PreviewProvider {
    
    static let drills: [DrillsData] = Bundle.main.decode("data.json")
    
    static var previews: some View {
        NavigationView {
        DrillsDetailListView(drill: drills[0])
    }
    .previewDevice("iPhone 11 Pro")
    }
}
