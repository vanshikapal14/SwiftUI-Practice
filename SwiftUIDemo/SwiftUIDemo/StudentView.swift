//
//  StudentView.swift
//  SwiftUIDemo
//
//  Created by Vanshika Pal on 10/12/25.
//

import SwiftUI

struct StudentView: View {
    var currentStudent: Student = Student()
    
    var body: some View {
        VStack {
            HStack {
                Text(currentStudent.firstName)
                Text(currentStudent.lastName)
                
            }
            Text("\(currentStudent.age) years Old")
        }
    }
}

#Preview {
    StudentView()
}
