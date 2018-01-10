//
//  ViewController.m
//  DWslideViewDemo
//
//  Created by dangwc on 2018/1/8.
//  Copyright © 2018年 dangwc. All rights reserved.
//

#import "ViewController.h"
#import "DWDirectionPanGestureRecognizer.h"
#import "DWPopView.h"


@interface ViewController ()

@property (nonatomic,strong) DWPopView *myPopView;

@end

@implementation ViewController


-(DWPopView *)myPopView{
    if (!_myPopView) {
        _myPopView = [[DWPopView alloc] initWithFrame:CGRectMake(0,self.view.bounds.size.height, self.view.bounds.size.width,400)];
        _myPopView.backgroundColor = [UIColor lightGrayColor];
    }
    
    return _myPopView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    UIButton *test = [UIButton buttonWithType:0];
    [test setTitle:@"弹出" forState:0];
    [test setTitleColor:[UIColor grayColor] forState:0];
    [test addTarget:self action:@selector(popView:) forControlEvents:UIControlEventTouchUpInside];
    test.frame = CGRectMake(60, 60, 60, 30);
    [self.view addSubview:test];
    
    
    
    UIButton *test2 = [UIButton buttonWithType:0];
    [test2 setTitle:@"收起" forState:0];
    [test2 setTitleColor:[UIColor grayColor] forState:0];
    [test2 addTarget:self action:@selector(dismissView:) forControlEvents:UIControlEventTouchUpInside];
    test2.frame = CGRectMake(120, 60, 60, 30);
    [self.view addSubview:test2];
    
    
    [self.view addSubview:self.myPopView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}




-(void)popView:(UIButton *)sender{

    
    [self.myPopView dw_popView];
}

-(void)dismissView:(UIButton *)sender{


 [self.myPopView dw_dismissView];

}









@end
