//
//  UserBuilder.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

public enum UserType {
    case teacher
    case student
}

public protocol UserProtocol {
    var id: String { get }
    var name: String { get }
    var lastName: String { get }
    var type: UserType { get }
    var age: Int { get }
}

fileprivate class User: UserProtocol {
    let id: String
    let name: String
    let lastName: String
    let type: UserType
    let age: Int
    
    init(id: String, name: String, lastName: String, type: UserType, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.type = type
        self.age = age
    }
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
}


public class UserBuilder {
    private var id = String()
    private var name = String()
    private var lastName = String()
    private var type: UserType = .student
    private var age = Int()
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    func set(id: String) -> UserBuilder {
        self.id = id
        return self
    }
    
    func set(name: String) -> UserBuilder {
        self.name = name
        return self
    }
    
    func set(lastName: String) -> UserBuilder {
        self.lastName = lastName
        return self
    }
    
    func set(type: UserType) -> UserBuilder {
        self.type = type
        return self
    }
    
    func set(age: Int) -> UserBuilder {
        self.age = age
        return self
    }
    
    func build() -> UserProtocol {
        return User(id: id, name: name, lastName: lastName, type: type, age: age)
    }
}
