//
//  ViewController.m
//  iOS文件共享一
//
//  Created by apple on 2018/6/4.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import "ViewController.h"
#import "ShareFileTwo.h"
@interface ViewController ()
@property (nonatomic,strong) UIDocumentInteractionController *documentController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)TestFile:(id)sender {
    _documentController = [UIDocumentInteractionController interactionControllerWithURL:[[NSBundle mainBundle] URLForResource:@"Steve" withExtension:@"pdf"]];
    _documentController.delegate = self;
    [self presentOptionsMenu];
}

- (IBAction)TestFile2:(id)sender {
    ShareFileTwo *vc = [[ShareFileTwo alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)presentOptionsMenu{
     [_documentController presentOptionsMenuFromRect:self.view.bounds inView:self.view animated:YES];
}
- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
{
    return self;
}

@end
