//
//  NSString+ZMJAreaPickerView.m
//  ZMJAreaPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "NSString+ZMJAreaPickerView.h"

#import "ZMJAreaTool.h"

@implementation NSString (ZMJAreaPickerView)

+ (id)zmj_getJsonFileName:(NSString *)string {
    
    NSString *zmj_jsonPath = [[ZMJAreaTool zmj_getBundle] pathForResource:string ofType:@"json"];
    
    NSData *zmj_jsonData = [[NSData alloc] initWithContentsOfFile:zmj_jsonPath];
    
    NSError *zmj_error;
    
    id zmj_obj = [NSJSONSerialization JSONObjectWithData:zmj_jsonData options:NSJSONReadingAllowFragments error:&zmj_error];
    
    return zmj_obj;
}

@end
