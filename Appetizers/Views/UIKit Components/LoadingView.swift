//
//  LoadingView.swift
//  Appetizers
//
//  Created by Adrian Somor on 10/09/2023.
//

import SwiftUI

// no longer needed
//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.brandPrimary
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
//            ActivityIndicator() no longer needed solution below
            ProgressView("Loading")
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2)
        }
    }
}
