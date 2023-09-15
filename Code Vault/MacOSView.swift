import SwiftUI

struct FileItem: Hashable, Identifiable {
    var id: UUID = UUID()  // Updated to use UUID for unique id
    var name: String
    var image: String
    var children: [FileItem]? = nil
    var selected: Bool = false
}

let data = FileItem(name: "Code", image: "folder", children: [
    FileItem(name: "assets", image: "folder", children: []),
    FileItem(name: "index.html", image: "doc", selected: true),
    FileItem(name: "style.css", image: "doc"),
])

struct MacOSView: View {
    @State var selection: Set<UUID> = []
    @State var files: [FileItem] = [data]

    var body: some View {
        NavigationView {
            List(selection: self.$selection) {
                Section(header: Text("Options")) {
                    Button("All") {}
                    Button("Trash") {}
                    Button("Uncategorized") {}
                }
                Section(header: Text("Folders")) {
                    ForEach(files, id: \.id) { file in
                        OutlineGroup(file, children: \.children) { item in
                            if item.selected {
                                Label(item.name, systemImage: item.image)
                                    .contextMenu {
                                        Button("New Folder", action: {
                                            var newFolder = FileItem(name: "New Folder", image: "folder")
                                            files.append(newFolder)
                                        })
                                    }
                            } else {
                                Label(item.name, systemImage: item.image)
                            }
                        }
                    }
                }
                Section(header: Text("Tags")) {
                    // Placeholder for your tags, add items similar to folders
                    Text("Your Tags Here")
                }
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity, maxHeight: .infinity) // Adjusted resizing values
            
            CodeView()
        }
    }
}

struct CodeView: View {
    @State var text = ""

    var body: some View {
        ZStack {
            TextEditor(text: $text)
                .padding(8)
                .font(.system(.body, design: .monospaced))
        }
        .toolbar {
            ToolbarItem(placement: .status) {
                Button(action: { }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MacOSView()
    }
}
