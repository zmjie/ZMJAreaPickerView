//
//  ZMJAreaTool.m
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "ZMJAreaTool.h"

#import "ZMJAreaModel.h"

@implementation ZMJAreaTool

+ (NSBundle *)zmj_getBundle {
    
    static NSBundle *zmj_bundle = nil;
    static dispatch_once_t zmj_oncePredicate;
    dispatch_once(&zmj_oncePredicate, ^{
        
        zmj_bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:self.class] pathForResource:@"ZMJArea" ofType:@"bundle"]];
    });
    return zmj_bundle;
}

+ (NSInteger)zmj_getAddressRowArr:(NSArray *)array zmj_code:(NSString *)code {
    
    NSInteger zmj_row = 0;
    
    __block ZMJAreaListModel *zmj_areaListModel0;
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        if ([obj isKindOfClass:[ZMJAreaListModel class]]) {

            ZMJAreaListModel *zmj_areaListModel1 = (ZMJAreaListModel *)obj;
NSLog(@"--->>>%@", zmj_areaListModel1.name);
            if ([zmj_areaListModel1.code isEqualToString:code]) {

                zmj_areaListModel0 = zmj_areaListModel1;
                *stop = YES;
            }
        }
    }];

    zmj_row = [array indexOfObject:zmj_areaListModel0];
    
    return zmj_row;
}

@end
