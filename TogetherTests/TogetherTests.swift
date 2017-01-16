//
//  TogetherTests.swift
//  TogetherTests
//
//  Created by archerzz on 17/1/16.
//  Copyright © 2017年 archerzz. All rights reserved.
//

import XCTest
@testable import Together

class Person {
    var firstName: String?
    var lastName: String?
}

class Coder: Person {
    var language: String?
}

extension Person: TogetherCompatible {}

class TogetherTests: XCTestCase {
    
    func testTogetherCustomAnyObject() {
        
        let person1 = Person()
        let person2 = Person()
        let person3 = Person()
        let coder = Coder()
        let lastName = "Zhang"
        
        person1.together(values: person2, person3, coder).do {
            $0.lastName = lastName
        }
        
        XCTAssertEqual(person1.lastName, lastName)
        XCTAssertEqual(person2.lastName, lastName)
        XCTAssertEqual(person3.lastName, lastName)
        XCTAssertEqual(coder.lastName, lastName)
    }
    
    func testTogetherSystemAnyObject() {
        #if os(macOS)
            typealias View = NSView
            typealias TextField = NSTextField
            typealias ImageView = NSImageView
        #else
            typealias View = UIView
            typealias TextField = UITextField
            typealias ImageView = UIImageView
        #endif
        let view1 = View()
        let view2 = TextField()
        let view3 = ImageView()
        
        let originX: CGFloat = 10
        view1.together(values: view2, view3).do {
            $0.frame.origin.x = originX
        }
        
        XCTAssertEqual(view1.frame.origin.x, originX)
        XCTAssertEqual(view2.frame.origin.x, originX)
        XCTAssertEqual(view3.frame.origin.x, originX)
    }
    
    
}
