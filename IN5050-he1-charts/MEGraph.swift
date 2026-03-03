//
//  MEGraph.swift
//  IN5050-he1-charts
//
//  Created by Julian on 03/03/2026.
//
import SwiftUI
import Charts

struct MEGraph: View {
    var body: some View {
        Chart(BenchmarkData.data) { item in
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
        .chartYScale(domain: 0...(getMaxValue() * 1.15))
        .padding(.vertical, 24)
        .padding(.horizontal, 16)
        .background(backgroundColor)
    }
    
    func getMaxValue() -> Double {
        return BenchmarkData.data.map(\.ms_per_frame).max() ?? 0
    }
}
