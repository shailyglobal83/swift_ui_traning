//
//  List_GridViewDemoApp.swift
//  List_GridViewDemo
//
//  Created by Ravindra Kumar Sonkar on 05/04/22.
//

import SwiftUI

@main
struct List_GridViewDemoApp: App {
 @State private var isList = false
    var body: some Scene {
        WindowGroup {
            if isList {
                ContentView()
            }else {
                Scroller_ContentView()
            }
        }
    }
}
