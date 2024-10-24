//
//  ContentView.swift
//  te2
//
//  Created by 林　一貴 on 2024/07/07.
//

import SwiftUI

struct ContentView: View {
    @State var move_grad:Bool=true
    var body: some View {

        ZStack {
//            Text("aaa")
            Rectangle()
                .frame(minWidth: UIScreen.main.bounds.width*2, minHeight: UIScreen.main.bounds.height)

            //            .background()
                .overlay{

            LinearGradient(
                gradient: Gradient(colors: [.black,.white,.black]),   // start地点の色とend地点の色
                startPoint: .trailing,    // start地点
                endPoint: .leading     // end地点

            )
            .frame(width: 100)
                }
                .offset(x:move_grad ? -UIScreen.main.bounds.width/4:UIScreen.main.bounds.width/4)

                .animation(.linear(duration:1).repeatForever(autoreverses: true), value:move_grad)//速度変更
            .onAppear{
                move_grad.toggle()
            }
            .mask{
                Text("application").font(.largeTitle)
            }
            .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.343))
        }
    }
}

#Preview {
    ContentView()
}
