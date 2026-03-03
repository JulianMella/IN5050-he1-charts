//
//  Datasets.swift
//  IN5050-he1-charts
//
//  Created by Julian on 03/03/2026.
//

public enum BenchmarkData {
    static let data: [ME_Improvements] = [
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
    static let speedup_data: [Speedup_Improvements] = [
        .init(seconds_elapsed: 35.046, commit_date: "2026-02-20"),
        .init(seconds_elapsed: 54.931, commit_date: "2026-02-20"),
        .init(seconds_elapsed: 55.495, commit_date: "2026-02-20"),
        .init(seconds_elapsed: 26.437, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 26.288, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 167.911, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 167.816, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 57.511, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 56.766, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 56.715, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 47.687, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 25.287, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 25.250, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 25.278, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 25.282, commit_date: "2026-02-27"),
        .init(seconds_elapsed: 25.677, commit_date: "2026-02-28"),
        .init(seconds_elapsed: 14.877, commit_date: "2026-02-28"),
        .init(seconds_elapsed: 14.231, commit_date: "2026-02-28"),
        .init(seconds_elapsed: 14.003, commit_date: "2026-02-28"),
        .init(seconds_elapsed: 13.796, commit_date: "2026-03-02"),
    ]
    static let speedup_data_improved: [Speedup_Improvements_Improved] = [
        .init(elapsed_seconds: 36.128, position: 1),
        .init(elapsed_seconds: 55.791, position: 1.5),
        .init(elapsed_seconds: 55.446, position: 1.75),
        .init(elapsed_seconds: 26.288, position: 2),
        .init(elapsed_seconds: 167.911, position: 3),
        .init(elapsed_seconds: 167.816, position: 3.5),
        .init(elapsed_seconds: 26.437, position: 5),
        .init(elapsed_seconds: 57.511, position: 5.5),
        .init(elapsed_seconds: 56.766, position: 5.75),
        .init(elapsed_seconds: 56.715, position: 6),
        .init(elapsed_seconds: 47.687, position: 6.25),
        .init(elapsed_seconds: 25.287, position: 6.5),
        .init(elapsed_seconds: 25.250, position: 6.75),
        .init(elapsed_seconds: 25.278, position: 7),
        .init(elapsed_seconds: 25.282, position: 7.25),
        .init(elapsed_seconds: 14.877, position: 7.5),
        .init(elapsed_seconds: 14.231, position: 7.75),
        .init(elapsed_seconds: 14.003, position: 8),
        .init(elapsed_seconds: 13.796, position: 10),
    ]
}
