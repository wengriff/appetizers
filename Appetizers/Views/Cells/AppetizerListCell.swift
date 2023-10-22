//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Adrian Somor on 09/09/2023.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .imageCustomModifier()
            } placeholder: {
                Image("food-placeholder")
                    .imageCustomModifier()
            }

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("\(appetizer.price, specifier: "%.2f") €")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding()
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
