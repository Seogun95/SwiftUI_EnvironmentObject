//
//  ContentView.swift
//  Shared
//
//  Created by Seogun Kim on 2021/05/16.
//

import SwiftUI

struct EnvironmentView: View {
    @StateObject var environmentModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(environmentModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(seletedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationBarTitle("Apple")
        }
        .environmentObject(environmentModel)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
