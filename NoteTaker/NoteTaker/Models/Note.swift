//
//  Note.swift
//  NoteTaker
//
//  Created by Cristi Habliuc on 30/11/25.
//
import Foundation

struct Note: Codable, Identifiable {
    var id: UUID = UUID()
    var title: String
    var body: String?
}
