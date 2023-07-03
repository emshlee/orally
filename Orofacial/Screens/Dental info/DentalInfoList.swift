//
//  DentalInfoList.swift
//  Orofacial
//
//  Created by Yoon on 2023-06-05.
//

import SwiftUI

struct DentalInfoList: View {
    var infos: [Info]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                LazyHGrid(rows: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                    ForEach(infos) { info in DentalInfo(info: info)}
                    
                }
                .padding(.top)
                .padding(.bottom, 35)
            }
            .padding(.horizontal)
        }
    }
}

struct DentalInfoList_Preview: PreviewProvider {
    static var previews: some View {
        ScrollView {
            DentalInfoList(infos: Info.all)
        }
    }
}
