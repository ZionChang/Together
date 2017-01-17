//
//  Together.swift
//  Together
//
//  Created by archerzz on 17/1/16.
//  Copyright © 2017年 archerzz. All rights reserved.
//

import Foundation
import CoreGraphics

public protocol TogetherCompatible { }

extension TogetherCompatible where Self: AnyObject {
    
    public func together(values: Self...) -> TogetherArray<Self> {
        var values = values
        values.append(self)
        return TogetherArray(values: values)
    }
    
}

extension TogetherCompatible where Self: Hashable {
    
    public func together(values: Self...) -> TogetherSet<Self> {
        var values = values
        values.append(self)
        let set = Set(values)
        return TogetherSet(values: set)
    }
    
}


public struct TogetherArray<Base> {
    
    let values: [Base]
    
    init(values: [Base]) {
        self.values = values
    }
    
    public func `do`(_ block: @escaping (Base) -> Void) {
        values.forEach { block($0) }
    }
}

public struct TogetherSet<Base: Hashable> {
    
    let values: Set<Base>
    
    init(values: Set<Base>) {
        self.values = values
    }
    
    public func `do`(_ block: @escaping (Base) -> Void) {
        values.forEach { block($0) }
    }
}


// MARK: - TogetherCompatible
extension NSObject: TogetherCompatible {}
extension CGPoint: TogetherCompatible {}
extension CGRect: TogetherCompatible {}
extension CGSize: TogetherCompatible {}
extension CGVector: TogetherCompatible {}
