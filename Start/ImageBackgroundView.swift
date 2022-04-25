//
//  ImageBackgroundView.swift
//  Start
//
//  Created by cmStudent on 2021/12/01.
//

import SwiftUI

struct ImageBackgroundView: View {
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 1.0).repeatForever(autoreverses: false)
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: -1) {
                Image("bird")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                
            }
            .frame(width: geo.size.width, height: geo.size.height,
                   alignment: animate ? .trailing : .leading)
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(animation) {
                animate.toggle()
            }
        }
    }
}

struct ImageBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ImageBackgroundView()
    }
}
