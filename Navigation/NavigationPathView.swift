//
//  NavigationPathView.swift
//  Navigation
//
//  Created by Rodrigo on 21-07-24.
//

import SwiftUI

struct NavigationPathView: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<6) { i in
                    NavigationLink("Show number \(i)", value: i)
                }
                
                ForEach(0..<6) { i in
                    NavigationLink("Show string \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Show 569") {
                    path.append(569)
                }
                
                Button("Show word")   {
                    path.append("word")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("Showing number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("Showing string \(selection)")
            }
        }
    }
}

#Preview {
    NavigationPathView()
}
