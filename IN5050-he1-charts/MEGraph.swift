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
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
        }
        .chartXScale(range: .plotDimension(padding: 24))
        .chartXAxis {
            AxisMarks() { _ in
                AxisGridLine().foregroundStyle(.white)
                AxisTick().foregroundStyle(.white)
                AxisValueLabel().foregroundStyle(.white).font(.title)
            }
        }
        .chartYAxis {
            AxisMarks(position: .leading) { _ in
                AxisGridLine().foregroundStyle(.white)
                AxisTick().foregroundStyle(.white)
                AxisValueLabel().foregroundStyle(.white).font(.title)
            }
        }
        .chartXAxisLabel(alignment: .center) {
            Text("Parallelization Methods")

                .foregroundStyle(.white).font(.title2.bold())
        }
        .chartYAxisLabel(position: .leading) {
            Text("ms per frame")
                .foregroundStyle(.white).font(.title2.bold())
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

#Preview {
    MEGraph()
}
