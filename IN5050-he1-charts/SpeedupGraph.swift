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
        VStack(spacing: 2) {
            Text("Speedup Benchmarks - Full Tractor Encode")
                .background(backgroundColor)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .font(.title)
            Chart(BenchmarkData.speedup_data_improved) { item in
                LineMark(
                    x: .value("Date", item.position),
                    y: .value("Tractor encoding in seconds", item.elapsed_seconds)
                )
            }
            .chartXScale(range: .plotDimension(padding: 24))
            .chartXAxis(.hidden)
            .chartYAxis {
                AxisMarks(position: .leading, values: [0, 50, 100, 150, 200]) { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.15))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white).font(.title2)
                }
            }
            .chartXAxisLabel(alignment: .center) {
                Text("Commit history")
                    .font(.title3.bold())
                    .foregroundStyle(.white)
            }
            .chartYAxisLabel(position: .leading) {
                Text("full tractor encode (seconds)")
                    .font(.title3.bold())
                    .foregroundStyle(.white)
            }
            .chartYScale(domain: 0...(getMaxValue() * 1.15))
            .padding(.vertical, 24)
            .padding(.horizontal, 16)
            .background(backgroundColor)
        }
        .background(backgroundColor)
    }
}
func getMaxValue() -> Double {
    return BenchmarkData.speedup_data_improved
        .map { (item) -> Double in item.elapsed_seconds }
        .max() ?? 0.0
}

#Preview {
    SpeedupGraph()
}
