//
//  OneWordModel.h
//  ZuJian
//
//  Created by wangshuailong on 2020/10/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class OneWordModel;
typedef void(^CompletaTaskBlack)(NSError *__nullable error, OneWordModel *__nullable oneModel);

@interface OneWordModel : NSObject

@property (nonatomic, strong) NSString *hitokoto;   //内容
@property (nonatomic, strong) NSString *from;       //内容
@property (nonatomic, assign) NSInteger lengtn;     //字号

+ (void)getContentCompletion:(CompletaTaskBlack)completion;

@end

NS_ASSUME_NONNULL_END
