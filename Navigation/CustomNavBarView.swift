//
//  CustomNavBarView.swift
//  Navigation
//
//  Created by Rodrigo on 22-07-24.
//

import SwiftUI

struct CustomNavBarView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomNavBarView()
}
