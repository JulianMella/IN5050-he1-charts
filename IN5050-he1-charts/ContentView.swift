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

struct ME_Improvements: Identifiable {
    var type: String
    var ms_per_frame: Double
    var id = UUID()
}

var data: [ME_Improvements] = [
    .init(type: "Shared Mem Naive", ms_per_frame: 34.3),
    .init(type: "1 Warp", ms_per_frame: 265.25),
    .init(type: "2 Warp", ms_per_frame: 145.23),
    .init(type: "4 Warp", ms_per_frame: 79.11),
    .init(type: "8 Warp", ms_per_frame: 45.39),
    .init(type: "16 Warp", ms_per_frame: 33),
    .init(type: "32 Warp", ms_per_frame: 46.28),
    .init(type: "Memory Coalescing", ms_per_frame: 30.04),
    .init(type: "Shared Origin", ms_per_frame: 25.12),
    .init(type: "CUB Warp Reduction", ms_per_frame: 18.02),
    .init(type: "CUB Raking Reduction", ms_per_frame: 15.66)
]

struct ContentView: View {
    var body: some View {
        SpeedupGraph()
    }
}

struct Speedup_Improvements: Identifiable {
    var seconds_elapsed: Double
    var id = UUID()
}

var speedup_data: [Speedup_Improvements] = [
    .init(seconds_elapsed: 35.046),
    .init(seconds_elapsed: 54.931),
    .init(seconds_elapsed: 55.495),
    .init(seconds_elapsed: 26.437),
    .init(seconds_elapsed: 26.288)
]

struct SpeedupGraph: View {
    var body: some View {
        Chart(Array(speedup_data.enumerated()), id: \.offset) { idx, item in
            LineMark(
                x: .value("Run", idx),
                y: .value("Seconds elapsed", item.seconds_elapsed)
            )
        }
        .chartXScale(range: .plotDimension(padding: 6))
        .chartXAxis {
            AxisMarks { _ in
                AxisGridLine()
                AxisTick()
                // No AxisValueLabel() here → hides the numbers
            }
        }
        .chartYAxis {
            AxisMarks(position: .leading) { _ in
                AxisGridLine()
                    .foregroundStyle(.white)
                AxisTick()
                    .foregroundStyle(.white)
                AxisValueLabel()
                    .foregroundStyle(.white)
            }
        }
        .chartYAxisLabel(position: .leading) {
            Text("full encoding in seconds")
                .font(.callout.bold())
                .foregroundStyle(.white)
        }
        .chartYAxisLabel(alignment: .center) {
            Text("tractor.yuv encoding improvements over time")
                .font(.callout.bold())
                .foregroundStyle(.white)
        }
        .padding(.vertical, 32)
        .padding(.horizontal, 32)
        .background(backgroundColor)
    }
}

struct MEImprovementsGraph: View {
    var body: some View {
        let maxValue = data.map(\.ms_per_frame).max() ?? 0
        Chart(data) { item in
            BarMark(
                x: .value("Type of improvement", item.type),
                y: .value("ms per frame", item.ms_per_frame)
            )
            .annotation(position: .top, alignment: .center) {
                Text(item.ms_per_frame, format: .number.precision(.fractionLength(2)))
                    .font(.caption)
                    .foregroundStyle(.white)
            }
        }
        .chartXScale(range: .plotDimension(padding: 24))
        .chartYAxis {
            AxisMarks(position: .leading) { _ in
                AxisGridLine().foregroundStyle(.white)
                AxisTick().foregroundStyle(.white)
                AxisValueLabel().foregroundStyle(.white)
            }
        }
        .chartXAxisLabel(alignment: .center) {
            Text("Parallelization Methods")
                .font(.callout.bold())
                .foregroundStyle(.white)
        }
        .chartYAxisLabel(position: .leading) {
            Text("ms per frame")
                .font(.callout.bold())
                .foregroundStyle(.white)
        }
        .chartYScale(domain: 0...(maxValue * 1.15))
        .padding(.vertical, 24)
        .padding(.horizontal, 16)
        .background(backgroundColor)
    }
}

#Preview {
    ContentView()
}
