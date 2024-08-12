//
//  ContentView.swift
//  Art Institute of Chicago
//
//  Created by Yoda on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ArtworkViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.artworks) { artwork in
                ArtworkView(artwork: artwork)
            }
            .navigationTitle("Artworks")
            .onAppear {
                viewModel.fetchArtwork()
            }
        }
    }
}

#Preview {
    ContentView()
}
