//
//  DetailView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Seogun Kim on 2021/05/16.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    let seletedItem: String
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
                .overlay(
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.primary)
                            .padding(.leading, 10)
                    }),alignment: .topLeading
                )
            
            VStack {
                NavigationLink(
                    destination: FinalView(),
                    label: {
                        Text(seletedItem)
                            .font(.title)
                            .padding()
                            .foregroundColor(.primary)
                            .background(Color.white)
                            .cornerRadius(10)
                    })
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(seletedItem: "아이폰")
    }
}

