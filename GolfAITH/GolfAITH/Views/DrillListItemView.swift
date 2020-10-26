//
//  DrillListItemView.swift
//  GolfAITH
//
//  Created by Elizabeth Wingate on 10/25/20.
//

import SwiftUI

struct DrillListItemView: View {
    
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
        HStack(alignment: .center, spacing: 16) {
            if let image = downloadThumbnail(for: drill.thumbnailURL) {
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(drill.title)
                .font(.system(size: 18))
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(drill.description[0].name)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .padding(.trailing, 8)

          }
        }
    }
}

struct DrillListItemView_Previews: PreviewProvider {
    
    static let drills: [DrillsData] = Bundle.main.decode("data.json")
    
    static var previews: some View {
        DrillListItemView(drill: drills[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
