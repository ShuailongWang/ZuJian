//
//  CountDownView.swift
//  ZJWidPackExtension
//
//  Created by wangshuailong on 2020/10/20.
//

import SwiftUI

struct CountDownView : View {
    
    var title = "倒计时"
    var day : Int = 0
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            HStack(alignment: .bottom, spacing: 0.0){
                Text("\(day)")
                    .baselineOffset(0.0)
                    .fontWeight(.bold)
                    .tracking(1.5)
                    .lineLimit(1)
                Text("DAY")
                    .baselineOffset(6.0)
                    .font(.footnote)
                    .fontWeight(.bold)
                
            }
            Text(title)
                .font(.headline)
                .foregroundColor(Color.gray)
        }
        .padding(.all)
    }
}


struct CountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}
