//
//  EncyclopediaView.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//
import SwiftUI

struct EncyclopediaView: View {
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Encyclopedia")
                    .font(.title)
                    .bold()
                    
                SearchBar(text: $text)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(EncyclopediaList.filter({
                            $0.name.lowercased().contains(text.lowercased()) || text.isEmpty
                        })) { Encyclopedia in
                            NavigationLink(destination: EncyclopediaPage(Encyclopedia: Encyclopedia)) {
                                EncyclopediaButton(Encyclopedia: Encyclopedia)
                            }
                        }
                      
                    }
                }
            }
            
            
        }
    }
}

struct EncyclopediaView_Previews: PreviewProvider {
    static var previews: some View {
        EncyclopediaView()
    }
}
