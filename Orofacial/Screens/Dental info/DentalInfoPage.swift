//
//  DentalInfoPage.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-24.
//

import SwiftUI

struct DentalInfoPage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DentalInfoList(infos: Info.all)
            }
        }
    }
}

struct DentalInfoPage_Preview: PreviewProvider {
    static var previews: some View {
        DentalInfoPage()
    }
}
