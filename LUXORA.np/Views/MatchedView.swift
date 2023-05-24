//
//  MatchedView.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 20/05/23.
//
import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @Binding var showContentView: Bool // Add a binding for showContentView

    let customBackgroundColor = Color(red: 0.2, green: 0.4, blue: 0.8)

    var body: some View {
        ZStack {
            customBackgroundColor
                .ignoresSafeArea()
            VStack {
                Text("LUXORA")
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(.white)
                Text("Orginals".uppercased())
                    .foregroundColor(.black)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    showContentView = true // Transition to the content view
                }
            }
        }
        .opacity(showContentView ? 0 : 1)
        .animation(.easeInOut) // Apply animation to the opacity change
    }
}

