//
//  ButtonModel.h
//  ZuJian
//
//  Created by wangshuailong on 2020/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class BtnItemModel;
@interface ButtonModel : NSObject

+ (ButtonModel *)sharedButtonModel;

@property (nonatomic, strong) NSArray *itemList;

- (BtnItemModel*)getSelectItemWithName:(NSString*)name;
- (NSArray*)seatchWithInput:(NSString*)input;

@end


@interface BtnItemModel : NSObject

@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *details;
@property (nonatomic, assign) NSInteger length;
@property (nonatomic, copy)   NSString *bgImgName;
@property (nonatomic, copy)   NSString *link;

@end

NS_ASSUME_NONNULL_END
