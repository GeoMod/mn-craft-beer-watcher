//
//  SortingExtension.swift
//  MNCraftBeerWatcher
//
//  Created by Dan OLeary on 12/29/17.
//  Copyright © 2017 Impulse Coupled Development. All rights reserved.
//

import Foundation

extension Sequence {
    // Extension on Sequence allows us to use this method on Arrays, Maps, Sets, etc.
    func uniqueElements<Index: Hashable>(for indexer: (Element) -> Index) -> [Element] {
        // Keep track of what we've already seen in a Set,
        // which allows us to query for elements efficiently.
        var seenElements: Set<Index> = []
        
        var result: [Element] = []
        
        // Simple implementation looping through the sequence.
        // That means that the computational complexity of this is O(n log n).
        // In other words, only a little bit worse than linear complexity.
        //
        // This could be done in other ways (using NSOrderedSet for example),
        // but this is just for illustration purposes (see https://twitter.com/olearydan/status/945702613596721152).
        
        for element in self {
            let index = indexer(element)
            guard !seenElements.contains(index) else {
                continue
            }
            
            seenElements.insert(index)
            result.append(element)
        }
        
        return result
    }
}

// If the elements of a sequence are already Hashable, we can define a shorthand.
extension Sequence where Element: Hashable {
    var uniqueElements: [Element] {
        return self.uniqueElements { $0 }
    }
}
