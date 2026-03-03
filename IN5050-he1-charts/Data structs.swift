//
//  Datatypes.swift
//  IN5050-he1-charts
//
//  Created by Julian on 03/03/2026.
//

struct Speedup_Improvements: Identifiable {
    var seconds_elapsed: Double
    var commit_date: String
    var id = UUID()
}



struct Speedup_Improvements_Improved: Identifiable {
    var elapsed_seconds: Double
    var position: Float
    var id = UUID()
}
