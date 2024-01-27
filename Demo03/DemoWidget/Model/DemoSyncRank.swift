//
//  DemoSyncRank.swift
//  Demo
//
//  Created by Mac on 2024/1/8.
//
import Foundation
import SwiftUI

struct DemoSyncRank: Codable, Hashable, Identifiable {
    public var id: String = "123"
    public var name: String
    public var des: String
    init(name: String, des: String) {
        self.name = name;
        self.des = des;
    }
    static func getDemoSyncRank(name: String, des: String) -> DemoSyncRank {
        let rank = DemoSyncRank(name: name, des: des);
        return rank;
    }
}

class DemoSyncRankShareItem: ObservableObject {
    @Published public var ranks = Array<DemoSyncRank>();
    func items() -> Array<DemoSyncRank> {
        return self.ranks;
    }
}
