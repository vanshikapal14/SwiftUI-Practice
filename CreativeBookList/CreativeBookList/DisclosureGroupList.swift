//
//  DisclosureGroupList.swift
//  CreativeBookList
//
//  Created by Vanshika Pal on 09/01/26.
//

import SwiftUI

struct FAQ: Identifiable {
    var id = UUID()
    var question: String
    var answer: String
}

struct DisclosureGroupList: View {
    
    var faqs: [FAQ] = [
                      FAQ(question: "Ques1", answer: "Ans1"),
                      FAQ(question: "Ques2", answer: "Ans2"),
                      FAQ(question: "Ques3", answer: "Ans3"),
                      FAQ(question: "Ques4", answer: "Ans4"),
                      FAQ(question: "Ques5", answer: "Ans5"),
                      ]
    @State private var isExpended = false
    var body: some View {
        List {
            ForEach(faqs) { faq in
                DisclosureGroup(isExpanded: $isExpended) {
                    Text(faq.answer)
                } label: {
                    Text(faq.question)
                }
            }
        }
        
        Button {
            isExpended.toggle()
        } label: {
            Text(isExpended ? "Collapse All" : "Expand All")
        }
    }
}

#Preview {
    DisclosureGroupList()
}

