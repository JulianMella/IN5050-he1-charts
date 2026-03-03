//
//  ContentView.swift
//  IN5050-he1-charts
//
//  Created by Julian on 02/03/2026.
//

import SwiftUI
import Charts

let backgroundColor = Color(red: 0.13, green: 0.13, blue: 0.13)

struct Constants {
    static let previewChartHeight: CGFloat = 160
    static let detailChartHeight: CGFloat = 300
}

struct ContentView: View {
    var body: some View {
        MEGraph()
    }
}


#Preview {
    ContentView()
}
