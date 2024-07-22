//
//  CustomPositionNavView.swift
//  Navigation
//
//  Created by Rodrigo on 22-07-24.
//

import SwiftUI

struct CustomPositionNavView: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap Me") {}
                    }
                    
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("2nd Button") {}
                        Button("3rd Button") {}
                    }
                }
        }
    }
}

#Preview {
    CustomPositionNavView()
}
