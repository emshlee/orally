//
//  GifImage.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-06-25.
//

import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    private let name: String

        init(_ name: String) {
            self.name = name
        }

        func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()

            if let url = Bundle.main.url(forResource: name, withExtension: "gif") {
                let data = try? Data(contentsOf: url)
                let baseURL = url.deletingLastPathComponent()
                webView.load(data ?? Data(), mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: baseURL)
            }

            webView.scrollView.isScrollEnabled = false

            return webView
        }

        func updateUIView(_ uiView: WKWebView, context: Context) {
            uiView.reload()
        }

}

struct GifImage_Previews: PreviewProvider {
    static var previews: some View {
        GifImage("onboarding1")
    }
}
