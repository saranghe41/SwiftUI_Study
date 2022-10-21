//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by 김지은 on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
    static let dateFomat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    var trueOrFalse: Bool = false
    var number: Int = 123
    
    var body: some View {
        VStack {
            Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ")
                .tracking(2) // 글자 사이의 간격
                .font(.system(.body, design: .rounded)) // font 사이즈 & font 스타일
                .fontWeight(.medium) // font 굵기
                .multilineTextAlignment(.center)
                .lineLimit(nil) // line 0: 표시 line 1, line nil: 표시 line infinity
                .lineSpacing(10)
                .truncationMode(.tail)
                .shadow(color: Color.purple, radius: 1.5, x: 10, y: 10) // radius: shadow의 범위
                
                .padding(.all, 20) // all일 경우 안써도 똑같음
                .background(Color.indigo)
                .cornerRadius(20) //
                
                .padding()
                .background(Color.mint)
                .cornerRadius(20) //
            
            Text("안녕하세요!")
                .background(Color.orange)
                .foregroundColor(Color.white )
            
            Text("오늘의 날짜입니다. \(today, formatter: ContentView.dateFomat)")
            
            Text("참 혹은 거짓: \(String(trueOrFalse))")
            
            Text("숫자: \(number)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
