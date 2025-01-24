//
// File: User.swift
// Project: MVCProject
// 
// Created by SCOTT CROWDER on 1/24/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import Foundation

struct User: Identifiable, Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
}
