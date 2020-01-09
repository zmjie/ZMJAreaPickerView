//
//  ZMJAreaModel.h
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMJAreaModel : NSObject

@end

@interface ZMJAreaListModel : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *code;

@property (strong, nonatomic) NSMutableArray *child;

@end

NS_ASSUME_NONNULL_END
