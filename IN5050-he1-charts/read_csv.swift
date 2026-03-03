//
//  read_csv.swift
//  IN5050-he1-charts
//
//  Created by Julian on 03/03/2026.
//

import Foundation

/*func read_csv(fileURL: URL,
              stringColumnIndex: Int,
              dateColumnIndex: Int,
              dateFormat: String = "yyyy-MM-dd HH:mm:ss Z") -> [(Date?, Float)]? {
    
    var result: [(Date?, Float)] = []
    
    do {
        let content = try String(contentsOf: fileURL, encoding: .utf8)
        let lines = content.components(separatedBy: .newlines)
        
        guard !lines.isEmpty else { return nil }
        
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        formatter.locale = Locale(identifier: "en_US_POSIX")
        
        for line in lines {
            guard !line.isEmpty else { continue }
            let fields = line.components(separatedBy: ",")
            
            let speedup: Float = (fields.count > stringColumnIndex && !fields[stringColumnIndex].isEmpty)
            ? Float(fields[stringColumnIndex])
            : 0.0
            
            let date: Date? = (fields.count > dateColumnIndex && !fields[dateColumnIndex].isEmpty)
            ? formatter.date(from: fields[dateColumnIndex])
            : nil
            
            result.append((date, speedup))
        }
        
        
    } catch {
        return nil
    }
    
    return result
}*/
