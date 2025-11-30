import SwiftUI

struct NoteListView: View {
    let notes: [Note]
    
    var body: some View {
        List {
            ForEach(notes) { note in
                Text(note.title)
            }
        }
    }
}

#Preview {
    NoteListView(notes: .mock)
}

extension Array where Element == Note {
    static let mock: Self = [
        .init(title: "Grocery List for the Week"),
        .init(title: "Workout Plan – February"),
        .init(title: "Ideas for Weekend Trip"),
        .init(title: "Books to Read This Year"),
        .init(title: "Gift Ideas for Friends"),
        .init(title: "Budget Breakdown – Monthly"),
        .init(title: "Recipe: Lemon Garlic Pasta"),
        .init(title: "Things to Fix Around the Apartment"),
        .init(title: "Movies/Shows to Watch"),
        .init(title: "Random Thoughts & Reminders")
    ]
}
