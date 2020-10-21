//
//  ClickBtnView.swift
//  ZJWidPackExtension
//
//  Created by wangshuailong on 2020/10/20.
//

import SwiftUI

struct ClickBtnView : View {
    
    let itemModel : BtnItemModel
    
    var body: some View {
        
        Text(itemModel.details)
            .widgetURL(URL(string: itemModel.link))
            .background(Image(itemModel.bgImgName))
            .font(.callout)
    }
}
