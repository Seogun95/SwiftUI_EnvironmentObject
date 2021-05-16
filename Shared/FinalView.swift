//
//  FinalView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Seogun Kim on 2021/05/16.
//

import SwiftUI

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            AngularGradient(gradient:
                                Gradient(colors:
                                            [Color("Peach"), Color("PaleOrange"), Color("Peach")]
                                ),
                            center: .topTrailing,
                            angle: .degrees(180))
                .ignoresSafeArea()
            
            ScrollView {
                ForEach(viewModel.dataArray, id:\.self) { items in
                    Text(items)
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)                        .opacity(0.4))
                        .cornerRadius(20)
                        .padding(10)
                    }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

