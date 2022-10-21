//
//  CircleImageView.swift
//  SwiftUI_image_tutorial
//
//  Created by 김지은 on 2022/10/21.
//

import Foundation
import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        
        Image("myImage")
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200)
//            .clipped() // frame 크기만큼 자르기
//            .edgesIgnoringSafeArea(.all)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.4) // 투명도
            )
            .overlay(
                Circle().stroke(Color.cyan, lineWidth: 10)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.indigo, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Text("뀨")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
