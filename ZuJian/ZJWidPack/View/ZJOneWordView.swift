//
//  ZJOneWordView.swift
//  ZJWidPackExtension
//
//  Created by wangshuailong on 2020/10/19.
//

import SwiftUI

struct ZJOneWordView : View {
    
    let oneModel : OneWordModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10, content: {
            //内容
            Text(oneModel.hitokoto)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            //来源
            HStack(alignment: .bottom, spacing: nil, content: {
                //占位弹
                Spacer()
                
                //来源
                Text(oneModel.from)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .padding(.all)
            })
        })
    }
}


struct ZJOneWordView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
