//
//  ProgrammaticNavigationView.swift
//  Navigation
//
//  Created by Rodrigo on 21-07-24.
//

import SwiftUI

struct ProgrammaticNavigationView: View {
    
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                
                Button("Show 64") {
                    path.append(64)
                }
                
                Button("Show 32 and then 64") {
                    path = [32, 64]
                }
                
            }
            .navigationDestination(for: Int.self) { selection in
                Text("Showing \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationView()
}
