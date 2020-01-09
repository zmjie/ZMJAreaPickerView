//
//  ZMJAreaPickerView.h
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import <UIKit/UIKit.h>

#import "ZMJAreaModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZMJAreaPickerViewStyle) {
    ZMJAreaPickerViewSheet,
    ZMJAreaPickerViewAlert,
};

@protocol zmj_areaPickerViewDelegate <NSObject>

- (void)zmj_areaPickerViewStyle:(ZMJAreaPickerViewStyle)style zmj_shengObj:(ZMJAreaListModel *)obj0 zmj_shiObj:(ZMJAreaListModel *)obj1 zmj_xianObj:(ZMJAreaListModel *)obj2;

@end

@interface ZMJAreaPickerView : UIView

- (instancetype)initWithFrame:(CGRect)frame zmj_style:(ZMJAreaPickerViewStyle)style zmj_shengID:(nullable NSString *)shengID zmj_shiID:(nullable NSString *)shiID zmj_xianID:(nullable NSString *)xianID;

@property (weak, nonatomic) id<zmj_areaPickerViewDelegate>zmj_delegate;

- (void)zmj_show;
- (void)zmj_showInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
