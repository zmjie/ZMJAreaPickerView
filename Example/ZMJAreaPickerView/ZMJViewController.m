//
//  ZMJViewController.m
//  ZMJAreaPickerView
//
//  Created by zmjie on 01/08/2020.
//  Copyright (c) 2020 zmjie. All rights reserved.
//

#import "ZMJViewController.h"

#import <ZMJAreaPickerView/ZMJAreaPickerView.h>

@interface ZMJViewController () <zmj_areaPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *zmj_tapBtn1;
@property (weak, nonatomic) IBOutlet UIButton *zmj_tapBtn2;
@property (weak, nonatomic) IBOutlet UILabel *zmj_titleLabel;

@property (strong, nonatomic) ZMJAreaListModel *zmj_areaListModel0;
@property (strong, nonatomic) ZMJAreaListModel *zmj_areaListModel1;
@property (strong, nonatomic) ZMJAreaListModel *zmj_areaListModel2;

@end

@implementation ZMJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)zmj_btnAction:(UIButton *)sender {
    
    ZMJAreaPickerViewStyle zmj_style = ZMJAreaPickerViewSheet;
    
    if ([sender isEqual:_zmj_tapBtn2]) {
        
        zmj_style = ZMJAreaPickerViewAlert;
    }
    
    ZMJAreaPickerView *zmj_addressPickerView = [[ZMJAreaPickerView alloc] initWithFrame:self.view.bounds zmj_style:zmj_style zmj_shengID:_zmj_areaListModel0 ? _zmj_areaListModel0.code : nil zmj_shiID:_zmj_areaListModel1 ? _zmj_areaListModel1.code : nil zmj_xianID:_zmj_areaListModel2 ? _zmj_areaListModel2.code : nil];
    zmj_addressPickerView.zmj_delegate = self;
    [zmj_addressPickerView zmj_show];
}

- (void)zmj_areaPickerView:(ZMJAreaPickerView *)areaPickerView zmj_shengObj:(ZMJAreaListModel *)obj0 zmj_shiObj:(ZMJAreaListModel *)obj1 zmj_xianObj:(ZMJAreaListModel *)obj2 {
    
    ZMJAreaListModel *zmj_areaListModel0 = (ZMJAreaListModel *)obj0;
    ZMJAreaListModel *zmj_areaListModel1 = (ZMJAreaListModel *)obj1;
    ZMJAreaListModel *zmj_areaListModel2 = (ZMJAreaListModel *)obj2;
    
    _zmj_areaListModel0 = zmj_areaListModel0;
    _zmj_areaListModel1 = zmj_areaListModel1;
    _zmj_areaListModel2 = zmj_areaListModel2;
    
    NSLog(@"%@-%@", zmj_areaListModel0.code, zmj_areaListModel0.name);
    NSLog(@"%@-%@", zmj_areaListModel1.code, zmj_areaListModel1.name);
    NSLog(@"%@-%@", zmj_areaListModel2.code, zmj_areaListModel2.name);
    
    _zmj_titleLabel.text = [NSString stringWithFormat:@"%@%@%@", zmj_areaListModel0.name, zmj_areaListModel1.name, zmj_areaListModel2.name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
