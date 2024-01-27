//
//  DemoSyncWidgetView.swift
//  Demo
//
//  Created by Mac on 2024/1/8.
//

import WidgetKit
import SwiftUI
struct DemoSyncView: View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    @ObservedObject var rankEntity: DemoSyncRankShareItem
    var body: some View {
        switch family {
        case .systemMedium:
            DemoSyncWidgetView(rankEntity: rankEntity).padding(EdgeInsets.init(top: -40, leading: 0, bottom: 0, trailing: 0))
        default:
            DemoSyncWidgetView(rankEntity: rankEntity)
        }
    }
}

struct DemoSyncWidgetView: View {
    @ObservedObject var rankEntity: DemoSyncRankShareItem;
    @State var str:[String] = ["1111","2222", "3333", "4444", "5555","1111","2222", "3333", "4444", "5555","1111","2222", "3333", "4444", "5555"];
    var body: some View {
//        ForEach(str, id: \.self) { i in
//            Text(i)
//                .foregroundColor(.black)
//        }
        return VStack() {
            //Spacer(minLength: 20)
            ForEach(0 ..< 4, id: \.self) { index in
                RankViewItem.init(rank: rankEntity.ranks[index]).padding(EdgeInsets.init(top: 0, leading: 12, bottom: 0, trailing: 12))
                //Spacer(minLength: 10);
            }
        }
        .shadow(radius: 20)
        .background(Color.orange)
        .cornerRadius(20)
        .widgetURL(URL(string: "DemoWidget://url=aaaaa")!)
        
        func ddd() {
            NSLog("asdgasd")
        }
    }
}

struct RankViewItem: View {
    var rank: DemoSyncRank;
    var body: some View {
        Link(destination: URL(string: "DemoWidget://rankName=\(rank.name)")!) {
            HStack {
                Text(rank.name).foregroundColor(.black)
                    .font(.system(size: 16.0))
                    .minimumScaleFactor(1)
                    .foregroundColor(.white);
                Spacer(minLength: 10);
                Text(rank.des).foregroundColor(.black)
                    .font(.system(size: 16.0))
                    .minimumScaleFactor(1)
                    .foregroundColor(.white);
            }
        }
    }
}
