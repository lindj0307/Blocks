//
//  TShape.swift
//  Swiftris
//
//  Created by 林东杰 on 15/6/14.
//  Copyright (c) 2015年 Joey. All rights reserved.
//

//import Foundation

class TShape:Shape {
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
//        return [
//            Orientation.Zero:       [(1,0),(0,1),(1,1),(2,1)],
//            Orientation.Ninety:     [(1,0),(1,1),(2,1),(1,2)],
//            Orientation.OneEighty:  [(0,1),(1,1),(2,1),(1,2)],
//            Orientation.TwoSeventy: [(1,0),(0,1),(1,1),(1,2)]
//        ]
        return [
            Orientation.Zero:       [(1,0),(0,1),(1,1),(2,1)],
            Orientation.Ninety:     [(2,1),(1,0),(1,1),(1,2)],
            Orientation.OneEighty:  [(1,2),(0,1),(1,1),(2,1)],
            Orientation.TwoSeventy: [(0,1),(1,0),(1,1),(1,2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx],blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[SecondBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx],blocks[FourthBlockIdx]]
        ]
    }
}