//
//  FolderList.swift
//  CreativeBookList
//
//  Created by Vanshika Pal on 09/01/26.
//

import SwiftUI


struct Folder : Identifiable {
    let id = UUID()
    var name : String
    var icon : String
    var subFolders : [Folder]?
}


struct FolderList: View {
    
    let folders : [Folder] = [Folder(name: "Folder 1", icon: "document", subFolders: nil),
    Folder(name: "Folder2", icon: "document", subFolders: nil),
    Folder(name: "Folder3", icon: "folder", subFolders: [Folder(name: "Subfolder 3", icon: "document", subFolders: nil)])]

    var body: some View {
        List(folders, children : \.subFolders) { folder in
            Label(folder.name, systemImage: folder.icon)
        }
    }
}

#Preview {
    FolderList()
}
