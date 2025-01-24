//
// File: UserDetailView.swift
// Project: MVCProject
// 
// Created by SCOTT CROWDER on 1/24/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct UserDetailView: View {
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Username: \(user.username)")
            Text("Email: \(user.email)")
            Spacer()
        }
        .padding()
        .navigationTitle(user.name)
    }
}

#Preview {
    UserDetailView(
        user: User(
            id: 1,
            name: "John Doe",
            username: "JohnDoe",
            email: "john.doe@email.com"
        )
    )
}
