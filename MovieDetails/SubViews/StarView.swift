//
//  StarView.swift
//  MovieIsMe_Team1_Afternoon
//
//  Created by wasan hamoud on 04/07/1447 AH.
//

import SwiftUI

struct StarView: View {

    let rating: Double

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<5) { index in
                Image(systemName: index < Int(rating.rounded()) ? "star.fill" : "star")
                    .foregroundColor(.yellow)
            }
        }
    }
}
