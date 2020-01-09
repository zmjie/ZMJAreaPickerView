//
//  ZMJAreaTool.h
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMJAreaTool : NSObject

+ (NSBundle *)zmj_getBundle;

@property (strong, nonatomic) NSArray *zmj_shengArr;
@property (strong, nonatomic) NSArray *zmj_shiArr;
@property (strong, nonatomic) NSArray *zmj_xianArr;

+ (NSInteger)zmj_getAddressRowArr:(NSArray *)array zmj_code:(NSString *)code;

@end

NS_ASSUME_NONNULL_END
