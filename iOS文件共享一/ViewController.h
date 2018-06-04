//
//  ViewController.h
//  iOS文件共享一
//
//  Created by apple on 2018/6/4.
//  Copyright © 2018年 范文哲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIDocumentInteractionControllerDelegate>

@property (strong, nonatomic) IBOutlet UIButton *documentInteractionButton;
@property (strong, nonatomic) IBOutlet UIButton *actBTN;
- (IBAction)TestFile:(id)sender;
- (IBAction)TestFile2:(id)sender;

@end

