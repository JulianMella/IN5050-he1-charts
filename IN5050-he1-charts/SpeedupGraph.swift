//
//  SpeedupGraph.swift
//  IN5050-he1-charts
//
//  Created by Julian on 03/03/2026.
//
import SwiftUI
import Charts

struct SpeedupGraph: View {
    var body: some View {
        Chart(BenchmarkData.speedup_data_improved) { item in
            LineMark(
                x: .value("Date", item.position),
                y: .value("Tractor encoding in seconds", item.elapsed_seconds)
            )
        }
    }
}
