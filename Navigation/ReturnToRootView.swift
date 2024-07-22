//
//  ReturnToRootView.swift
//  Navigation
//
//  Created by Rodrigo on 21-07-24.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var path: NavigationPath
    let number: Int
    
    var body: some View {
        NavigationLink("Go to Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Go Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct ReturnToRootView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView(path: $path, number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(path: $path, number: i)
                }
        }
    }
}

#Preview {
    ReturnToRootView()
}
