//
//  ShareFileTwo.m
//  iOS文件共享一
//
//  Created by apple on 2018/6/4.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "ShareFileTwo.h"
#import "ZSCustomActivity.h"

@interface ShareFileTwo ()

@end

@implementation ShareFileTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)button:(id)sender {
    UIActivityViewController *acitivty = [[UIActivityViewController alloc]initWithActivityItems:@[[[NSBundle mainBundle] URLForResource:@"Steve" withExtension:@"pdf"]] applicationActivities:@[[[ZSCustomActivity alloc]init]]];
    UIPopoverPresentationController *popOver = acitivty.popoverPresentationController;
    if (popOver) {
        popOver.sourceView = self.activityBtn;
        popOver.permittedArrowDirections = UIPopoverArrowDirectionUp;
    }
    [self presentViewController:acitivty animated:YES completion:NULL];
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
