//
//  IntentHandler.swift
//  ZJWidIntentExtension
//
//  Created by wangshuailong on 2020/10/20.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
}

 
extension IntentHandler : ClickBtnIntentHandling {
    //搜索
    func provideBtnTypeOptionsCollection(for intent: ClickBtnIntent, searchTerm: String?, with completion: @escaping (INObjectCollection<BtnType>?, Error?) -> Void) {

        let searchList = ButtonModel.shared().seatch(withInput: searchTerm!)

        let list : [BtnType] = searchList.map { itemModel in
            let item = BtnType(identifier: (itemModel as AnyObject).title, display: (itemModel as AnyObject).title)
            return item
        }

        let collection = INObjectCollection(items: list)

        completion(collection, nil)
    }
    
    //点击
    func provideBtnTypeOptionsCollection(for intent: ClickBtnIntent, with completion: @escaping (INObjectCollection<BtnType>?, Error?) -> Void) {
        
        //把数据跟BtnType 绑定
        let list : [BtnType] = ButtonModel.shared().itemList.map { itemModel in
            //let item = BtnType(identifier: (itemModel as AnyObject).title, display: (itemModel as AnyObject).title, subtitle: "占位符", image: INImage(named: "11"))
            let item = BtnType(identifier: (itemModel as AnyObject).title, display: (itemModel as AnyObject).title)
            
            return item
        }
        
        let collection = INObjectCollection(items: list)

        completion(collection, nil)
    }
    
    //
    func defaultBtnType(for intent: ClickBtnIntent) -> BtnType? {
        let itemModel = ButtonModel.shared().itemList.first
        let item = BtnType(identifier: (itemModel as AnyObject).title, display: (itemModel as AnyObject).title)
        
        return item
    }
    
}
