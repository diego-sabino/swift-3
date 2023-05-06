//
//  HeaderView.swift
//  AluraTravel
//
//  Created by Diego Sabino on 06/05/23.
//

import SwiftUI
import Inject

struct HeaderView: View {
    @ObservedObject private var iO = Inject.observer
    
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
        
    var body: some View {
        let mainTitleFontSize: CGFloat = self._horizontalSizeClass == .compact ? 20 : 30
        let buttonFontSize: CGFloat = self._horizontalSizeClass == .compact ? 17 : 24
        
        GeometryReader { view in
            VStack {
                VStack {
                    Text("AluraTrips")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: mainTitleFontSize))
                    Text("Especial")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: mainTitleFontSize))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("Brasil")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self._horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                   
                }
                .frame(width: view.size.width, height: 135, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button("Hotéis") {}
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
                        .font(.custom("Avenir Medium", size: buttonFontSize))
                        .foregroundColor(.white)
                        .background(.blue)
                        .offset(x: -50)
                    
                    Button("Pacotes") {}
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
                        .font(.custom("Avenir Medium", size: buttonFontSize))
                        .foregroundColor(.white)
                        .background(.orange)
                        .offset(x: 50)
                }
                .offset(y: -35)
            }
        }
        .enableInjection()
    }
}
