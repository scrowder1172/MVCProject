//
// File: UserListView.swift
// Project: MVCProject
// 
// Created by SCOTT CROWDER on 1/24/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct UserListView: View {
    
    @ObservedObject var controller = UserController()
    
    var body: some View {
        NavigationView {
            Group {
                if controller.isLoading {
                    ProgressView("Loading users...")
                } else if let errorMessage = controller.errorMessage {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                        .multilineTextAlignment(.center)
                } else {
                    List(controller.users) { user in
                        NavigationLink(destination: UserDetailView(user: user)) {
                            Text(user.name)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .onAppear {
                controller.fetchUsers()
            }
        }
    }
}

#Preview {
    UserListView()
}
