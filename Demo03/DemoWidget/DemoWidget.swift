//
//  DemoWidget.swift
//  DemoWidget
//
//  Created by Mac on 2024/1/8.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        var rankList = Array<DemoSyncRank>();
        for index in 0 ..< 20 {
            let rank = DemoSyncRank(name: "\(index)1232", des: "\(index)" + "-\(index)\(index)\(index)\(index)\(index)232222");
            rankList.append(rank);
        }
        let shareItem = DemoSyncRankShareItem();
        shareItem.ranks = rankList;
        return SimpleEntry(date: Date(), configuration: ConfigurationIntent(), shareItem: shareItem)
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        var rankList = Array<DemoSyncRank>();
        for index in 0 ..< 20 {
            let rank = DemoSyncRank(name: "\(index)1232", des: "\(index)" + "-\(index)\(index)\(index)\(index)\(index)232222");
            rankList.append(rank);
        }
        let shareItem = DemoSyncRankShareItem();
        shareItem.ranks = rankList;
        
        let entry = SimpleEntry(date: Date(), configuration: configuration, shareItem: DemoSyncRankShareItem())
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        
        var rankList = Array<DemoSyncRank>();
        for index in 0 ..< 20 {
            let rank = DemoSyncRank(name: "\(index)1232", des: "\(index)" + "-\(index)\(index)\(index)\(index)\(index)232222");
            rankList.append(rank);
        }
        let shareItem = DemoSyncRankShareItem();
        shareItem.ranks = rankList;
        
        let currentDate = Date()
        let entry = SimpleEntry(date: currentDate, configuration: configuration, shareItem: shareItem)

        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    var shareItem: DemoSyncRankShareItem
}

struct DemoWidgetEntryView : View {
    var entry: Provider.Entry
    var body: some View {
        DemoSyncView(rankEntity: entry.shareItem);
    }
}

struct DemoWidget: Widget {
    let kind: String = "DemoWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            DemoWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemMedium])
    }
}

