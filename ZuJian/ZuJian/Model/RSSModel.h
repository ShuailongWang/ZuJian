//
//  RSSModel.h
//  ZuJian
//
//  Created by wangshuailong on 2020/10/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class RSSItemModel;
@interface RSSModel : NSObject

@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, strong) NSArray *items;

@end

@interface RSSItemModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *link;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *pubDate;

@end

NS_ASSUME_NONNULL_END
