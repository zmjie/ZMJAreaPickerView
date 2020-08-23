//
//  ZMJAreaPickerView_Macro.h
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#ifndef ZMJAreaPickerView_Macro_h
#define ZMJAreaPickerView_Macro_h

// 屏幕宽度
#define zmj_screenWidth (int)MIN([UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width)

// RGB颜色值
#define zmj_color(r, g, b) zmj_colora(r, g, b, 1.0)

#define zmj_colora(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]

// 距离比例
#define zmj_size(R) (zmj_ratio * R)

// 屏幕宽比例
#define zmj_ratio (zmj_screenWidth / 375.0)

// 默认字体大小
#define zmj_defaultFontSize    14.0
#define zmj_fontSize(R) [UIFont systemFontOfSize:(zmj_ratio * R)]

// 字体
#define zmj_pingFangSCRegularSize(R) [UIFont fontWithName:(@"PingFangSC-Regular") size:(zmj_ratio * R)] ? : zmj_fontSize(R)

#endif /* ZMJAreaPickerView_Macro_h */
