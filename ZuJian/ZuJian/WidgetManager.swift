//
//  WidgetManager.swift
//  ZuJian
//
//  Created by wangshuailong on 2020/10/21.
//

import Foundation
import WidgetKit

class WidgetManager: NSObject {
    
    @objc class public func reloadTimeLines(kind : String) {
        //刷新指定的widget
        WidgetCenter.shared.reloadTimelines(ofKind: kind)
    }
    
    //刷新全部的
    @objc class public func reloadAllTimeLines() {
        WidgetCenter.shared.reloadAllTimelines()
    }
}
