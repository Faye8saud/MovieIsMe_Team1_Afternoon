//
//  MovieDetailsView.swift
//  MovieIsMe_Team1_Afternoon
//
//  Created by Fay  on 23/12/2025.
//


import SwiftUI

struct MovieDetailView: View {
    @State private var isBookmarked: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // MARK: - Header with Poster and Title
                ZStack(alignment: .bottomLeading) {
                    // Poster Image Placeholder
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 300)
                        .overlay(
                            VStack(spacing: 8) {
                                Image(systemName: "film.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(.white.opacity(0.5))
                            }
                        )
                    
                    // Bottom Gradient
                    LinearGradient(
                        colors: [Color.clear, Color.black.opacity(0.8)],
                        startPoint: .center,
                        endPoint: .bottom
                    )
                    .frame(height: 300)
                    
                    // Movie Title at Bottom
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Shawshank")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    
                    // Top Navigation Icons (Back, Share, Save)
                    VStack {
                        HStack {
                            // Back Button
                            Button(action: {}) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.yellowAccent)
                                    .padding(10)
                                    .background(Color.black.opacity(0.3))
                                    .clipShape(Circle())
                            }
                            
                            Spacer()
                            
                            // Share Button
                            Button(action: {}) {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.yellowAccent)
                                    .padding(10)
                                    .background(Color.black.opacity(0.3))
                                    .clipShape(Circle())
                            }
                            
                            // Save Button
                            Button(action: {
                                isBookmarked.toggle()
                            }) {
                                Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.yellowAccent)
                                    .padding(10)
                                    .background(Color.black.opacity(0.3))
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 50)
                        Spacer()
                    }
                }
                
                // MARK: - Info Grid (Duration, Language, Genre, Age)
                VStack(spacing: 16) {
                    HStack(spacing: 40) {
                        InfoText(title: "Duration", value: "2 hours 22 mins")
                        InfoText(title: "Language", value: "English")
                    }
                    
                    HStack(spacing: 40) {
                        InfoText(title: "Genre", value: "Drama")
                        InfoText(title: "Age", value: "15")
                    }
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                // Divider
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, 20)
                    .padding(.top, 24)
                
                
                // MARK: - Story Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Story")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("Synopsis: In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison.")
                        .font(.system(size: 15))
                        .foregroundColor(.white.opacity(0.8))
                        .lineSpacing(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                
                // Divider
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, 20)
                    .padding(.top, 24)
                
                // MARK: - IMDb Rating
                VStack(alignment: .leading, spacing: 12) {
                    Text("IMDb Rating")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("9.3 / 10")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white.opacity(0.6))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                
                // Divider
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, 20)
                    .padding(.top, 24)
                
                // MARK: - Director Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Director")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    HStack(spacing: 12) {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "person.fill")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 24))
                            )
                        
                        Text("Frank Darabont")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                
                // Divider
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, 20)
                    .padding(.top, 24)
                
                // MARK: - Stars Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Stars")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            StarCard(name: "Tim Robbins")
                            StarCard(name: "Morgan Freeman")
                            StarCard(name: "Bob Gunton")
                        }
                        .padding(.vertical, 4)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                
                // Divider
                Divider()
                    .background(Color.white.opacity(0.2))
                    .padding(.horizontal, 20)
                    .padding(.top, 24)
                
                // MARK: - Rating & Reviews Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("Rating & Reviews")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    // Overall Rating
                    VStack(alignment: .leading, spacing: 4) {
                        Text("4.8")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white.opacity(0.6))
                        Text("out of 5")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.6))
                    }
                    .padding(.bottom, 8)
                    
                    // Horizontal Scrolling Reviews
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ReviewCard(
                                author: "Afnan Abdullah",
                                rating: 4,
                                badge: "A tough",
                                comment: "This is an engagingly simple, good-hearted film, with just enough darkness around the edges to give contrast and relief to the glowingly benign personalities at the heart of the story."
                            )
                            
                            ReviewCard(
                                author: "John Smith",
                                rating: 5,
                                badge: "Masterpiece",
                                comment: "One of the greatest films ever made. The story is compelling and the performances are outstanding."
                            )
                            
                            ReviewCard(
                                author: "Sarah Johnson",
                                rating: 4,
                                badge: "Amazing",
                                comment: "A must-watch film that stays with you long after viewing. Brilliant storytelling and acting."
                            )
                        }
                        .padding(.vertical, 4)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                .padding(.bottom, 40)
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}

// MARK: - Info Text Component (Without Box or Icon)
struct InfoText: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(.white)
            Text(value)
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.white.opacity(0.6))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// MARK: - Star Card Component
struct StarCard: View {
    let name: String
    
    var body: some View {
        VStack(spacing: 8) {
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 70, height: 70)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 32))
                )
            
            Text(name)
                .font(.system(size: 13, weight: .regular))
                .foregroundColor(.white.opacity(0.6))
                .multilineTextAlignment(.center)
                .frame(width: 80)
        }
    }
}

// MARK: - Review Card Component
struct ReviewCard: View {
    let author: String
    let rating: Int
    let badge: String
    let comment: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Author Header
            HStack(spacing: 12) {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 40, height: 40)
                    .overlay(
                        Image(systemName: "person.fill")
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                    )
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(author)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white)
                    
                    HStack(spacing: 2) {
                        ForEach(0..<5) { index in
                            Image(systemName: index < rating ? "star.fill" : "star")
                                .font(.system(size: 10))
                                .foregroundColor(Color(hex: "F4C430"))
                        }
                    }
                }
                
                Spacer()
            }
            
            // Comment Text
            Text(comment)
                .font(.system(size: 13))
                .foregroundColor(.white.opacity(0.8))
                .lineSpacing(4)
                .lineLimit(4)
            
            // Yesterday label
            Text("Yesterday")
                .font(.system(size: 11))
                .foregroundColor(.white.opacity(0.4))
        }
        .padding(16)
        .frame(width: 280)
        .background(Color.white.opacity(0.08))
        .cornerRadius(12)
    }
}

// MARK: - Color Extension for Hex
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - Preview
#Preview {
    MovieDetailView()
}
