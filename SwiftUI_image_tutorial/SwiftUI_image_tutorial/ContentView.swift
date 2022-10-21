//
//  ContentView.swift
//  SwiftUI_image_tutorial
//
//  Created by 김지은 on 2022/10/21.
//

import SwiftUI

// mainViewController라고 생각하면 된다.
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                // 뭔가 이상해
//                Image("myImage")
//                    .frame(width: 50, height: 30)
//                    .offset(y: -300)
                
                CircleImageView()
                
                HStack {
                    NavigationLink(destination: MyWebView(url: "https://github.com/saranghe41")
                        .edgesIgnoringSafeArea(.all)) {
                        Text("GitHub 보기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.secondary)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(url: "https://velog.io/@saranghe41")
                        .edgesIgnoringSafeArea(.all)) {
                        Text("Velog 보기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.mint)
                            .cornerRadius(20)
                    }
                }.padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
