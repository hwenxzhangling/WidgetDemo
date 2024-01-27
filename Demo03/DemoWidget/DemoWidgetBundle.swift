//
//  DemoWidgetBundle.swift
//  DemoWidget
//
//  Created by Mac on 2024/1/15.
//

import WidgetKit
import SwiftUI

@main
struct DemoWidgetBundle: WidgetBundle {
    var body: some Widget {
        DemoWidget()
        DemoWidgetLiveActivity()
    }
}
