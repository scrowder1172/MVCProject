//
// File: UserService.swift
// Project: MVCProject
// 
// Created by SCOTT CROWDER on 1/24/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import Foundation

class UserService {
    private let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                completion(.failure(error))
                return
            }
            
            guard let data else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data"])))
                return
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                completion(.success(users))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
