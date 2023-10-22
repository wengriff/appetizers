//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Adrian Somor on 10/09/2023.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { UIImage in
            guard let UIImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: UIImage)
            }
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
