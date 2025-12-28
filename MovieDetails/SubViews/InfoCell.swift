//
//  InfoCell.swift
//  MovieIsMe_Team1_Afternoon
//
//  Created by wasan hamoud on 04/07/1447 AH.
//

import SwiftUI

struct InfoCell: View {

    let title: String
    let value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.gray)

            Text(value)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
    }
}
