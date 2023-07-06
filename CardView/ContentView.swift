//
//  ContentView.swift
//  CardView
//
//  Created by MacBook Pro on 05/07/2023.
//

import SwiftUI

struct ContentView: View {
    var image: String
    var category: String
    var heading: String
    var author: String
    var body: some View {
        VStack {
            Image("swiftui-button")
                       .resizable()
                   .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(image: "swiftui-button", category: "Swwiftui", heading: "Drawing a Border with Rounded Corners", author: "fakhareldin")
    }
}
