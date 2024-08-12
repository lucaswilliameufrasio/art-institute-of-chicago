//
//  ArtworkView.swift
//  Art Institute of Chicago
//
//  Created by Yoda on 12/08/24.
//

import SwiftUI

struct ArtworkView: View {
    let artwork: Artwork
    
    var body: some View {
        NavigationLink {
            ArtworkDetailView(artwork: artwork)
        } label: {
            Text(artwork.title)
        }

    }
}

#Preview {
    ArtworkView(artwork: previewArtwork)
        .previewLayout(.sizeThatFits)
}
