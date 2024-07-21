//
//  NavigationDestinationView.swift
//  Navigation
//
//  Created by Rodrigo on 21-07-24.
//

import SwiftUI

struct Student: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let age: Int
}

struct NavigationDestinationView: View {
    
    
    private var students = [
        Student(name: "Frodo", age: 25),
        Student(name: "Bilbo", age: 60),
        Student(name: "Sauron", age: 10000)
    ]
    
    var body: some View {
        NavigationStack {
            List(0..<16) { i in
                NavigationLink("Show \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selector in
                Text("You selected \(selector)")
            }
            
            List(students) { student in
                NavigationLink("Show \(student.name)", value: student)
            }
            .navigationDestination(for: Student.self) { student in
                Text("You selected the student: \(student.name)")
            }
            
        }
    }
}

#Preview {
    NavigationDestinationView()
}
