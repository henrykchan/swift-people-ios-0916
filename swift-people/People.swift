//
//  People.swift
//  swift-people
//
//  Created by Henry Chan on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    let name : String
    var ageInYears : Int?
    var skills = Set<String>()
    var qualifiedTutor : Bool {
        
        return skills.count >= 4
    }
    
    
    init (name:String, ageInYears:Int?) {
        
        self.name = name
        self.ageInYears = ageInYears

    }
    
    
    convenience init (name:String) {
        
        self.init (name: name, ageInYears: nil)
    }


    init () {
        
        self.name = "John Doe"
        self.ageInYears = nil
    }


    
    
    func celebrateBirthday() -> String {
        
        var happyBirthdayGreeting = ""
        
        if ageInYears == nil {
            
            happyBirthdayGreeting = ("HAPPY BIRTHDAY, \(name.uppercased())!!!")
        }
        
        else {
            
            if var age = ageInYears {
                
                age += 1
                
                ageInYears = age
                
                happyBirthdayGreeting = ("HAPPY \(age)\(age.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!")
                
            }
            
        }
        
        return happyBirthdayGreeting
    }
    
    
    
    
    func learnSkillBash() {
        
        
        if !skills.contains("bash") {
            
            
            skills.insert("bash")
        }
        
    }
    
    func learnSkillXcode() {
        
        
        
        if !skills.contains("Xcode") {
            
            
            skills.insert("Xcode")
        }
    }
    
    
    func learnSkillObjectiveC() {
        
    
        
        if !skills.contains("Objective-C") {
            
            
            skills.insert("Objective-C")
        }
    }
    
    
    func learnSkillSwift() {
        
     
        
        if !skills.contains("Swift") {
            
            
            skills.insert("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        

        
        if !skills.contains("Interface Builder") {
            
            
            skills.insert("Interface Builder")
        }
    }
    

}
