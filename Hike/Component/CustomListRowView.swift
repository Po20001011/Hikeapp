//
//  CustomListRowView.swift
//  Hike
//
//  Created by Wang Po on 23/11/2023.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil { // isn't equal to nil, Condition -> Text View
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if(rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!,
                     destination: URL(string:
                    rowLinkDestination!)!) //Condition -> SwiftUi Link
                .foregroundColor(.pink)
                .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                // Condition -> Empty View
            }
            
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(
                rowLabel: "Website",
                rowIcon: "globe",
                rowContent: nil,
                rowTintColor: .pink,
                rowLinkLabel: "Apple",
                rowLinkDestination:"https://www.apple.com/au/"
            )
        }
    }
}
